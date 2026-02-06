// Emscripten WebGPU backend for zgpu.
//
// Emscripten's `--use-port=emdawnwebgpu` ships the standardized `webgpu/webgpu.h`
// surface + future API (StringView labels, no swapchain object, callback-info structs).
//
// This module implements a subset of the legacy zgpu/wgpu.zig surface used by
// zig-gamedev, translating to the new API where needed so existing Zig code can
// keep using c-string labels and the swapchain-like wrapper.
const std = @import("std");
const builtin = @import("builtin");

comptime {
    if (builtin.target.os.tag != .emscripten) {
        @compileError("wgpu_emscripten.zig must only be used for the emscripten target");
    }
}

const c = @import("webgpu_emscripten_c.zig");

// ------------------------------------------------------------------------------------
// Helpers
// ------------------------------------------------------------------------------------

fn sv(s: ?[*:0]const u8) c.WGPUStringView {
    if (s == null) return .{};
    const span = std.mem.span(s.?);
    return .{ .data = @ptrCast(span.ptr), .length = span.len };
}

fn boolToC(b: U32Bool) c.WGPUBool {
    return switch (b) {
        .false => 0,
        .true => 1,
    };
}

fn cBoolToBool(b: c.WGPUBool) U32Bool {
    return if (b != 0) .true else .false;
}

// Store the last-created instance so `Device.tick()` can pump callbacks.
var g_instance: c.WGPUInstance = null;

// Uncaptured error callback is now part of the device descriptor (no setter API).
// We install a trampoline at device-creation time and have `Device.setUncapturedErrorCallback`
// just update these globals.
var g_uncaptured_error_cb: ?UncapturedErrorCallback = null;
var g_uncaptured_error_ud: ?*anyopaque = null;

fn uncapturedErrorTrampoline(
    device: [*c]const c.WGPUDevice,
    err_type: c.WGPUErrorType,
    message: c.WGPUStringView,
    userdata1: ?*anyopaque,
    userdata2: ?*anyopaque,
) callconv(.c) void {
    _ = device;
    _ = message;
    _ = userdata1;
    _ = userdata2;
    const cb = g_uncaptured_error_cb orelse return;
    // `message` is a non-null-terminated string view; keep API-compatible by passing null.
    // (zgpu's error callback prints `?[*:0]const u8` and would otherwise require allocation.)
    cb(@enumFromInt(@as(u32, @intCast(err_type))), null, g_uncaptured_error_ud);
}

// ------------------------------------------------------------------------------------
// Core scalar types / enums (minimal set; expanded as needed)
// ------------------------------------------------------------------------------------

pub const WGPUFlags = u64;
pub const WGPUBool = u32;

pub const U32Bool = enum(u32) { false = 0, true = 1 };

pub const PresentMode = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUPresentMode_Undefined)),
    fifo = @as(u32, @intCast(c.WGPUPresentMode_Fifo)),
    fifo_relaxed = @as(u32, @intCast(c.WGPUPresentMode_FifoRelaxed)),
    immediate = @as(u32, @intCast(c.WGPUPresentMode_Immediate)),
    mailbox = @as(u32, @intCast(c.WGPUPresentMode_Mailbox)),
};

pub const PowerPreference = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUPowerPreference_Undefined)),
    low_power = @as(u32, @intCast(c.WGPUPowerPreference_LowPower)),
    high_performance = @as(u32, @intCast(c.WGPUPowerPreference_HighPerformance)),
};

pub const BackendType = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUBackendType_Undefined)),
    nul = @as(u32, @intCast(c.WGPUBackendType_Null)),
    webgpu = @as(u32, @intCast(c.WGPUBackendType_WebGPU)),
    d3d11 = @as(u32, @intCast(c.WGPUBackendType_D3D11)),
    d3d12 = @as(u32, @intCast(c.WGPUBackendType_D3D12)),
    metal = @as(u32, @intCast(c.WGPUBackendType_Metal)),
    vulkan = @as(u32, @intCast(c.WGPUBackendType_Vulkan)),
    opengl = @as(u32, @intCast(c.WGPUBackendType_OpenGL)),
    opengles = @as(u32, @intCast(c.WGPUBackendType_OpenGLES)),
};

pub const AdapterType = enum(u32) {
    discrete_gpu = @as(u32, @intCast(c.WGPUAdapterType_DiscreteGPU)),
    integrated_gpu = @as(u32, @intCast(c.WGPUAdapterType_IntegratedGPU)),
    cpu = @as(u32, @intCast(c.WGPUAdapterType_CPU)),
    unknown = @as(u32, @intCast(c.WGPUAdapterType_Unknown)),
};

pub const ErrorType = enum(u32) {
    no_error = @as(u32, @intCast(c.WGPUErrorType_NoError)),
    validation = @as(u32, @intCast(c.WGPUErrorType_Validation)),
    out_of_memory = @as(u32, @intCast(c.WGPUErrorType_OutOfMemory)),
    internal = @as(u32, @intCast(c.WGPUErrorType_Internal)),
    unknown = @as(u32, @intCast(c.WGPUErrorType_Unknown)),
    // `webgpu.h`'s ErrorType doesn't include a dedicated DeviceLost code; keep the legacy tag
    // for API compatibility (it will never be produced by Emscripten's uncaptured error callback).
    device_lost = 0xFFFF_FFFF,
};

pub const RequestAdapterStatus = enum(u32) {
    unknown = 0,
    success = @as(u32, @intCast(c.WGPURequestAdapterStatus_Success)),
    unavailable = @as(u32, @intCast(c.WGPURequestAdapterStatus_Unavailable)),
    err = @as(u32, @intCast(c.WGPURequestAdapterStatus_Error)),
};

pub const RequestDeviceStatus = enum(u32) {
    unknown = 0,
    success = @as(u32, @intCast(c.WGPURequestDeviceStatus_Success)),
    err = @as(u32, @intCast(c.WGPURequestDeviceStatus_Error)),
};

pub const QueueWorkDoneStatus = enum(u32) {
    success = @as(u32, @intCast(c.WGPUQueueWorkDoneStatus_Success)),
    err = @as(u32, @intCast(c.WGPUQueueWorkDoneStatus_Error)),
    callback_cancelled = @as(u32, @intCast(c.WGPUQueueWorkDoneStatus_CallbackCancelled)),
};

pub const BufferMapAsyncStatus = enum(u32) {
    success,
    callback_cancelled,
    err,
    aborted,
    unknown,
};

pub const MapMode = packed struct(u64) {
    read: bool = false,
    write: bool = false,
    _padding: u62 = 0,
};

pub const BufferUsage = packed struct(u64) {
    map_read: bool = false,
    map_write: bool = false,
    copy_src: bool = false,
    copy_dst: bool = false,
    index: bool = false,
    vertex: bool = false,
    uniform: bool = false,
    storage: bool = false,
    indirect: bool = false,
    query_resolve: bool = false,
    _padding: u54 = 0,
};

pub const TextureUsage = packed struct(u64) {
    copy_src: bool = false,
    copy_dst: bool = false,
    texture_binding: bool = false,
    storage_binding: bool = false,
    render_attachment: bool = false,
    _padding: u59 = 0,
};

pub const ShaderStage = packed struct(u64) {
    vertex: bool = false,
    fragment: bool = false,
    compute: bool = false,
    _padding: u61 = 0,
};

pub const ColorWriteMask = packed struct(u64) {
    red: bool = false,
    green: bool = false,
    blue: bool = false,
    alpha: bool = false,
    _padding: u60 = 0,

    pub const all = ColorWriteMask{ .red = true, .green = true, .blue = true, .alpha = true };
};

pub const TextureFormat = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUTextureFormat_Undefined)),
    rgba8_unorm = @as(u32, @intCast(c.WGPUTextureFormat_RGBA8Unorm)),
    rgba8_unorm_srgb = @as(u32, @intCast(c.WGPUTextureFormat_RGBA8UnormSrgb)),
    bgra8_unorm = @as(u32, @intCast(c.WGPUTextureFormat_BGRA8Unorm)),
    bgra8_unorm_srgb = @as(u32, @intCast(c.WGPUTextureFormat_BGRA8UnormSrgb)),
    depth24_plus = @as(u32, @intCast(c.WGPUTextureFormat_Depth24Plus)),
    depth24_plus_stencil8 = @as(u32, @intCast(c.WGPUTextureFormat_Depth24PlusStencil8)),
    depth32_float = @as(u32, @intCast(c.WGPUTextureFormat_Depth32Float)),
};

