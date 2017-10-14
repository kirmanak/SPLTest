#include <stdlib.h>
#include <string.h>

/*
 * С: разбейте строку на слова и верните указатель на массив слов, каждое из которых завершено
 * нуль-терминатором. Строку нельзя менять.
 */

char** string_splitter(const char* const string)
{
    char** answer = malloc(sizeof(char*));
    for (int i = 0, words = 0, letters = 0, offset = 0;; i++)
    {
        if ((string[i] != ' ') && (string[i] != 0)) letters++;
        else offset++; // redunant space in the string
        if (((string[i] == ' ') || (string[i] == 0)) && letters > 0) 
        {
            char* const word = calloc(letters+1, sizeof(char));
            strncpy(word, string+offset-1, letters);
            word[letters] = 0;
            words++;
            answer = realloc(answer, words*sizeof(char*));
            answer[words-1] = word;
            if (string[i] == 0) return answer;
            offset+=letters*sizeof(char);
            letters=0;
        }
    }
}
