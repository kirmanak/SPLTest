#include <ctype.h>

/*
 * Напишите функцию, которая подсчитает количество слов из более, чем трёх букв в строке. C.
 */

int words_counter(const char * const string)
{
    int counter = 0, letters = 0, i = 0;
    for (;;)
    {
        if (isspace(string[i]) || string[i] == 0) {
            if (letters > 3) counter++;
            letters = 0;
        } else letters++;
        if (string[i++] == 0) break;
    }
    return counter;
}