pub const TextureDimension = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUTextureDimension_Undefined)),
    tdim_1d = @as(u32, @intCast(c.WGPUTextureDimension_1D)),
    tdim_2d = @as(u32, @intCast(c.WGPUTextureDimension_2D)),
    tdim_3d = @as(u32, @intCast(c.WGPUTextureDimension_3D)),
};

pub const TextureViewDimension = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUTextureViewDimension_Undefined)),
    tvdim_1d = @as(u32, @intCast(c.WGPUTextureViewDimension_1D)),
    tvdim_2d = @as(u32, @intCast(c.WGPUTextureViewDimension_2D)),
    tvdim_2d_array = @as(u32, @intCast(c.WGPUTextureViewDimension_2DArray)),
    tvdim_cube = @as(u32, @intCast(c.WGPUTextureViewDimension_Cube)),
    tvdim_cube_array = @as(u32, @intCast(c.WGPUTextureViewDimension_CubeArray)),
    tvdim_3d = @as(u32, @intCast(c.WGPUTextureViewDimension_3D)),
};

pub const TextureAspect = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUTextureAspect_Undefined)),
    all = @as(u32, @intCast(c.WGPUTextureAspect_All)),
    stencil_only = @as(u32, @intCast(c.WGPUTextureAspect_StencilOnly)),
    depth_only = @as(u32, @intCast(c.WGPUTextureAspect_DepthOnly)),
};

pub const LoadOp = enum(u32) {
    undef = @as(u32, @intCast(c.WGPULoadOp_Undefined)),
    load = @as(u32, @intCast(c.WGPULoadOp_Load)),
    clear = @as(u32, @intCast(c.WGPULoadOp_Clear)),
};

pub const StoreOp = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUStoreOp_Undefined)),
    store = @as(u32, @intCast(c.WGPUStoreOp_Store)),
    discard = @as(u32, @intCast(c.WGPUStoreOp_Discard)),
};

pub const PrimitiveTopology = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUPrimitiveTopology_Undefined)),
    triangle_list = @as(u32, @intCast(c.WGPUPrimitiveTopology_TriangleList)),
};

pub const CullMode = enum(u32) {
    none = @as(u32, @intCast(c.WGPUCullMode_None)),
    front = @as(u32, @intCast(c.WGPUCullMode_Front)),
    back = @as(u32, @intCast(c.WGPUCullMode_Back)),
};

pub const BlendOperation = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUBlendOperation_Undefined)),
    add = @as(u32, @intCast(c.WGPUBlendOperation_Add)),
    subtract = @as(u32, @intCast(c.WGPUBlendOperation_Subtract)),
    reverse_subtract = @as(u32, @intCast(c.WGPUBlendOperation_ReverseSubtract)),
    min = @as(u32, @intCast(c.WGPUBlendOperation_Min)),
    max = @as(u32, @intCast(c.WGPUBlendOperation_Max)),
};

pub const BlendFactor = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUBlendFactor_Undefined)),
    zero = @as(u32, @intCast(c.WGPUBlendFactor_Zero)),
    one = @as(u32, @intCast(c.WGPUBlendFactor_One)),
    src = @as(u32, @intCast(c.WGPUBlendFactor_Src)),
    one_minus_src = @as(u32, @intCast(c.WGPUBlendFactor_OneMinusSrc)),
    src_alpha = @as(u32, @intCast(c.WGPUBlendFactor_SrcAlpha)),
    one_minus_src_alpha = @as(u32, @intCast(c.WGPUBlendFactor_OneMinusSrcAlpha)),
    dst = @as(u32, @intCast(c.WGPUBlendFactor_Dst)),
    one_minus_dst = @as(u32, @intCast(c.WGPUBlendFactor_OneMinusDst)),
    dst_alpha = @as(u32, @intCast(c.WGPUBlendFactor_DstAlpha)),
    one_minus_dst_alpha = @as(u32, @intCast(c.WGPUBlendFactor_OneMinusDstAlpha)),
    src_alpha_saturated = @as(u32, @intCast(c.WGPUBlendFactor_SrcAlphaSaturated)),
    constant = @as(u32, @intCast(c.WGPUBlendFactor_Constant)),
    one_minus_constant = @as(u32, @intCast(c.WGPUBlendFactor_OneMinusConstant)),
};

pub const VertexFormat = enum(u32) {
    float32x2 = @as(u32, @intCast(c.WGPUVertexFormat_Float32x2)),
    float32x4 = @as(u32, @intCast(c.WGPUVertexFormat_Float32x4)),
};

pub const VertexStepMode = enum(u32) {
    vertex = @as(u32, @intCast(c.WGPUVertexStepMode_Vertex)),
    instance = @as(u32, @intCast(c.WGPUVertexStepMode_Instance)),
};

pub const IndexFormat = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUIndexFormat_Undefined)),
    uint16 = @as(u32, @intCast(c.WGPUIndexFormat_Uint16)),
    uint32 = @as(u32, @intCast(c.WGPUIndexFormat_Uint32)),
};

// ------------------------------------------------------------------------------------
// Structs used by zgpu/app (subset)
// ------------------------------------------------------------------------------------

pub const Color = extern struct { r: f64, g: f64, b: f64, a: f64 };

pub const Extent3D = extern struct {
    width: u32,
    height: u32 = 1,
    depth_or_array_layers: u32 = 1,
};

pub const Origin3D = extern struct { x: u32 = 0, y: u32 = 0, z: u32 = 0 };

pub const TextureDataLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    offset: u64 = 0,
    bytes_per_row: u32,
    rows_per_image: u32,
};

pub const ImageCopyTexture = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    texture: Texture,
    mip_level: u32 = 0,
    origin: Origin3D = .{},
    aspect: TextureAspect = .all,
};

pub const TextureViewDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    format: TextureFormat = .undef,
    dimension: TextureViewDimension = .undef,
    base_mip_level: u32 = 0,
    mip_level_count: u32 = 0xffff_ffff,
    base_array_layer: u32 = 0,
    array_layer_count: u32 = 0xffff_ffff,
    aspect: TextureAspect = .all,
};

pub const BufferDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    usage: BufferUsage,
    size: u64,
    mapped_at_creation: U32Bool = .false,
};

pub const TextureDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    usage: TextureUsage,
    dimension: TextureDimension = .tdim_2d,
    size: Extent3D,
    format: TextureFormat,
    mip_level_count: u32 = 1,
    sample_count: u32 = 1,
    view_format_count: usize = 0,
    view_formats: ?[*]const TextureFormat = null,
};

pub const SamplerDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    address_mode_u: AddressMode = .undef,
    address_mode_v: AddressMode = .undef,
    address_mode_w: AddressMode = .undef,
    mag_filter: FilterMode = .undef,
    min_filter: FilterMode = .undef,
    mipmap_filter: MipmapFilterMode = .undef,
    lod_min_clamp: f32 = 0.0,
    lod_max_clamp: f32 = 32.0,
    compare: CompareFunction = .undef,
    max_anisotropy: u16 = 1,
};

pub const AddressMode = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUAddressMode_Undefined)),
    repeat = @as(u32, @intCast(c.WGPUAddressMode_Repeat)),
    mirror_repeat = @as(u32, @intCast(c.WGPUAddressMode_MirrorRepeat)),
    clamp_to_edge = @as(u32, @intCast(c.WGPUAddressMode_ClampToEdge)),
};

pub const FilterMode = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUFilterMode_Undefined)),
    nearest = @as(u32, @intCast(c.WGPUFilterMode_Nearest)),
    linear = @as(u32, @intCast(c.WGPUFilterMode_Linear)),
};

pub const MipmapFilterMode = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUMipmapFilterMode_Undefined)),
    nearest = @as(u32, @intCast(c.WGPUMipmapFilterMode_Nearest)),
    linear = @as(u32, @intCast(c.WGPUMipmapFilterMode_Linear)),
};

