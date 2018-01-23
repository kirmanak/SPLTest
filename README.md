# SPLTest
Сборник решений задач из рубежных тестирований в курсе "Языки системного программирования" (автор заданий и курса - [@sayon](https://github.com/sayon/)).

-------
Нарисуйте и закодируйте на ассемблере конечный автомат, который проверяет входную строчку и отвечает, содержит ли она ровно два слова, а за ними число. Слова состоят только из символов [a-z], разделены только одинарными пробелами. Макрос get_symbol кладёт в ah следующий символ.

[checker.asm](https://github.com/kirmanak/SPLTest/blob/master/checker.asm)

-------
Переведите на ассемблер следующую функцию и последовательность команд для её вызова с аргументами 42, 43, 1.0 

```
int f( int a, long b, float c) { return a + b + *((int*)(&c)); }
```

[compile.asm](https://github.com/kirmanak/SPLTest/blob/master/compile.asm)

-------
Напишите функцию на ассемблере, которая примет строку и подсчитает количество пропусков в ней, состоящих из пробелов или табуляции (вперемешку).

[count.asm](https://github.com/kirmanak/SPLTest/blob/master/count.asm)

-------
 Напишите функцию на C, которая примет указатель на массив чисел типа int и его размер, и заполнит его числами Фибоначчи. Числа Фибоначчи образуют последовательность: 1, 1, 2, 3, 5, 8, ... (каждый следующий элемент – сумма двух предыдущих). Функция не должна использовать рекурсию, malloc и выделять больше 128 байт в стеке.

[fibonacci.c](https://github.com/kirmanak/SPLTest/blob/master/fibonacci.c)

-------
Напишите функцию на ассемблере, которая примет строку, указатель на буфер в памяти и символ. Она заполнит буфер содержимым строки, перемежая символы строки своим третьим аргументом. Например, для строки “abc” и символа “x” результат “axbxcx”.

[inserter.asm](https://github.com/kirmanak/SPLTest/blob/master/inserter.asm)

-------
Напишите функцию на ассемблере, которая примет строку, посчитает её длину и определит, является ли длина простым числом.

[islenprime.asm](https://github.com/kirmanak/SPLTest/blob/master/islenprime.asm)

-------
Подсчитайте количество букв в строке и верните указатель на массив, в котором будут храниться результаты подсчёта. 42-ой элемент массива соответствует количеству вхождений символа с кодом 42 и т.д. Оформить в виде функции. 

[letters_counter.c](https://github.com/kirmanak/SPLTest/blob/master/letters_counter.c)

-------
Напишите функцию на ассемблере, которая примет строку и подсчитает количество неотрицательных чисел в ней.

[non_neg_counter.asm](https://github.com/kirmanak/SPLTest/blob/master/non_neg_counter.asm)


-------
Реализуйте очередь на основе односвязного списка в C.

[queue.c](https://github.com/kirmanak/SPLTest/blob/master/queue.c)

-------
Напишите функцию на ассемблере, которая примет строку и два символа. Она должна произвести текстовую замену первого символа на второй.

[replace.asm](https://github.com/kirmanak/SPLTest/blob/master/replace.asm)

-------
Напишите функцию на ассемблере, которая примет две строки и перемешает их содержимое. Например, “abc” и “def” => “adbecf”.

[shake.asm](https://github.com/kirmanak/SPLTest/blob/master/shake.asm)

-------
В массиве char’ов есть только строчные буквы латиницы. Отсортируйте их подсчётом по возрастанию (подсчитав количество вхождений каждой буквы, а затем перезаписав массив). C. Разумеется, оформить в виде функции.

[sort_letters_by_freq.c](https://github.com/kirmanak/SPLTest/blob/master/sort_letters_by_freq.c)

-------
В массиве char’ов есть только цифры. Отсортируйте их на C подсчётом по возрастанию (подсчитав количество вхождений каждой цифры, а затем перезаписав массив). Оформить в виде функции.

[sort_numbers_by_freq.c](https://github.com/kirmanak/SPLTest/blob/master/sort_numbers_by_freq.c)

-------
С: разбейте строку на слова и верните указатель на массив слов, каждое из которых завершено нуль-терминатором. Строку нельзя менять.

[string_splitter.c](https://github.com/kirmanak/SPLTest/blob/master/string_splitter.c)

-------
Напишите функцию, которая подсчитает количество слов из более, чем трёх букв в строке. C.

[words_counter.c](https://github.com/kirmanak/SPLTest/blob/master/words_counter.c)

-------
Напишите функцию на С, которая сольёт две строчки в одну, выделив для неё память в куче.

[strings_merge.c](https://github.com/kirmanak/SPLTest/blob/master/strings_merge.c)

-------
Опишите двоичное дерево на С, хранящее int (каждый элемент имеет не более двух детей). Напишите map для него.

[strings_merge.c](https://github.com/kirmanak/SPLTest/blob/master/map_for_binary_tree.c)
