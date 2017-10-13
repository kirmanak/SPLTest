#include <string.h>

int words_counter(char* string)
{
    int counter = 0;
    const int size = strlen(string);
    int letters = 0;
    for (int i = 0; size > i; ++i)
    {
        if (string[i] == ' ') {
            if (letters > 3)
                counter++;
            letters=0;
        } else letters++;

    }
    if (letters > 3)
        counter++;
    return counter;
}
