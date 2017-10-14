#include <limits.h>
#include <string.h>

#define ALPHABET 26

void sort(char* const arr)
{
    const int size = strlen(arr);
    int counters[ALPHABET] = {}, position = 0;
    for (int i = 0; size > i; ++i)
        counters[arr[i]-'a']++;
    for (int i = 0; ALPHABET > i; ++i) 
    {
        char letter = 0;
        int min = INT_MAX;
        for (int j = 0; ALPHABET > j; ++j)
            if (min > counters[j]) 
            {
                letter = (char) j+'a';
                min = counters[j];
            }
        counters[letter-'a'] = INT_MAX;
        position += min;
        for (int j = position-min; position > j; ++j)
            arr[j] = letter;
    }
}
