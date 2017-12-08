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
        cmp ah, ' '     ; пробел?
        je .space
        cmp ah, '9'     ; цифра?
        jg .loop
        test ah, ah
        jz .false       ; дошли до конца строки, не встретив цифру
        cmp rcx, 2
        jne .false
        get_symbol
        test ah, ah     ; проверяем, закончилась строка или нет
        jz .true        ; строка не закончилась, но это может оказаться большим числом
        .number:
            cmp ah, '9'
            jg .false   ; не число =(
            test ah, ah ; может, конец?
            jz .true
            get_symbol  ; не конец, проверим дальше
            jmp .number
        .true:
            mov rax, 1
            ret
        .space:
            inc rcx     ; наращиваем счётчик слов
            jmp .loop
        .false:
            xor rax, rax 
            ret
