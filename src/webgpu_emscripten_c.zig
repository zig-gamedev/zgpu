pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const int_fast8_t = i8;
pub const int_fast64_t = i64;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast64_t = u64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast16_t = i32;
pub const int_fast32_t = i32;
pub const uint_fast16_t = u32;
pub const uint_fast32_t = u32;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __ll: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __ld: c_longdouble = @import("std").mem.zeroes(c_longdouble),
};
pub const ptrdiff_t = c_long;
pub const float_t = f32;
pub const double_t = f64;
pub extern fn __fpclassify(f64) c_int;
pub extern fn __fpclassifyf(f32) c_int;
pub extern fn __fpclassifyl(c_longdouble) c_int;
pub fn __FLOAT_BITS(arg___f: f32) callconv(.c) c_uint {
    var __f = arg___f;
    _ = &__f;
    const union_unnamed_1 = extern union {
        __f: f32,
        __i: c_uint,
    };
    _ = &union_unnamed_1;
    var __u: union_unnamed_1 = undefined;
    _ = &__u;
    __u.__f = __f;
    return __u.__i;
}
pub fn __DOUBLE_BITS(arg___f: f64) callconv(.c) c_ulonglong {
    var __f = arg___f;
    _ = &__f;
    const union_unnamed_2 = extern union {
        __f: f64,
        __i: c_ulonglong,
    };
    _ = &union_unnamed_2;
    var __u: union_unnamed_2 = undefined;
    _ = &__u;
    __u.__f = __f;
    return __u.__i;
}
pub extern fn __signbit(f64) c_int;
pub extern fn __signbitf(f32) c_int;
pub extern fn __signbitl(c_longdouble) c_int;
pub fn __islessf(arg___x: float_t, arg___y: float_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__x) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__y) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x < __y));
}
pub fn __isless(arg___x: double_t, arg___y: double_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__x) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__y) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x < __y));
}
pub fn __islessl(arg___x: c_longdouble, arg___y: c_longdouble) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__x) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__y) == @as(c_int, 0))) != 0) and (__x < __y));
}
pub fn __islessequalf(arg___x: float_t, arg___y: float_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__x) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__y) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x <= __y));
}
pub fn __islessequal(arg___x: double_t, arg___y: double_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__x) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__y) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x <= __y));
}
pub fn __islessequall(arg___x: c_longdouble, arg___y: c_longdouble) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__x) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__y) == @as(c_int, 0))) != 0) and (__x <= __y));
}
pub fn __islessgreaterf(arg___x: float_t, arg___y: float_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__x) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__y) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x != __y));
}
pub fn __islessgreater(arg___x: double_t, arg___y: double_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__x) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__y) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x != __y));
}
pub fn __islessgreaterl(arg___x: c_longdouble, arg___y: c_longdouble) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__x) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__y) == @as(c_int, 0))) != 0) and (__x != __y));
}
pub fn __isgreaterf(arg___x: float_t, arg___y: float_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__x) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__y) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x > __y));
}
pub fn __isgreater(arg___x: double_t, arg___y: double_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__x) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__y) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x > __y));
}
pub fn __isgreaterl(arg___x: c_longdouble, arg___y: c_longdouble) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__x) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__y) == @as(c_int, 0))) != 0) and (__x > __y));
}
pub fn __isgreaterequalf(arg___x: float_t, arg___y: float_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__x) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(float_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(__y) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(float_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x >= __y));
}
pub fn __isgreaterequal(arg___x: double_t, arg___y: double_t) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__x) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__x))) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(double_t) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(double_t) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(__y) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(@as(c_longdouble, @floatCast(__y))) == @as(c_int, 0))) != 0) and (__x >= __y));
}
pub fn __isgreaterequall(arg___x: c_longdouble, arg___y: c_longdouble) callconv(.c) c_int {
    var __x = arg___x;
    _ = &__x;
    var __y = arg___y;
    _ = &__y;
    return @intFromBool(!((if ((if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__x))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__x))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__x) == @as(c_int, 0))) != 0) blk: {
        _ = &__y;
        break :blk @as(c_int, 1);
    } else if (@sizeOf(c_longdouble) == @sizeOf(f32)) @intFromBool((__FLOAT_BITS(@as(f32, @floatCast(__y))) & @as(c_uint, @bitCast(@as(c_int, 2147483647)))) > @as(c_uint, @bitCast(@as(c_int, 2139095040)))) else if (@sizeOf(c_longdouble) == @sizeOf(f64)) @intFromBool((__DOUBLE_BITS(@as(f64, @floatCast(__y))) & (-%@as(c_ulonglong, 1) >> @intCast(1))) > (@as(c_ulonglong, 2047) << @intCast(52))) else @intFromBool(__fpclassifyl(__y) == @as(c_int, 0))) != 0) and (__x >= __y));
}
pub extern fn acos(f64) f64;
pub extern fn acosf(f32) f32;
pub extern fn acosl(c_longdouble) c_longdouble;
pub extern fn acosh(f64) f64;
pub extern fn acoshf(f32) f32;
pub extern fn acoshl(c_longdouble) c_longdouble;
pub extern fn asin(f64) f64;
pub extern fn asinf(f32) f32;
pub extern fn asinl(c_longdouble) c_longdouble;
pub extern fn asinh(f64) f64;
pub extern fn asinhf(f32) f32;
pub extern fn asinhl(c_longdouble) c_longdouble;
pub extern fn atan(f64) f64;
pub extern fn atanf(f32) f32;
pub extern fn atanl(c_longdouble) c_longdouble;
pub extern fn atan2(f64, f64) f64;
pub extern fn atan2f(f32, f32) f32;
pub extern fn atan2l(c_longdouble, c_longdouble) c_longdouble;
pub extern fn atanh(f64) f64;
pub extern fn atanhf(f32) f32;
pub extern fn atanhl(c_longdouble) c_longdouble;
pub extern fn cbrt(f64) f64;
pub extern fn cbrtf(f32) f32;
pub extern fn cbrtl(c_longdouble) c_longdouble;
pub extern fn ceil(f64) f64;
pub extern fn ceilf(f32) f32;
pub extern fn ceill(c_longdouble) c_longdouble;
pub extern fn copysign(f64, f64) f64;
pub extern fn copysignf(f32, f32) f32;
pub extern fn copysignl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn cos(f64) f64;
pub extern fn cosf(f32) f32;
pub extern fn cosl(c_longdouble) c_longdouble;
pub extern fn cosh(f64) f64;
pub extern fn coshf(f32) f32;
pub extern fn coshl(c_longdouble) c_longdouble;
pub extern fn erf(f64) f64;
pub extern fn erff(f32) f32;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn erfc(f64) f64;
pub extern fn erfcf(f32) f32;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn exp(f64) f64;
pub extern fn expf(f32) f32;
pub extern fn expl(c_longdouble) c_longdouble;
pub extern fn exp2(f64) f64;
pub extern fn exp2f(f32) f32;
pub extern fn exp2l(c_longdouble) c_longdouble;
pub extern fn expm1(f64) f64;
pub extern fn expm1f(f32) f32;
pub extern fn expm1l(c_longdouble) c_longdouble;
pub extern fn fabs(f64) f64;
pub extern fn fabsf(f32) f32;
pub extern fn fabsl(c_longdouble) c_longdouble;
pub extern fn fdim(f64, f64) f64;
pub extern fn fdimf(f32, f32) f32;
pub extern fn fdiml(c_longdouble, c_longdouble) c_longdouble;
pub extern fn floor(f64) f64;
pub extern fn floorf(f32) f32;
pub extern fn floorl(c_longdouble) c_longdouble;
pub extern fn fma(f64, f64, f64) f64;
pub extern fn fmaf(f32, f32, f32) f32;
pub extern fn fmal(c_longdouble, c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmax(f64, f64) f64;
pub extern fn fmaxf(f32, f32) f32;
pub extern fn fmaxl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmin(f64, f64) f64;
pub extern fn fminf(f32, f32) f32;
pub extern fn fminl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmod(f64, f64) f64;
pub extern fn fmodf(f32, f32) f32;
pub extern fn fmodl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn frexp(f64, [*c]c_int) f64;
pub extern fn frexpf(f32, [*c]c_int) f32;
pub extern fn frexpl(c_longdouble, [*c]c_int) c_longdouble;
pub extern fn hypot(f64, f64) f64;
pub extern fn hypotf(f32, f32) f32;
pub extern fn hypotl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn ilogb(f64) c_int;
pub extern fn ilogbf(f32) c_int;
pub extern fn ilogbl(c_longdouble) c_int;
pub extern fn ldexp(f64, c_int) f64;
pub extern fn ldexpf(f32, c_int) f32;
pub extern fn ldexpl(c_longdouble, c_int) c_longdouble;
pub extern fn lgamma(f64) f64;
pub extern fn lgammaf(f32) f32;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn llrint(f64) c_longlong;
pub extern fn llrintf(f32) c_longlong;
pub extern fn llrintl(c_longdouble) c_longlong;
pub extern fn llround(f64) c_longlong;
pub extern fn llroundf(f32) c_longlong;
pub extern fn llroundl(c_longdouble) c_longlong;
pub extern fn log(f64) f64;
pub extern fn logf(f32) f32;
pub extern fn logl(c_longdouble) c_longdouble;
pub extern fn log10(f64) f64;
pub extern fn log10f(f32) f32;
pub extern fn log10l(c_longdouble) c_longdouble;
pub extern fn log1p(f64) f64;
pub extern fn log1pf(f32) f32;
pub extern fn log1pl(c_longdouble) c_longdouble;
pub extern fn log2(f64) f64;
pub extern fn log2f(f32) f32;
pub extern fn log2l(c_longdouble) c_longdouble;
pub extern fn logb(f64) f64;
pub extern fn logbf(f32) f32;
pub extern fn logbl(c_longdouble) c_longdouble;
pub extern fn lrint(f64) c_long;
pub extern fn lrintf(f32) c_long;
pub extern fn lrintl(c_longdouble) c_long;
pub extern fn lround(f64) c_long;
pub extern fn lroundf(f32) c_long;
pub extern fn lroundl(c_longdouble) c_long;
pub extern fn modf(f64, [*c]f64) f64;
pub extern fn modff(f32, [*c]f32) f32;
pub extern fn modfl(c_longdouble, [*c]c_longdouble) c_longdouble;
pub extern fn nan([*c]const u8) f64;
pub extern fn nanf([*c]const u8) f32;
pub extern fn nanl([*c]const u8) c_longdouble;
pub extern fn nearbyint(f64) f64;
pub extern fn nearbyintf(f32) f32;
pub extern fn nearbyintl(c_longdouble) c_longdouble;
pub extern fn nextafter(f64, f64) f64;
pub extern fn nextafterf(f32, f32) f32;
pub extern fn nextafterl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nexttoward(f64, c_longdouble) f64;
pub extern fn nexttowardf(f32, c_longdouble) f32;
pub extern fn nexttowardl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn pow(f64, f64) f64;
pub extern fn powf(f32, f32) f32;
pub extern fn powl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remainder(f64, f64) f64;
pub extern fn remainderf(f32, f32) f32;
pub extern fn remainderl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remquo(f64, f64, [*c]c_int) f64;
pub extern fn remquof(f32, f32, [*c]c_int) f32;
pub extern fn remquol(c_longdouble, c_longdouble, [*c]c_int) c_longdouble;
pub extern fn rint(f64) f64;
pub extern fn rintf(f32) f32;
pub extern fn rintl(c_longdouble) c_longdouble;
pub extern fn round(f64) f64;
pub extern fn roundf(f32) f32;
pub extern fn roundl(c_longdouble) c_longdouble;
pub extern fn scalbln(f64, c_long) f64;
pub extern fn scalblnf(f32, c_long) f32;
pub extern fn scalblnl(c_longdouble, c_long) c_longdouble;
pub extern fn scalbn(f64, c_int) f64;
pub extern fn scalbnf(f32, c_int) f32;
pub extern fn scalbnl(c_longdouble, c_int) c_longdouble;
pub extern fn sin(f64) f64;
pub extern fn sinf(f32) f32;
pub extern fn sinl(c_longdouble) c_longdouble;
pub extern fn sinh(f64) f64;
pub extern fn sinhf(f32) f32;
pub extern fn sinhl(c_longdouble) c_longdouble;
pub extern fn sqrt(f64) f64;
pub extern fn sqrtf(f32) f32;
pub extern fn sqrtl(c_longdouble) c_longdouble;
pub extern fn tan(f64) f64;
pub extern fn tanf(f32) f32;
pub extern fn tanl(c_longdouble) c_longdouble;
pub extern fn tanh(f64) f64;
pub extern fn tanhf(f32) f32;
pub extern fn tanhl(c_longdouble) c_longdouble;
pub extern fn tgamma(f64) f64;
pub extern fn tgammaf(f32) f32;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn trunc(f64) f64;
pub extern fn truncf(f32) f32;
pub extern fn truncl(c_longdouble) c_longdouble;
pub extern var signgam: c_int;
pub extern fn j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn drem(f64, f64) f64;
pub extern fn dremf(f32, f32) f32;
pub extern fn finite(f64) c_int;
pub extern fn finitef(f32) c_int;
pub extern fn scalb(f64, f64) f64;
pub extern fn scalbf(f32, f32) f32;
pub extern fn significand(f64) f64;
pub extern fn significandf(f32) f32;
pub extern fn lgamma_r(f64, [*c]c_int) f64;
pub extern fn lgammaf_r(f32, [*c]c_int) f32;
pub extern fn j0f(f32) f32;
pub extern fn j1f(f32) f32;
pub extern fn jnf(c_int, f32) f32;
pub extern fn y0f(f32) f32;
pub extern fn y1f(f32) f32;
pub extern fn ynf(c_int, f32) f32;
pub const struct_WGPUStringView = extern struct {
    data: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    length: usize = @import("std").mem.zeroes(usize),
};
pub const WGPUStringView = struct_WGPUStringView;
pub const WGPUFlags = u64;
pub const WGPUBool = u32;
pub const struct_WGPUAdapterImpl = opaque {};
pub const WGPUAdapter = ?*struct_WGPUAdapterImpl;
pub const struct_WGPUBindGroupImpl = opaque {};
pub const WGPUBindGroup = ?*struct_WGPUBindGroupImpl;
pub const struct_WGPUBindGroupLayoutImpl = opaque {};
pub const WGPUBindGroupLayout = ?*struct_WGPUBindGroupLayoutImpl;
pub const struct_WGPUBufferImpl = opaque {};
pub const WGPUBuffer = ?*struct_WGPUBufferImpl;
pub const struct_WGPUCommandBufferImpl = opaque {};
pub const WGPUCommandBuffer = ?*struct_WGPUCommandBufferImpl;
pub const struct_WGPUCommandEncoderImpl = opaque {};
pub const WGPUCommandEncoder = ?*struct_WGPUCommandEncoderImpl;
pub const struct_WGPUComputePassEncoderImpl = opaque {};
pub const WGPUComputePassEncoder = ?*struct_WGPUComputePassEncoderImpl;
pub const struct_WGPUComputePipelineImpl = opaque {};
pub const WGPUComputePipeline = ?*struct_WGPUComputePipelineImpl;
pub const struct_WGPUDeviceImpl = opaque {};
pub const WGPUDevice = ?*struct_WGPUDeviceImpl;
pub const struct_WGPUInstanceImpl = opaque {};
pub const WGPUInstance = ?*struct_WGPUInstanceImpl;
pub const struct_WGPUPipelineLayoutImpl = opaque {};
pub const WGPUPipelineLayout = ?*struct_WGPUPipelineLayoutImpl;
pub const struct_WGPUQuerySetImpl = opaque {};
pub const WGPUQuerySet = ?*struct_WGPUQuerySetImpl;
pub const struct_WGPUQueueImpl = opaque {};
pub const WGPUQueue = ?*struct_WGPUQueueImpl;
pub const struct_WGPURenderBundleImpl = opaque {};
pub const WGPURenderBundle = ?*struct_WGPURenderBundleImpl;
pub const struct_WGPURenderBundleEncoderImpl = opaque {};
pub const WGPURenderBundleEncoder = ?*struct_WGPURenderBundleEncoderImpl;
pub const struct_WGPURenderPassEncoderImpl = opaque {};
pub const WGPURenderPassEncoder = ?*struct_WGPURenderPassEncoderImpl;
pub const struct_WGPURenderPipelineImpl = opaque {};
pub const WGPURenderPipeline = ?*struct_WGPURenderPipelineImpl;
pub const struct_WGPUSamplerImpl = opaque {};
pub const WGPUSampler = ?*struct_WGPUSamplerImpl;
pub const struct_WGPUShaderModuleImpl = opaque {};
pub const WGPUShaderModule = ?*struct_WGPUShaderModuleImpl;
pub const struct_WGPUSurfaceImpl = opaque {};
pub const WGPUSurface = ?*struct_WGPUSurfaceImpl;
pub const struct_WGPUTextureImpl = opaque {};
pub const WGPUTexture = ?*struct_WGPUTextureImpl;
pub const struct_WGPUTextureViewImpl = opaque {};
pub const WGPUTextureView = ?*struct_WGPUTextureViewImpl;
pub const WGPUSType_ShaderSourceSPIRV: c_int = 1;
pub const WGPUSType_ShaderSourceWGSL: c_int = 2;
pub const WGPUSType_RenderPassMaxDrawCount: c_int = 3;
pub const WGPUSType_SurfaceSourceMetalLayer: c_int = 4;
pub const WGPUSType_SurfaceSourceWindowsHWND: c_int = 5;
pub const WGPUSType_SurfaceSourceXlibWindow: c_int = 6;
pub const WGPUSType_SurfaceSourceWaylandSurface: c_int = 7;
pub const WGPUSType_SurfaceSourceAndroidNativeWindow: c_int = 8;
pub const WGPUSType_SurfaceSourceXCBWindow: c_int = 9;
pub const WGPUSType_SurfaceColorManagement: c_int = 10;
pub const WGPUSType_RequestAdapterWebXROptions: c_int = 11;
pub const WGPUSType_CompatibilityModeLimits: c_int = 131072;
pub const WGPUSType_TextureBindingViewDimensionDescriptor: c_int = 131073;
pub const WGPUSType_EmscriptenSurfaceSourceCanvasHTMLSelector: c_int = 262144;
pub const WGPUSType_DawnCompilationMessageUtf16: c_int = 327743;
pub const WGPUSType_Force32: c_int = 2147483647;
pub const enum_WGPUSType = c_uint;
pub const WGPUSType = enum_WGPUSType;
pub const struct_WGPUChainedStruct = extern struct {
    next: [*c]struct_WGPUChainedStruct = @import("std").mem.zeroes([*c]struct_WGPUChainedStruct),
    sType: WGPUSType = @import("std").mem.zeroes(WGPUSType),
};
pub const WGPUChainedStruct = struct_WGPUChainedStruct;
pub const WGPUBackendType_Undefined: c_int = 0;
pub const WGPUBackendType_Null: c_int = 1;
pub const WGPUBackendType_WebGPU: c_int = 2;
pub const WGPUBackendType_D3D11: c_int = 3;
pub const WGPUBackendType_D3D12: c_int = 4;
pub const WGPUBackendType_Metal: c_int = 5;
pub const WGPUBackendType_Vulkan: c_int = 6;
pub const WGPUBackendType_OpenGL: c_int = 7;
pub const WGPUBackendType_OpenGLES: c_int = 8;
pub const WGPUBackendType_Force32: c_int = 2147483647;
pub const enum_WGPUBackendType = c_uint;
pub const WGPUBackendType = enum_WGPUBackendType;
pub const WGPUAdapterType_DiscreteGPU: c_int = 1;
pub const WGPUAdapterType_IntegratedGPU: c_int = 2;
pub const WGPUAdapterType_CPU: c_int = 3;
pub const WGPUAdapterType_Unknown: c_int = 4;
pub const WGPUAdapterType_Force32: c_int = 2147483647;
pub const enum_WGPUAdapterType = c_uint;
pub const WGPUAdapterType = enum_WGPUAdapterType;
pub const struct_WGPUAdapterInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    vendor: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    architecture: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    device: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    description: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    backendType: WGPUBackendType = @import("std").mem.zeroes(WGPUBackendType),
    adapterType: WGPUAdapterType = @import("std").mem.zeroes(WGPUAdapterType),
    vendorID: u32 = @import("std").mem.zeroes(u32),
    deviceID: u32 = @import("std").mem.zeroes(u32),
    subgroupMinSize: u32 = @import("std").mem.zeroes(u32),
    subgroupMaxSize: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUBindGroupEntry = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    binding: u32 = @import("std").mem.zeroes(u32),
    buffer: WGPUBuffer = @import("std").mem.zeroes(WGPUBuffer),
    offset: u64 = @import("std").mem.zeroes(u64),
    size: u64 = @import("std").mem.zeroes(u64),
    sampler: WGPUSampler = @import("std").mem.zeroes(WGPUSampler),
    textureView: WGPUTextureView = @import("std").mem.zeroes(WGPUTextureView),
};
pub const WGPUBlendOperation_Undefined: c_int = 0;
pub const WGPUBlendOperation_Add: c_int = 1;
pub const WGPUBlendOperation_Subtract: c_int = 2;
pub const WGPUBlendOperation_ReverseSubtract: c_int = 3;
pub const WGPUBlendOperation_Min: c_int = 4;
pub const WGPUBlendOperation_Max: c_int = 5;
pub const WGPUBlendOperation_Force32: c_int = 2147483647;
pub const enum_WGPUBlendOperation = c_uint;
pub const WGPUBlendOperation = enum_WGPUBlendOperation;
pub const WGPUBlendFactor_Undefined: c_int = 0;
pub const WGPUBlendFactor_Zero: c_int = 1;
pub const WGPUBlendFactor_One: c_int = 2;
pub const WGPUBlendFactor_Src: c_int = 3;
pub const WGPUBlendFactor_OneMinusSrc: c_int = 4;
pub const WGPUBlendFactor_SrcAlpha: c_int = 5;
pub const WGPUBlendFactor_OneMinusSrcAlpha: c_int = 6;
pub const WGPUBlendFactor_Dst: c_int = 7;
pub const WGPUBlendFactor_OneMinusDst: c_int = 8;
pub const WGPUBlendFactor_DstAlpha: c_int = 9;
pub const WGPUBlendFactor_OneMinusDstAlpha: c_int = 10;
pub const WGPUBlendFactor_SrcAlphaSaturated: c_int = 11;
pub const WGPUBlendFactor_Constant: c_int = 12;
pub const WGPUBlendFactor_OneMinusConstant: c_int = 13;
pub const WGPUBlendFactor_Src1: c_int = 14;
pub const WGPUBlendFactor_OneMinusSrc1: c_int = 15;
pub const WGPUBlendFactor_Src1Alpha: c_int = 16;
pub const WGPUBlendFactor_OneMinusSrc1Alpha: c_int = 17;
pub const WGPUBlendFactor_Force32: c_int = 2147483647;
pub const enum_WGPUBlendFactor = c_uint;
pub const WGPUBlendFactor = enum_WGPUBlendFactor;
pub const struct_WGPUBlendComponent = extern struct {
    operation: WGPUBlendOperation = @import("std").mem.zeroes(WGPUBlendOperation),
    srcFactor: WGPUBlendFactor = @import("std").mem.zeroes(WGPUBlendFactor),
    dstFactor: WGPUBlendFactor = @import("std").mem.zeroes(WGPUBlendFactor),
};
pub const WGPUBufferBindingType_BindingNotUsed: c_int = 0;
pub const WGPUBufferBindingType_Undefined: c_int = 1;
pub const WGPUBufferBindingType_Uniform: c_int = 2;
pub const WGPUBufferBindingType_Storage: c_int = 3;
pub const WGPUBufferBindingType_ReadOnlyStorage: c_int = 4;
pub const WGPUBufferBindingType_Force32: c_int = 2147483647;
pub const enum_WGPUBufferBindingType = c_uint;
pub const WGPUBufferBindingType = enum_WGPUBufferBindingType;
pub const struct_WGPUBufferBindingLayout = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    type: WGPUBufferBindingType = @import("std").mem.zeroes(WGPUBufferBindingType),
    hasDynamicOffset: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    minBindingSize: u64 = @import("std").mem.zeroes(u64),
};
pub const WGPUBufferUsage = WGPUFlags;
pub const struct_WGPUBufferDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    usage: WGPUBufferUsage = @import("std").mem.zeroes(WGPUBufferUsage),
    size: u64 = @import("std").mem.zeroes(u64),
    mappedAtCreation: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const struct_WGPUColor = extern struct {
    r: f64 = @import("std").mem.zeroes(f64),
    g: f64 = @import("std").mem.zeroes(f64),
    b: f64 = @import("std").mem.zeroes(f64),
    a: f64 = @import("std").mem.zeroes(f64),
};
pub const struct_WGPUCommandBufferDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
};
pub const struct_WGPUCommandEncoderDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
};
pub const struct_WGPUCompatibilityModeLimits = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    maxStorageBuffersInVertexStage: u32 = @import("std").mem.zeroes(u32),
    maxStorageTexturesInVertexStage: u32 = @import("std").mem.zeroes(u32),
    maxStorageBuffersInFragmentStage: u32 = @import("std").mem.zeroes(u32),
    maxStorageTexturesInFragmentStage: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUConstantEntry = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    key: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    value: f64 = @import("std").mem.zeroes(f64),
};
pub const struct_WGPUDawnCompilationMessageUtf16 = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    linePos: u64 = @import("std").mem.zeroes(u64),
    offset: u64 = @import("std").mem.zeroes(u64),
    length: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_WGPUEmscriptenSurfaceSourceCanvasHTMLSelector = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    selector: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
};
pub const struct_WGPUExtent3D = extern struct {
    width: u32 = @import("std").mem.zeroes(u32),
    height: u32 = @import("std").mem.zeroes(u32),
    depthOrArrayLayers: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUFuture = extern struct {
    id: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_WGPUInstanceLimits = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    timedWaitAnyMaxCount: usize = @import("std").mem.zeroes(usize),
};
pub const struct_WGPUINTERNAL_HAVE_EMDAWNWEBGPU_HEADER = extern struct {
    unused: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const struct_WGPUMultisampleState = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    count: u32 = @import("std").mem.zeroes(u32),
    mask: u32 = @import("std").mem.zeroes(u32),
    alphaToCoverageEnabled: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const struct_WGPUOrigin3D = extern struct {
    x: u32 = @import("std").mem.zeroes(u32),
    y: u32 = @import("std").mem.zeroes(u32),
    z: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUPassTimestampWrites = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    querySet: WGPUQuerySet = @import("std").mem.zeroes(WGPUQuerySet),
    beginningOfPassWriteIndex: u32 = @import("std").mem.zeroes(u32),
    endOfPassWriteIndex: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUPipelineLayoutDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    bindGroupLayoutCount: usize = @import("std").mem.zeroes(usize),
    bindGroupLayouts: [*c]const WGPUBindGroupLayout = @import("std").mem.zeroes([*c]const WGPUBindGroupLayout),
    immediateSize: u32 = @import("std").mem.zeroes(u32),
};
pub const WGPUPrimitiveTopology_Undefined: c_int = 0;
pub const WGPUPrimitiveTopology_PointList: c_int = 1;
pub const WGPUPrimitiveTopology_LineList: c_int = 2;
pub const WGPUPrimitiveTopology_LineStrip: c_int = 3;
pub const WGPUPrimitiveTopology_TriangleList: c_int = 4;
pub const WGPUPrimitiveTopology_TriangleStrip: c_int = 5;
pub const WGPUPrimitiveTopology_Force32: c_int = 2147483647;
pub const enum_WGPUPrimitiveTopology = c_uint;
pub const WGPUPrimitiveTopology = enum_WGPUPrimitiveTopology;
pub const WGPUIndexFormat_Undefined: c_int = 0;
pub const WGPUIndexFormat_Uint16: c_int = 1;
pub const WGPUIndexFormat_Uint32: c_int = 2;
pub const WGPUIndexFormat_Force32: c_int = 2147483647;
pub const enum_WGPUIndexFormat = c_uint;
pub const WGPUIndexFormat = enum_WGPUIndexFormat;
pub const WGPUFrontFace_Undefined: c_int = 0;
pub const WGPUFrontFace_CCW: c_int = 1;
pub const WGPUFrontFace_CW: c_int = 2;
pub const WGPUFrontFace_Force32: c_int = 2147483647;
pub const enum_WGPUFrontFace = c_uint;
pub const WGPUFrontFace = enum_WGPUFrontFace;
pub const WGPUCullMode_Undefined: c_int = 0;
pub const WGPUCullMode_None: c_int = 1;
pub const WGPUCullMode_Front: c_int = 2;
pub const WGPUCullMode_Back: c_int = 3;
pub const WGPUCullMode_Force32: c_int = 2147483647;
pub const enum_WGPUCullMode = c_uint;
pub const WGPUCullMode = enum_WGPUCullMode;
pub const struct_WGPUPrimitiveState = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    topology: WGPUPrimitiveTopology = @import("std").mem.zeroes(WGPUPrimitiveTopology),
    stripIndexFormat: WGPUIndexFormat = @import("std").mem.zeroes(WGPUIndexFormat),
    frontFace: WGPUFrontFace = @import("std").mem.zeroes(WGPUFrontFace),
    cullMode: WGPUCullMode = @import("std").mem.zeroes(WGPUCullMode),
    unclippedDepth: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPUQueryType_Occlusion: c_int = 1;
pub const WGPUQueryType_Timestamp: c_int = 2;
pub const WGPUQueryType_Force32: c_int = 2147483647;
pub const enum_WGPUQueryType = c_uint;
pub const WGPUQueryType = enum_WGPUQueryType;
pub const struct_WGPUQuerySetDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    type: WGPUQueryType = @import("std").mem.zeroes(WGPUQueryType),
    count: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUQueueDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
};
pub const struct_WGPURenderBundleDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
};
pub const WGPUTextureFormat_Undefined: c_int = 0;
pub const WGPUTextureFormat_R8Unorm: c_int = 1;
pub const WGPUTextureFormat_R8Snorm: c_int = 2;
pub const WGPUTextureFormat_R8Uint: c_int = 3;
pub const WGPUTextureFormat_R8Sint: c_int = 4;
pub const WGPUTextureFormat_R16Unorm: c_int = 5;
pub const WGPUTextureFormat_R16Snorm: c_int = 6;
pub const WGPUTextureFormat_R16Uint: c_int = 7;
pub const WGPUTextureFormat_R16Sint: c_int = 8;
pub const WGPUTextureFormat_R16Float: c_int = 9;
pub const WGPUTextureFormat_RG8Unorm: c_int = 10;
pub const WGPUTextureFormat_RG8Snorm: c_int = 11;
pub const WGPUTextureFormat_RG8Uint: c_int = 12;
pub const WGPUTextureFormat_RG8Sint: c_int = 13;
pub const WGPUTextureFormat_R32Float: c_int = 14;
pub const WGPUTextureFormat_R32Uint: c_int = 15;
pub const WGPUTextureFormat_R32Sint: c_int = 16;
pub const WGPUTextureFormat_RG16Unorm: c_int = 17;
pub const WGPUTextureFormat_RG16Snorm: c_int = 18;
pub const WGPUTextureFormat_RG16Uint: c_int = 19;
pub const WGPUTextureFormat_RG16Sint: c_int = 20;
pub const WGPUTextureFormat_RG16Float: c_int = 21;
pub const WGPUTextureFormat_RGBA8Unorm: c_int = 22;
pub const WGPUTextureFormat_RGBA8UnormSrgb: c_int = 23;
pub const WGPUTextureFormat_RGBA8Snorm: c_int = 24;
pub const WGPUTextureFormat_RGBA8Uint: c_int = 25;
pub const WGPUTextureFormat_RGBA8Sint: c_int = 26;
pub const WGPUTextureFormat_BGRA8Unorm: c_int = 27;
pub const WGPUTextureFormat_BGRA8UnormSrgb: c_int = 28;
pub const WGPUTextureFormat_RGB10A2Uint: c_int = 29;
pub const WGPUTextureFormat_RGB10A2Unorm: c_int = 30;
pub const WGPUTextureFormat_RG11B10Ufloat: c_int = 31;
pub const WGPUTextureFormat_RGB9E5Ufloat: c_int = 32;
pub const WGPUTextureFormat_RG32Float: c_int = 33;
pub const WGPUTextureFormat_RG32Uint: c_int = 34;
pub const WGPUTextureFormat_RG32Sint: c_int = 35;
pub const WGPUTextureFormat_RGBA16Unorm: c_int = 36;
pub const WGPUTextureFormat_RGBA16Snorm: c_int = 37;
pub const WGPUTextureFormat_RGBA16Uint: c_int = 38;
pub const WGPUTextureFormat_RGBA16Sint: c_int = 39;
pub const WGPUTextureFormat_RGBA16Float: c_int = 40;
pub const WGPUTextureFormat_RGBA32Float: c_int = 41;
pub const WGPUTextureFormat_RGBA32Uint: c_int = 42;
pub const WGPUTextureFormat_RGBA32Sint: c_int = 43;
pub const WGPUTextureFormat_Stencil8: c_int = 44;
pub const WGPUTextureFormat_Depth16Unorm: c_int = 45;
pub const WGPUTextureFormat_Depth24Plus: c_int = 46;
pub const WGPUTextureFormat_Depth24PlusStencil8: c_int = 47;
pub const WGPUTextureFormat_Depth32Float: c_int = 48;
pub const WGPUTextureFormat_Depth32FloatStencil8: c_int = 49;
pub const WGPUTextureFormat_BC1RGBAUnorm: c_int = 50;
pub const WGPUTextureFormat_BC1RGBAUnormSrgb: c_int = 51;
pub const WGPUTextureFormat_BC2RGBAUnorm: c_int = 52;
pub const WGPUTextureFormat_BC2RGBAUnormSrgb: c_int = 53;
pub const WGPUTextureFormat_BC3RGBAUnorm: c_int = 54;
pub const WGPUTextureFormat_BC3RGBAUnormSrgb: c_int = 55;
pub const WGPUTextureFormat_BC4RUnorm: c_int = 56;
pub const WGPUTextureFormat_BC4RSnorm: c_int = 57;
pub const WGPUTextureFormat_BC5RGUnorm: c_int = 58;
pub const WGPUTextureFormat_BC5RGSnorm: c_int = 59;
pub const WGPUTextureFormat_BC6HRGBUfloat: c_int = 60;
pub const WGPUTextureFormat_BC6HRGBFloat: c_int = 61;
pub const WGPUTextureFormat_BC7RGBAUnorm: c_int = 62;
pub const WGPUTextureFormat_BC7RGBAUnormSrgb: c_int = 63;
pub const WGPUTextureFormat_ETC2RGB8Unorm: c_int = 64;
pub const WGPUTextureFormat_ETC2RGB8UnormSrgb: c_int = 65;
pub const WGPUTextureFormat_ETC2RGB8A1Unorm: c_int = 66;
pub const WGPUTextureFormat_ETC2RGB8A1UnormSrgb: c_int = 67;
pub const WGPUTextureFormat_ETC2RGBA8Unorm: c_int = 68;
pub const WGPUTextureFormat_ETC2RGBA8UnormSrgb: c_int = 69;
pub const WGPUTextureFormat_EACR11Unorm: c_int = 70;
pub const WGPUTextureFormat_EACR11Snorm: c_int = 71;
pub const WGPUTextureFormat_EACRG11Unorm: c_int = 72;
pub const WGPUTextureFormat_EACRG11Snorm: c_int = 73;
pub const WGPUTextureFormat_ASTC4x4Unorm: c_int = 74;
pub const WGPUTextureFormat_ASTC4x4UnormSrgb: c_int = 75;
pub const WGPUTextureFormat_ASTC5x4Unorm: c_int = 76;
pub const WGPUTextureFormat_ASTC5x4UnormSrgb: c_int = 77;
pub const WGPUTextureFormat_ASTC5x5Unorm: c_int = 78;
pub const WGPUTextureFormat_ASTC5x5UnormSrgb: c_int = 79;
pub const WGPUTextureFormat_ASTC6x5Unorm: c_int = 80;
pub const WGPUTextureFormat_ASTC6x5UnormSrgb: c_int = 81;
pub const WGPUTextureFormat_ASTC6x6Unorm: c_int = 82;
pub const WGPUTextureFormat_ASTC6x6UnormSrgb: c_int = 83;
pub const WGPUTextureFormat_ASTC8x5Unorm: c_int = 84;
pub const WGPUTextureFormat_ASTC8x5UnormSrgb: c_int = 85;
pub const WGPUTextureFormat_ASTC8x6Unorm: c_int = 86;
pub const WGPUTextureFormat_ASTC8x6UnormSrgb: c_int = 87;
pub const WGPUTextureFormat_ASTC8x8Unorm: c_int = 88;
pub const WGPUTextureFormat_ASTC8x8UnormSrgb: c_int = 89;
pub const WGPUTextureFormat_ASTC10x5Unorm: c_int = 90;
pub const WGPUTextureFormat_ASTC10x5UnormSrgb: c_int = 91;
pub const WGPUTextureFormat_ASTC10x6Unorm: c_int = 92;
pub const WGPUTextureFormat_ASTC10x6UnormSrgb: c_int = 93;
pub const WGPUTextureFormat_ASTC10x8Unorm: c_int = 94;
pub const WGPUTextureFormat_ASTC10x8UnormSrgb: c_int = 95;
pub const WGPUTextureFormat_ASTC10x10Unorm: c_int = 96;
pub const WGPUTextureFormat_ASTC10x10UnormSrgb: c_int = 97;
pub const WGPUTextureFormat_ASTC12x10Unorm: c_int = 98;
pub const WGPUTextureFormat_ASTC12x10UnormSrgb: c_int = 99;
pub const WGPUTextureFormat_ASTC12x12Unorm: c_int = 100;
pub const WGPUTextureFormat_ASTC12x12UnormSrgb: c_int = 101;
pub const WGPUTextureFormat_Force32: c_int = 2147483647;
pub const enum_WGPUTextureFormat = c_uint;
pub const WGPUTextureFormat = enum_WGPUTextureFormat;
pub const struct_WGPURenderBundleEncoderDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    colorFormatCount: usize = @import("std").mem.zeroes(usize),
    colorFormats: [*c]const WGPUTextureFormat = @import("std").mem.zeroes([*c]const WGPUTextureFormat),
    depthStencilFormat: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    sampleCount: u32 = @import("std").mem.zeroes(u32),
    depthReadOnly: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    stencilReadOnly: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPULoadOp_Undefined: c_int = 0;
