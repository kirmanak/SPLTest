; Напишите функцию на ассемблере, которая примет строку и подсчитает количество пропусков в
; ней, состоящих из пробелов или табуляции (вперемешку).
section .text
global count
; указатель в rsi
count:
    xor ecx, ecx                ; текущий символ 
    xor eax, eax                ; cчётчик пропусков
    xor edx, edx                ; счётчик символов
    .loop:
        mov byte cl, [rsi+rdx]  ; берём следующий символ
        jrcxz .end
        inc rdx
        cmp cl, 0x09            ; tab?
        je .inc
        cmp cl, 0x20            ; space?
        jne .loop
    .inc:
        inc rax
        jmp .loop
    .end:
        ret
