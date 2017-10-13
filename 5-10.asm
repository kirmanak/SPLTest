section .text
extern get_symbol
global checker
; returns 1 in rax if true
; returns 0 in rax if false
checker:
    xor rcx, rcx
    .loop:
        call get_symbol ; кладёт в ah следующий символ
        cmp ah, 0x20    ; пробел?
        je .space
        cmp ah, 57      ; цифра?
        jg .loop
        test ah, ah
        jz .false       ; дошли до конца строки, не встретив цифру
        .number:
            cmp rcx, 2
            jne .false
            call get_symbol
            test ah, ah
            jnz .false
        .true:
            mov rax, 1
            ret
        .space:
            inc rcx     ; наращиваем счётчик слов
            jmp .loop
        .false:
            xor rax, rax 
            ret
