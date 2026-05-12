const std = @import("std");
const log = std.log.scoped(.zgpu);

const default_options = struct {
    const uniforms_buffer_size = 4 * 1024 * 1024;
    const dawn_skip_validation = false;
    const dawn_allow_unsafe_apis = false;
    const buffer_pool_size = 256;
    const texture_pool_size = 256;
    const texture_view_pool_size = 256;
    const sampler_pool_size = 16;
    const render_pipeline_pool_size = 128;
    const compute_pipeline_pool_size = 128;
    const bind_group_pool_size = 32;
    const bind_group_layout_pool_size = 32;
    const pipeline_layout_pool_size = 32;
    const max_num_bindings_per_group = 10;
    const max_num_bind_groups_per_pipeline = 4;
};

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});
    const target = b.standardTargetOptions(.{});

    const options = .{
        .uniforms_buffer_size = b.option(
            u64,
            "uniforms_buffer_size",
            "Set uniforms buffer size",
        ) orelse default_options.uniforms_buffer_size,
        .dawn_skip_validation = b.option(
            bool,
            "dawn_skip_validation",
            "Disable Dawn validation",
        ) orelse default_options.dawn_skip_validation,
        .dawn_allow_unsafe_apis = b.option(
            bool,
            "dawn_allow_unsafe_apis",
            "Allow unsafe WebGPU APIs (e.g. timestamp queries)",
        ) orelse default_options.dawn_allow_unsafe_apis,
        .buffer_pool_size = b.option(
            u32,
            "buffer_pool_size",
            "Set buffer pool size",
        ) orelse default_options.buffer_pool_size,
        .texture_pool_size = b.option(
            u32,
            "texture_pool_size",
            "Set texture pool size",
        ) orelse default_options.texture_pool_size,
        .texture_view_pool_size = b.option(
            u32,
            "texture_view_pool_size",
            "Set texture view pool size",
        ) orelse default_options.texture_view_pool_size,
        .sampler_pool_size = b.option(
            u32,
            "sampler_pool_size",
            "Set sample pool size",
        ) orelse default_options.sampler_pool_size,
        .render_pipeline_pool_size = b.option(
            u32,
            "render_pipeline_pool_size",
            "Set render pipeline pool size",
        ) orelse default_options.render_pipeline_pool_size,
        .compute_pipeline_pool_size = b.option(
            u32,
            "compute_pipeline_pool_size",
            "Set compute pipeline pool size",
        ) orelse default_options.compute_pipeline_pool_size,
        .bind_group_pool_size = b.option(
            u32,
            "bind_group_pool_size",
            "Set bind group pool size",
        ) orelse default_options.bind_group_pool_size,
        .bind_group_layout_pool_size = b.option(
            u32,
            "bind_group_layout_pool_size",
            "Set bind group layout pool size",
        ) orelse default_options.bind_group_layout_pool_size,
        .pipeline_layout_pool_size = b.option(
            u32,
            "pipeline_layout_pool_size",
            "Set pipeline layout pool size",
        ) orelse default_options.pipeline_layout_pool_size,
        .max_num_bindings_per_group = b.option(
            u32,
            "max_num_bindings_per_group",
            "Set maximum number of bindings per bind group",
        ) orelse default_options.max_num_bindings_per_group,
        .max_num_bind_groups_per_pipeline = b.option(
            u32,
            "max_num_bind_groups_per_pipeline",
            "Set maximum number of bindings groups per pipeline",
        ) orelse default_options.max_num_bind_groups_per_pipeline,
    };

    const options_step = b.addOptions();
    inline for (std.meta.fields(@TypeOf(options))) |field| {
        options_step.addOption(field.type, field.name, @field(options, field.name));
    }

    const options_module = options_step.createModule();

    _ = b.addModule("root", .{
        .root_source_file = b.path("src/zgpu.zig"),
        .imports = &.{
            .{ .name = "zgpu_options", .module = options_module },
            .{ .name = "zpool", .module = b.dependency("zpool", .{}).module("root") },
        },
    });

    const zdawn = b.addLibrary(.{
        .name = "zdawn",
        .use_llvm = true,
        .root_module = b.createModule(.{
            .target = target,
            .optimize = optimize,
            .link_libc = true,
            .link_libcpp = target.result.abi != .msvc,
        }),
    });
    b.installArtifact(zdawn);

    linkSystemDeps(b, zdawn);

    zdawn.root_module.addIncludePath(b.path("libs/dawn/include"));
    zdawn.root_module.addIncludePath(b.path("src"));

    zdawn.root_module.addCSourceFile(.{
        .file = b.path("src/dawn.cpp"),
        .flags = &.{ "-std=c++17", "-fno-sanitize=undefined" },
    });
    zdawn.root_module.addCSourceFile(.{
        .file = b.path("src/dawn_proc.c"),
        .flags = &.{"-fno-sanitize=undefined"},
    });

    const test_step = b.step("test", "Run zgpu tests");

    const translate_c = b.addTranslateC(.{
        .root_source_file = b.path("libs/dawn/include/webgpu/webgpu.h"),
        .target = target,
        .optimize = optimize,
    });
    translate_c.addIncludePath(b.path("libs/dawn/include"));
    const tests = b.addTest(.{
        .name = "zgpu-tests",
        .use_llvm = true,
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/zgpu.zig"),
            .target = target,
            .optimize = optimize,
            .imports = &.{
                .{ .name = "dawn_webgpu", .module = translate_c.createModule() },
            },
        }),
    });
    tests.root_module.addIncludePath(b.path("libs/dawn/include"));
    tests.root_module.linkLibrary(zdawn);
    linkSystemDeps(b, tests);
    addLibraryPathsTo(tests);
    b.installArtifact(tests);

    test_step.dependOn(&b.addRunArtifact(tests).step);
}

