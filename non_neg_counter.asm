; Напишите функцию на ассемблере, которая примет строку и подсчитает
; количество неотрицательных чисел в ней.
section .text
global non_neg_counter

; first arg (in rdi) is a ptr to a string
non_neg_counter:
  xor ecx, ecx ; non-negative numbers counter
  xor edx, edx ; previous symbol code
  .loop:
    mov BYTE al, [rdi]
    inc rdi
    test al, al
    jz .exit
    cmp al, '0'
    jb .loop
    cmp al, '9'
    ja .loop
    ; here we have a number, let's check the previous symbol...
    mov dl, [rdi - 2]
    cmp dl, '-'
    je .loop 
    cmp dl, '0'
    jb .inc
    cmp dl, '9'
    jbe .loop
    .inc:
      inc rcx 
      jmp .loop
  .exit:
    ret
