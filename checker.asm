section .text
global checker
; returns 1 in rax if true
; returns 0 in rax if false
; Нарисуйте и закодируйте на ассемблере конечный автомат, который проверяет входную строчку и отвеча-
; ет, содержит ли она ровно два слова, а за ними число. Слова состоят только из символов [a-z], разделены
; только одинарными пробелами. Макрос get_symbol кладёт в ah следующий символ.
checker:
    xor rcx, rcx        ; счётчик слов
    .loop:
        get_symbol      ; макрос, кладёт в ah следующий символ
        cmp ah, '9'     ; цифра?
        jg .loop
        cmp ah, ' '     ; пробел?
        je .space
        test ah, ah     ; конец строки?
        jz .false       ; дошли до конца строки, не встретив цифру
        cmp rcx, 2      ; два ли слова было?
        je .true        ; спускаемся дальше в false, если не 2
    .false:
        xor rax, rax
        ret

    .true:
        mov rax, 1
        ret

    .space:
        inc rcx
        jmp .loop