pub const WGPULoadOp_Load: c_int = 1;
pub const WGPULoadOp_Clear: c_int = 2;
pub const WGPULoadOp_Force32: c_int = 2147483647;
pub const enum_WGPULoadOp = c_uint;
pub const WGPULoadOp = enum_WGPULoadOp;
pub const WGPUStoreOp_Undefined: c_int = 0;
pub const WGPUStoreOp_Store: c_int = 1;
pub const WGPUStoreOp_Discard: c_int = 2;
pub const WGPUStoreOp_Force32: c_int = 2147483647;
pub const enum_WGPUStoreOp = c_uint;
pub const WGPUStoreOp = enum_WGPUStoreOp;
pub const struct_WGPURenderPassDepthStencilAttachment = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    view: WGPUTextureView = @import("std").mem.zeroes(WGPUTextureView),
    depthLoadOp: WGPULoadOp = @import("std").mem.zeroes(WGPULoadOp),
    depthStoreOp: WGPUStoreOp = @import("std").mem.zeroes(WGPUStoreOp),
    depthClearValue: f32 = @import("std").mem.zeroes(f32),
    depthReadOnly: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    stencilLoadOp: WGPULoadOp = @import("std").mem.zeroes(WGPULoadOp),
    stencilStoreOp: WGPUStoreOp = @import("std").mem.zeroes(WGPUStoreOp),
    stencilClearValue: u32 = @import("std").mem.zeroes(u32),
    stencilReadOnly: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const struct_WGPURenderPassMaxDrawCount = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    maxDrawCount: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_WGPURequestAdapterWebXROptions = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    xrCompatible: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPUSamplerBindingType_BindingNotUsed: c_int = 0;
