#include <stdlib.h>

/*
  * Подсчитайте количество букв в строке и верните указатель на массив, в котором будут храниться
  * результаты подсчёта. 42-ой элемент массива соответствует количеству вхождений символа с кодом 42 и
  * т.д. Оформить в виде функции. 
 */

unsigned int* letters_counter(const char* const string)
{
    int *answer = calloc(256, sizeof(unsigned int));
    for (unsigned int i = 0; string[i] != 0; i++)
    {
      answer[string[i]]++;
    }
    return answer;
}
