#include <limits.h>
#include <string.h>
#include <stdio.h>

void sort(int* const arr, const int size);

int main(const int argc, const char* const argv[])
{
    int arr[] = {4,4,4,4,3,3,3,2,2,1};
    for (int i = 0; 10 > i; ++i)
        printf("%d ", arr[i]);
    printf("\n");
    sort(arr, 10);
    for (int i = 0; 10 > i; ++i)
        printf("%d ", arr[i]);
    printf("\n");
}

void sort(int* const arr, const int size)
{
    const int alphabet = 10;
    int counters[alphabet];
    for (int i = 0; alphabet > i; ++i)
        counters[i] = 0;
    for (int i = 0; size > i; ++i)
        counters[arr[i]]++;
    int position = 0;
    for (int i = 0; alphabet > i; ++i) 
    {
        int n = 0;
        int min = INT_MAX;
        for (int j = 0; alphabet > j; ++j)
            if (min > counters[j]) 
            {
                n = j;
                min = counters[j];
            }
        counters[n] = INT_MAX;
        for (int j = position, limit = min + position; limit > j; ++j)
            arr[j] = n;
        position += min;
    }
}