pub const CompareFunction = enum(u32) {
    undef = @as(u32, @intCast(c.WGPUCompareFunction_Undefined)),
    never = @as(u32, @intCast(c.WGPUCompareFunction_Never)),
    less = @as(u32, @intCast(c.WGPUCompareFunction_Less)),
    equal = @as(u32, @intCast(c.WGPUCompareFunction_Equal)),
    less_equal = @as(u32, @intCast(c.WGPUCompareFunction_LessEqual)),
    greater = @as(u32, @intCast(c.WGPUCompareFunction_Greater)),
    not_equal = @as(u32, @intCast(c.WGPUCompareFunction_NotEqual)),
    greater_equal = @as(u32, @intCast(c.WGPUCompareFunction_GreaterEqual)),
    always = @as(u32, @intCast(c.WGPUCompareFunction_Always)),
};

pub const BlendComponent = extern struct {
    operation: BlendOperation = .add,
    src_factor: BlendFactor = .one,
    dst_factor: BlendFactor = .zero,
};

pub const BlendState = extern struct {
    color: BlendComponent,
    alpha: BlendComponent,
};

pub const ColorTargetState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    format: TextureFormat,
    blend: ?*const BlendState = null,
    write_mask: ColorWriteMask = ColorWriteMask.all,
};

pub const FragmentState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: ShaderModule,
    entry_point: [*:0]const u8,
    constant_count: usize = 0,
    constants: ?[*]const ConstantEntry = null,
    target_count: usize,
    targets: ?[*]const ColorTargetState,
};

pub const VertexAttribute = extern struct {
    format: VertexFormat,
    offset: u64,
    shader_location: u32,
};

pub const VertexBufferLayout = extern struct {
    array_stride: u64,
    step_mode: VertexStepMode = .vertex,
    attribute_count: usize,
    attributes: ?[*]const VertexAttribute,
};

pub const VertexState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: ShaderModule,
    entry_point: [*:0]const u8,
    constant_count: usize = 0,
    constants: ?[*]const ConstantEntry = null,
    buffer_count: usize,
    buffers: ?[*]const VertexBufferLayout,
};

pub const PrimitiveState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    topology: PrimitiveTopology = .triangle_list,
    strip_index_format: IndexFormat = .undef,
    front_face: FrontFace = .ccw,
    cull_mode: CullMode = .none,
    unclipped_depth: U32Bool = .false,
};

pub const FrontFace = enum(u32) {
    ccw = @as(u32, @intCast(c.WGPUFrontFace_CCW)),
    cw = @as(u32, @intCast(c.WGPUFrontFace_CW)),
};

pub const MultisampleState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    count: u32 = 1,
    mask: u32 = 0xFFFF_FFFF,
    alpha_to_coverage_enabled: U32Bool = .false,
};

pub const RenderPipelineDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: ?PipelineLayout = null,
    vertex: VertexState,
    primitive: PrimitiveState = .{},
    depth_stencil: ?*const anyopaque = null, // not used by ziggy_starclaw currently
    multisample: MultisampleState = .{},
    fragment: ?*const FragmentState = null,
};

pub const BindGroupLayoutEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding: u32,
    visibility: ShaderStage,
    binding_array_size: u32 = 0,
    buffer: BufferBindingLayout = .{},
    sampler: SamplerBindingLayout = .{},
    texture: TextureBindingLayout = .{},
    storage_texture: StorageTextureBindingLayout = .{},
};

pub const BufferBindingType = enum(u32) {
    binding_not_used = @as(u32, @intCast(c.WGPUBufferBindingType_BindingNotUsed)),
    undef = @as(u32, @intCast(c.WGPUBufferBindingType_Undefined)),
    uniform = @as(u32, @intCast(c.WGPUBufferBindingType_Uniform)),
    storage = @as(u32, @intCast(c.WGPUBufferBindingType_Storage)),
    read_only_storage = @as(u32, @intCast(c.WGPUBufferBindingType_ReadOnlyStorage)),
};

pub const BufferBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding_type: BufferBindingType = .undef,
    has_dynamic_offset: U32Bool = .false,
    min_binding_size: u64 = 0,
};

pub const SamplerBindingType = enum(u32) {
    binding_not_used = @as(u32, @intCast(c.WGPUSamplerBindingType_BindingNotUsed)),
    undef = @as(u32, @intCast(c.WGPUSamplerBindingType_Undefined)),
    filtering = @as(u32, @intCast(c.WGPUSamplerBindingType_Filtering)),
    non_filtering = @as(u32, @intCast(c.WGPUSamplerBindingType_NonFiltering)),
    comparison = @as(u32, @intCast(c.WGPUSamplerBindingType_Comparison)),
};

pub const SamplerBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding_type: SamplerBindingType = .undef,
};

pub const TextureSampleType = enum(u32) {
    binding_not_used = @as(u32, @intCast(c.WGPUTextureSampleType_BindingNotUsed)),
    undef = @as(u32, @intCast(c.WGPUTextureSampleType_Undefined)),
    float = @as(u32, @intCast(c.WGPUTextureSampleType_Float)),
    unfilterable_float = @as(u32, @intCast(c.WGPUTextureSampleType_UnfilterableFloat)),
    depth = @as(u32, @intCast(c.WGPUTextureSampleType_Depth)),
    sint = @as(u32, @intCast(c.WGPUTextureSampleType_Sint)),
    uint = @as(u32, @intCast(c.WGPUTextureSampleType_Uint)),
};

pub const TextureBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    sample_type: TextureSampleType = .undef,
    view_dimension: TextureViewDimension = .undef,
    multisampled: bool = false,
};

pub const StorageTextureAccess = enum(u32) {
    binding_not_used = @as(u32, @intCast(c.WGPUStorageTextureAccess_BindingNotUsed)),
    undef = @as(u32, @intCast(c.WGPUStorageTextureAccess_Undefined)),
    write_only = @as(u32, @intCast(c.WGPUStorageTextureAccess_WriteOnly)),
    read_only = @as(u32, @intCast(c.WGPUStorageTextureAccess_ReadOnly)),
    read_write = @as(u32, @intCast(c.WGPUStorageTextureAccess_ReadWrite)),
};

pub const StorageTextureBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    access: StorageTextureAccess = .undef,
    format: TextureFormat = .undef,
    view_dimension: TextureViewDimension = .undef,
};

pub const BindGroupLayoutDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    entry_count: usize,
    entries: ?[*]const BindGroupLayoutEntry,
};

pub const BindGroupEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding: u32,
    buffer: ?Buffer = null,
    offset: u64 = 0,
    size: u64 = 0,
    sampler: ?Sampler = null,
    texture_view: ?TextureView = null,
};

pub const BindGroupDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: BindGroupLayout,
    entry_count: usize,
    entries: ?[*]const BindGroupEntry,
};

pub const PipelineLayoutDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    bind_group_layout_count: usize,
    bind_group_layouts: ?[*]const BindGroupLayout,
};

pub const CommandEncoderDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const CommandBufferDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const RenderPassColorAttachment = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    view: ?TextureView,
    depth_slice: u32 = 0xFFFF_FFFF,
    resolve_target: ?TextureView = null,
    load_op: LoadOp,
    store_op: StoreOp,
    clear_value: Color = .{ .r = 0, .g = 0, .b = 0, .a = 0 },
};

pub const RenderPassDepthStencilAttachment = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    view: TextureView,
    depth_load_op: LoadOp = .undef,
    depth_store_op: StoreOp = .undef,
    depth_clear_value: f32 = 0.0,
    depth_read_only: U32Bool = .false,
    stencil_load_op: LoadOp = .undef,
    stencil_store_op: StoreOp = .undef,
    stencil_clear_value: u32 = 0,
    stencil_read_only: U32Bool = .false,
};

pub const RenderPassDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    color_attachment_count: usize,
    color_attachments: ?[*]const RenderPassColorAttachment,
    depth_stencil_attachment: ?*const RenderPassDepthStencilAttachment = null,
    occlusion_query_set: ?QuerySet = null,
    timestamp_write_count: usize = 0,
    timestamp_writes: ?*const anyopaque = null,
};

pub const QueueDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const RequiredLimits = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    limits: Limits = .{},
};

