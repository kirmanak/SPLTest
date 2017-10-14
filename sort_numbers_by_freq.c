#include <limits.h>
#include <string.h>

#define ALPHABET 10

/*
 * В массиве char’ов есть только цифры. Отсортируйте их на C подсчётом по возрастанию (подсчитав
 * количество вхождений каждой цифры, а затем перезаписав массив). Оформить в виде функции.
 */

void sort_numbers_by_freq(int* const arr, const int size)
{
    int counters[ALPHABET] = {}, position = 0;
    for (int i = 0; size > i; ++i)
        counters[arr[i]]++;
    for (int i = 0; ALPHABET > i; ++i) 
    {
        int n = 0;
        int min = INT_MAX;
        for (int j = 0; ALPHABET > j; ++j)
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
