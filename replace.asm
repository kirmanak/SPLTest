; Напишите функцию на ассемблере, которая примет строку и два символа. Она должна произвести тек-
; стовую замену первого символа на второй.
section .text
global replace
; rdi - symbol to replace
; rsi - symbol-replacer
; rdx - a pointer to the string
replace:
    xor rcx, rcx                    ; текущий символ
    xor rax, rax                    ; смещение от начала строки
    .loop:
        mov byte cl, [rdx+rax]
        jrcxz .exit
        inc rax
        cmp rcx, rdi
        jne .loop
        mov byte [rdx+rax-1], sil   ; заменяем символ
        jmp .loop
    .exit:
        ret
    