pub const Limits = extern struct {
    max_texture_dimension_1d: u32 = 0,
    max_texture_dimension_2d: u32 = 0,
    max_texture_dimension_3d: u32 = 0,
    max_texture_array_layers: u32 = 0,
    max_bind_groups: u32 = 0,
    max_bind_groups_plus_vertex_buffers: u32 = 0,
    max_bindings_per_bind_group: u32 = 0,
    max_dynamic_uniform_buffers_per_pipeline_layout: u32 = 0,
    max_dynamic_storage_buffers_per_pipeline_layout: u32 = 0,
    max_sampled_textures_per_shader_stage: u32 = 0,
    max_samplers_per_shader_stage: u32 = 0,
    max_storage_buffers_per_shader_stage: u32 = 0,
    max_storage_textures_per_shader_stage: u32 = 0,
    max_uniform_buffers_per_shader_stage: u32 = 0,
    max_uniform_buffer_binding_size: u64 = 0,
    max_storage_buffer_binding_size: u64 = 0,
    min_uniform_buffer_offset_alignment: u32 = 0,
    min_storage_buffer_offset_alignment: u32 = 0,
    max_vertex_buffers: u32 = 0,
    max_buffer_size: u64 = 0,
    max_vertex_attributes: u32 = 0,
    max_vertex_buffer_array_stride: u32 = 0,
    max_inter_stage_shader_components: u32 = 0,
    max_inter_stage_shader_variables: u32 = 0,
    max_color_attachments: u32 = 0,
    max_color_attachment_bytes_per_sample: u32 = 0,
    max_compute_workgroup_storage_size: u32 = 0,
    max_compute_invocations_per_workgroup: u32 = 0,
    max_compute_workgroup_size_x: u32 = 0,
    max_compute_workgroup_size_y: u32 = 0,
    max_compute_workgroup_size_z: u32 = 0,
    max_compute_workgroups_per_dimension: u32 = 0,
};

pub const FeatureName = enum(u32) {
    // Minimal placeholder; ziggy_starclaw doesn't request features on wasm currently.
    undef = 0,
};

pub const DeviceLostReason = enum(u32) {
    unknown = @as(u32, @intCast(c.WGPUDeviceLostReason_Unknown)),
    destroyed = @as(u32, @intCast(c.WGPUDeviceLostReason_Destroyed)),
    callback_cancelled = @as(u32, @intCast(c.WGPUDeviceLostReason_CallbackCancelled)),
    failed_creation = @as(u32, @intCast(c.WGPUDeviceLostReason_FailedCreation)),
};

pub const DeviceLostCallback = *const fn (reason: DeviceLostReason, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.c) void;
pub const UncapturedErrorCallback = *const fn (err_type: ErrorType, message: ?[*:0]const u8, userdata: ?*anyopaque) callconv(.c) void;

pub const DeviceDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    required_features_count: usize = 0,
    required_features: ?[*]const FeatureName = null,
    required_limits: ?*const RequiredLimits = null,
    default_queue: QueueDescriptor = .{},
    device_lost_callback: ?DeviceLostCallback = null,
    device_lost_user_data: ?*anyopaque = null,
};

pub const RequestAdapterOptions = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    compatible_surface: ?Surface = null,
    power_preference: PowerPreference = .undef,
    backend_type: BackendType = .undef,
    force_fallback_adapter: bool = false,
    compatibility_mode: bool = false,
};

pub const AdapterProperties = extern struct {
    next_in_chain: ?*anyopaque = null,
    vendor_id: u32 = 0,
    device_id: u32 = 0,
    name: [*:0]const u8 = "",
    driver_description: [*:0]const u8 = "",
    adapter_type: AdapterType = .unknown,
    backend_type: BackendType = .undef,
    compatibility_mode: bool = false,
};

pub const ConstantEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    key: [*:0]const u8,
    value: f64,
};

pub const ProgrammableStageDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: ShaderModule,
    entry_point: [*:0]const u8,
    constant_count: usize = 0,
    constants: ?[*]const ConstantEntry = null,
};

pub const ComputePipelineDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: ?PipelineLayout = null,
    compute: ProgrammableStageDescriptor,
};

pub const ComputePassDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    timestamp_write_count: usize = 0,
    timestamp_writes: ?*const anyopaque = null,
};

pub const ShaderModuleDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const ShaderModuleWGSLDescriptor = extern struct {
    chain: ChainedStruct,
    code: [*:0]const u8,
};

// Dawn extension used by native Dawn; zgpu still builds the struct even on wasm.
// We ignore it when translating to `webgpu.h`.
pub const DawnTogglesDescriptor = extern struct {
    chain: ChainedStruct,
    enabled_toggles_count: usize = 0,
    enabled_toggles: ?[*]const [*:0]const u8 = null,
    disabled_toggles_count: usize = 0,
    disabled_toggles: ?[*]const [*:0]const u8 = null,
};

// Chained struct compatibility (legacy names)
pub const ChainedStruct = extern struct {
    next: ?*const ChainedStruct = null,
    struct_type: StructType,
};

pub const StructType = enum(u32) {
    invalid = 0,
    surface_descriptor_from_canvas_html_selector = 4,
    shader_module_wgsl_descriptor = 6,
    dawn_toggles_descriptor = 0x000003F0,
};

pub const SurfaceDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const SurfaceDescriptorFromCanvasHTMLSelector = extern struct {
    chain: ChainedStruct,
    selector: [*:0]const u8,
};

pub const SwapChainDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    usage: TextureUsage,
    format: TextureFormat,
    width: u32,
    height: u32,
    present_mode: PresentMode = .fifo,
};

// ------------------------------------------------------------------------------------
// Object handles + methods
// ------------------------------------------------------------------------------------

pub const InstanceDescriptor = extern struct { next_in_chain: ?*const ChainedStruct = null };

pub inline fn createInstance(_: anytype) Instance {
    const inst = c.wgpuCreateInstance(null).?;
    g_instance = inst;
    return @ptrCast(inst);
}

pub const Instance = *opaque {
    pub fn createSurface(instance: Instance, descriptor: SurfaceDescriptor) Surface {
        // Only canvas selector is supported on wasm.
        if (descriptor.next_in_chain) |chain| {
            if (chain.struct_type == .surface_descriptor_from_canvas_html_selector) {
                const src: *const SurfaceDescriptorFromCanvasHTMLSelector = @ptrCast(chain);
                var canvas: c.WGPUEmscriptenSurfaceSourceCanvasHTMLSelector = .{
                    .chain = .{
                        .next = null,
                        .sType = @intCast(c.WGPUSType_EmscriptenSurfaceSourceCanvasHTMLSelector),
                    },
                    .selector = sv(src.selector),
                };
                var sd: c.WGPUSurfaceDescriptor = .{
                    .nextInChain = @ptrCast(&canvas.chain),
                    .label = sv(descriptor.label),
                };
                return @ptrCast(c.wgpuInstanceCreateSurface(@ptrCast(instance), &sd).?);
            }
        }
        var sd2: c.WGPUSurfaceDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
        };
        return @ptrCast(c.wgpuInstanceCreateSurface(@ptrCast(instance), &sd2).?);
    }

    pub fn requestAdapter(
        instance: Instance,
        options: RequestAdapterOptions,
        callback: RequestAdapterCallback,
        userdata: ?*anyopaque,
    ) void {
        const Ctx = struct { cb: RequestAdapterCallback, ud: ?*anyopaque };
        const ctx = std.heap.c_allocator.create(Ctx) catch unreachable;
        ctx.* = .{ .cb = callback, .ud = userdata };

        const bridge = struct {
            fn cb(
                status: c.WGPURequestAdapterStatus,
                adapter: c.WGPUAdapter,
                message: c.WGPUStringView,
                userdata1: ?*anyopaque,
                userdata2: ?*anyopaque,
            ) callconv(.c) void {
                _ = message;
                _ = userdata2;
                const p: *Ctx = @ptrCast(@alignCast(userdata1.?));
                const st: RequestAdapterStatus = switch (status) {
                    c.WGPURequestAdapterStatus_Success => .success,
                    c.WGPURequestAdapterStatus_Unavailable => .unavailable,
                    c.WGPURequestAdapterStatus_Error => .err,
                    else => .unknown,
                };
                p.cb(st, @ptrCast(adapter.?), null, p.ud);
                std.heap.c_allocator.destroy(p);
            }
        }.cb;

        var opt: c.WGPURequestAdapterOptions = .{
            .nextInChain = null,
            .featureLevel = @intCast(c.WGPUFeatureLevel_Core),
            .powerPreference = @intCast(@intFromEnum(options.power_preference)),
            .forceFallbackAdapter = if (options.force_fallback_adapter) 1 else 0,
            .backendType = @intCast(@intFromEnum(options.backend_type)),
            .compatibleSurface = if (options.compatible_surface) |s| @ptrCast(s) else null,
        };
        const cbinfo: c.WGPURequestAdapterCallbackInfo = .{
            .nextInChain = null,
            .mode = @intCast(c.WGPUCallbackMode_AllowSpontaneous),
            .callback = bridge,
            .userdata1 = ctx,
            .userdata2 = null,
        };
        _ = c.wgpuInstanceRequestAdapter(@ptrCast(instance), &opt, cbinfo);
    }

    pub fn release(instance: Instance) void {
        c.wgpuInstanceRelease(@ptrCast(instance));
    }
};

