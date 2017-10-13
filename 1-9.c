void fibonacci(int* const arr, const int size)
{
    for(int i = 0; size > i; i++)
        arr[i] = (i < 2) ? 1 : arr[i-1]+arr[i-2];
}
