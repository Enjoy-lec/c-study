#include<stdio.h>
#include<cuda.h>

__global__ void hello_gpu()
{
    printf("你好\n");
}

int main(void)
{
    hello_gpu<<<4,2>>>();
    cudaDeviceSynchronize();
    return 0;
}