pub const RequestAdapterCallback = *const fn (
    status: RequestAdapterStatus,
    adapter: Adapter,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) callconv(.c) void;

pub const Adapter = *opaque {
    pub fn getProperties(adapter: Adapter, props: *AdapterProperties) void {
        // zgpu overwrites these on wasm anyway.
        _ = adapter;
        props.* = .{};
    }

    pub fn requestDevice(
        adapter: Adapter,
        descriptor: DeviceDescriptor,
        callback: RequestDeviceCallback,
        userdata: ?*anyopaque,
    ) void {
        const Ctx = struct { cb: RequestDeviceCallback, ud: ?*anyopaque };
        const ctx = std.heap.c_allocator.create(Ctx) catch unreachable;
        ctx.* = .{ .cb = callback, .ud = userdata };

        const bridge = struct {
            fn cb(
                status: c.WGPURequestDeviceStatus,
                device: c.WGPUDevice,
                message: c.WGPUStringView,
                userdata1: ?*anyopaque,
                userdata2: ?*anyopaque,
            ) callconv(.c) void {
                _ = message;
                _ = userdata2;
                const p: *Ctx = @ptrCast(@alignCast(userdata1.?));
                const st: RequestDeviceStatus = switch (status) {
                    c.WGPURequestDeviceStatus_Success => .success,
                    c.WGPURequestDeviceStatus_Error => .err,
                    else => .unknown,
                };
                p.cb(st, @ptrCast(device.?), null, p.ud);
                std.heap.c_allocator.destroy(p);
            }
        }.cb;

        var dd: c.WGPUDeviceDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .requiredFeatureCount = descriptor.required_features_count,
            .requiredFeatures = if (descriptor.required_features) |p| @ptrCast(p) else null,
            .requiredLimits = null, // legacy `RequiredLimits` doesn't match the new struct; keep null on wasm.
            .defaultQueue = .{ .nextInChain = null, .label = sv(descriptor.default_queue.label) },
            .deviceLostCallbackInfo = .{ .nextInChain = null, .mode = @intCast(c.WGPUCallbackMode_AllowSpontaneous), .callback = null, .userdata1 = null, .userdata2 = null },
            .uncapturedErrorCallbackInfo = .{ .nextInChain = null, .callback = uncapturedErrorTrampoline, .userdata1 = null, .userdata2 = null },
        };

        const cbinfo: c.WGPURequestDeviceCallbackInfo = .{
            .nextInChain = null,
            .mode = @intCast(c.WGPUCallbackMode_AllowSpontaneous),
            .callback = bridge,
            .userdata1 = ctx,
            .userdata2 = null,
        };
        _ = c.wgpuAdapterRequestDevice(@ptrCast(adapter), &dd, cbinfo);
    }

    pub fn release(adapter: Adapter) void {
        c.wgpuAdapterRelease(@ptrCast(adapter));
    }
};

pub const RequestDeviceCallback = *const fn (
    status: RequestDeviceStatus,
    device: Device,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) callconv(.c) void;

pub const Queue = *opaque {
    pub fn submit(queue: Queue, command_buffers: []const CommandBuffer) void {
        c.wgpuQueueSubmit(@ptrCast(queue), command_buffers.len, @ptrCast(command_buffers.ptr));
    }

    pub fn onSubmittedWorkDone(queue: Queue, signal_value: u64, callback: QueueWorkDoneCallback, userdata: ?*anyopaque) void {
        _ = signal_value;
        const Ctx = struct { cb: QueueWorkDoneCallback, ud: ?*anyopaque };
        const ctx = std.heap.c_allocator.create(Ctx) catch unreachable;
        ctx.* = .{ .cb = callback, .ud = userdata };

        const bridge = struct {
            fn cb(
                status: c.WGPUQueueWorkDoneStatus,
                message: c.WGPUStringView,
                userdata1: ?*anyopaque,
                userdata2: ?*anyopaque,
            ) callconv(.c) void {
                _ = message;
                _ = userdata2;
                const p: *Ctx = @ptrCast(@alignCast(userdata1.?));
                const st: QueueWorkDoneStatus = switch (status) {
                    c.WGPUQueueWorkDoneStatus_Success => .success,
                    c.WGPUQueueWorkDoneStatus_Error => .err,
                    else => .callback_cancelled,
                };
                p.cb(st, p.ud);
                std.heap.c_allocator.destroy(p);
            }
        }.cb;

        const cbinfo: c.WGPUQueueWorkDoneCallbackInfo = .{
            .nextInChain = null,
            .mode = @intCast(c.WGPUCallbackMode_AllowSpontaneous),
            .callback = bridge,
            .userdata1 = ctx,
            .userdata2 = null,
        };
        _ = c.wgpuQueueOnSubmittedWorkDone(@ptrCast(queue), cbinfo);
    }

    pub fn writeBuffer(queue: Queue, buffer: Buffer, buffer_offset: usize, comptime T: type, data: []const T) void {
        c.wgpuQueueWriteBuffer(
            @ptrCast(queue),
            @ptrCast(buffer),
            @intCast(buffer_offset),
            @ptrCast(data.ptr),
            data.len * @sizeOf(T),
        );
    }

    pub fn writeTexture(
        queue: Queue,
        destination: ImageCopyTexture,
        data_layout: TextureDataLayout,
        write_size: Extent3D,
        comptime T: type,
        data: []const T,
    ) void {
        const dst: c.WGPUTexelCopyTextureInfo = .{
            .texture = @ptrCast(destination.texture),
            .mipLevel = destination.mip_level,
            .origin = .{ .x = destination.origin.x, .y = destination.origin.y, .z = destination.origin.z },
            .aspect = @intCast(@intFromEnum(destination.aspect)),
        };
        const layout: c.WGPUTexelCopyBufferLayout = .{
            .offset = data_layout.offset,
            .bytesPerRow = data_layout.bytes_per_row,
            .rowsPerImage = data_layout.rows_per_image,
        };
        const size: c.WGPUExtent3D = .{
            .width = write_size.width,
            .height = write_size.height,
            .depthOrArrayLayers = write_size.depth_or_array_layers,
        };
        c.wgpuQueueWriteTexture(
            @ptrCast(queue),
            &dst,
            @ptrCast(data.ptr),
            @as(usize, @intCast(data.len)) * @sizeOf(T),
            &layout,
            &size,
        );
    }

    pub fn release(queue: Queue) void {
        c.wgpuQueueRelease(@ptrCast(queue));
    }
};

pub const QueueWorkDoneCallback = *const fn (status: QueueWorkDoneStatus, userdata: ?*anyopaque) callconv(.c) void;

