#include <limits.h>
#include <string.h>
#include <stdio.h>

void sort(char* const arr);

int main(const int argc, const char* const argv[])
{
    char arr[] = "pashaislohhahaha";
    printf("Arr is %s \n", arr);
    sort(arr);
    printf("Now arr is %s \n", arr);
}

void sort(char* const arr)
{
    const int size = strlen(arr);
    const int alphabet = 26;
    int counters[alphabet];
    for (int i = 0; alphabet > i; ++i)
        counters[i] = 0;
    for (int i = 0; size > i; ++i)
        counters[arr[i]-'a']++;
    int position = 0;
    for (int i = 0; alphabet > i; ++i) 
    {
        char letter = 0;
        int min = INT_MAX;
        for (int j = 0; alphabet > j; ++j)
            if (min > counters[j]) 
            {
                letter = (char) j+97;
                min = counters[j];
            }
        counters[letter-'a'] = INT_MAX;
        for (int j = position, limit = min + position; limit > j; ++j)
            arr[j] = letter;
        position += min;
    }
}
