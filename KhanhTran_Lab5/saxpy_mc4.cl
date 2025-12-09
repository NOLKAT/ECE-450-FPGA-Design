// device/saxpy_mc4.cl
// Optimized SAXPY: replicate the kernel into 4 compute units in hardware.

__attribute__((num_compute_units(4)))
__kernel void saxpy_kernel(
    const float a,
    __global const float *restrict x,
    __global float *restrict y,
    const int n)
{
    int gid = get_global_id(0);
    if (gid < n) {
        y[gid] = a * x[gid] + y[gid];
    }
}
