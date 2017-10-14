section .text
global replace
; rdi - symbol to replace
; rsi - symbol-replacer
; rdx - a pointer to the string
; Напишите функцию на ассемблере, которая примет строку и два символа. Она должна произвести тек-
; стовую замену первого символа на второй.
replace:
    xor rcx, rcx
    xor rax, rax
    .loop:
        mov byte cl, [rdx+rax]
        jrcxz .exit
        inc rax
        cmp rcx, rdi
        jne .loop
        mov byte [rdx+rax-1], sil
        jmp .loop
    .exit:
        ret
    
