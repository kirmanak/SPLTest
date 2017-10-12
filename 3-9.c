#include <stdlib.h>
#include <string.h>
#include <stdio.h>

char** string_splitter(const char* const string);

int main(int argc, char* argv[])
{
    char* string = "one two three four five six";
    printf("A string is %s\n", string); 
    string_splitter(string);
    /*
    char** answer = string_splitter(string);
    for (int i = 0; 6 > i; ++i)
    {
        printf("%d-th word is %s \n", i, answer[i]);
        free(answer[i]);
    }
    free(answer);
    */
}

char** string_splitter(const char* const string)
{
    const int size = strlen(string);
    // TODO: как объявить массив указателей? 
    // char** answer = malloc(sizeof(char*));
    int counter = 0;
    int letters = 0;
    int offset = 0;
    for (int i = 0; size > i; ++i)
    {
        if (string[i] == ' ') 
        {
            char* word = calloc(letters+1, sizeof(char));
            strncpy(word, string+offset, letters);
            word[letters]=0;
            printf("word is %s, letters is %d, counter is %d\n", word, letters, counter);
            offset+=1+letters*sizeof(char);
            counter++;
            letters=0;
            // answer[counter] = word;
        } else letters++;

    }
    if (letters > 0)
    {
        char* word = calloc(letters, sizeof(char));
        strncpy(word, string+offset, letters);
        word[letters]=0;
        printf("word is %s, letters is %d, counter is %d\n", word, letters, counter);
        offset+=1+letters*sizeof(char);
        // answer[counter] = word;
    }
    return NULL;
}
