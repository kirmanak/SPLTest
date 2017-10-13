#include <limits.h>
#include <string.h>

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
        position += min;
        for (int j = position-min; position > j; ++j)
            arr[j] = n;
    }
}
