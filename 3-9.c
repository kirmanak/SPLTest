#include <stdlib.h>
#include <string.h>
#include <stdio.h>

char** string_splitter(const char* const string);

int main(int argc, char* argv[])
{
    char* string = "one two three four five six";
    printf("A string is %s\n", string); 
    char** answer = string_splitter(string);
    for (int i = 0; 6 > i; ++i)
    {
        printf("%d-th word is %s \n", i+1, answer[i]);
        free(answer[i]);
    }
    free(answer);
}

char** string_splitter(const char* const string)
{
    char** answer = malloc(sizeof(char*));
    int counter = 0, letters = 0, offset = 0;
    int i = 0;
    while (1)
    {
        if (string[i] == ' ' || (string[i] == 0 && letters > 0) ) 
        {
            char* word = calloc(letters+1, sizeof(char));
            strncpy(word, string+offset, letters);
            word[letters]=0;
            offset+=1+letters*sizeof(char);
            counter++;
            letters=0;
            char** tmp = calloc(counter, sizeof(char*));
            for (int j = 0, limit = counter-1; limit > j; ++j)
                tmp[j] = answer[j];
            tmp[counter-1] = word;
            free(answer);
            answer = tmp;
        } else letters++;
        if (string[i++] == 0) break;
    }
    return answer;
}
