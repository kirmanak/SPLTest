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
    if (size < 2) return;
    arr[0] = 1;
    arr[1] = 1;
    for(int i = 2; size > i; i++)
        arr[i] = arr[i-1] + arr[i-2];
    return;
}