pub const WGPUSamplerBindingType_Undefined: c_int = 1;
pub const WGPUSamplerBindingType_Filtering: c_int = 2;
pub const WGPUSamplerBindingType_NonFiltering: c_int = 3;
pub const WGPUSamplerBindingType_Comparison: c_int = 4;
pub const WGPUSamplerBindingType_Force32: c_int = 2147483647;
pub const enum_WGPUSamplerBindingType = c_uint;
pub const WGPUSamplerBindingType = enum_WGPUSamplerBindingType;
pub const struct_WGPUSamplerBindingLayout = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    type: WGPUSamplerBindingType = @import("std").mem.zeroes(WGPUSamplerBindingType),
};
pub const WGPUAddressMode_Undefined: c_int = 0;
pub const WGPUAddressMode_ClampToEdge: c_int = 1;
pub const WGPUAddressMode_Repeat: c_int = 2;
pub const WGPUAddressMode_MirrorRepeat: c_int = 3;
pub const WGPUAddressMode_Force32: c_int = 2147483647;
pub const enum_WGPUAddressMode = c_uint;
pub const WGPUAddressMode = enum_WGPUAddressMode;
pub const WGPUFilterMode_Undefined: c_int = 0;
pub const WGPUFilterMode_Nearest: c_int = 1;
pub const WGPUFilterMode_Linear: c_int = 2;
pub const WGPUFilterMode_Force32: c_int = 2147483647;
pub const enum_WGPUFilterMode = c_uint;
pub const WGPUFilterMode = enum_WGPUFilterMode;
pub const WGPUMipmapFilterMode_Undefined: c_int = 0;
pub const WGPUMipmapFilterMode_Nearest: c_int = 1;
pub const WGPUMipmapFilterMode_Linear: c_int = 2;
pub const WGPUMipmapFilterMode_Force32: c_int = 2147483647;
pub const enum_WGPUMipmapFilterMode = c_uint;
pub const WGPUMipmapFilterMode = enum_WGPUMipmapFilterMode;
pub const WGPUCompareFunction_Undefined: c_int = 0;
pub const WGPUCompareFunction_Never: c_int = 1;
pub const WGPUCompareFunction_Less: c_int = 2;
pub const WGPUCompareFunction_Equal: c_int = 3;
pub const WGPUCompareFunction_LessEqual: c_int = 4;
pub const WGPUCompareFunction_Greater: c_int = 5;
pub const WGPUCompareFunction_NotEqual: c_int = 6;
pub const WGPUCompareFunction_GreaterEqual: c_int = 7;
pub const WGPUCompareFunction_Always: c_int = 8;
pub const WGPUCompareFunction_Force32: c_int = 2147483647;
pub const enum_WGPUCompareFunction = c_uint;
pub const WGPUCompareFunction = enum_WGPUCompareFunction;
pub const struct_WGPUSamplerDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    addressModeU: WGPUAddressMode = @import("std").mem.zeroes(WGPUAddressMode),
    addressModeV: WGPUAddressMode = @import("std").mem.zeroes(WGPUAddressMode),
    addressModeW: WGPUAddressMode = @import("std").mem.zeroes(WGPUAddressMode),
    magFilter: WGPUFilterMode = @import("std").mem.zeroes(WGPUFilterMode),
    minFilter: WGPUFilterMode = @import("std").mem.zeroes(WGPUFilterMode),
    mipmapFilter: WGPUMipmapFilterMode = @import("std").mem.zeroes(WGPUMipmapFilterMode),
    lodMinClamp: f32 = @import("std").mem.zeroes(f32),
    lodMaxClamp: f32 = @import("std").mem.zeroes(f32),
    compare: WGPUCompareFunction = @import("std").mem.zeroes(WGPUCompareFunction),
    maxAnisotropy: u16 = @import("std").mem.zeroes(u16),
};
pub const struct_WGPUShaderSourceSPIRV = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    codeSize: u32 = @import("std").mem.zeroes(u32),
    code: [*c]const u32 = @import("std").mem.zeroes([*c]const u32),
};
pub const struct_WGPUShaderSourceWGSL = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    code: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
};
pub const WGPUStencilOperation_Undefined: c_int = 0;
pub const WGPUStencilOperation_Keep: c_int = 1;
pub const WGPUStencilOperation_Zero: c_int = 2;
pub const WGPUStencilOperation_Replace: c_int = 3;
pub const WGPUStencilOperation_Invert: c_int = 4;
pub const WGPUStencilOperation_IncrementClamp: c_int = 5;
pub const WGPUStencilOperation_DecrementClamp: c_int = 6;
pub const WGPUStencilOperation_IncrementWrap: c_int = 7;
pub const WGPUStencilOperation_DecrementWrap: c_int = 8;
pub const WGPUStencilOperation_Force32: c_int = 2147483647;
pub const enum_WGPUStencilOperation = c_uint;
pub const WGPUStencilOperation = enum_WGPUStencilOperation;
pub const struct_WGPUStencilFaceState = extern struct {
    compare: WGPUCompareFunction = @import("std").mem.zeroes(WGPUCompareFunction),
    failOp: WGPUStencilOperation = @import("std").mem.zeroes(WGPUStencilOperation),
    depthFailOp: WGPUStencilOperation = @import("std").mem.zeroes(WGPUStencilOperation),
    passOp: WGPUStencilOperation = @import("std").mem.zeroes(WGPUStencilOperation),
};
pub const WGPUStorageTextureAccess_BindingNotUsed: c_int = 0;
pub const WGPUStorageTextureAccess_Undefined: c_int = 1;
pub const WGPUStorageTextureAccess_WriteOnly: c_int = 2;
pub const WGPUStorageTextureAccess_ReadOnly: c_int = 3;
pub const WGPUStorageTextureAccess_ReadWrite: c_int = 4;
pub const WGPUStorageTextureAccess_Force32: c_int = 2147483647;
pub const enum_WGPUStorageTextureAccess = c_uint;
pub const WGPUStorageTextureAccess = enum_WGPUStorageTextureAccess;
pub const WGPUTextureViewDimension_Undefined: c_int = 0;
pub const WGPUTextureViewDimension_1D: c_int = 1;
pub const WGPUTextureViewDimension_2D: c_int = 2;
pub const WGPUTextureViewDimension_2DArray: c_int = 3;
pub const WGPUTextureViewDimension_Cube: c_int = 4;
pub const WGPUTextureViewDimension_CubeArray: c_int = 5;
pub const WGPUTextureViewDimension_3D: c_int = 6;
pub const WGPUTextureViewDimension_Force32: c_int = 2147483647;
pub const enum_WGPUTextureViewDimension = c_uint;
pub const WGPUTextureViewDimension = enum_WGPUTextureViewDimension;
pub const struct_WGPUStorageTextureBindingLayout = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    access: WGPUStorageTextureAccess = @import("std").mem.zeroes(WGPUStorageTextureAccess),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    viewDimension: WGPUTextureViewDimension = @import("std").mem.zeroes(WGPUTextureViewDimension),
};
pub const WGPUFeatureName_CoreFeaturesAndLimits: c_int = 1;
pub const WGPUFeatureName_DepthClipControl: c_int = 2;
pub const WGPUFeatureName_Depth32FloatStencil8: c_int = 3;
pub const WGPUFeatureName_TextureCompressionBC: c_int = 4;
pub const WGPUFeatureName_TextureCompressionBCSliced3D: c_int = 5;
pub const WGPUFeatureName_TextureCompressionETC2: c_int = 6;
pub const WGPUFeatureName_TextureCompressionASTC: c_int = 7;
pub const WGPUFeatureName_TextureCompressionASTCSliced3D: c_int = 8;
pub const WGPUFeatureName_TimestampQuery: c_int = 9;
pub const WGPUFeatureName_IndirectFirstInstance: c_int = 10;
pub const WGPUFeatureName_ShaderF16: c_int = 11;
pub const WGPUFeatureName_RG11B10UfloatRenderable: c_int = 12;
pub const WGPUFeatureName_BGRA8UnormStorage: c_int = 13;
pub const WGPUFeatureName_Float32Filterable: c_int = 14;
pub const WGPUFeatureName_Float32Blendable: c_int = 15;
pub const WGPUFeatureName_ClipDistances: c_int = 16;
pub const WGPUFeatureName_DualSourceBlending: c_int = 17;
pub const WGPUFeatureName_Subgroups: c_int = 18;
pub const WGPUFeatureName_TextureFormatsTier1: c_int = 19;
pub const WGPUFeatureName_TextureFormatsTier2: c_int = 20;
pub const WGPUFeatureName_PrimitiveIndex: c_int = 21;
pub const WGPUFeatureName_Unorm16TextureFormats: c_int = 327692;
pub const WGPUFeatureName_Snorm16TextureFormats: c_int = 327693;
pub const WGPUFeatureName_MultiDrawIndirect: c_int = 327732;
pub const WGPUFeatureName_Force32: c_int = 2147483647;
pub const enum_WGPUFeatureName = c_uint;
pub const WGPUFeatureName = enum_WGPUFeatureName;
pub const struct_WGPUSupportedFeatures = extern struct {
    featureCount: usize = @import("std").mem.zeroes(usize),
    features: [*c]const WGPUFeatureName = @import("std").mem.zeroes([*c]const WGPUFeatureName),
};
pub const WGPUInstanceFeatureName_TimedWaitAny: c_int = 1;
pub const WGPUInstanceFeatureName_ShaderSourceSPIRV: c_int = 2;
pub const WGPUInstanceFeatureName_MultipleDevicesPerAdapter: c_int = 3;
pub const WGPUInstanceFeatureName_Force32: c_int = 2147483647;
pub const enum_WGPUInstanceFeatureName = c_uint;
pub const WGPUInstanceFeatureName = enum_WGPUInstanceFeatureName;
pub const struct_WGPUSupportedInstanceFeatures = extern struct {
    featureCount: usize = @import("std").mem.zeroes(usize),
    features: [*c]const WGPUInstanceFeatureName = @import("std").mem.zeroes([*c]const WGPUInstanceFeatureName),
};
pub const WGPUWGSLLanguageFeatureName_ReadonlyAndReadwriteStorageTextures: c_int = 1;
pub const WGPUWGSLLanguageFeatureName_Packed4x8IntegerDotProduct: c_int = 2;
pub const WGPUWGSLLanguageFeatureName_UnrestrictedPointerParameters: c_int = 3;
pub const WGPUWGSLLanguageFeatureName_PointerCompositeAccess: c_int = 4;
pub const WGPUWGSLLanguageFeatureName_Force32: c_int = 2147483647;
pub const enum_WGPUWGSLLanguageFeatureName = c_uint;
pub const WGPUWGSLLanguageFeatureName = enum_WGPUWGSLLanguageFeatureName;
pub const struct_WGPUSupportedWGSLLanguageFeatures = extern struct {
    featureCount: usize = @import("std").mem.zeroes(usize),
    features: [*c]const WGPUWGSLLanguageFeatureName = @import("std").mem.zeroes([*c]const WGPUWGSLLanguageFeatureName),
};
pub const WGPUTextureUsage = WGPUFlags;
pub const WGPUPresentMode_Undefined: c_int = 0;
pub const WGPUPresentMode_Fifo: c_int = 1;
pub const WGPUPresentMode_FifoRelaxed: c_int = 2;
pub const WGPUPresentMode_Immediate: c_int = 3;
pub const WGPUPresentMode_Mailbox: c_int = 4;
pub const WGPUPresentMode_Force32: c_int = 2147483647;
pub const enum_WGPUPresentMode = c_uint;
pub const WGPUPresentMode = enum_WGPUPresentMode;
pub const WGPUCompositeAlphaMode_Auto: c_int = 0;
pub const WGPUCompositeAlphaMode_Opaque: c_int = 1;
pub const WGPUCompositeAlphaMode_Premultiplied: c_int = 2;
pub const WGPUCompositeAlphaMode_Unpremultiplied: c_int = 3;
pub const WGPUCompositeAlphaMode_Inherit: c_int = 4;
pub const WGPUCompositeAlphaMode_Force32: c_int = 2147483647;
pub const enum_WGPUCompositeAlphaMode = c_uint;
pub const WGPUCompositeAlphaMode = enum_WGPUCompositeAlphaMode;
pub const struct_WGPUSurfaceCapabilities = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    usages: WGPUTextureUsage = @import("std").mem.zeroes(WGPUTextureUsage),
    formatCount: usize = @import("std").mem.zeroes(usize),
    formats: [*c]const WGPUTextureFormat = @import("std").mem.zeroes([*c]const WGPUTextureFormat),
    presentModeCount: usize = @import("std").mem.zeroes(usize),
    presentModes: [*c]const WGPUPresentMode = @import("std").mem.zeroes([*c]const WGPUPresentMode),
    alphaModeCount: usize = @import("std").mem.zeroes(usize),
    alphaModes: [*c]const WGPUCompositeAlphaMode = @import("std").mem.zeroes([*c]const WGPUCompositeAlphaMode),
};
pub const WGPUPredefinedColorSpace_SRGB: c_int = 1;
pub const WGPUPredefinedColorSpace_DisplayP3: c_int = 2;
pub const WGPUPredefinedColorSpace_Force32: c_int = 2147483647;
pub const enum_WGPUPredefinedColorSpace = c_uint;
pub const WGPUPredefinedColorSpace = enum_WGPUPredefinedColorSpace;
pub const WGPUToneMappingMode_Standard: c_int = 1;
pub const WGPUToneMappingMode_Extended: c_int = 2;
pub const WGPUToneMappingMode_Force32: c_int = 2147483647;
pub const enum_WGPUToneMappingMode = c_uint;
pub const WGPUToneMappingMode = enum_WGPUToneMappingMode;
pub const struct_WGPUSurfaceColorManagement = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    colorSpace: WGPUPredefinedColorSpace = @import("std").mem.zeroes(WGPUPredefinedColorSpace),
    toneMappingMode: WGPUToneMappingMode = @import("std").mem.zeroes(WGPUToneMappingMode),
};
pub const struct_WGPUSurfaceConfiguration = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    device: WGPUDevice = @import("std").mem.zeroes(WGPUDevice),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    usage: WGPUTextureUsage = @import("std").mem.zeroes(WGPUTextureUsage),
    width: u32 = @import("std").mem.zeroes(u32),
    height: u32 = @import("std").mem.zeroes(u32),
    viewFormatCount: usize = @import("std").mem.zeroes(usize),
    viewFormats: [*c]const WGPUTextureFormat = @import("std").mem.zeroes([*c]const WGPUTextureFormat),
    alphaMode: WGPUCompositeAlphaMode = @import("std").mem.zeroes(WGPUCompositeAlphaMode),
    presentMode: WGPUPresentMode = @import("std").mem.zeroes(WGPUPresentMode),
};
pub const WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal: c_int = 1;
pub const WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal: c_int = 2;
pub const WGPUSurfaceGetCurrentTextureStatus_Timeout: c_int = 3;
pub const WGPUSurfaceGetCurrentTextureStatus_Outdated: c_int = 4;
pub const WGPUSurfaceGetCurrentTextureStatus_Lost: c_int = 5;
pub const WGPUSurfaceGetCurrentTextureStatus_Error: c_int = 6;
pub const WGPUSurfaceGetCurrentTextureStatus_Force32: c_int = 2147483647;
pub const enum_WGPUSurfaceGetCurrentTextureStatus = c_uint;
pub const WGPUSurfaceGetCurrentTextureStatus = enum_WGPUSurfaceGetCurrentTextureStatus;
pub const struct_WGPUSurfaceTexture = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    texture: WGPUTexture = @import("std").mem.zeroes(WGPUTexture),
    status: WGPUSurfaceGetCurrentTextureStatus = @import("std").mem.zeroes(WGPUSurfaceGetCurrentTextureStatus),
};
pub const struct_WGPUTexelCopyBufferLayout = extern struct {
    offset: u64 = @import("std").mem.zeroes(u64),
    bytesPerRow: u32 = @import("std").mem.zeroes(u32),
    rowsPerImage: u32 = @import("std").mem.zeroes(u32),
};
pub const WGPUTextureSampleType_BindingNotUsed: c_int = 0;
pub const WGPUTextureSampleType_Undefined: c_int = 1;
pub const WGPUTextureSampleType_Float: c_int = 2;
pub const WGPUTextureSampleType_UnfilterableFloat: c_int = 3;
pub const WGPUTextureSampleType_Depth: c_int = 4;
pub const WGPUTextureSampleType_Sint: c_int = 5;
pub const WGPUTextureSampleType_Uint: c_int = 6;
pub const WGPUTextureSampleType_Force32: c_int = 2147483647;
pub const enum_WGPUTextureSampleType = c_uint;
pub const WGPUTextureSampleType = enum_WGPUTextureSampleType;
pub const struct_WGPUTextureBindingLayout = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    sampleType: WGPUTextureSampleType = @import("std").mem.zeroes(WGPUTextureSampleType),
    viewDimension: WGPUTextureViewDimension = @import("std").mem.zeroes(WGPUTextureViewDimension),
    multisampled: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const struct_WGPUTextureBindingViewDimensionDescriptor = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    textureBindingViewDimension: WGPUTextureViewDimension = @import("std").mem.zeroes(WGPUTextureViewDimension),
};
pub const WGPUTextureAspect_Undefined: c_int = 0;
pub const WGPUTextureAspect_All: c_int = 1;
pub const WGPUTextureAspect_StencilOnly: c_int = 2;
pub const WGPUTextureAspect_DepthOnly: c_int = 3;
pub const WGPUTextureAspect_Force32: c_int = 2147483647;
pub const enum_WGPUTextureAspect = c_uint;
pub const WGPUTextureAspect = enum_WGPUTextureAspect;
pub const struct_WGPUTextureViewDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    dimension: WGPUTextureViewDimension = @import("std").mem.zeroes(WGPUTextureViewDimension),
    baseMipLevel: u32 = @import("std").mem.zeroes(u32),
    mipLevelCount: u32 = @import("std").mem.zeroes(u32),
    baseArrayLayer: u32 = @import("std").mem.zeroes(u32),
    arrayLayerCount: u32 = @import("std").mem.zeroes(u32),
    aspect: WGPUTextureAspect = @import("std").mem.zeroes(WGPUTextureAspect),
    usage: WGPUTextureUsage = @import("std").mem.zeroes(WGPUTextureUsage),
};
pub const WGPUVertexFormat_Uint8: c_int = 1;
pub const WGPUVertexFormat_Uint8x2: c_int = 2;
pub const WGPUVertexFormat_Uint8x4: c_int = 3;
pub const WGPUVertexFormat_Sint8: c_int = 4;
pub const WGPUVertexFormat_Sint8x2: c_int = 5;
pub const WGPUVertexFormat_Sint8x4: c_int = 6;
pub const WGPUVertexFormat_Unorm8: c_int = 7;
pub const WGPUVertexFormat_Unorm8x2: c_int = 8;
pub const WGPUVertexFormat_Unorm8x4: c_int = 9;
pub const WGPUVertexFormat_Snorm8: c_int = 10;
pub const WGPUVertexFormat_Snorm8x2: c_int = 11;
pub const WGPUVertexFormat_Snorm8x4: c_int = 12;
pub const WGPUVertexFormat_Uint16: c_int = 13;
pub const WGPUVertexFormat_Uint16x2: c_int = 14;
pub const WGPUVertexFormat_Uint16x4: c_int = 15;
pub const WGPUVertexFormat_Sint16: c_int = 16;
pub const WGPUVertexFormat_Sint16x2: c_int = 17;
pub const WGPUVertexFormat_Sint16x4: c_int = 18;
pub const WGPUVertexFormat_Unorm16: c_int = 19;
pub const WGPUVertexFormat_Unorm16x2: c_int = 20;
pub const WGPUVertexFormat_Unorm16x4: c_int = 21;
pub const WGPUVertexFormat_Snorm16: c_int = 22;
pub const WGPUVertexFormat_Snorm16x2: c_int = 23;
pub const WGPUVertexFormat_Snorm16x4: c_int = 24;
pub const WGPUVertexFormat_Float16: c_int = 25;
pub const WGPUVertexFormat_Float16x2: c_int = 26;
pub const WGPUVertexFormat_Float16x4: c_int = 27;
pub const WGPUVertexFormat_Float32: c_int = 28;
pub const WGPUVertexFormat_Float32x2: c_int = 29;
pub const WGPUVertexFormat_Float32x3: c_int = 30;
pub const WGPUVertexFormat_Float32x4: c_int = 31;
pub const WGPUVertexFormat_Uint32: c_int = 32;
pub const WGPUVertexFormat_Uint32x2: c_int = 33;
pub const WGPUVertexFormat_Uint32x3: c_int = 34;
pub const WGPUVertexFormat_Uint32x4: c_int = 35;
pub const WGPUVertexFormat_Sint32: c_int = 36;
pub const WGPUVertexFormat_Sint32x2: c_int = 37;
pub const WGPUVertexFormat_Sint32x3: c_int = 38;
pub const WGPUVertexFormat_Sint32x4: c_int = 39;
pub const WGPUVertexFormat_Unorm10_10_10_2: c_int = 40;
pub const WGPUVertexFormat_Unorm8x4BGRA: c_int = 41;
pub const WGPUVertexFormat_Force32: c_int = 2147483647;
pub const enum_WGPUVertexFormat = c_uint;
pub const WGPUVertexFormat = enum_WGPUVertexFormat;
pub const struct_WGPUVertexAttribute = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    format: WGPUVertexFormat = @import("std").mem.zeroes(WGPUVertexFormat),
    offset: u64 = @import("std").mem.zeroes(u64),
    shaderLocation: u32 = @import("std").mem.zeroes(u32),
};
pub const WGPUBindGroupEntry = struct_WGPUBindGroupEntry;
pub const struct_WGPUBindGroupDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    layout: WGPUBindGroupLayout = @import("std").mem.zeroes(WGPUBindGroupLayout),
    entryCount: usize = @import("std").mem.zeroes(usize),
    entries: [*c]const WGPUBindGroupEntry = @import("std").mem.zeroes([*c]const WGPUBindGroupEntry),
};
pub const WGPUShaderStage = WGPUFlags;
pub const WGPUBufferBindingLayout = struct_WGPUBufferBindingLayout;
pub const WGPUSamplerBindingLayout = struct_WGPUSamplerBindingLayout;
pub const WGPUTextureBindingLayout = struct_WGPUTextureBindingLayout;
pub const WGPUStorageTextureBindingLayout = struct_WGPUStorageTextureBindingLayout;
pub const struct_WGPUBindGroupLayoutEntry = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    binding: u32 = @import("std").mem.zeroes(u32),
    visibility: WGPUShaderStage = @import("std").mem.zeroes(WGPUShaderStage),
    bindingArraySize: u32 = @import("std").mem.zeroes(u32),
    buffer: WGPUBufferBindingLayout = @import("std").mem.zeroes(WGPUBufferBindingLayout),
    sampler: WGPUSamplerBindingLayout = @import("std").mem.zeroes(WGPUSamplerBindingLayout),
    texture: WGPUTextureBindingLayout = @import("std").mem.zeroes(WGPUTextureBindingLayout),
    storageTexture: WGPUStorageTextureBindingLayout = @import("std").mem.zeroes(WGPUStorageTextureBindingLayout),
};
pub const WGPUBlendComponent = struct_WGPUBlendComponent;
pub const struct_WGPUBlendState = extern struct {
    color: WGPUBlendComponent = @import("std").mem.zeroes(WGPUBlendComponent),
    alpha: WGPUBlendComponent = @import("std").mem.zeroes(WGPUBlendComponent),
};
pub const WGPUCompilationMessageType_Error: c_int = 1;
pub const WGPUCompilationMessageType_Warning: c_int = 2;
pub const WGPUCompilationMessageType_Info: c_int = 3;
pub const WGPUCompilationMessageType_Force32: c_int = 2147483647;
pub const enum_WGPUCompilationMessageType = c_uint;
pub const WGPUCompilationMessageType = enum_WGPUCompilationMessageType;
pub const struct_WGPUCompilationMessage = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    message: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    type: WGPUCompilationMessageType = @import("std").mem.zeroes(WGPUCompilationMessageType),
    lineNum: u64 = @import("std").mem.zeroes(u64),
    linePos: u64 = @import("std").mem.zeroes(u64),
    offset: u64 = @import("std").mem.zeroes(u64),
    length: u64 = @import("std").mem.zeroes(u64),
};
pub const WGPUPassTimestampWrites = struct_WGPUPassTimestampWrites;
pub const struct_WGPUComputePassDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    timestampWrites: [*c]const WGPUPassTimestampWrites = @import("std").mem.zeroes([*c]const WGPUPassTimestampWrites),
};
pub const WGPUConstantEntry = struct_WGPUConstantEntry;
pub const struct_WGPUComputeState = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    module: WGPUShaderModule = @import("std").mem.zeroes(WGPUShaderModule),
    entryPoint: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    constantCount: usize = @import("std").mem.zeroes(usize),
    constants: [*c]const WGPUConstantEntry = @import("std").mem.zeroes([*c]const WGPUConstantEntry),
};
pub const WGPUOptionalBool_False: c_int = 0;
pub const WGPUOptionalBool_True: c_int = 1;
pub const WGPUOptionalBool_Undefined: c_int = 2;
pub const WGPUOptionalBool_Force32: c_int = 2147483647;
pub const enum_WGPUOptionalBool = c_uint;
pub const WGPUOptionalBool = enum_WGPUOptionalBool;
pub const WGPUStencilFaceState = struct_WGPUStencilFaceState;
pub const struct_WGPUDepthStencilState = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    depthWriteEnabled: WGPUOptionalBool = @import("std").mem.zeroes(WGPUOptionalBool),
    depthCompare: WGPUCompareFunction = @import("std").mem.zeroes(WGPUCompareFunction),
    stencilFront: WGPUStencilFaceState = @import("std").mem.zeroes(WGPUStencilFaceState),
    stencilBack: WGPUStencilFaceState = @import("std").mem.zeroes(WGPUStencilFaceState),
    stencilReadMask: u32 = @import("std").mem.zeroes(u32),
    stencilWriteMask: u32 = @import("std").mem.zeroes(u32),
    depthBias: i32 = @import("std").mem.zeroes(i32),
    depthBiasSlopeScale: f32 = @import("std").mem.zeroes(f32),
    depthBiasClamp: f32 = @import("std").mem.zeroes(f32),
};
pub const WGPUFuture = struct_WGPUFuture;
pub const struct_WGPUFutureWaitInfo = extern struct {
    future: WGPUFuture = @import("std").mem.zeroes(WGPUFuture),
    completed: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPUInstanceLimits = struct_WGPUInstanceLimits;
pub const struct_WGPUInstanceDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    requiredFeatureCount: usize = @import("std").mem.zeroes(usize),
    requiredFeatures: [*c]const WGPUInstanceFeatureName = @import("std").mem.zeroes([*c]const WGPUInstanceFeatureName),
    requiredLimits: [*c]const WGPUInstanceLimits = @import("std").mem.zeroes([*c]const WGPUInstanceLimits),
};
pub const struct_WGPULimits = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    maxTextureDimension1D: u32 = @import("std").mem.zeroes(u32),
    maxTextureDimension2D: u32 = @import("std").mem.zeroes(u32),
    maxTextureDimension3D: u32 = @import("std").mem.zeroes(u32),
    maxTextureArrayLayers: u32 = @import("std").mem.zeroes(u32),
    maxBindGroups: u32 = @import("std").mem.zeroes(u32),
    maxBindGroupsPlusVertexBuffers: u32 = @import("std").mem.zeroes(u32),
    maxBindingsPerBindGroup: u32 = @import("std").mem.zeroes(u32),
    maxDynamicUniformBuffersPerPipelineLayout: u32 = @import("std").mem.zeroes(u32),
    maxDynamicStorageBuffersPerPipelineLayout: u32 = @import("std").mem.zeroes(u32),
    maxSampledTexturesPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxSamplersPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxStorageBuffersPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxStorageTexturesPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxUniformBuffersPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxUniformBufferBindingSize: u64 = @import("std").mem.zeroes(u64),
    maxStorageBufferBindingSize: u64 = @import("std").mem.zeroes(u64),
    minUniformBufferOffsetAlignment: u32 = @import("std").mem.zeroes(u32),
    minStorageBufferOffsetAlignment: u32 = @import("std").mem.zeroes(u32),
    maxVertexBuffers: u32 = @import("std").mem.zeroes(u32),
    maxBufferSize: u64 = @import("std").mem.zeroes(u64),
    maxVertexAttributes: u32 = @import("std").mem.zeroes(u32),
    maxVertexBufferArrayStride: u32 = @import("std").mem.zeroes(u32),
    maxInterStageShaderVariables: u32 = @import("std").mem.zeroes(u32),
    maxColorAttachments: u32 = @import("std").mem.zeroes(u32),
    maxColorAttachmentBytesPerSample: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupStorageSize: u32 = @import("std").mem.zeroes(u32),
    maxComputeInvocationsPerWorkgroup: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupSizeX: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupSizeY: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupSizeZ: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupsPerDimension: u32 = @import("std").mem.zeroes(u32),
    maxImmediateSize: u32 = @import("std").mem.zeroes(u32),
};
pub const WGPUColor = struct_WGPUColor;
pub const struct_WGPURenderPassColorAttachment = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    view: WGPUTextureView = @import("std").mem.zeroes(WGPUTextureView),
    depthSlice: u32 = @import("std").mem.zeroes(u32),
    resolveTarget: WGPUTextureView = @import("std").mem.zeroes(WGPUTextureView),
    loadOp: WGPULoadOp = @import("std").mem.zeroes(WGPULoadOp),
    storeOp: WGPUStoreOp = @import("std").mem.zeroes(WGPUStoreOp),
    clearValue: WGPUColor = @import("std").mem.zeroes(WGPUColor),
};
pub const WGPUFeatureLevel_Undefined: c_int = 0;
pub const WGPUFeatureLevel_Compatibility: c_int = 1;
pub const WGPUFeatureLevel_Core: c_int = 2;
pub const WGPUFeatureLevel_Force32: c_int = 2147483647;
pub const enum_WGPUFeatureLevel = c_uint;
pub const WGPUFeatureLevel = enum_WGPUFeatureLevel;
pub const WGPUPowerPreference_Undefined: c_int = 0;
pub const WGPUPowerPreference_LowPower: c_int = 1;
pub const WGPUPowerPreference_HighPerformance: c_int = 2;
pub const WGPUPowerPreference_Force32: c_int = 2147483647;
pub const enum_WGPUPowerPreference = c_uint;
pub const WGPUPowerPreference = enum_WGPUPowerPreference;
pub const struct_WGPURequestAdapterOptions = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    featureLevel: WGPUFeatureLevel = @import("std").mem.zeroes(WGPUFeatureLevel),
    powerPreference: WGPUPowerPreference = @import("std").mem.zeroes(WGPUPowerPreference),
    forceFallbackAdapter: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    backendType: WGPUBackendType = @import("std").mem.zeroes(WGPUBackendType),
    compatibleSurface: WGPUSurface = @import("std").mem.zeroes(WGPUSurface),
};
pub const struct_WGPUShaderModuleDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
};
pub const struct_WGPUSurfaceDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
};
pub const WGPUTexelCopyBufferLayout = struct_WGPUTexelCopyBufferLayout;
pub const struct_WGPUTexelCopyBufferInfo = extern struct {
    layout: WGPUTexelCopyBufferLayout = @import("std").mem.zeroes(WGPUTexelCopyBufferLayout),
    buffer: WGPUBuffer = @import("std").mem.zeroes(WGPUBuffer),
};
pub const WGPUOrigin3D = struct_WGPUOrigin3D;
pub const struct_WGPUTexelCopyTextureInfo = extern struct {
    texture: WGPUTexture = @import("std").mem.zeroes(WGPUTexture),
    mipLevel: u32 = @import("std").mem.zeroes(u32),
    origin: WGPUOrigin3D = @import("std").mem.zeroes(WGPUOrigin3D),
    aspect: WGPUTextureAspect = @import("std").mem.zeroes(WGPUTextureAspect),
};
pub const WGPUTextureDimension_Undefined: c_int = 0;
pub const WGPUTextureDimension_1D: c_int = 1;
pub const WGPUTextureDimension_2D: c_int = 2;
pub const WGPUTextureDimension_3D: c_int = 3;
pub const WGPUTextureDimension_Force32: c_int = 2147483647;
pub const enum_WGPUTextureDimension = c_uint;
pub const WGPUTextureDimension = enum_WGPUTextureDimension;
pub const WGPUExtent3D = struct_WGPUExtent3D;
pub const struct_WGPUTextureDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    usage: WGPUTextureUsage = @import("std").mem.zeroes(WGPUTextureUsage),
    dimension: WGPUTextureDimension = @import("std").mem.zeroes(WGPUTextureDimension),
    size: WGPUExtent3D = @import("std").mem.zeroes(WGPUExtent3D),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    mipLevelCount: u32 = @import("std").mem.zeroes(u32),
    sampleCount: u32 = @import("std").mem.zeroes(u32),
    viewFormatCount: usize = @import("std").mem.zeroes(usize),
    viewFormats: [*c]const WGPUTextureFormat = @import("std").mem.zeroes([*c]const WGPUTextureFormat),
};
pub const WGPUVertexStepMode_Undefined: c_int = 0;
pub const WGPUVertexStepMode_Vertex: c_int = 1;
pub const WGPUVertexStepMode_Instance: c_int = 2;
pub const WGPUVertexStepMode_Force32: c_int = 2147483647;
pub const enum_WGPUVertexStepMode = c_uint;
pub const WGPUVertexStepMode = enum_WGPUVertexStepMode;
pub const WGPUVertexAttribute = struct_WGPUVertexAttribute;
pub const struct_WGPUVertexBufferLayout = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    stepMode: WGPUVertexStepMode = @import("std").mem.zeroes(WGPUVertexStepMode),
    arrayStride: u64 = @import("std").mem.zeroes(u64),
    attributeCount: usize = @import("std").mem.zeroes(usize),
    attributes: [*c]const WGPUVertexAttribute = @import("std").mem.zeroes([*c]const WGPUVertexAttribute),
};
pub const WGPUBindGroupLayoutEntry = struct_WGPUBindGroupLayoutEntry;
pub const struct_WGPUBindGroupLayoutDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    entryCount: usize = @import("std").mem.zeroes(usize),
    entries: [*c]const WGPUBindGroupLayoutEntry = @import("std").mem.zeroes([*c]const WGPUBindGroupLayoutEntry),
};
pub const WGPUBlendState = struct_WGPUBlendState;
pub const WGPUColorWriteMask = WGPUFlags;
pub const struct_WGPUColorTargetState = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    blend: [*c]const WGPUBlendState = @import("std").mem.zeroes([*c]const WGPUBlendState),
    writeMask: WGPUColorWriteMask = @import("std").mem.zeroes(WGPUColorWriteMask),
};
pub const WGPUCompilationMessage = struct_WGPUCompilationMessage;
pub const struct_WGPUCompilationInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    messageCount: usize = @import("std").mem.zeroes(usize),
    messages: [*c]const WGPUCompilationMessage = @import("std").mem.zeroes([*c]const WGPUCompilationMessage),
};
pub const WGPUComputeState = struct_WGPUComputeState;
pub const struct_WGPUComputePipelineDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    layout: WGPUPipelineLayout = @import("std").mem.zeroes(WGPUPipelineLayout),
    compute: WGPUComputeState = @import("std").mem.zeroes(WGPUComputeState),
};
pub const WGPULimits = struct_WGPULimits;
pub const WGPUQueueDescriptor = struct_WGPUQueueDescriptor;
pub const WGPUCallbackMode_WaitAnyOnly: c_int = 1;
pub const WGPUCallbackMode_AllowProcessEvents: c_int = 2;
pub const WGPUCallbackMode_AllowSpontaneous: c_int = 3;
pub const WGPUCallbackMode_Force32: c_int = 2147483647;
pub const enum_WGPUCallbackMode = c_uint;
pub const WGPUCallbackMode = enum_WGPUCallbackMode;
pub const WGPUDeviceLostReason_Unknown: c_int = 1;
pub const WGPUDeviceLostReason_Destroyed: c_int = 2;
pub const WGPUDeviceLostReason_CallbackCancelled: c_int = 3;
pub const WGPUDeviceLostReason_FailedCreation: c_int = 4;
pub const WGPUDeviceLostReason_Force32: c_int = 2147483647;
pub const enum_WGPUDeviceLostReason = c_uint;
pub const WGPUDeviceLostReason = enum_WGPUDeviceLostReason;
pub const WGPUDeviceLostCallback = ?*const fn ([*c]const WGPUDevice, WGPUDeviceLostReason, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUDeviceLostCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUDeviceLostCallback = @import("std").mem.zeroes(WGPUDeviceLostCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUDeviceLostCallbackInfo = struct_WGPUDeviceLostCallbackInfo;
pub const WGPUErrorType_NoError: c_int = 1;
pub const WGPUErrorType_Validation: c_int = 2;
pub const WGPUErrorType_OutOfMemory: c_int = 3;
pub const WGPUErrorType_Internal: c_int = 4;
pub const WGPUErrorType_Unknown: c_int = 5;
pub const WGPUErrorType_Force32: c_int = 2147483647;
pub const enum_WGPUErrorType = c_uint;
pub const WGPUErrorType = enum_WGPUErrorType;
pub const WGPUUncapturedErrorCallback = ?*const fn ([*c]const WGPUDevice, WGPUErrorType, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUUncapturedErrorCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    callback: WGPUUncapturedErrorCallback = @import("std").mem.zeroes(WGPUUncapturedErrorCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUUncapturedErrorCallbackInfo = struct_WGPUUncapturedErrorCallbackInfo;
pub const struct_WGPUDeviceDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    requiredFeatureCount: usize = @import("std").mem.zeroes(usize),
    requiredFeatures: [*c]const WGPUFeatureName = @import("std").mem.zeroes([*c]const WGPUFeatureName),
    requiredLimits: [*c]const WGPULimits = @import("std").mem.zeroes([*c]const WGPULimits),
    defaultQueue: WGPUQueueDescriptor = @import("std").mem.zeroes(WGPUQueueDescriptor),
    deviceLostCallbackInfo: WGPUDeviceLostCallbackInfo = @import("std").mem.zeroes(WGPUDeviceLostCallbackInfo),
    uncapturedErrorCallbackInfo: WGPUUncapturedErrorCallbackInfo = @import("std").mem.zeroes(WGPUUncapturedErrorCallbackInfo),
};
pub const WGPURenderPassColorAttachment = struct_WGPURenderPassColorAttachment;
pub const WGPURenderPassDepthStencilAttachment = struct_WGPURenderPassDepthStencilAttachment;
pub const struct_WGPURenderPassDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    colorAttachmentCount: usize = @import("std").mem.zeroes(usize),
    colorAttachments: [*c]const WGPURenderPassColorAttachment = @import("std").mem.zeroes([*c]const WGPURenderPassColorAttachment),
    depthStencilAttachment: [*c]const WGPURenderPassDepthStencilAttachment = @import("std").mem.zeroes([*c]const WGPURenderPassDepthStencilAttachment),
    occlusionQuerySet: WGPUQuerySet = @import("std").mem.zeroes(WGPUQuerySet),
    timestampWrites: [*c]const WGPUPassTimestampWrites = @import("std").mem.zeroes([*c]const WGPUPassTimestampWrites),
};
pub const WGPUVertexBufferLayout = struct_WGPUVertexBufferLayout;
pub const struct_WGPUVertexState = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    module: WGPUShaderModule = @import("std").mem.zeroes(WGPUShaderModule),
    entryPoint: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    constantCount: usize = @import("std").mem.zeroes(usize),
    constants: [*c]const WGPUConstantEntry = @import("std").mem.zeroes([*c]const WGPUConstantEntry),
    bufferCount: usize = @import("std").mem.zeroes(usize),
    buffers: [*c]const WGPUVertexBufferLayout = @import("std").mem.zeroes([*c]const WGPUVertexBufferLayout),
};
pub const WGPUColorTargetState = struct_WGPUColorTargetState;
pub const struct_WGPUFragmentState = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    module: WGPUShaderModule = @import("std").mem.zeroes(WGPUShaderModule),
    entryPoint: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    constantCount: usize = @import("std").mem.zeroes(usize),
    constants: [*c]const WGPUConstantEntry = @import("std").mem.zeroes([*c]const WGPUConstantEntry),
    targetCount: usize = @import("std").mem.zeroes(usize),
    targets: [*c]const WGPUColorTargetState = @import("std").mem.zeroes([*c]const WGPUColorTargetState),
};
pub const WGPUVertexState = struct_WGPUVertexState;
pub const WGPUPrimitiveState = struct_WGPUPrimitiveState;
pub const WGPUDepthStencilState = struct_WGPUDepthStencilState;
pub const WGPUMultisampleState = struct_WGPUMultisampleState;
pub const WGPUFragmentState = struct_WGPUFragmentState;
pub const struct_WGPURenderPipelineDescriptor = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    label: WGPUStringView = @import("std").mem.zeroes(WGPUStringView),
    layout: WGPUPipelineLayout = @import("std").mem.zeroes(WGPUPipelineLayout),
    vertex: WGPUVertexState = @import("std").mem.zeroes(WGPUVertexState),
    primitive: WGPUPrimitiveState = @import("std").mem.zeroes(WGPUPrimitiveState),
    depthStencil: [*c]const WGPUDepthStencilState = @import("std").mem.zeroes([*c]const WGPUDepthStencilState),
    multisample: WGPUMultisampleState = @import("std").mem.zeroes(WGPUMultisampleState),
    fragment: [*c]const WGPUFragmentState = @import("std").mem.zeroes([*c]const WGPUFragmentState),
};
pub const WGPUMapAsyncStatus_Success: c_int = 1;
pub const WGPUMapAsyncStatus_CallbackCancelled: c_int = 2;
pub const WGPUMapAsyncStatus_Error: c_int = 3;
pub const WGPUMapAsyncStatus_Aborted: c_int = 4;
pub const WGPUMapAsyncStatus_Force32: c_int = 2147483647;
pub const enum_WGPUMapAsyncStatus = c_uint;
pub const WGPUMapAsyncStatus = enum_WGPUMapAsyncStatus;
pub const WGPUBufferMapCallback = ?*const fn (WGPUMapAsyncStatus, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUBufferMapCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUBufferMapCallback = @import("std").mem.zeroes(WGPUBufferMapCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUCompilationInfoRequestStatus_Success: c_int = 1;
pub const WGPUCompilationInfoRequestStatus_CallbackCancelled: c_int = 2;
pub const WGPUCompilationInfoRequestStatus_Force32: c_int = 2147483647;
pub const enum_WGPUCompilationInfoRequestStatus = c_uint;
pub const WGPUCompilationInfoRequestStatus = enum_WGPUCompilationInfoRequestStatus;
pub const WGPUCompilationInfoCallback = ?*const fn (WGPUCompilationInfoRequestStatus, [*c]const struct_WGPUCompilationInfo, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUCompilationInfoCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUCompilationInfoCallback = @import("std").mem.zeroes(WGPUCompilationInfoCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUCreatePipelineAsyncStatus_Success: c_int = 1;
pub const WGPUCreatePipelineAsyncStatus_CallbackCancelled: c_int = 2;
pub const WGPUCreatePipelineAsyncStatus_ValidationError: c_int = 3;
pub const WGPUCreatePipelineAsyncStatus_InternalError: c_int = 4;
pub const WGPUCreatePipelineAsyncStatus_Force32: c_int = 2147483647;
pub const enum_WGPUCreatePipelineAsyncStatus = c_uint;
pub const WGPUCreatePipelineAsyncStatus = enum_WGPUCreatePipelineAsyncStatus;
pub const WGPUCreateComputePipelineAsyncCallback = ?*const fn (WGPUCreatePipelineAsyncStatus, WGPUComputePipeline, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUCreateComputePipelineAsyncCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUCreateComputePipelineAsyncCallback = @import("std").mem.zeroes(WGPUCreateComputePipelineAsyncCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUCreateRenderPipelineAsyncCallback = ?*const fn (WGPUCreatePipelineAsyncStatus, WGPURenderPipeline, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUCreateRenderPipelineAsyncCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUCreateRenderPipelineAsyncCallback = @import("std").mem.zeroes(WGPUCreateRenderPipelineAsyncCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUPopErrorScopeStatus_Success: c_int = 1;
pub const WGPUPopErrorScopeStatus_CallbackCancelled: c_int = 2;
pub const WGPUPopErrorScopeStatus_Error: c_int = 3;
pub const WGPUPopErrorScopeStatus_Force32: c_int = 2147483647;
pub const enum_WGPUPopErrorScopeStatus = c_uint;
pub const WGPUPopErrorScopeStatus = enum_WGPUPopErrorScopeStatus;
pub const WGPUPopErrorScopeCallback = ?*const fn (WGPUPopErrorScopeStatus, WGPUErrorType, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUPopErrorScopeCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUPopErrorScopeCallback = @import("std").mem.zeroes(WGPUPopErrorScopeCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUQueueWorkDoneStatus_Success: c_int = 1;
pub const WGPUQueueWorkDoneStatus_CallbackCancelled: c_int = 2;
pub const WGPUQueueWorkDoneStatus_Error: c_int = 3;
pub const WGPUQueueWorkDoneStatus_Force32: c_int = 2147483647;
pub const enum_WGPUQueueWorkDoneStatus = c_uint;
pub const WGPUQueueWorkDoneStatus = enum_WGPUQueueWorkDoneStatus;
pub const WGPUQueueWorkDoneCallback = ?*const fn (WGPUQueueWorkDoneStatus, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUQueueWorkDoneCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUQueueWorkDoneCallback = @import("std").mem.zeroes(WGPUQueueWorkDoneCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPURequestAdapterStatus_Success: c_int = 1;
pub const WGPURequestAdapterStatus_CallbackCancelled: c_int = 2;
pub const WGPURequestAdapterStatus_Unavailable: c_int = 3;
pub const WGPURequestAdapterStatus_Error: c_int = 4;
pub const WGPURequestAdapterStatus_Force32: c_int = 2147483647;
pub const enum_WGPURequestAdapterStatus = c_uint;
pub const WGPURequestAdapterStatus = enum_WGPURequestAdapterStatus;
pub const WGPURequestAdapterCallback = ?*const fn (WGPURequestAdapterStatus, WGPUAdapter, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPURequestAdapterCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPURequestAdapterCallback = @import("std").mem.zeroes(WGPURequestAdapterCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPURequestDeviceStatus_Success: c_int = 1;
pub const WGPURequestDeviceStatus_CallbackCancelled: c_int = 2;
pub const WGPURequestDeviceStatus_Error: c_int = 3;
pub const WGPURequestDeviceStatus_Force32: c_int = 2147483647;
pub const enum_WGPURequestDeviceStatus = c_uint;
pub const WGPURequestDeviceStatus = enum_WGPURequestDeviceStatus;
pub const WGPURequestDeviceCallback = ?*const fn (WGPURequestDeviceStatus, WGPUDevice, WGPUStringView, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const struct_WGPURequestDeviceCallbackInfo = extern struct {
    nextInChain: [*c]WGPUChainedStruct = @import("std").mem.zeroes([*c]WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPURequestDeviceCallback = @import("std").mem.zeroes(WGPURequestDeviceCallback),
    userdata1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    userdata2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUBufferMapState_Unmapped: c_int = 1;
pub const WGPUBufferMapState_Pending: c_int = 2;
pub const WGPUBufferMapState_Mapped: c_int = 3;
pub const WGPUBufferMapState_Force32: c_int = 2147483647;
pub const enum_WGPUBufferMapState = c_uint;
pub const WGPUBufferMapState = enum_WGPUBufferMapState;
pub const WGPUErrorFilter_Validation: c_int = 1;
pub const WGPUErrorFilter_OutOfMemory: c_int = 2;
pub const WGPUErrorFilter_Internal: c_int = 3;
pub const WGPUErrorFilter_Force32: c_int = 2147483647;
pub const enum_WGPUErrorFilter = c_uint;
pub const WGPUErrorFilter = enum_WGPUErrorFilter;
pub const WGPUStatus_Success: c_int = 1;
pub const WGPUStatus_Error: c_int = 2;
pub const WGPUStatus_Force32: c_int = 2147483647;
pub const enum_WGPUStatus = c_uint;
pub const WGPUStatus = enum_WGPUStatus;
pub const WGPUWaitStatus_Success: c_int = 1;
pub const WGPUWaitStatus_TimedOut: c_int = 2;
pub const WGPUWaitStatus_Error: c_int = 3;
pub const WGPUWaitStatus_Force32: c_int = 2147483647;
pub const enum_WGPUWaitStatus = c_uint;
pub const WGPUWaitStatus = enum_WGPUWaitStatus;
pub const WGPUBufferUsage_None: WGPUBufferUsage = 0;
pub const WGPUBufferUsage_MapRead: WGPUBufferUsage = 1;
pub const WGPUBufferUsage_MapWrite: WGPUBufferUsage = 2;
pub const WGPUBufferUsage_CopySrc: WGPUBufferUsage = 4;
pub const WGPUBufferUsage_CopyDst: WGPUBufferUsage = 8;
pub const WGPUBufferUsage_Index: WGPUBufferUsage = 16;
pub const WGPUBufferUsage_Vertex: WGPUBufferUsage = 32;
pub const WGPUBufferUsage_Uniform: WGPUBufferUsage = 64;
pub const WGPUBufferUsage_Storage: WGPUBufferUsage = 128;
pub const WGPUBufferUsage_Indirect: WGPUBufferUsage = @as(WGPUBufferUsage, @bitCast(@as(c_long, @as(c_int, 256))));
pub const WGPUBufferUsage_QueryResolve: WGPUBufferUsage = @as(WGPUBufferUsage, @bitCast(@as(c_long, @as(c_int, 512))));
pub const WGPUColorWriteMask_None: WGPUColorWriteMask = 0;
pub const WGPUColorWriteMask_Red: WGPUColorWriteMask = 1;
pub const WGPUColorWriteMask_Green: WGPUColorWriteMask = 2;
pub const WGPUColorWriteMask_Blue: WGPUColorWriteMask = 4;
pub const WGPUColorWriteMask_Alpha: WGPUColorWriteMask = 8;
pub const WGPUColorWriteMask_All: WGPUColorWriteMask = 15;
pub const WGPUMapMode = WGPUFlags;
pub const WGPUMapMode_None: WGPUMapMode = 0;
pub const WGPUMapMode_Read: WGPUMapMode = 1;
pub const WGPUMapMode_Write: WGPUMapMode = 2;
pub const WGPUShaderStage_None: WGPUShaderStage = 0;
pub const WGPUShaderStage_Vertex: WGPUShaderStage = 1;
pub const WGPUShaderStage_Fragment: WGPUShaderStage = 2;
pub const WGPUShaderStage_Compute: WGPUShaderStage = 4;
pub const WGPUTextureUsage_None: WGPUTextureUsage = 0;
pub const WGPUTextureUsage_CopySrc: WGPUTextureUsage = 1;
pub const WGPUTextureUsage_CopyDst: WGPUTextureUsage = 2;
pub const WGPUTextureUsage_TextureBinding: WGPUTextureUsage = 4;
pub const WGPUTextureUsage_StorageBinding: WGPUTextureUsage = 8;
pub const WGPUTextureUsage_RenderAttachment: WGPUTextureUsage = 16;
pub const WGPUProc = ?*const fn () callconv(.c) void;
pub const WGPUBufferMapCallbackInfo = struct_WGPUBufferMapCallbackInfo;
pub const WGPUCompilationInfoCallbackInfo = struct_WGPUCompilationInfoCallbackInfo;
pub const WGPUCreateComputePipelineAsyncCallbackInfo = struct_WGPUCreateComputePipelineAsyncCallbackInfo;
pub const WGPUCreateRenderPipelineAsyncCallbackInfo = struct_WGPUCreateRenderPipelineAsyncCallbackInfo;
pub const WGPUPopErrorScopeCallbackInfo = struct_WGPUPopErrorScopeCallbackInfo;
pub const WGPUQueueWorkDoneCallbackInfo = struct_WGPUQueueWorkDoneCallbackInfo;
pub const WGPURequestAdapterCallbackInfo = struct_WGPURequestAdapterCallbackInfo;
pub const WGPURequestDeviceCallbackInfo = struct_WGPURequestDeviceCallbackInfo;
pub const WGPUAdapterInfo = struct_WGPUAdapterInfo;
pub const WGPUBufferDescriptor = struct_WGPUBufferDescriptor;
pub const WGPUCommandBufferDescriptor = struct_WGPUCommandBufferDescriptor;
pub const WGPUCommandEncoderDescriptor = struct_WGPUCommandEncoderDescriptor;
pub const WGPUCompatibilityModeLimits = struct_WGPUCompatibilityModeLimits;
pub const WGPUDawnCompilationMessageUtf16 = struct_WGPUDawnCompilationMessageUtf16;
pub const WGPUEmscriptenSurfaceSourceCanvasHTMLSelector = struct_WGPUEmscriptenSurfaceSourceCanvasHTMLSelector;
pub const WGPUINTERNAL_HAVE_EMDAWNWEBGPU_HEADER = struct_WGPUINTERNAL_HAVE_EMDAWNWEBGPU_HEADER;
pub const WGPUPipelineLayoutDescriptor = struct_WGPUPipelineLayoutDescriptor;
pub const WGPUQuerySetDescriptor = struct_WGPUQuerySetDescriptor;
pub const WGPURenderBundleDescriptor = struct_WGPURenderBundleDescriptor;
pub const WGPURenderBundleEncoderDescriptor = struct_WGPURenderBundleEncoderDescriptor;
pub const WGPURenderPassMaxDrawCount = struct_WGPURenderPassMaxDrawCount;
pub const WGPURequestAdapterWebXROptions = struct_WGPURequestAdapterWebXROptions;
pub const WGPUSamplerDescriptor = struct_WGPUSamplerDescriptor;
pub const WGPUShaderSourceSPIRV = struct_WGPUShaderSourceSPIRV;
pub const WGPUShaderSourceWGSL = struct_WGPUShaderSourceWGSL;
pub const WGPUSupportedFeatures = struct_WGPUSupportedFeatures;
pub const WGPUSupportedInstanceFeatures = struct_WGPUSupportedInstanceFeatures;
pub const WGPUSupportedWGSLLanguageFeatures = struct_WGPUSupportedWGSLLanguageFeatures;
pub const WGPUSurfaceCapabilities = struct_WGPUSurfaceCapabilities;
pub const WGPUSurfaceColorManagement = struct_WGPUSurfaceColorManagement;
pub const WGPUSurfaceConfiguration = struct_WGPUSurfaceConfiguration;
pub const WGPUSurfaceTexture = struct_WGPUSurfaceTexture;
pub const WGPUTextureBindingViewDimensionDescriptor = struct_WGPUTextureBindingViewDimensionDescriptor;
pub const WGPUTextureViewDescriptor = struct_WGPUTextureViewDescriptor;
pub const WGPUBindGroupDescriptor = struct_WGPUBindGroupDescriptor;
pub const WGPUComputePassDescriptor = struct_WGPUComputePassDescriptor;
pub const WGPUFutureWaitInfo = struct_WGPUFutureWaitInfo;
pub const WGPUInstanceDescriptor = struct_WGPUInstanceDescriptor;
pub const WGPURequestAdapterOptions = struct_WGPURequestAdapterOptions;
pub const WGPUShaderModuleDescriptor = struct_WGPUShaderModuleDescriptor;
pub const WGPUSurfaceDescriptor = struct_WGPUSurfaceDescriptor;
pub const WGPUTexelCopyBufferInfo = struct_WGPUTexelCopyBufferInfo;
pub const WGPUTexelCopyTextureInfo = struct_WGPUTexelCopyTextureInfo;
pub const WGPUTextureDescriptor = struct_WGPUTextureDescriptor;
pub const WGPUBindGroupLayoutDescriptor = struct_WGPUBindGroupLayoutDescriptor;
pub const WGPUCompilationInfo = struct_WGPUCompilationInfo;
pub const WGPUComputePipelineDescriptor = struct_WGPUComputePipelineDescriptor;
pub const WGPUDeviceDescriptor = struct_WGPUDeviceDescriptor;
pub const WGPURenderPassDescriptor = struct_WGPURenderPassDescriptor;
pub const WGPURenderPipelineDescriptor = struct_WGPURenderPipelineDescriptor;
pub extern fn emscripten_webgpu_get_device() WGPUDevice;
pub const WGPUProcCreateInstance = ?*const fn ([*c]const WGPUInstanceDescriptor) callconv(.c) WGPUInstance;
pub const WGPUProcGetInstanceFeatures = ?*const fn ([*c]WGPUSupportedInstanceFeatures) callconv(.c) void;
pub const WGPUProcGetInstanceLimits = ?*const fn ([*c]WGPUInstanceLimits) callconv(.c) WGPUStatus;
pub const WGPUProcHasInstanceFeature = ?*const fn (WGPUInstanceFeatureName) callconv(.c) WGPUBool;
pub const WGPUProcGetProcAddress = ?*const fn (WGPUStringView) callconv(.c) WGPUProc;
pub const WGPUProcAdapterGetFeatures = ?*const fn (WGPUAdapter, [*c]WGPUSupportedFeatures) callconv(.c) void;
pub const WGPUProcAdapterGetInfo = ?*const fn (WGPUAdapter, [*c]WGPUAdapterInfo) callconv(.c) WGPUStatus;
pub const WGPUProcAdapterGetLimits = ?*const fn (WGPUAdapter, [*c]WGPULimits) callconv(.c) WGPUStatus;
pub const WGPUProcAdapterHasFeature = ?*const fn (WGPUAdapter, WGPUFeatureName) callconv(.c) WGPUBool;
pub const WGPUProcAdapterRequestDevice = ?*const fn (WGPUAdapter, [*c]const WGPUDeviceDescriptor, WGPURequestDeviceCallbackInfo) callconv(.c) WGPUFuture;
pub const WGPUProcAdapterAddRef = ?*const fn (WGPUAdapter) callconv(.c) void;
pub const WGPUProcAdapterRelease = ?*const fn (WGPUAdapter) callconv(.c) void;
pub const WGPUProcAdapterInfoFreeMembers = ?*const fn (WGPUAdapterInfo) callconv(.c) void;
pub const WGPUProcBindGroupSetLabel = ?*const fn (WGPUBindGroup, WGPUStringView) callconv(.c) void;
pub const WGPUProcBindGroupAddRef = ?*const fn (WGPUBindGroup) callconv(.c) void;
pub const WGPUProcBindGroupRelease = ?*const fn (WGPUBindGroup) callconv(.c) void;
pub const WGPUProcBindGroupLayoutSetLabel = ?*const fn (WGPUBindGroupLayout, WGPUStringView) callconv(.c) void;
pub const WGPUProcBindGroupLayoutAddRef = ?*const fn (WGPUBindGroupLayout) callconv(.c) void;
pub const WGPUProcBindGroupLayoutRelease = ?*const fn (WGPUBindGroupLayout) callconv(.c) void;
pub const WGPUProcBufferDestroy = ?*const fn (WGPUBuffer) callconv(.c) void;
pub const WGPUProcBufferGetConstMappedRange = ?*const fn (WGPUBuffer, usize, usize) callconv(.c) ?*const anyopaque;
pub const WGPUProcBufferGetMappedRange = ?*const fn (WGPUBuffer, usize, usize) callconv(.c) ?*anyopaque;
pub const WGPUProcBufferGetMapState = ?*const fn (WGPUBuffer) callconv(.c) WGPUBufferMapState;
pub const WGPUProcBufferGetSize = ?*const fn (WGPUBuffer) callconv(.c) u64;
pub const WGPUProcBufferGetUsage = ?*const fn (WGPUBuffer) callconv(.c) WGPUBufferUsage;
pub const WGPUProcBufferMapAsync = ?*const fn (WGPUBuffer, WGPUMapMode, usize, usize, WGPUBufferMapCallbackInfo) callconv(.c) WGPUFuture;
pub const WGPUProcBufferReadMappedRange = ?*const fn (WGPUBuffer, usize, ?*anyopaque, usize) callconv(.c) WGPUStatus;
pub const WGPUProcBufferSetLabel = ?*const fn (WGPUBuffer, WGPUStringView) callconv(.c) void;
pub const WGPUProcBufferUnmap = ?*const fn (WGPUBuffer) callconv(.c) void;
pub const WGPUProcBufferWriteMappedRange = ?*const fn (WGPUBuffer, usize, ?*const anyopaque, usize) callconv(.c) WGPUStatus;
pub const WGPUProcBufferAddRef = ?*const fn (WGPUBuffer) callconv(.c) void;
pub const WGPUProcBufferRelease = ?*const fn (WGPUBuffer) callconv(.c) void;
pub const WGPUProcCommandBufferSetLabel = ?*const fn (WGPUCommandBuffer, WGPUStringView) callconv(.c) void;
pub const WGPUProcCommandBufferAddRef = ?*const fn (WGPUCommandBuffer) callconv(.c) void;
pub const WGPUProcCommandBufferRelease = ?*const fn (WGPUCommandBuffer) callconv(.c) void;
pub const WGPUProcCommandEncoderBeginComputePass = ?*const fn (WGPUCommandEncoder, [*c]const WGPUComputePassDescriptor) callconv(.c) WGPUComputePassEncoder;
pub const WGPUProcCommandEncoderBeginRenderPass = ?*const fn (WGPUCommandEncoder, [*c]const WGPURenderPassDescriptor) callconv(.c) WGPURenderPassEncoder;
pub const WGPUProcCommandEncoderClearBuffer = ?*const fn (WGPUCommandEncoder, WGPUBuffer, u64, u64) callconv(.c) void;
pub const WGPUProcCommandEncoderCopyBufferToBuffer = ?*const fn (WGPUCommandEncoder, WGPUBuffer, u64, WGPUBuffer, u64, u64) callconv(.c) void;
pub const WGPUProcCommandEncoderCopyBufferToTexture = ?*const fn (WGPUCommandEncoder, [*c]const WGPUTexelCopyBufferInfo, [*c]const WGPUTexelCopyTextureInfo, [*c]const WGPUExtent3D) callconv(.c) void;
pub const WGPUProcCommandEncoderCopyTextureToBuffer = ?*const fn (WGPUCommandEncoder, [*c]const WGPUTexelCopyTextureInfo, [*c]const WGPUTexelCopyBufferInfo, [*c]const WGPUExtent3D) callconv(.c) void;
pub const WGPUProcCommandEncoderCopyTextureToTexture = ?*const fn (WGPUCommandEncoder, [*c]const WGPUTexelCopyTextureInfo, [*c]const WGPUTexelCopyTextureInfo, [*c]const WGPUExtent3D) callconv(.c) void;
pub const WGPUProcCommandEncoderFinish = ?*const fn (WGPUCommandEncoder, [*c]const WGPUCommandBufferDescriptor) callconv(.c) WGPUCommandBuffer;
pub const WGPUProcCommandEncoderInsertDebugMarker = ?*const fn (WGPUCommandEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcCommandEncoderPopDebugGroup = ?*const fn (WGPUCommandEncoder) callconv(.c) void;
pub const WGPUProcCommandEncoderPushDebugGroup = ?*const fn (WGPUCommandEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcCommandEncoderResolveQuerySet = ?*const fn (WGPUCommandEncoder, WGPUQuerySet, u32, u32, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcCommandEncoderSetLabel = ?*const fn (WGPUCommandEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcCommandEncoderWriteTimestamp = ?*const fn (WGPUCommandEncoder, WGPUQuerySet, u32) callconv(.c) void;
pub const WGPUProcCommandEncoderAddRef = ?*const fn (WGPUCommandEncoder) callconv(.c) void;
pub const WGPUProcCommandEncoderRelease = ?*const fn (WGPUCommandEncoder) callconv(.c) void;
pub const WGPUProcComputePassEncoderDispatchWorkgroups = ?*const fn (WGPUComputePassEncoder, u32, u32, u32) callconv(.c) void;
pub const WGPUProcComputePassEncoderDispatchWorkgroupsIndirect = ?*const fn (WGPUComputePassEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcComputePassEncoderEnd = ?*const fn (WGPUComputePassEncoder) callconv(.c) void;
pub const WGPUProcComputePassEncoderInsertDebugMarker = ?*const fn (WGPUComputePassEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcComputePassEncoderPopDebugGroup = ?*const fn (WGPUComputePassEncoder) callconv(.c) void;
pub const WGPUProcComputePassEncoderPushDebugGroup = ?*const fn (WGPUComputePassEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcComputePassEncoderSetBindGroup = ?*const fn (WGPUComputePassEncoder, u32, WGPUBindGroup, usize, [*c]const u32) callconv(.c) void;
pub const WGPUProcComputePassEncoderSetLabel = ?*const fn (WGPUComputePassEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcComputePassEncoderSetPipeline = ?*const fn (WGPUComputePassEncoder, WGPUComputePipeline) callconv(.c) void;
pub const WGPUProcComputePassEncoderWriteTimestamp = ?*const fn (WGPUComputePassEncoder, WGPUQuerySet, u32) callconv(.c) void;
pub const WGPUProcComputePassEncoderAddRef = ?*const fn (WGPUComputePassEncoder) callconv(.c) void;
pub const WGPUProcComputePassEncoderRelease = ?*const fn (WGPUComputePassEncoder) callconv(.c) void;
pub const WGPUProcComputePipelineGetBindGroupLayout = ?*const fn (WGPUComputePipeline, u32) callconv(.c) WGPUBindGroupLayout;
pub const WGPUProcComputePipelineSetLabel = ?*const fn (WGPUComputePipeline, WGPUStringView) callconv(.c) void;
pub const WGPUProcComputePipelineAddRef = ?*const fn (WGPUComputePipeline) callconv(.c) void;
pub const WGPUProcComputePipelineRelease = ?*const fn (WGPUComputePipeline) callconv(.c) void;
pub const WGPUProcDeviceCreateBindGroup = ?*const fn (WGPUDevice, [*c]const WGPUBindGroupDescriptor) callconv(.c) WGPUBindGroup;
pub const WGPUProcDeviceCreateBindGroupLayout = ?*const fn (WGPUDevice, [*c]const WGPUBindGroupLayoutDescriptor) callconv(.c) WGPUBindGroupLayout;
pub const WGPUProcDeviceCreateBuffer = ?*const fn (WGPUDevice, [*c]const WGPUBufferDescriptor) callconv(.c) WGPUBuffer;
pub const WGPUProcDeviceCreateCommandEncoder = ?*const fn (WGPUDevice, [*c]const WGPUCommandEncoderDescriptor) callconv(.c) WGPUCommandEncoder;
pub const WGPUProcDeviceCreateComputePipeline = ?*const fn (WGPUDevice, [*c]const WGPUComputePipelineDescriptor) callconv(.c) WGPUComputePipeline;
pub const WGPUProcDeviceCreateComputePipelineAsync = ?*const fn (WGPUDevice, [*c]const WGPUComputePipelineDescriptor, WGPUCreateComputePipelineAsyncCallbackInfo) callconv(.c) WGPUFuture;
pub const WGPUProcDeviceCreatePipelineLayout = ?*const fn (WGPUDevice, [*c]const WGPUPipelineLayoutDescriptor) callconv(.c) WGPUPipelineLayout;
pub const WGPUProcDeviceCreateQuerySet = ?*const fn (WGPUDevice, [*c]const WGPUQuerySetDescriptor) callconv(.c) WGPUQuerySet;
pub const WGPUProcDeviceCreateRenderBundleEncoder = ?*const fn (WGPUDevice, [*c]const WGPURenderBundleEncoderDescriptor) callconv(.c) WGPURenderBundleEncoder;
pub const WGPUProcDeviceCreateRenderPipeline = ?*const fn (WGPUDevice, [*c]const WGPURenderPipelineDescriptor) callconv(.c) WGPURenderPipeline;
pub const WGPUProcDeviceCreateRenderPipelineAsync = ?*const fn (WGPUDevice, [*c]const WGPURenderPipelineDescriptor, WGPUCreateRenderPipelineAsyncCallbackInfo) callconv(.c) WGPUFuture;
pub const WGPUProcDeviceCreateSampler = ?*const fn (WGPUDevice, [*c]const WGPUSamplerDescriptor) callconv(.c) WGPUSampler;
pub const WGPUProcDeviceCreateShaderModule = ?*const fn (WGPUDevice, [*c]const WGPUShaderModuleDescriptor) callconv(.c) WGPUShaderModule;
pub const WGPUProcDeviceCreateTexture = ?*const fn (WGPUDevice, [*c]const WGPUTextureDescriptor) callconv(.c) WGPUTexture;
pub const WGPUProcDeviceDestroy = ?*const fn (WGPUDevice) callconv(.c) void;
pub const WGPUProcDeviceGetAdapterInfo = ?*const fn (WGPUDevice, [*c]WGPUAdapterInfo) callconv(.c) WGPUStatus;
pub const WGPUProcDeviceGetFeatures = ?*const fn (WGPUDevice, [*c]WGPUSupportedFeatures) callconv(.c) void;
pub const WGPUProcDeviceGetLimits = ?*const fn (WGPUDevice, [*c]WGPULimits) callconv(.c) WGPUStatus;
pub const WGPUProcDeviceGetLostFuture = ?*const fn (WGPUDevice) callconv(.c) WGPUFuture;
pub const WGPUProcDeviceGetQueue = ?*const fn (WGPUDevice) callconv(.c) WGPUQueue;
pub const WGPUProcDeviceHasFeature = ?*const fn (WGPUDevice, WGPUFeatureName) callconv(.c) WGPUBool;
pub const WGPUProcDevicePopErrorScope = ?*const fn (WGPUDevice, WGPUPopErrorScopeCallbackInfo) callconv(.c) WGPUFuture;
pub const WGPUProcDevicePushErrorScope = ?*const fn (WGPUDevice, WGPUErrorFilter) callconv(.c) void;
pub const WGPUProcDeviceSetLabel = ?*const fn (WGPUDevice, WGPUStringView) callconv(.c) void;
pub const WGPUProcDeviceAddRef = ?*const fn (WGPUDevice) callconv(.c) void;
pub const WGPUProcDeviceRelease = ?*const fn (WGPUDevice) callconv(.c) void;
pub const WGPUProcInstanceCreateSurface = ?*const fn (WGPUInstance, [*c]const WGPUSurfaceDescriptor) callconv(.c) WGPUSurface;
pub const WGPUProcInstanceGetWGSLLanguageFeatures = ?*const fn (WGPUInstance, [*c]WGPUSupportedWGSLLanguageFeatures) callconv(.c) void;
pub const WGPUProcInstanceHasWGSLLanguageFeature = ?*const fn (WGPUInstance, WGPUWGSLLanguageFeatureName) callconv(.c) WGPUBool;
pub const WGPUProcInstanceProcessEvents = ?*const fn (WGPUInstance) callconv(.c) void;
pub const WGPUProcInstanceRequestAdapter = ?*const fn (WGPUInstance, [*c]const WGPURequestAdapterOptions, WGPURequestAdapterCallbackInfo) callconv(.c) WGPUFuture;
pub const WGPUProcInstanceWaitAny = ?*const fn (WGPUInstance, usize, [*c]WGPUFutureWaitInfo, u64) callconv(.c) WGPUWaitStatus;
pub const WGPUProcInstanceAddRef = ?*const fn (WGPUInstance) callconv(.c) void;
pub const WGPUProcInstanceRelease = ?*const fn (WGPUInstance) callconv(.c) void;
pub const WGPUProcPipelineLayoutSetLabel = ?*const fn (WGPUPipelineLayout, WGPUStringView) callconv(.c) void;
pub const WGPUProcPipelineLayoutAddRef = ?*const fn (WGPUPipelineLayout) callconv(.c) void;
pub const WGPUProcPipelineLayoutRelease = ?*const fn (WGPUPipelineLayout) callconv(.c) void;
pub const WGPUProcQuerySetDestroy = ?*const fn (WGPUQuerySet) callconv(.c) void;
pub const WGPUProcQuerySetGetCount = ?*const fn (WGPUQuerySet) callconv(.c) u32;
pub const WGPUProcQuerySetGetType = ?*const fn (WGPUQuerySet) callconv(.c) WGPUQueryType;
pub const WGPUProcQuerySetSetLabel = ?*const fn (WGPUQuerySet, WGPUStringView) callconv(.c) void;
pub const WGPUProcQuerySetAddRef = ?*const fn (WGPUQuerySet) callconv(.c) void;
pub const WGPUProcQuerySetRelease = ?*const fn (WGPUQuerySet) callconv(.c) void;
pub const WGPUProcQueueOnSubmittedWorkDone = ?*const fn (WGPUQueue, WGPUQueueWorkDoneCallbackInfo) callconv(.c) WGPUFuture;
pub const WGPUProcQueueSetLabel = ?*const fn (WGPUQueue, WGPUStringView) callconv(.c) void;
pub const WGPUProcQueueSubmit = ?*const fn (WGPUQueue, usize, [*c]const WGPUCommandBuffer) callconv(.c) void;
pub const WGPUProcQueueWriteBuffer = ?*const fn (WGPUQueue, WGPUBuffer, u64, ?*const anyopaque, usize) callconv(.c) void;
pub const WGPUProcQueueWriteTexture = ?*const fn (WGPUQueue, [*c]const WGPUTexelCopyTextureInfo, ?*const anyopaque, usize, [*c]const WGPUTexelCopyBufferLayout, [*c]const WGPUExtent3D) callconv(.c) void;
pub const WGPUProcQueueAddRef = ?*const fn (WGPUQueue) callconv(.c) void;
pub const WGPUProcQueueRelease = ?*const fn (WGPUQueue) callconv(.c) void;
pub const WGPUProcRenderBundleSetLabel = ?*const fn (WGPURenderBundle, WGPUStringView) callconv(.c) void;
pub const WGPUProcRenderBundleAddRef = ?*const fn (WGPURenderBundle) callconv(.c) void;
pub const WGPUProcRenderBundleRelease = ?*const fn (WGPURenderBundle) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderDraw = ?*const fn (WGPURenderBundleEncoder, u32, u32, u32, u32) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderDrawIndexed = ?*const fn (WGPURenderBundleEncoder, u32, u32, u32, i32, u32) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderDrawIndexedIndirect = ?*const fn (WGPURenderBundleEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderDrawIndirect = ?*const fn (WGPURenderBundleEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderFinish = ?*const fn (WGPURenderBundleEncoder, [*c]const WGPURenderBundleDescriptor) callconv(.c) WGPURenderBundle;
pub const WGPUProcRenderBundleEncoderInsertDebugMarker = ?*const fn (WGPURenderBundleEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderPopDebugGroup = ?*const fn (WGPURenderBundleEncoder) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderPushDebugGroup = ?*const fn (WGPURenderBundleEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetBindGroup = ?*const fn (WGPURenderBundleEncoder, u32, WGPUBindGroup, usize, [*c]const u32) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetIndexBuffer = ?*const fn (WGPURenderBundleEncoder, WGPUBuffer, WGPUIndexFormat, u64, u64) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetLabel = ?*const fn (WGPURenderBundleEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetPipeline = ?*const fn (WGPURenderBundleEncoder, WGPURenderPipeline) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetVertexBuffer = ?*const fn (WGPURenderBundleEncoder, u32, WGPUBuffer, u64, u64) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderAddRef = ?*const fn (WGPURenderBundleEncoder) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderRelease = ?*const fn (WGPURenderBundleEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderBeginOcclusionQuery = ?*const fn (WGPURenderPassEncoder, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderDraw = ?*const fn (WGPURenderPassEncoder, u32, u32, u32, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderDrawIndexed = ?*const fn (WGPURenderPassEncoder, u32, u32, u32, i32, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderDrawIndexedIndirect = ?*const fn (WGPURenderPassEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderDrawIndirect = ?*const fn (WGPURenderPassEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderEnd = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderEndOcclusionQuery = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderExecuteBundles = ?*const fn (WGPURenderPassEncoder, usize, [*c]const WGPURenderBundle) callconv(.c) void;
pub const WGPUProcRenderPassEncoderInsertDebugMarker = ?*const fn (WGPURenderPassEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcRenderPassEncoderMultiDrawIndexedIndirect = ?*const fn (WGPURenderPassEncoder, WGPUBuffer, u64, u32, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderMultiDrawIndirect = ?*const fn (WGPURenderPassEncoder, WGPUBuffer, u64, u32, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderPopDebugGroup = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderPushDebugGroup = ?*const fn (WGPURenderPassEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetBindGroup = ?*const fn (WGPURenderPassEncoder, u32, WGPUBindGroup, usize, [*c]const u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetBlendConstant = ?*const fn (WGPURenderPassEncoder, [*c]const WGPUColor) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetIndexBuffer = ?*const fn (WGPURenderPassEncoder, WGPUBuffer, WGPUIndexFormat, u64, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetLabel = ?*const fn (WGPURenderPassEncoder, WGPUStringView) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetPipeline = ?*const fn (WGPURenderPassEncoder, WGPURenderPipeline) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetScissorRect = ?*const fn (WGPURenderPassEncoder, u32, u32, u32, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetStencilReference = ?*const fn (WGPURenderPassEncoder, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetVertexBuffer = ?*const fn (WGPURenderPassEncoder, u32, WGPUBuffer, u64, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetViewport = ?*const fn (WGPURenderPassEncoder, f32, f32, f32, f32, f32, f32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderWriteTimestamp = ?*const fn (WGPURenderPassEncoder, WGPUQuerySet, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderAddRef = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderRelease = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPipelineGetBindGroupLayout = ?*const fn (WGPURenderPipeline, u32) callconv(.c) WGPUBindGroupLayout;
pub const WGPUProcRenderPipelineSetLabel = ?*const fn (WGPURenderPipeline, WGPUStringView) callconv(.c) void;
pub const WGPUProcRenderPipelineAddRef = ?*const fn (WGPURenderPipeline) callconv(.c) void;
pub const WGPUProcRenderPipelineRelease = ?*const fn (WGPURenderPipeline) callconv(.c) void;
pub const WGPUProcSamplerSetLabel = ?*const fn (WGPUSampler, WGPUStringView) callconv(.c) void;
pub const WGPUProcSamplerAddRef = ?*const fn (WGPUSampler) callconv(.c) void;
pub const WGPUProcSamplerRelease = ?*const fn (WGPUSampler) callconv(.c) void;
pub const WGPUProcShaderModuleGetCompilationInfo = ?*const fn (WGPUShaderModule, WGPUCompilationInfoCallbackInfo) callconv(.c) WGPUFuture;
pub const WGPUProcShaderModuleSetLabel = ?*const fn (WGPUShaderModule, WGPUStringView) callconv(.c) void;
pub const WGPUProcShaderModuleAddRef = ?*const fn (WGPUShaderModule) callconv(.c) void;
pub const WGPUProcShaderModuleRelease = ?*const fn (WGPUShaderModule) callconv(.c) void;
pub const WGPUProcSupportedFeaturesFreeMembers = ?*const fn (WGPUSupportedFeatures) callconv(.c) void;
pub const WGPUProcSupportedInstanceFeaturesFreeMembers = ?*const fn (WGPUSupportedInstanceFeatures) callconv(.c) void;
pub const WGPUProcSupportedWGSLLanguageFeaturesFreeMembers = ?*const fn (WGPUSupportedWGSLLanguageFeatures) callconv(.c) void;
pub const WGPUProcSurfaceConfigure = ?*const fn (WGPUSurface, [*c]const WGPUSurfaceConfiguration) callconv(.c) void;
pub const WGPUProcSurfaceGetCapabilities = ?*const fn (WGPUSurface, WGPUAdapter, [*c]WGPUSurfaceCapabilities) callconv(.c) WGPUStatus;
pub const WGPUProcSurfaceGetCurrentTexture = ?*const fn (WGPUSurface, [*c]WGPUSurfaceTexture) callconv(.c) void;
pub const WGPUProcSurfacePresent = ?*const fn (WGPUSurface) callconv(.c) WGPUStatus;
pub const WGPUProcSurfaceSetLabel = ?*const fn (WGPUSurface, WGPUStringView) callconv(.c) void;
pub const WGPUProcSurfaceUnconfigure = ?*const fn (WGPUSurface) callconv(.c) void;
pub const WGPUProcSurfaceAddRef = ?*const fn (WGPUSurface) callconv(.c) void;
pub const WGPUProcSurfaceRelease = ?*const fn (WGPUSurface) callconv(.c) void;
pub const WGPUProcSurfaceCapabilitiesFreeMembers = ?*const fn (WGPUSurfaceCapabilities) callconv(.c) void;
pub const WGPUProcTextureCreateView = ?*const fn (WGPUTexture, [*c]const WGPUTextureViewDescriptor) callconv(.c) WGPUTextureView;
pub const WGPUProcTextureDestroy = ?*const fn (WGPUTexture) callconv(.c) void;
pub const WGPUProcTextureGetDepthOrArrayLayers = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureGetDimension = ?*const fn (WGPUTexture) callconv(.c) WGPUTextureDimension;
pub const WGPUProcTextureGetFormat = ?*const fn (WGPUTexture) callconv(.c) WGPUTextureFormat;
pub const WGPUProcTextureGetHeight = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureGetMipLevelCount = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureGetSampleCount = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureGetUsage = ?*const fn (WGPUTexture) callconv(.c) WGPUTextureUsage;
pub const WGPUProcTextureGetWidth = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureSetLabel = ?*const fn (WGPUTexture, WGPUStringView) callconv(.c) void;
pub const WGPUProcTextureAddRef = ?*const fn (WGPUTexture) callconv(.c) void;
pub const WGPUProcTextureRelease = ?*const fn (WGPUTexture) callconv(.c) void;
pub const WGPUProcTextureViewSetLabel = ?*const fn (WGPUTextureView, WGPUStringView) callconv(.c) void;
pub const WGPUProcTextureViewAddRef = ?*const fn (WGPUTextureView) callconv(.c) void;
pub const WGPUProcTextureViewRelease = ?*const fn (WGPUTextureView) callconv(.c) void;
pub extern fn wgpuCreateInstance(descriptor: [*c]const WGPUInstanceDescriptor) WGPUInstance;
pub extern fn wgpuGetInstanceFeatures(features: [*c]WGPUSupportedInstanceFeatures) void;
pub extern fn wgpuGetInstanceLimits(limits: [*c]WGPUInstanceLimits) WGPUStatus;
pub extern fn wgpuHasInstanceFeature(feature: WGPUInstanceFeatureName) WGPUBool;
pub extern fn wgpuGetProcAddress(procName: WGPUStringView) WGPUProc;
pub extern fn wgpuAdapterGetFeatures(adapter: WGPUAdapter, features: [*c]WGPUSupportedFeatures) void;
pub extern fn wgpuAdapterGetInfo(adapter: WGPUAdapter, info: [*c]WGPUAdapterInfo) WGPUStatus;
pub extern fn wgpuAdapterGetLimits(adapter: WGPUAdapter, limits: [*c]WGPULimits) WGPUStatus;
pub extern fn wgpuAdapterHasFeature(adapter: WGPUAdapter, feature: WGPUFeatureName) WGPUBool;
pub extern fn wgpuAdapterRequestDevice(adapter: WGPUAdapter, descriptor: [*c]const WGPUDeviceDescriptor, callbackInfo: WGPURequestDeviceCallbackInfo) WGPUFuture;
pub extern fn wgpuAdapterAddRef(adapter: WGPUAdapter) void;
pub extern fn wgpuAdapterRelease(adapter: WGPUAdapter) void;
pub extern fn wgpuAdapterInfoFreeMembers(adapterInfo: WGPUAdapterInfo) void;
pub extern fn wgpuBindGroupSetLabel(bindGroup: WGPUBindGroup, label: WGPUStringView) void;
pub extern fn wgpuBindGroupAddRef(bindGroup: WGPUBindGroup) void;
pub extern fn wgpuBindGroupRelease(bindGroup: WGPUBindGroup) void;
pub extern fn wgpuBindGroupLayoutSetLabel(bindGroupLayout: WGPUBindGroupLayout, label: WGPUStringView) void;
pub extern fn wgpuBindGroupLayoutAddRef(bindGroupLayout: WGPUBindGroupLayout) void;
pub extern fn wgpuBindGroupLayoutRelease(bindGroupLayout: WGPUBindGroupLayout) void;
pub extern fn wgpuBufferDestroy(buffer: WGPUBuffer) void;
pub extern fn wgpuBufferGetConstMappedRange(buffer: WGPUBuffer, offset: usize, size: usize) ?*const anyopaque;
pub extern fn wgpuBufferGetMappedRange(buffer: WGPUBuffer, offset: usize, size: usize) ?*anyopaque;
pub extern fn wgpuBufferGetMapState(buffer: WGPUBuffer) WGPUBufferMapState;
pub extern fn wgpuBufferGetSize(buffer: WGPUBuffer) u64;
pub extern fn wgpuBufferGetUsage(buffer: WGPUBuffer) WGPUBufferUsage;
pub extern fn wgpuBufferMapAsync(buffer: WGPUBuffer, mode: WGPUMapMode, offset: usize, size: usize, callbackInfo: WGPUBufferMapCallbackInfo) WGPUFuture;
pub extern fn wgpuBufferReadMappedRange(buffer: WGPUBuffer, offset: usize, data: ?*anyopaque, size: usize) WGPUStatus;
pub extern fn wgpuBufferSetLabel(buffer: WGPUBuffer, label: WGPUStringView) void;
pub extern fn wgpuBufferUnmap(buffer: WGPUBuffer) void;
pub extern fn wgpuBufferWriteMappedRange(buffer: WGPUBuffer, offset: usize, data: ?*const anyopaque, size: usize) WGPUStatus;
pub extern fn wgpuBufferAddRef(buffer: WGPUBuffer) void;
pub extern fn wgpuBufferRelease(buffer: WGPUBuffer) void;
pub extern fn wgpuCommandBufferSetLabel(commandBuffer: WGPUCommandBuffer, label: WGPUStringView) void;
pub extern fn wgpuCommandBufferAddRef(commandBuffer: WGPUCommandBuffer) void;
pub extern fn wgpuCommandBufferRelease(commandBuffer: WGPUCommandBuffer) void;
pub extern fn wgpuCommandEncoderBeginComputePass(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPUComputePassDescriptor) WGPUComputePassEncoder;
pub extern fn wgpuCommandEncoderBeginRenderPass(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPURenderPassDescriptor) WGPURenderPassEncoder;
pub extern fn wgpuCommandEncoderClearBuffer(commandEncoder: WGPUCommandEncoder, buffer: WGPUBuffer, offset: u64, size: u64) void;
pub extern fn wgpuCommandEncoderCopyBufferToBuffer(commandEncoder: WGPUCommandEncoder, source: WGPUBuffer, sourceOffset: u64, destination: WGPUBuffer, destinationOffset: u64, size: u64) void;
pub extern fn wgpuCommandEncoderCopyBufferToTexture(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUTexelCopyBufferInfo, destination: [*c]const WGPUTexelCopyTextureInfo, copySize: [*c]const WGPUExtent3D) void;
pub extern fn wgpuCommandEncoderCopyTextureToBuffer(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUTexelCopyTextureInfo, destination: [*c]const WGPUTexelCopyBufferInfo, copySize: [*c]const WGPUExtent3D) void;
pub extern fn wgpuCommandEncoderCopyTextureToTexture(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUTexelCopyTextureInfo, destination: [*c]const WGPUTexelCopyTextureInfo, copySize: [*c]const WGPUExtent3D) void;
pub extern fn wgpuCommandEncoderFinish(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPUCommandBufferDescriptor) WGPUCommandBuffer;
pub extern fn wgpuCommandEncoderInsertDebugMarker(commandEncoder: WGPUCommandEncoder, markerLabel: WGPUStringView) void;
pub extern fn wgpuCommandEncoderPopDebugGroup(commandEncoder: WGPUCommandEncoder) void;
pub extern fn wgpuCommandEncoderPushDebugGroup(commandEncoder: WGPUCommandEncoder, groupLabel: WGPUStringView) void;
pub extern fn wgpuCommandEncoderResolveQuerySet(commandEncoder: WGPUCommandEncoder, querySet: WGPUQuerySet, firstQuery: u32, queryCount: u32, destination: WGPUBuffer, destinationOffset: u64) void;
pub extern fn wgpuCommandEncoderSetLabel(commandEncoder: WGPUCommandEncoder, label: WGPUStringView) void;
pub extern fn wgpuCommandEncoderWriteTimestamp(commandEncoder: WGPUCommandEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;
pub extern fn wgpuCommandEncoderAddRef(commandEncoder: WGPUCommandEncoder) void;
pub extern fn wgpuCommandEncoderRelease(commandEncoder: WGPUCommandEncoder) void;
pub extern fn wgpuComputePassEncoderDispatchWorkgroups(computePassEncoder: WGPUComputePassEncoder, workgroupCountX: u32, workgroupCountY: u32, workgroupCountZ: u32) void;
pub extern fn wgpuComputePassEncoderDispatchWorkgroupsIndirect(computePassEncoder: WGPUComputePassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuComputePassEncoderEnd(computePassEncoder: WGPUComputePassEncoder) void;
pub extern fn wgpuComputePassEncoderInsertDebugMarker(computePassEncoder: WGPUComputePassEncoder, markerLabel: WGPUStringView) void;
pub extern fn wgpuComputePassEncoderPopDebugGroup(computePassEncoder: WGPUComputePassEncoder) void;
pub extern fn wgpuComputePassEncoderPushDebugGroup(computePassEncoder: WGPUComputePassEncoder, groupLabel: WGPUStringView) void;
pub extern fn wgpuComputePassEncoderSetBindGroup(computePassEncoder: WGPUComputePassEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;
pub extern fn wgpuComputePassEncoderSetLabel(computePassEncoder: WGPUComputePassEncoder, label: WGPUStringView) void;
pub extern fn wgpuComputePassEncoderSetPipeline(computePassEncoder: WGPUComputePassEncoder, pipeline: WGPUComputePipeline) void;
pub extern fn wgpuComputePassEncoderWriteTimestamp(computePassEncoder: WGPUComputePassEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;
pub extern fn wgpuComputePassEncoderAddRef(computePassEncoder: WGPUComputePassEncoder) void;
pub extern fn wgpuComputePassEncoderRelease(computePassEncoder: WGPUComputePassEncoder) void;
pub extern fn wgpuComputePipelineGetBindGroupLayout(computePipeline: WGPUComputePipeline, groupIndex: u32) WGPUBindGroupLayout;
pub extern fn wgpuComputePipelineSetLabel(computePipeline: WGPUComputePipeline, label: WGPUStringView) void;
pub extern fn wgpuComputePipelineAddRef(computePipeline: WGPUComputePipeline) void;
pub extern fn wgpuComputePipelineRelease(computePipeline: WGPUComputePipeline) void;
pub extern fn wgpuDeviceCreateBindGroup(device: WGPUDevice, descriptor: [*c]const WGPUBindGroupDescriptor) WGPUBindGroup;
pub extern fn wgpuDeviceCreateBindGroupLayout(device: WGPUDevice, descriptor: [*c]const WGPUBindGroupLayoutDescriptor) WGPUBindGroupLayout;
pub extern fn wgpuDeviceCreateBuffer(device: WGPUDevice, descriptor: [*c]const WGPUBufferDescriptor) WGPUBuffer;
pub extern fn wgpuDeviceCreateCommandEncoder(device: WGPUDevice, descriptor: [*c]const WGPUCommandEncoderDescriptor) WGPUCommandEncoder;
pub extern fn wgpuDeviceCreateComputePipeline(device: WGPUDevice, descriptor: [*c]const WGPUComputePipelineDescriptor) WGPUComputePipeline;
pub extern fn wgpuDeviceCreateComputePipelineAsync(device: WGPUDevice, descriptor: [*c]const WGPUComputePipelineDescriptor, callbackInfo: WGPUCreateComputePipelineAsyncCallbackInfo) WGPUFuture;
pub extern fn wgpuDeviceCreatePipelineLayout(device: WGPUDevice, descriptor: [*c]const WGPUPipelineLayoutDescriptor) WGPUPipelineLayout;
pub extern fn wgpuDeviceCreateQuerySet(device: WGPUDevice, descriptor: [*c]const WGPUQuerySetDescriptor) WGPUQuerySet;
pub extern fn wgpuDeviceCreateRenderBundleEncoder(device: WGPUDevice, descriptor: [*c]const WGPURenderBundleEncoderDescriptor) WGPURenderBundleEncoder;
pub extern fn wgpuDeviceCreateRenderPipeline(device: WGPUDevice, descriptor: [*c]const WGPURenderPipelineDescriptor) WGPURenderPipeline;
pub extern fn wgpuDeviceCreateRenderPipelineAsync(device: WGPUDevice, descriptor: [*c]const WGPURenderPipelineDescriptor, callbackInfo: WGPUCreateRenderPipelineAsyncCallbackInfo) WGPUFuture;
pub extern fn wgpuDeviceCreateSampler(device: WGPUDevice, descriptor: [*c]const WGPUSamplerDescriptor) WGPUSampler;
pub extern fn wgpuDeviceCreateShaderModule(device: WGPUDevice, descriptor: [*c]const WGPUShaderModuleDescriptor) WGPUShaderModule;
pub extern fn wgpuDeviceCreateTexture(device: WGPUDevice, descriptor: [*c]const WGPUTextureDescriptor) WGPUTexture;
pub extern fn wgpuDeviceDestroy(device: WGPUDevice) void;
pub extern fn wgpuDeviceGetAdapterInfo(device: WGPUDevice, adapterInfo: [*c]WGPUAdapterInfo) WGPUStatus;
pub extern fn wgpuDeviceGetFeatures(device: WGPUDevice, features: [*c]WGPUSupportedFeatures) void;
pub extern fn wgpuDeviceGetLimits(device: WGPUDevice, limits: [*c]WGPULimits) WGPUStatus;
pub extern fn wgpuDeviceGetLostFuture(device: WGPUDevice) WGPUFuture;
pub extern fn wgpuDeviceGetQueue(device: WGPUDevice) WGPUQueue;
pub extern fn wgpuDeviceHasFeature(device: WGPUDevice, feature: WGPUFeatureName) WGPUBool;
pub extern fn wgpuDevicePopErrorScope(device: WGPUDevice, callbackInfo: WGPUPopErrorScopeCallbackInfo) WGPUFuture;
pub extern fn wgpuDevicePushErrorScope(device: WGPUDevice, filter: WGPUErrorFilter) void;
pub extern fn wgpuDeviceSetLabel(device: WGPUDevice, label: WGPUStringView) void;
pub extern fn wgpuDeviceAddRef(device: WGPUDevice) void;
pub extern fn wgpuDeviceRelease(device: WGPUDevice) void;
pub extern fn wgpuInstanceCreateSurface(instance: WGPUInstance, descriptor: [*c]const WGPUSurfaceDescriptor) WGPUSurface;
pub extern fn wgpuInstanceGetWGSLLanguageFeatures(instance: WGPUInstance, features: [*c]WGPUSupportedWGSLLanguageFeatures) void;
pub extern fn wgpuInstanceHasWGSLLanguageFeature(instance: WGPUInstance, feature: WGPUWGSLLanguageFeatureName) WGPUBool;
pub extern fn wgpuInstanceProcessEvents(instance: WGPUInstance) void;
pub extern fn wgpuInstanceRequestAdapter(instance: WGPUInstance, options: [*c]const WGPURequestAdapterOptions, callbackInfo: WGPURequestAdapterCallbackInfo) WGPUFuture;
pub extern fn wgpuInstanceWaitAny(instance: WGPUInstance, futureCount: usize, futures: [*c]WGPUFutureWaitInfo, timeoutNS: u64) WGPUWaitStatus;
pub extern fn wgpuInstanceAddRef(instance: WGPUInstance) void;
pub extern fn wgpuInstanceRelease(instance: WGPUInstance) void;
pub extern fn wgpuPipelineLayoutSetLabel(pipelineLayout: WGPUPipelineLayout, label: WGPUStringView) void;
pub extern fn wgpuPipelineLayoutAddRef(pipelineLayout: WGPUPipelineLayout) void;
pub extern fn wgpuPipelineLayoutRelease(pipelineLayout: WGPUPipelineLayout) void;
pub extern fn wgpuQuerySetDestroy(querySet: WGPUQuerySet) void;
pub extern fn wgpuQuerySetGetCount(querySet: WGPUQuerySet) u32;
pub extern fn wgpuQuerySetGetType(querySet: WGPUQuerySet) WGPUQueryType;
pub extern fn wgpuQuerySetSetLabel(querySet: WGPUQuerySet, label: WGPUStringView) void;
pub extern fn wgpuQuerySetAddRef(querySet: WGPUQuerySet) void;
pub extern fn wgpuQuerySetRelease(querySet: WGPUQuerySet) void;
pub extern fn wgpuQueueOnSubmittedWorkDone(queue: WGPUQueue, callbackInfo: WGPUQueueWorkDoneCallbackInfo) WGPUFuture;
pub extern fn wgpuQueueSetLabel(queue: WGPUQueue, label: WGPUStringView) void;
pub extern fn wgpuQueueSubmit(queue: WGPUQueue, commandCount: usize, commands: [*c]const WGPUCommandBuffer) void;
pub extern fn wgpuQueueWriteBuffer(queue: WGPUQueue, buffer: WGPUBuffer, bufferOffset: u64, data: ?*const anyopaque, size: usize) void;
pub extern fn wgpuQueueWriteTexture(queue: WGPUQueue, destination: [*c]const WGPUTexelCopyTextureInfo, data: ?*const anyopaque, dataSize: usize, dataLayout: [*c]const WGPUTexelCopyBufferLayout, writeSize: [*c]const WGPUExtent3D) void;
pub extern fn wgpuQueueAddRef(queue: WGPUQueue) void;
pub extern fn wgpuQueueRelease(queue: WGPUQueue) void;
pub extern fn wgpuRenderBundleSetLabel(renderBundle: WGPURenderBundle, label: WGPUStringView) void;
pub extern fn wgpuRenderBundleAddRef(renderBundle: WGPURenderBundle) void;
pub extern fn wgpuRenderBundleRelease(renderBundle: WGPURenderBundle) void;
pub extern fn wgpuRenderBundleEncoderDraw(renderBundleEncoder: WGPURenderBundleEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) void;
pub extern fn wgpuRenderBundleEncoderDrawIndexed(renderBundleEncoder: WGPURenderBundleEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: i32, firstInstance: u32) void;
pub extern fn wgpuRenderBundleEncoderDrawIndexedIndirect(renderBundleEncoder: WGPURenderBundleEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuRenderBundleEncoderDrawIndirect(renderBundleEncoder: WGPURenderBundleEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuRenderBundleEncoderFinish(renderBundleEncoder: WGPURenderBundleEncoder, descriptor: [*c]const WGPURenderBundleDescriptor) WGPURenderBundle;
pub extern fn wgpuRenderBundleEncoderInsertDebugMarker(renderBundleEncoder: WGPURenderBundleEncoder, markerLabel: WGPUStringView) void;
pub extern fn wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder: WGPURenderBundleEncoder) void;
pub extern fn wgpuRenderBundleEncoderPushDebugGroup(renderBundleEncoder: WGPURenderBundleEncoder, groupLabel: WGPUStringView) void;
pub extern fn wgpuRenderBundleEncoderSetBindGroup(renderBundleEncoder: WGPURenderBundleEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;
pub extern fn wgpuRenderBundleEncoderSetIndexBuffer(renderBundleEncoder: WGPURenderBundleEncoder, buffer: WGPUBuffer, format: WGPUIndexFormat, offset: u64, size: u64) void;
pub extern fn wgpuRenderBundleEncoderSetLabel(renderBundleEncoder: WGPURenderBundleEncoder, label: WGPUStringView) void;
pub extern fn wgpuRenderBundleEncoderSetPipeline(renderBundleEncoder: WGPURenderBundleEncoder, pipeline: WGPURenderPipeline) void;
pub extern fn wgpuRenderBundleEncoderSetVertexBuffer(renderBundleEncoder: WGPURenderBundleEncoder, slot: u32, buffer: WGPUBuffer, offset: u64, size: u64) void;
pub extern fn wgpuRenderBundleEncoderAddRef(renderBundleEncoder: WGPURenderBundleEncoder) void;
pub extern fn wgpuRenderBundleEncoderRelease(renderBundleEncoder: WGPURenderBundleEncoder) void;
pub extern fn wgpuRenderPassEncoderBeginOcclusionQuery(renderPassEncoder: WGPURenderPassEncoder, queryIndex: u32) void;
pub extern fn wgpuRenderPassEncoderDraw(renderPassEncoder: WGPURenderPassEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) void;
pub extern fn wgpuRenderPassEncoderDrawIndexed(renderPassEncoder: WGPURenderPassEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: i32, firstInstance: u32) void;
pub extern fn wgpuRenderPassEncoderDrawIndexedIndirect(renderPassEncoder: WGPURenderPassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuRenderPassEncoderDrawIndirect(renderPassEncoder: WGPURenderPassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuRenderPassEncoderEnd(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPassEncoderEndOcclusionQuery(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPassEncoderExecuteBundles(renderPassEncoder: WGPURenderPassEncoder, bundleCount: usize, bundles: [*c]const WGPURenderBundle) void;
pub extern fn wgpuRenderPassEncoderInsertDebugMarker(renderPassEncoder: WGPURenderPassEncoder, markerLabel: WGPUStringView) void;
pub extern fn wgpuRenderPassEncoderMultiDrawIndexedIndirect(renderPassEncoder: WGPURenderPassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64, maxDrawCount: u32, drawCountBuffer: WGPUBuffer, drawCountBufferOffset: u64) void;
pub extern fn wgpuRenderPassEncoderMultiDrawIndirect(renderPassEncoder: WGPURenderPassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64, maxDrawCount: u32, drawCountBuffer: WGPUBuffer, drawCountBufferOffset: u64) void;
pub extern fn wgpuRenderPassEncoderPopDebugGroup(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPassEncoderPushDebugGroup(renderPassEncoder: WGPURenderPassEncoder, groupLabel: WGPUStringView) void;
pub extern fn wgpuRenderPassEncoderSetBindGroup(renderPassEncoder: WGPURenderPassEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;
pub extern fn wgpuRenderPassEncoderSetBlendConstant(renderPassEncoder: WGPURenderPassEncoder, color: [*c]const WGPUColor) void;
pub extern fn wgpuRenderPassEncoderSetIndexBuffer(renderPassEncoder: WGPURenderPassEncoder, buffer: WGPUBuffer, format: WGPUIndexFormat, offset: u64, size: u64) void;
pub extern fn wgpuRenderPassEncoderSetLabel(renderPassEncoder: WGPURenderPassEncoder, label: WGPUStringView) void;
pub extern fn wgpuRenderPassEncoderSetPipeline(renderPassEncoder: WGPURenderPassEncoder, pipeline: WGPURenderPipeline) void;
pub extern fn wgpuRenderPassEncoderSetScissorRect(renderPassEncoder: WGPURenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void;
pub extern fn wgpuRenderPassEncoderSetStencilReference(renderPassEncoder: WGPURenderPassEncoder, reference: u32) void;
pub extern fn wgpuRenderPassEncoderSetVertexBuffer(renderPassEncoder: WGPURenderPassEncoder, slot: u32, buffer: WGPUBuffer, offset: u64, size: u64) void;
pub extern fn wgpuRenderPassEncoderSetViewport(renderPassEncoder: WGPURenderPassEncoder, x: f32, y: f32, width: f32, height: f32, minDepth: f32, maxDepth: f32) void;
pub extern fn wgpuRenderPassEncoderWriteTimestamp(renderPassEncoder: WGPURenderPassEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;
pub extern fn wgpuRenderPassEncoderAddRef(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPassEncoderRelease(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPipelineGetBindGroupLayout(renderPipeline: WGPURenderPipeline, groupIndex: u32) WGPUBindGroupLayout;
pub extern fn wgpuRenderPipelineSetLabel(renderPipeline: WGPURenderPipeline, label: WGPUStringView) void;
pub extern fn wgpuRenderPipelineAddRef(renderPipeline: WGPURenderPipeline) void;
pub extern fn wgpuRenderPipelineRelease(renderPipeline: WGPURenderPipeline) void;
pub extern fn wgpuSamplerSetLabel(sampler: WGPUSampler, label: WGPUStringView) void;
pub extern fn wgpuSamplerAddRef(sampler: WGPUSampler) void;
pub extern fn wgpuSamplerRelease(sampler: WGPUSampler) void;
pub extern fn wgpuShaderModuleGetCompilationInfo(shaderModule: WGPUShaderModule, callbackInfo: WGPUCompilationInfoCallbackInfo) WGPUFuture;
pub extern fn wgpuShaderModuleSetLabel(shaderModule: WGPUShaderModule, label: WGPUStringView) void;
pub extern fn wgpuShaderModuleAddRef(shaderModule: WGPUShaderModule) void;
pub extern fn wgpuShaderModuleRelease(shaderModule: WGPUShaderModule) void;
pub extern fn wgpuSupportedFeaturesFreeMembers(supportedFeatures: WGPUSupportedFeatures) void;
pub extern fn wgpuSupportedInstanceFeaturesFreeMembers(supportedInstanceFeatures: WGPUSupportedInstanceFeatures) void;
pub extern fn wgpuSupportedWGSLLanguageFeaturesFreeMembers(supportedWGSLLanguageFeatures: WGPUSupportedWGSLLanguageFeatures) void;
pub extern fn wgpuSurfaceConfigure(surface: WGPUSurface, config: [*c]const WGPUSurfaceConfiguration) void;
pub extern fn wgpuSurfaceGetCapabilities(surface: WGPUSurface, adapter: WGPUAdapter, capabilities: [*c]WGPUSurfaceCapabilities) WGPUStatus;
pub extern fn wgpuSurfaceGetCurrentTexture(surface: WGPUSurface, surfaceTexture: [*c]WGPUSurfaceTexture) void;
pub extern fn wgpuSurfacePresent(surface: WGPUSurface) WGPUStatus;
pub extern fn wgpuSurfaceSetLabel(surface: WGPUSurface, label: WGPUStringView) void;
pub extern fn wgpuSurfaceUnconfigure(surface: WGPUSurface) void;
pub extern fn wgpuSurfaceAddRef(surface: WGPUSurface) void;
pub extern fn wgpuSurfaceRelease(surface: WGPUSurface) void;
pub extern fn wgpuSurfaceCapabilitiesFreeMembers(surfaceCapabilities: WGPUSurfaceCapabilities) void;
pub extern fn wgpuTextureCreateView(texture: WGPUTexture, descriptor: [*c]const WGPUTextureViewDescriptor) WGPUTextureView;
pub extern fn wgpuTextureDestroy(texture: WGPUTexture) void;
pub extern fn wgpuTextureGetDepthOrArrayLayers(texture: WGPUTexture) u32;
pub extern fn wgpuTextureGetDimension(texture: WGPUTexture) WGPUTextureDimension;
pub extern fn wgpuTextureGetFormat(texture: WGPUTexture) WGPUTextureFormat;
pub extern fn wgpuTextureGetHeight(texture: WGPUTexture) u32;
pub extern fn wgpuTextureGetMipLevelCount(texture: WGPUTexture) u32;
pub extern fn wgpuTextureGetSampleCount(texture: WGPUTexture) u32;
pub extern fn wgpuTextureGetUsage(texture: WGPUTexture) WGPUTextureUsage;
pub extern fn wgpuTextureGetWidth(texture: WGPUTexture) u32;
pub extern fn wgpuTextureSetLabel(texture: WGPUTexture, label: WGPUStringView) void;
pub extern fn wgpuTextureAddRef(texture: WGPUTexture) void;
pub extern fn wgpuTextureRelease(texture: WGPUTexture) void;
pub extern fn wgpuTextureViewSetLabel(textureView: WGPUTextureView, label: WGPUStringView) void;
pub extern fn wgpuTextureViewAddRef(textureView: WGPUTextureView) void;
pub extern fn wgpuTextureViewRelease(textureView: WGPUTextureView) void;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 2);
pub const __clang_version__ = "20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):207:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):232:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):241:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):373:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):374:9
pub const __znver5 = @as(c_int, 1);
pub const __znver5__ = @as(c_int, 1);
pub const __tune_znver5__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __EVEX512__ = @as(c_int, 1);
pub const __AVX512CD__ = @as(c_int, 1);
pub const __AVX512VPOPCNTDQ__ = @as(c_int, 1);
pub const __AVX512VNNI__ = @as(c_int, 1);
pub const __AVX512BF16__ = @as(c_int, 1);
pub const __AVX512DQ__ = @as(c_int, 1);
pub const __AVX512BITALG__ = @as(c_int, 1);
pub const __AVX512BW__ = @as(c_int, 1);
pub const __AVX512VL__ = @as(c_int, 1);
pub const __EVEX256__ = @as(c_int, 1);
pub const __AVX512VBMI__ = @as(c_int, 1);
pub const __AVX512VBMI2__ = @as(c_int, 1);
pub const __AVX512IFMA__ = @as(c_int, 1);
pub const __AVX512VP2INTERSECT__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVXVNNI__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX512F__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const WEBGPU_H_ = "";
pub const WGPU_EXPORT = "";
pub const WGPU_OBJECT_ATTRIBUTE = "";
pub const WGPU_ENUM_ATTRIBUTE = "";
pub const WGPU_STRUCTURE_ATTRIBUTE = "";
pub const WGPU_FUNCTION_ATTRIBUTE = "";
pub const WGPU_NULLABLE = "";
pub const _STDINT_H = "";
pub const __NEED_int8_t = "";
pub const __NEED_int16_t = "";
pub const __NEED_int32_t = "";
pub const __NEED_int64_t = "";
pub const __NEED_uint8_t = "";
pub const __NEED_uint16_t = "";
pub const __NEED_uint32_t = "";
pub const __NEED_uint64_t = "";
pub const __NEED_intptr_t = "";
pub const __NEED_uintptr_t = "";
pub const __NEED_intmax_t = "";
pub const __NEED_uintmax_t = "";
pub const _Addr = __PTRDIFF_TYPE__;
pub const _Int64 = __INT64_TYPE__;
pub const _Reg = __PTRDIFF_TYPE__;
pub const __BYTE_ORDER = @as(c_int, 1234);
pub const __LONG_MAX = __LONG_MAX__;
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __DEFINED_uintptr_t = "";
pub const __DEFINED_intptr_t = "";
pub const __DEFINED_int8_t = "";
pub const __DEFINED_int16_t = "";
pub const __DEFINED_int32_t = "";
pub const __DEFINED_int64_t = "";
pub const __DEFINED_intmax_t = "";
pub const __DEFINED_uint8_t = "";
pub const __DEFINED_uint16_t = "";
pub const __DEFINED_uint32_t = "";
pub const __DEFINED_uint64_t = "";
pub const __DEFINED_uintmax_t = "";
pub const INT8_MIN = -@as(c_int, 1) - @as(c_int, 0x7f);
pub const INT16_MIN = -@as(c_int, 1) - @as(c_int, 0x7fff);
pub const INT32_MIN = -@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const INT64_MIN = -@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffffffffffff, .hex);
pub const INT8_MAX = @as(c_int, 0x7f);
pub const INT16_MAX = @as(c_int, 0x7fff);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const INT64_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffffffffffff, .hex);
pub const UINT8_MAX = @as(c_int, 0xff);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hex);
pub const UINT64_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffffffffffff, .hex);
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = UINT32_MAX;
pub const WCHAR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex) + '\x00';
pub const WCHAR_MIN = (-@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) + '\x00';
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const INT_FAST16_MIN = INT32_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST16_MAX = INT32_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const UINT_FAST16_MAX = UINT32_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const INTPTR_MIN = -@as(c_int, 1) - __INTPTR_MAX__;
pub const INTPTR_MAX = __INTPTR_MAX__;
pub const UINTPTR_MAX = __UINTPTR_MAX__;
pub const PTRDIFF_MIN = -@as(c_int, 1) - __PTRDIFF_MAX__;
pub const PTRDIFF_MAX = __PTRDIFF_MAX__;
pub const SIZE_MAX = __SIZE_MAX__;
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const _STDDEF_H = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __NEED_ptrdiff_t = "";
pub const __NEED_size_t = "";
pub const __NEED_wchar_t = "";
pub const __NEED_max_align_t = "";
pub const __DEFINED_wchar_t = "";
pub const __DEFINED_max_align_t = "";
pub const __DEFINED_size_t = "";
pub const __DEFINED_ptrdiff_t = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/sysroot/include/stddef.h:22:9
pub const _MATH_H = "";
pub const _FEATURES_H = "";
pub const _BSD_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/sysroot/include/features.h:27:9
pub const __inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/sysroot/include/features.h:33:9
pub const __REDIR = @compileError("unable to translate C expr: unexpected token '__typeof__'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/sysroot/include/features.h:45:9
pub const __NEED_float_t = "";
pub const __NEED_double_t = "";
pub const __DEFINED_float_t = "";
pub const __DEFINED_double_t = "";
pub const NAN = __builtin_nanf("");
pub const INFINITY = __builtin_inff();
pub const HUGE_VALF = INFINITY;
pub const HUGE_VAL = @import("std").zig.c_translation.cast(f64, INFINITY);
pub const HUGE_VALL = @compileError("unable to translate: TODO long double");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/sysroot/include/math.h:24:9
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = @as(c_int, 2);
pub const FP_ILOGBNAN = -@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const FP_ILOGB0 = FP_ILOGBNAN;
pub const FP_NAN = @as(c_int, 0);
pub const FP_INFINITE = @as(c_int, 1);
pub const FP_ZERO = @as(c_int, 2);
pub const FP_SUBNORMAL = @as(c_int, 3);
pub const FP_NORMAL = @as(c_int, 4);
pub inline fn fpclassify(x: anytype) @TypeOf(if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) __fpclassifyf(x) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) __fpclassify(x) else __fpclassifyl(x)) {
    _ = &x;
    return if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) __fpclassifyf(x) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) __fpclassify(x) else __fpclassifyl(x);
}
pub inline fn isinf(x: anytype) @TypeOf(if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) (__FLOAT_BITS(x) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7f800000, .hex) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) (__DOUBLE_BITS(x) & (-@as(c_ulonglong, 1) >> @as(c_int, 1))) == (@as(c_ulonglong, 0x7ff) << @as(c_int, 52)) else __fpclassifyl(x) == FP_INFINITE) {
    _ = &x;
    return if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) (__FLOAT_BITS(x) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7f800000, .hex) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) (__DOUBLE_BITS(x) & (-@as(c_ulonglong, 1) >> @as(c_int, 1))) == (@as(c_ulonglong, 0x7ff) << @as(c_int, 52)) else __fpclassifyl(x) == FP_INFINITE;
}
pub inline fn isnan(x: anytype) @TypeOf(if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) (__FLOAT_BITS(x) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) > @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7f800000, .hex) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) (__DOUBLE_BITS(x) & (-@as(c_ulonglong, 1) >> @as(c_int, 1))) > (@as(c_ulonglong, 0x7ff) << @as(c_int, 52)) else __fpclassifyl(x) == FP_NAN) {
    _ = &x;
    return if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) (__FLOAT_BITS(x) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) > @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7f800000, .hex) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) (__DOUBLE_BITS(x) & (-@as(c_ulonglong, 1) >> @as(c_int, 1))) > (@as(c_ulonglong, 0x7ff) << @as(c_int, 52)) else __fpclassifyl(x) == FP_NAN;
}
pub inline fn isnormal(x: anytype) @TypeOf(if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) ((__FLOAT_BITS(x) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00800000, .hex)) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) >= @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) ((__DOUBLE_BITS(x) + (@as(c_ulonglong, 1) << @as(c_int, 52))) & (-@as(c_ulonglong, 1) >> @as(c_int, 1))) >= (@as(c_ulonglong, 1) << @as(c_int, 53)) else __fpclassifyl(x) == FP_NORMAL) {
    _ = &x;
    return if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) ((__FLOAT_BITS(x) + @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00800000, .hex)) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) >= @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) ((__DOUBLE_BITS(x) + (@as(c_ulonglong, 1) << @as(c_int, 52))) & (-@as(c_ulonglong, 1) >> @as(c_int, 1))) >= (@as(c_ulonglong, 1) << @as(c_int, 53)) else __fpclassifyl(x) == FP_NORMAL;
}
pub inline fn isfinite(x: anytype) @TypeOf(if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) (__FLOAT_BITS(x) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) < @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7f800000, .hex) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) (__DOUBLE_BITS(x) & (-@as(c_ulonglong, 1) >> @as(c_int, 1))) < (@as(c_ulonglong, 0x7ff) << @as(c_int, 52)) else __fpclassifyl(x) > FP_INFINITE) {
    _ = &x;
    return if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) (__FLOAT_BITS(x) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) < @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7f800000, .hex) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) (__DOUBLE_BITS(x) & (-@as(c_ulonglong, 1) >> @as(c_int, 1))) < (@as(c_ulonglong, 0x7ff) << @as(c_int, 52)) else __fpclassifyl(x) > FP_INFINITE;
}
pub inline fn signbit(x: anytype) @TypeOf(if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) @import("std").zig.c_translation.cast(c_int, __FLOAT_BITS(x) >> @as(c_int, 31)) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) @import("std").zig.c_translation.cast(c_int, __DOUBLE_BITS(x) >> @as(c_int, 63)) else __signbitl(x)) {
    _ = &x;
    return if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f32)) @import("std").zig.c_translation.cast(c_int, __FLOAT_BITS(x) >> @as(c_int, 31)) else if (@import("std").zig.c_translation.sizeof(x) == @import("std").zig.c_translation.sizeof(f64)) @import("std").zig.c_translation.cast(c_int, __DOUBLE_BITS(x) >> @as(c_int, 63)) else __signbitl(x);
}
pub inline fn isunordered(x: anytype, y: anytype) @TypeOf(if (isnan(x) != 0)
blk_2: {
    _ = @import("std").zig.c_translation.cast(anyopaque, y);
    break :blk_2 @as(c_int, 1);
} else isnan(y)) {
    _ = &x;
    _ = &y;
    return if (isnan(x) != 0) blk_2: {
        _ = @import("std").zig.c_translation.cast(anyopaque, y);
        break :blk_2 @as(c_int, 1);
    } else isnan(y);
}
pub const __ISREL_DEF = @compileError("unable to translate macro: undefined identifier `__is`");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/sysroot/include/math.h:104:9
pub const __tg_pred_2 = @compileError("unable to translate macro: undefined identifier `f`");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/sysroot/include/math.h:124:9
pub inline fn isless(x: anytype, y: anytype) @TypeOf(__tg_pred_2(x, y, __isless)) {
    _ = &x;
    _ = &y;
    return __tg_pred_2(x, y, __isless);
}
pub inline fn islessequal(x: anytype, y: anytype) @TypeOf(__tg_pred_2(x, y, __islessequal)) {
    _ = &x;
    _ = &y;
    return __tg_pred_2(x, y, __islessequal);
}
pub inline fn islessgreater(x: anytype, y: anytype) @TypeOf(__tg_pred_2(x, y, __islessgreater)) {
    _ = &x;
    _ = &y;
    return __tg_pred_2(x, y, __islessgreater);
}
pub inline fn isgreater(x: anytype, y: anytype) @TypeOf(__tg_pred_2(x, y, __isgreater)) {
    _ = &x;
    _ = &y;
    return __tg_pred_2(x, y, __isgreater);
}
pub inline fn isgreaterequal(x: anytype, y: anytype) @TypeOf(__tg_pred_2(x, y, __isgreaterequal)) {
    _ = &x;
    _ = &y;
    return __tg_pred_2(x, y, __isgreaterequal);
}
pub const MAXFLOAT = @as(f32, 3.40282346638528859812e+38);
pub const M_E = @as(f64, 2.7182818284590452354);
pub const M_LOG2E = @as(f64, 1.4426950408889634074);
pub const M_LOG10E = @as(f64, 0.43429448190325182765);
pub const M_LN2 = @as(f64, 0.69314718055994530942);
pub const M_LN10 = @as(f64, 2.30258509299404568402);
pub const M_PI = @as(f64, 3.14159265358979323846);
pub const M_PI_2 = @as(f64, 1.57079632679489661923);
pub const M_PI_4 = @as(f64, 0.78539816339744830962);
pub const M_1_PI = @as(f64, 0.31830988618379067154);
pub const M_2_PI = @as(f64, 0.63661977236758134308);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257390);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880);
pub const M_SQRT1_2 = @as(f64, 0.70710678118654752440);
pub const HUGE = @as(f32, 3.40282346638528859812e+38);
pub const _wgpu_COMMA = @compileError("unable to translate C expr: unexpected token ','");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:72:9
pub const _wgpu_ENUM_ZERO_INIT = @compileError("unable to translate C expr: unexpected token 'A number'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:82:11
pub const _wgpu_STRUCT_ZERO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:83:11
pub inline fn _wgpu_MAKE_INIT_STRUCT(@"type": anytype, value: anytype) @TypeOf(@"type" ++ value) {
    _ = &@"type";
    _ = &value;
    return @"type" ++ value;
}
pub const WGPU_TRUE = UINT32_C(@as(c_int, 1));
pub const WGPU_FALSE = UINT32_C(@as(c_int, 0));
pub const WGPU_ARRAY_LAYER_COUNT_UNDEFINED = UINT32_MAX;
pub const WGPU_COPY_STRIDE_UNDEFINED = UINT32_MAX;
pub const WGPU_DEPTH_CLEAR_VALUE_UNDEFINED = NAN;
pub const WGPU_DEPTH_SLICE_UNDEFINED = UINT32_MAX;
pub const WGPU_LIMIT_U32_UNDEFINED = UINT32_MAX;
pub const WGPU_LIMIT_U64_UNDEFINED = UINT64_MAX;
pub const WGPU_MIP_LEVEL_COUNT_UNDEFINED = UINT32_MAX;
pub const WGPU_QUERY_SET_INDEX_UNDEFINED = UINT32_MAX;
pub const WGPU_STRLEN = SIZE_MAX;
pub const WGPU_WHOLE_MAP_SIZE = SIZE_MAX;
pub const WGPU_WHOLE_SIZE = UINT64_MAX;
pub const WGPU_STRING_VIEW_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:110:9
pub const WGPU_BUFFER_MAP_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:912:9
pub const WGPU_COMPILATION_INFO_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:928:9
pub const WGPU_CREATE_COMPUTE_PIPELINE_ASYNC_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:944:9
pub const WGPU_CREATE_RENDER_PIPELINE_ASYNC_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:960:9
pub const WGPU_DEVICE_LOST_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:976:9
pub const WGPU_POP_ERROR_SCOPE_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:992:9
pub const WGPU_QUEUE_WORK_DONE_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1008:9
pub const WGPU_REQUEST_ADAPTER_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1024:9
pub const WGPU_REQUEST_DEVICE_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1040:9
pub const WGPU_UNCAPTURED_ERROR_CALLBACK_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1055:9
pub const WGPU_ADAPTER_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1076:9
pub const WGPU_BIND_GROUP_ENTRY_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1100:9
pub const WGPU_BLEND_COMPONENT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1116:9
pub const WGPU_BUFFER_BINDING_LAYOUT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1129:9
pub const WGPU_BUFFER_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1144:9
pub const WGPU_COLOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1159:9
pub const WGPU_COMMAND_BUFFER_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1171:9
pub const WGPU_COMMAND_ENCODER_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1181:9
pub const WGPU_COMPATIBILITY_MODE_LIMITS_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1195:9
pub const WGPU_CONSTANT_ENTRY_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1212:9
pub const WGPU_DAWN_COMPILATION_MESSAGE_UTF16_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1226:9
pub const WGPU_EMSCRIPTEN_SURFACE_SOURCE_CANVAS_HTML_SELECTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1242:9
pub const WGPU_EXTENT_3D_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1256:9
pub const WGPU_FUTURE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1266:9
pub const WGPU_INSTANCE_LIMITS_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1275:9
pub const WGPU_INTERNAL_HAVE_EMDAWNWEBGPU_HEADER_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1284:9
pub const WGPU_MULTISAMPLE_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1295:9
pub const WGPU_ORIGIN_3D_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1308:9
pub const WGPU_PASS_TIMESTAMP_WRITES_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1321:9
pub const WGPU_PIPELINE_LAYOUT_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1336:9
pub const WGPU_PRIMITIVE_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1353:9
pub const WGPU_QUERY_SET_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1369:9
pub const WGPU_QUEUE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1381:9
pub const WGPU_RENDER_BUNDLE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1391:9
pub const WGPU_RENDER_BUNDLE_ENCODER_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1407:9
pub const WGPU_RENDER_PASS_DEPTH_STENCIL_ATTACHMENT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1431:9
pub const WGPU_RENDER_PASS_MAX_DRAW_COUNT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1450:9
pub const WGPU_REQUEST_ADAPTER_WEBXR_OPTIONS_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1464:9
pub const WGPU_SAMPLER_BINDING_LAYOUT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1477:9
pub const WGPU_SAMPLER_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1497:9
pub const WGPU_SHADER_SOURCE_SPIRV_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1519:9
pub const WGPU_SHADER_SOURCE_WGSL_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1534:9
pub const WGPU_STENCIL_FACE_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1549:9
pub const WGPU_STORAGE_TEXTURE_BINDING_LAYOUT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1563:9
pub const WGPU_SUPPORTED_FEATURES_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1575:9
pub const WGPU_SUPPORTED_INSTANCE_FEATURES_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1585:9
pub const WGPU_SUPPORTED_WGSL_LANGUAGE_FEATURES_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1595:9
pub const WGPU_SURFACE_CAPABILITIES_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1611:9
pub const WGPU_SURFACE_COLOR_MANAGEMENT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1629:9
pub const WGPU_SURFACE_CONFIGURATION_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1651:9
pub const WGPU_SURFACE_TEXTURE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1670:9
pub const WGPU_TEXEL_COPY_BUFFER_LAYOUT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1682:9
pub const WGPU_TEXTURE_BINDING_LAYOUT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1695:9
pub const WGPU_TEXTURE_BINDING_VIEW_DIMENSION_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1708:9
pub const WGPU_TEXTURE_VIEW_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1729:9
pub const WGPU_VERTEX_ATTRIBUTE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1749:9
pub const WGPU_BIND_GROUP_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1764:9
pub const WGPU_BIND_GROUP_LAYOUT_ENTRY_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1783:9
pub const WGPU_BLEND_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1799:9
pub const WGPU_COMPILATION_MESSAGE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1814:9
pub const WGPU_COMPUTE_PASS_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1830:9
pub const WGPU_COMPUTE_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1844:9
pub const WGPU_DEPTH_STENCIL_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1866:9
pub const WGPU_FUTURE_WAIT_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1885:9
pub const WGPU_INSTANCE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1897:9
pub const WGPU_LIMITS_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1940:9
pub const WGPU_RENDER_PASS_COLOR_ATTACHMENT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:1986:9
pub const WGPU_REQUEST_ADAPTER_OPTIONS_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2005:9
pub const WGPU_SHADER_MODULE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2019:9
pub const WGPU_SURFACE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2029:9
pub const WGPU_TEXEL_COPY_BUFFER_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2039:9
pub const WGPU_TEXEL_COPY_TEXTURE_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2051:9
pub const WGPU_TEXTURE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2071:9
pub const WGPU_VERTEX_BUFFER_LAYOUT_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2092:9
pub const WGPU_BIND_GROUP_LAYOUT_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2107:9
pub const WGPU_COLOR_TARGET_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2121:9
pub const WGPU_COMPILATION_INFO_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2134:9
pub const WGPU_COMPUTE_PIPELINE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2147:9
pub const WGPU_DEVICE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2165:9
pub const WGPU_RENDER_PASS_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2186:9
pub const WGPU_VERTEX_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2206:9
pub const WGPU_FRAGMENT_STATE_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2226:9
pub const WGPU_RENDER_PIPELINE_DESCRIPTOR_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /home/deano/projects/ziggy_starclaw/.tools/emsdk/upstream/emscripten/cache/ports/emdawnwebgpu/emdawnwebgpu_pkg/webgpu/include/webgpu/webgpu.h:2247:9
pub const WGPUAdapterImpl = struct_WGPUAdapterImpl;
pub const WGPUBindGroupImpl = struct_WGPUBindGroupImpl;
pub const WGPUBindGroupLayoutImpl = struct_WGPUBindGroupLayoutImpl;
pub const WGPUBufferImpl = struct_WGPUBufferImpl;
pub const WGPUCommandBufferImpl = struct_WGPUCommandBufferImpl;
pub const WGPUCommandEncoderImpl = struct_WGPUCommandEncoderImpl;
pub const WGPUComputePassEncoderImpl = struct_WGPUComputePassEncoderImpl;
pub const WGPUComputePipelineImpl = struct_WGPUComputePipelineImpl;
pub const WGPUDeviceImpl = struct_WGPUDeviceImpl;
pub const WGPUInstanceImpl = struct_WGPUInstanceImpl;
pub const WGPUPipelineLayoutImpl = struct_WGPUPipelineLayoutImpl;
pub const WGPUQuerySetImpl = struct_WGPUQuerySetImpl;
pub const WGPUQueueImpl = struct_WGPUQueueImpl;
pub const WGPURenderBundleImpl = struct_WGPURenderBundleImpl;
pub const WGPURenderBundleEncoderImpl = struct_WGPURenderBundleEncoderImpl;
pub const WGPURenderPassEncoderImpl = struct_WGPURenderPassEncoderImpl;
pub const WGPURenderPipelineImpl = struct_WGPURenderPipelineImpl;
pub const WGPUSamplerImpl = struct_WGPUSamplerImpl;
pub const WGPUShaderModuleImpl = struct_WGPUShaderModuleImpl;
pub const WGPUSurfaceImpl = struct_WGPUSurfaceImpl;
pub const WGPUTextureImpl = struct_WGPUTextureImpl;
pub const WGPUTextureViewImpl = struct_WGPUTextureViewImpl;