pub const Device = *opaque {
    pub fn getQueue(device: Device) Queue {
        return @ptrCast(c.wgpuDeviceGetQueue(@ptrCast(device)).?);
    }

    pub fn tick(_: Device) void {
        if (g_instance) |inst| c.wgpuInstanceProcessEvents(inst);
    }

    pub fn setUncapturedErrorCallback(_: Device, callback: UncapturedErrorCallback, userdata: ?*anyopaque) void {
        g_uncaptured_error_cb = callback;
        g_uncaptured_error_ud = userdata;
    }

    pub fn createBuffer(device: Device, descriptor: BufferDescriptor) Buffer {
        var bd: c.WGPUBufferDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .usage = @bitCast(descriptor.usage),
            .size = descriptor.size,
            .mappedAtCreation = boolToC(descriptor.mapped_at_creation),
        };
        return @ptrCast(c.wgpuDeviceCreateBuffer(@ptrCast(device), &bd).?);
    }

    pub fn createTexture(device: Device, descriptor: TextureDescriptor) Texture {
        var td: c.WGPUTextureDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .usage = @bitCast(descriptor.usage),
            .dimension = @intCast(@intFromEnum(descriptor.dimension)),
            .size = .{
                .width = descriptor.size.width,
                .height = descriptor.size.height,
                .depthOrArrayLayers = descriptor.size.depth_or_array_layers,
            },
            .format = @intCast(@intFromEnum(descriptor.format)),
            .mipLevelCount = descriptor.mip_level_count,
            .sampleCount = descriptor.sample_count,
            .viewFormatCount = descriptor.view_format_count,
            .viewFormats = if (descriptor.view_formats) |p| @ptrCast(p) else null,
        };
        return @ptrCast(c.wgpuDeviceCreateTexture(@ptrCast(device), &td).?);
    }

    pub fn createSampler(device: Device, descriptor: SamplerDescriptor) Sampler {
        var sd: c.WGPUSamplerDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .addressModeU = @intCast(@intFromEnum(descriptor.address_mode_u)),
            .addressModeV = @intCast(@intFromEnum(descriptor.address_mode_v)),
            .addressModeW = @intCast(@intFromEnum(descriptor.address_mode_w)),
            .magFilter = @intCast(@intFromEnum(descriptor.mag_filter)),
            .minFilter = @intCast(@intFromEnum(descriptor.min_filter)),
            .mipmapFilter = @intCast(@intFromEnum(descriptor.mipmap_filter)),
            .lodMinClamp = descriptor.lod_min_clamp,
            .lodMaxClamp = descriptor.lod_max_clamp,
            .compare = @intCast(@intFromEnum(descriptor.compare)),
            .maxAnisotropy = descriptor.max_anisotropy,
        };
        return @ptrCast(c.wgpuDeviceCreateSampler(@ptrCast(device), &sd).?);
    }

    pub fn createBindGroupLayout(device: Device, descriptor: BindGroupLayoutDescriptor) BindGroupLayout {
        const count = descriptor.entry_count;
        const src_entries = descriptor.entries orelse null;

        var entries_c = std.heap.c_allocator.alloc(c.WGPUBindGroupLayoutEntry, count) catch unreachable;
        defer std.heap.c_allocator.free(entries_c);

        if (count > 0) {
            const src = src_entries.?;
            for (entries_c, 0..) |*dst, i| {
                const e = src[i];
                dst.* = .{
                    .nextInChain = null,
                    .binding = e.binding,
                    .visibility = @bitCast(e.visibility),
                    .bindingArraySize = e.binding_array_size,
                    .buffer = .{
                        .nextInChain = null,
                        .type = @intCast(@intFromEnum(e.buffer.binding_type)),
                        .hasDynamicOffset = boolToC(e.buffer.has_dynamic_offset),
                        .minBindingSize = e.buffer.min_binding_size,
                    },
                    .sampler = .{
                        .nextInChain = null,
                        .type = @intCast(@intFromEnum(e.sampler.binding_type)),
                    },
                    .texture = .{
                        .nextInChain = null,
                        .sampleType = @intCast(@intFromEnum(e.texture.sample_type)),
                        .viewDimension = @intCast(@intFromEnum(e.texture.view_dimension)),
                        .multisampled = if (e.texture.multisampled) 1 else 0,
                    },
                    .storageTexture = .{
                        .nextInChain = null,
                        .access = @intCast(@intFromEnum(e.storage_texture.access)),
                        .format = @intCast(@intFromEnum(e.storage_texture.format)),
                        .viewDimension = @intCast(@intFromEnum(e.storage_texture.view_dimension)),
                    },
                };
            }
        }

        var d: c.WGPUBindGroupLayoutDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .entryCount = count,
            .entries = if (count > 0) entries_c.ptr else null,
        };
        return @ptrCast(c.wgpuDeviceCreateBindGroupLayout(@ptrCast(device), &d).?);
    }

    pub fn createBindGroup(device: Device, descriptor: BindGroupDescriptor) BindGroup {
        var d: c.WGPUBindGroupDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .layout = @ptrCast(descriptor.layout),
            .entryCount = descriptor.entry_count,
            .entries = if (descriptor.entries) |p| @ptrCast(p) else null,
        };
        return @ptrCast(c.wgpuDeviceCreateBindGroup(@ptrCast(device), &d).?);
    }

    pub fn createPipelineLayout(device: Device, descriptor: PipelineLayoutDescriptor) PipelineLayout {
        var d: c.WGPUPipelineLayoutDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .bindGroupLayoutCount = descriptor.bind_group_layout_count,
            .bindGroupLayouts = if (descriptor.bind_group_layouts) |p| @ptrCast(p) else null,
            .immediateSize = 0,
        };
        return @ptrCast(c.wgpuDeviceCreatePipelineLayout(@ptrCast(device), &d).?);
    }

    pub fn createShaderModule(device: Device, descriptor: ShaderModuleDescriptor) ShaderModule {
        // Handle WGSL chained descriptor used by zgpu.
        var src_wgsl: c.WGPUShaderSourceWGSL = undefined;
        var smd: c.WGPUShaderModuleDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
        };
        if (descriptor.next_in_chain) |chain| {
            if (chain.struct_type == .shader_module_wgsl_descriptor) {
                const w: *const ShaderModuleWGSLDescriptor = @ptrCast(chain);
                src_wgsl = .{
                    .chain = .{
                        .next = null,
                        .sType = @intCast(c.WGPUSType_ShaderSourceWGSL),
                    },
                    .code = sv(w.code),
                };
                smd.nextInChain = @ptrCast(&src_wgsl.chain);
            }
        }
        return @ptrCast(c.wgpuDeviceCreateShaderModule(@ptrCast(device), &smd).?);
    }

    pub fn createRenderPipeline(device: Device, descriptor: RenderPipelineDescriptor) RenderPipeline {
        // Convert the string-bearing nested structures (entry_point) to StringView.
        // All other nested structures are layout-compatible with `webgpu.h`.
        const vs: c.WGPUVertexState = .{
            .nextInChain = null,
            .module = @ptrCast(descriptor.vertex.module),
            .entryPoint = sv(descriptor.vertex.entry_point),
            .constantCount = 0,
            .constants = null,
            .bufferCount = descriptor.vertex.buffer_count,
            .buffers = if (descriptor.vertex.buffers) |p| @ptrCast(p) else null,
        };

        var fs: c.WGPUFragmentState = undefined;
        var fs_ptr: ?*const c.WGPUFragmentState = null;
        if (descriptor.fragment) |f| {
            fs = .{
                .nextInChain = null,
                .module = @ptrCast(f.module),
                .entryPoint = sv(f.entry_point),
                .constantCount = 0,
                .constants = null,
                .targetCount = f.target_count,
                .targets = if (f.targets) |p| @ptrCast(p) else null,
            };
            fs_ptr = &fs;
        }

        var rp: c.WGPURenderPipelineDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .layout = if (descriptor.layout) |pl| @ptrCast(pl) else null,
            .vertex = vs,
            .primitive = @bitCast(descriptor.primitive),
            .depthStencil = null,
            .multisample = @bitCast(descriptor.multisample),
            .fragment = fs_ptr,
        };
        return @ptrCast(c.wgpuDeviceCreateRenderPipeline(@ptrCast(device), &rp).?);
    }

    pub fn createComputePipeline(device: Device, descriptor: ComputePipelineDescriptor) ComputePipeline {
        const cs: c.WGPUComputeState = .{
            .nextInChain = null,
            .module = @ptrCast(descriptor.compute.module),
            .entryPoint = sv(descriptor.compute.entry_point),
            .constantCount = 0,
            .constants = null,
        };
        var d: c.WGPUComputePipelineDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .layout = if (descriptor.layout) |pl| @ptrCast(pl) else null,
            .compute = cs,
        };
        return @ptrCast(c.wgpuDeviceCreateComputePipeline(@ptrCast(device), &d).?);
    }

    pub fn createCommandEncoder(device: Device, descriptor: ?*const CommandEncoderDescriptor) CommandEncoder {
        var ced: c.WGPUCommandEncoderDescriptor = .{
            .nextInChain = null,
            .label = sv(if (descriptor) |d| d.label else null),
        };
        return @ptrCast(c.wgpuDeviceCreateCommandEncoder(@ptrCast(device), &ced).?);
    }

    pub fn createSwapChain(device: Device, surface: Surface, descriptor: SwapChainDescriptor) SwapChain {
        return SwapChain.create(device, surface, descriptor);
    }

    pub fn release(device: Device) void {
        c.wgpuDeviceRelease(@ptrCast(device));
    }
};

