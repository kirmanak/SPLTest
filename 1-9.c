#include <stdlib.h>
#include <stdio.h>

void fibonacci(int* const arr, const int size);

int main(const int argc, char* const argv[])
{
    const int size = 9;
    int arr[size];
    fibonacci(arr, size);
    for(int i=0; size > i; i++)
        printf("%d\n", arr[i]);
}

void fibonacci(int* const arr, const int size)
{
    for(int i = 0; size > i; i++)
        arr[i] = (i < 2) ? 1 : arr[i-1]+arr[i-2];
}
