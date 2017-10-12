#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int words_counter(char* string);

int main(int argc, char* argv[])
{
    char* string = "one two three four five six";
    printf("A string is %s\n", string); 
    printf("The number of words with more than three letters is %d\n", words_counter(string));
}

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
