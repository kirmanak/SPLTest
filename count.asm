; Напишите функцию на ассемблере, которая примет строку и подсчитает количество пропусков в
; ней, состоящих из пробелов или табуляции (вперемешку).
%macro get_symbol 0
  mov byte cl, [rdi + rdx]
  inc rdx
%endmacro

section .text
global count
; указатель в rdi
count:
    xor ecx, ecx                ; текущий символ 
    xor eax, eax                ; cчётчик пропусков
    xor edx, edx                ; счётчик символов
    .loop:
        get_symbol
        jrcxz .end
        cmp cl, ' '             ; space?
        je .skip
        cmp cl, 0x09            ; tab?
        jne .loop
    .skip:
        get_symbol
        cmp cl, 0x09
        je .skip                ; большая куча табов
        cmp cl, ' '
        je .skip                ; большая куча пробелов
        inc rax
        jmp .loop
    .end:
        ret