pub fn linkSystemDeps(b: *std.Build, compile_step: *std.Build.Step.Compile) void {
    switch (compile_step.rootModuleTarget().os.tag) {
        .windows => {
            if (b.lazyDependency("system_sdk", .{})) |system_sdk| {
                compile_step.root_module.addLibraryPath(system_sdk.path("windows/lib/x86_64-windows-gnu"));
            }
            compile_step.root_module.linkSystemLibrary("ole32", .{});
            compile_step.root_module.linkSystemLibrary("dxguid", .{});
        },
        .macos => {
            if (b.lazyDependency("system_sdk", .{})) |system_sdk| {
                compile_step.root_module.addLibraryPath(system_sdk.path("macos12/usr/lib"));
                compile_step.root_module.addFrameworkPath(system_sdk.path("macos12/System/Library/Frameworks"));
            }
            compile_step.root_module.linkSystemLibrary("objc", .{});
            compile_step.root_module.linkFramework("Metal", .{});
            compile_step.root_module.linkFramework("CoreGraphics", .{});
            compile_step.root_module.linkFramework("Foundation", .{});
            compile_step.root_module.linkFramework("IOKit", .{});
            compile_step.root_module.linkFramework("IOSurface", .{});
            compile_step.root_module.linkFramework("QuartzCore", .{});
        },
        else => {},
    }
}

pub fn addLibraryPathsTo(compile_step: *std.Build.Step.Compile) void {
    const b = compile_step.step.owner;
    const target = compile_step.rootModuleTarget();
    switch (target.os.tag) {
        .windows => {
            if (b.lazyDependency("dawn_x86_64_windows_gnu", .{})) |dawn_prebuilt| {
                compile_step.root_module.addLibraryPath(dawn_prebuilt.path(""));
            }
        },
        .linux => {
            if (target.cpu.arch.isX86()) {
                if (b.lazyDependency("dawn_x86_64_linux_gnu", .{})) |dawn_prebuilt| {
                    compile_step.root_module.addLibraryPath(dawn_prebuilt.path(""));
                }
            } else if (target.cpu.arch.isAARCH64()) {
                if (b.lazyDependency("dawn_aarch64_linux_gnu", .{})) |dawn_prebuilt| {
                    compile_step.root_module.addLibraryPath(dawn_prebuilt.path(""));
                }
            }
        },
        .macos => {
            if (target.cpu.arch.isX86()) {
                if (b.lazyDependency("dawn_x86_64_macos", .{})) |dawn_prebuilt| {
                    compile_step.root_module.addLibraryPath(dawn_prebuilt.path(""));
                }
            } else if (target.cpu.arch.isAARCH64()) {
                if (b.lazyDependency("dawn_aarch64_macos", .{})) |dawn_prebuilt| {
                    compile_step.root_module.addLibraryPath(dawn_prebuilt.path(""));
                }
            }
        },
        else => {},
    }
    compile_step.root_module.linkSystemLibrary("dawn", .{});
}

pub fn checkTargetSupported(target: std.Target) bool {
    const supported = switch (target.os.tag) {
        .windows => target.cpu.arch.isX86() and target.abi.isGnu(),
        .linux => (target.cpu.arch.isX86() or target.cpu.arch.isAARCH64()) and target.abi.isGnu(),
        .macos => blk: {
            if (!target.cpu.arch.isX86() and !target.cpu.arch.isAARCH64()) break :blk false;

            // If min. target macOS version is lesser than the min version we have available, then
            // our Dawn binary is incompatible with the target.
            if (target.os.version_range.semver.min.order(
                .{ .major = 12, .minor = 0, .patch = 0 },
            ) == .lt) break :blk false;
            break :blk true;
        },
        else => false,
    };
    if (supported == false) {
        log.warn("\n" ++
            \\---------------------------------------------------------------------------
            \\
            \\Dawn/WebGPU binary for this target is not available.
            \\
            \\Following targets are supported:
            \\
            \\x86_64-windows-gnu
            \\x86_64-linux-gnu
            \\x86_64-macos.12.0.0-none
            \\aarch64-linux-gnu
            \\aarch64-macos.12.0.0-none
            \\
            \\---------------------------------------------------------------------------
            \\
        , .{});
    }
    return supported;
}
