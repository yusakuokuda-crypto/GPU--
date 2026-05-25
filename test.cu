// test.cu
#include <cstdio>
#include <cstdint>

// CUDAカーネル関数
__global__ void CudaHello(int32_t argument)
{
    printf("Hello World from GPU! The argument is %d\n", argument);
}

int main()
{
    // カーネルの呼び出し
    CudaHello<<<1, 1>>>(42);

    // GPUの処理が完全に終わるのを待つ（これがないとprintfが表示されずに終了します）
    cudaDeviceSynchronize();

    return 0;
}
