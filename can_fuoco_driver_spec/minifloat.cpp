#pragma once

// https://stackoverflow.com/a/60047308

typedef unsigned short ushort;
typedef unsigned int uint;

uint as_uint(const float x)
{
    return *(uint *)&x;
}
float as_float(const uint x)
{
    return *(float *)&x;
}

float half_to_float(const ushort x)
{
    const uint e = (x & 0x7C00) >> 10;
    const uint m = (x & 0x03FF) << 13;
    const uint v = as_uint((float)m) >> 23;
    return as_float((x & 0x8000) << 16 | (e != 0) * ((e + 112) << 23 | m) | ((e == 0) & (m != 0)) * ((v - 37) << 23 | ((m << (150 - v)) & 0x007FE000)));
}
ushort float_to_half(const float x)
{
    const uint b = as_uint(x) + 0x00001000;
    const uint e = (b & 0x7F800000) >> 23;
    const uint m = b & 0x007FFFFF;
    return (b & 0x80000000) >> 16 | (e > 112) * ((((e - 112) << 10) & 0x7C00) | m >> 13) | ((e < 113) & (e > 101)) * ((((0x007FF000 + m) >> (125 - e)) + 1) >> 1) | (e > 143) * 0x7FFF;
}