pub const Surface = *opaque {
    pub fn release(surface: Surface) void {
        c.wgpuSurfaceRelease(@ptrCast(surface));
    }
};

pub const SwapChain = struct {
    device: Device,
    surface: Surface,
    config: c.WGPUSurfaceConfiguration,
    acquired: ?Texture = null,

    fn create(device: Device, surface: Surface, descriptor: SwapChainDescriptor) SwapChain {
        var cfg: c.WGPUSurfaceConfiguration = .{
            .nextInChain = null,
            .device = @ptrCast(device),
            .format = @intCast(@intFromEnum(descriptor.format)),
            .usage = @bitCast(descriptor.usage),
            .width = descriptor.width,
            .height = descriptor.height,
            .viewFormatCount = 0,
            .viewFormats = null,
            .alphaMode = @intCast(c.WGPUCompositeAlphaMode_Auto),
            .presentMode = @intCast(@intFromEnum(descriptor.present_mode)),
        };
        c.wgpuSurfaceConfigure(@ptrCast(surface), &cfg);
        return .{ .device = device, .surface = surface, .config = cfg };
    }

    pub fn getCurrentTextureView(sc: *SwapChain) TextureView {
        // If the user didn't call `present()` in a previous frame (or called
        // `getCurrentTextureView()` multiple times), don't leak the acquired texture.
        if (sc.acquired) |t| {
            t.release();
            sc.acquired = null;
        }

        var st: c.WGPUSurfaceTexture = .{ .nextInChain = null, .texture = null, .status = @intCast(c.WGPUSurfaceGetCurrentTextureStatus_Error) };
        var attempts: u32 = 0;
        while (attempts < 2) : (attempts += 1) {
            c.wgpuSurfaceGetCurrentTexture(@ptrCast(sc.surface), &st);
            if (st.status == c.WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal or
                st.status == c.WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal)
            {
                break;
            }

            // These can happen legitimately on the web (resize, tab backgrounding, etc.).
            if (st.status == c.WGPUSurfaceGetCurrentTextureStatus_Outdated or
                st.status == c.WGPUSurfaceGetCurrentTextureStatus_Lost)
            {
                // Re-configure with our last known config and try again once.
                c.wgpuSurfaceConfigure(@ptrCast(sc.surface), &sc.config);
                continue;
            }

            // Timeout/Error/OutOfMemory: skip this frame (callers may still run
            // their resize/recreate logic in `GraphicsContext.present()`).
            return @ptrFromInt(0);
        }

        if (st.status != c.WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal and
            st.status != c.WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal)
        {
            return @ptrFromInt(0);
        }

        sc.acquired = @ptrCast(st.texture orelse return @ptrFromInt(0));
        return sc.acquired.?.createView(.{});
    }

    pub fn present(sc: *SwapChain) void {
        _ = c.wgpuSurfacePresent(@ptrCast(sc.surface));
        if (sc.acquired) |t| {
            t.release();
            sc.acquired = null;
        }
    }

    pub fn release(sc: *const SwapChain) void {
        const m: *SwapChain = @constCast(sc);
        if (m.acquired) |t| {
            t.release();
            m.acquired = null;
        }
        c.wgpuSurfaceUnconfigure(@ptrCast(sc.surface));
    }
};

pub const Buffer = *opaque {
    pub fn destroy(buffer: Buffer) void {
        c.wgpuBufferDestroy(@ptrCast(buffer));
    }

    pub fn mapAsync(
        buffer: Buffer,
        mode: MapMode,
        offset: u64,
        size: u64,
        callback: BufferMapCallback,
        userdata: ?*anyopaque,
    ) void {
        const Ctx = struct { cb: BufferMapCallback, ud: ?*anyopaque };
        const ctx = std.heap.c_allocator.create(Ctx) catch unreachable;
        ctx.* = .{ .cb = callback, .ud = userdata };

        const bridge = struct {
            fn cb(
                status: c.WGPUMapAsyncStatus,
                message: c.WGPUStringView,
                userdata1: ?*anyopaque,
                userdata2: ?*anyopaque,
            ) callconv(.c) void {
                _ = message;
                _ = userdata2;
                const p: *Ctx = @ptrCast(@alignCast(userdata1.?));
                const st: BufferMapAsyncStatus = switch (status) {
                    c.WGPUMapAsyncStatus_Success => .success,
                    c.WGPUMapAsyncStatus_CallbackCancelled => .callback_cancelled,
                    c.WGPUMapAsyncStatus_Aborted => .aborted,
                    c.WGPUMapAsyncStatus_Error => .err,
                    else => .unknown,
                };
                p.cb(st, p.ud);
                std.heap.c_allocator.destroy(p);
            }
        }.cb;

        const cbinfo: c.WGPUBufferMapCallbackInfo = .{
            .nextInChain = null,
            .mode = @intCast(c.WGPUCallbackMode_AllowSpontaneous),
            .callback = bridge,
            .userdata1 = ctx,
            .userdata2 = null,
        };
        _ = c.wgpuBufferMapAsync(@ptrCast(buffer), @bitCast(mode), @intCast(offset), @intCast(size), cbinfo);
    }

    pub fn getMappedRange(buffer: Buffer, comptime T: type, offset: usize, size: usize) ?[]T {
        const p = c.wgpuBufferGetMappedRange(@ptrCast(buffer), offset, size);
        if (p == null) return null;
        return @as([*]T, @ptrCast(@alignCast(p.?)))[0 .. size / @sizeOf(T)];
    }

    pub fn unmap(buffer: Buffer) void {
        c.wgpuBufferUnmap(@ptrCast(buffer));
    }

    pub fn release(buffer: Buffer) void {
        c.wgpuBufferRelease(@ptrCast(buffer));
    }
};

pub const BufferMapCallback = *const fn (status: BufferMapAsyncStatus, userdata: ?*anyopaque) callconv(.c) void;

pub const Texture = *opaque {
    pub fn destroy(texture: Texture) void {
        c.wgpuTextureDestroy(@ptrCast(texture));
    }

    pub fn createView(texture: Texture, descriptor: TextureViewDescriptor) TextureView {
        var tvd: c.WGPUTextureViewDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .format = @intCast(@intFromEnum(descriptor.format)),
            .dimension = @intCast(@intFromEnum(descriptor.dimension)),
            .baseMipLevel = descriptor.base_mip_level,
            .mipLevelCount = descriptor.mip_level_count,
            .baseArrayLayer = descriptor.base_array_layer,
            .arrayLayerCount = descriptor.array_layer_count,
            .aspect = @intCast(@intFromEnum(descriptor.aspect)),
        };
        return @ptrCast(c.wgpuTextureCreateView(@ptrCast(texture), &tvd).?);
    }

    pub fn release(texture: Texture) void {
        c.wgpuTextureRelease(@ptrCast(texture));
    }
};

pub const TextureView = *opaque {
    pub fn release(view: TextureView) void {
        if (@intFromPtr(view) == 0) return;
        c.wgpuTextureViewRelease(@ptrCast(view));
    }
};

pub const Sampler = *opaque {
    pub fn release(sampler: Sampler) void {
        c.wgpuSamplerRelease(@ptrCast(sampler));
    }
};

pub const ShaderModule = *opaque {
    pub fn release(sm: ShaderModule) void {
        c.wgpuShaderModuleRelease(@ptrCast(sm));
    }
};

pub const BindGroupLayout = *opaque {
    pub fn release(bgl: BindGroupLayout) void {
        c.wgpuBindGroupLayoutRelease(@ptrCast(bgl));
    }
};

pub const BindGroup = *opaque {
    pub fn release(bg: BindGroup) void {
        c.wgpuBindGroupRelease(@ptrCast(bg));
    }
};

pub const PipelineLayout = *opaque {
    pub fn release(pl: PipelineLayout) void {
        c.wgpuPipelineLayoutRelease(@ptrCast(pl));
    }
};

pub const RenderPipeline = *opaque {
    pub fn getBindGroupLayout(render_pipeline: RenderPipeline, group_index: u32) BindGroupLayout {
        return @ptrCast(c.wgpuRenderPipelineGetBindGroupLayout(@ptrCast(render_pipeline), group_index).?);
    }

    pub fn release(rp: RenderPipeline) void {
        c.wgpuRenderPipelineRelease(@ptrCast(rp));
    }
};

