#include <ctype.h>

/*
 * Напишите функцию, которая подсчитает количество слов из более, чем трёх букв в строке. C.
 */

int words_counter(const char * const string)
{
    int counter = 0;
    for (int i = 0, letters = 0;; i++)
    {
        if (isspace(string[i]) || string[i] == 0) {
            if (letters > 3) counter++;
            if (string[i] == 0) return counter;
            letters = 0;
        } else letters++;
    }
}