pub const ComputePipeline = *opaque {
    pub fn getBindGroupLayout(compute_pipeline: ComputePipeline, group_index: u32) BindGroupLayout {
        return @ptrCast(c.wgpuComputePipelineGetBindGroupLayout(@ptrCast(compute_pipeline), group_index).?);
    }

    pub fn release(cp: ComputePipeline) void {
        c.wgpuComputePipelineRelease(@ptrCast(cp));
    }
};

pub const QuerySet = *opaque {};

pub const CommandBuffer = *opaque {
    pub fn release(cb: CommandBuffer) void {
        c.wgpuCommandBufferRelease(@ptrCast(cb));
    }
};

pub const CommandEncoder = *opaque {
    pub fn beginRenderPass(encoder: CommandEncoder, descriptor: RenderPassDescriptor) RenderPassEncoder {
        // New API has `timestampWrites` instead of explicit array fields; ignore unless used.
        var depth: c.WGPURenderPassDepthStencilAttachment = undefined;
        const depth_ptr: ?*const c.WGPURenderPassDepthStencilAttachment = if (descriptor.depth_stencil_attachment) |d| blk: {
            depth = .{
                .nextInChain = null,
                .view = @ptrCast(d.view),
                .depthLoadOp = @intCast(@intFromEnum(d.depth_load_op)),
                .depthStoreOp = @intCast(@intFromEnum(d.depth_store_op)),
                .depthClearValue = d.depth_clear_value,
                .depthReadOnly = boolToC(d.depth_read_only),
                .stencilLoadOp = @intCast(@intFromEnum(d.stencil_load_op)),
                .stencilStoreOp = @intCast(@intFromEnum(d.stencil_store_op)),
                .stencilClearValue = d.stencil_clear_value,
                .stencilReadOnly = boolToC(d.stencil_read_only),
            };
            break :blk &depth;
        } else null;

        var rpd: c.WGPURenderPassDescriptor = .{
            .nextInChain = null,
            .label = sv(descriptor.label),
            .colorAttachmentCount = descriptor.color_attachment_count,
            .colorAttachments = if (descriptor.color_attachments) |p| @ptrCast(p) else null,
            .depthStencilAttachment = depth_ptr,
            .occlusionQuerySet = if (descriptor.occlusion_query_set) |qs| @ptrCast(qs) else null,
            .timestampWrites = null,
        };
        return @ptrCast(c.wgpuCommandEncoderBeginRenderPass(@ptrCast(encoder), &rpd).?);
    }

    pub fn beginComputePass(encoder: CommandEncoder, descriptor: ?*const ComputePassDescriptor) ComputePassEncoder {
        var cpd: c.WGPUComputePassDescriptor = .{
            .nextInChain = null,
            .label = sv(if (descriptor) |d| d.label else null),
            .timestampWrites = null,
        };
        return @ptrCast(c.wgpuCommandEncoderBeginComputePass(@ptrCast(encoder), &cpd).?);
    }

    pub fn copyBufferToBuffer(encoder: CommandEncoder, src: Buffer, src_offset: u64, dst: Buffer, dst_offset: u64, size: u64) void {
        c.wgpuCommandEncoderCopyBufferToBuffer(@ptrCast(encoder), @ptrCast(src), src_offset, @ptrCast(dst), dst_offset, size);
    }

    pub fn copyTextureToTexture(encoder: CommandEncoder, source: ImageCopyTexture, destination: ImageCopyTexture, copy_size: Extent3D) void {
        const src: c.WGPUTexelCopyTextureInfo = .{
            .texture = @ptrCast(source.texture),
            .mipLevel = source.mip_level,
            .origin = .{ .x = source.origin.x, .y = source.origin.y, .z = source.origin.z },
            .aspect = @intCast(@intFromEnum(source.aspect)),
        };
        const dst: c.WGPUTexelCopyTextureInfo = .{
            .texture = @ptrCast(destination.texture),
            .mipLevel = destination.mip_level,
            .origin = .{ .x = destination.origin.x, .y = destination.origin.y, .z = destination.origin.z },
            .aspect = @intCast(@intFromEnum(destination.aspect)),
        };
        const size: c.WGPUExtent3D = .{
            .width = copy_size.width,
            .height = copy_size.height,
            .depthOrArrayLayers = copy_size.depth_or_array_layers,
        };
        c.wgpuCommandEncoderCopyTextureToTexture(@ptrCast(encoder), &src, &dst, &size);
    }

    pub fn finish(encoder: CommandEncoder, descriptor: ?*const CommandBufferDescriptor) CommandBuffer {
        var cbd: c.WGPUCommandBufferDescriptor = .{ .nextInChain = null, .label = sv(if (descriptor) |d| d.label else null) };
        return @ptrCast(c.wgpuCommandEncoderFinish(@ptrCast(encoder), &cbd).?);
    }

    pub fn release(encoder: CommandEncoder) void {
        c.wgpuCommandEncoderRelease(@ptrCast(encoder));
    }
};

pub const RenderPassEncoder = *opaque {
    pub fn setPipeline(pass: RenderPassEncoder, pipeline: RenderPipeline) void {
        c.wgpuRenderPassEncoderSetPipeline(@ptrCast(pass), @ptrCast(pipeline));
    }

    pub fn setBindGroup(pass: RenderPassEncoder, group_index: u32, group: BindGroup, dynamic_offsets: ?[]const u32) void {
        c.wgpuRenderPassEncoderSetBindGroup(
            @ptrCast(pass),
            group_index,
            @ptrCast(group),
            if (dynamic_offsets) |d| d.len else 0,
            if (dynamic_offsets) |d| d.ptr else null,
        );
    }

    pub fn setVertexBuffer(pass: RenderPassEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) void {
        c.wgpuRenderPassEncoderSetVertexBuffer(@ptrCast(pass), slot, @ptrCast(buffer), offset, size);
    }

    pub fn setIndexBuffer(pass: RenderPassEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) void {
        c.wgpuRenderPassEncoderSetIndexBuffer(@ptrCast(pass), @ptrCast(buffer), @intCast(@intFromEnum(format)), offset, size);
    }

    pub fn setViewport(pass: RenderPassEncoder, x: f32, y: f32, width: f32, height: f32, min_depth: f32, max_depth: f32) void {
        c.wgpuRenderPassEncoderSetViewport(@ptrCast(pass), x, y, width, height, min_depth, max_depth);
    }

    pub fn setScissorRect(pass: RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void {
        c.wgpuRenderPassEncoderSetScissorRect(@ptrCast(pass), x, y, width, height);
    }

    pub fn draw(pass: RenderPassEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void {
        c.wgpuRenderPassEncoderDraw(@ptrCast(pass), vertex_count, instance_count, first_vertex, first_instance);
    }

    pub fn drawIndexed(pass: RenderPassEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void {
        c.wgpuRenderPassEncoderDrawIndexed(@ptrCast(pass), index_count, instance_count, first_index, base_vertex, first_instance);
    }

    pub fn end(pass: RenderPassEncoder) void {
        c.wgpuRenderPassEncoderEnd(@ptrCast(pass));
    }

    pub fn release(pass: RenderPassEncoder) void {
        c.wgpuRenderPassEncoderRelease(@ptrCast(pass));
    }
};

pub const ComputePassEncoder = *opaque {
    pub fn setPipeline(pass: ComputePassEncoder, pipeline: ComputePipeline) void {
        c.wgpuComputePassEncoderSetPipeline(@ptrCast(pass), @ptrCast(pipeline));
    }

    pub fn setBindGroup(pass: ComputePassEncoder, group_index: u32, group: BindGroup, dynamic_offsets: ?[]const u32) void {
        c.wgpuComputePassEncoderSetBindGroup(
            @ptrCast(pass),
            group_index,
            @ptrCast(group),
            if (dynamic_offsets) |d| d.len else 0,
            if (dynamic_offsets) |d| d.ptr else null,
        );
    }

    pub fn dispatchWorkgroups(pass: ComputePassEncoder, x: u32, y: u32, z: u32) void {
        c.wgpuComputePassEncoderDispatchWorkgroups(@ptrCast(pass), x, y, z);
    }

    pub fn end(pass: ComputePassEncoder) void {
        c.wgpuComputePassEncoderEnd(@ptrCast(pass));
    }

    pub fn release(pass: ComputePassEncoder) void {
        c.wgpuComputePassEncoderRelease(@ptrCast(pass));
    }
};
