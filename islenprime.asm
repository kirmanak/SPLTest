; Напишите функцию на ассемблере, которая примет строку, 
; посчитает её длину и определит, является ли длина простым числом.
section .text
global islenprime
; указатель в rsi
islenprime:
    xor ecx, ecx                ; текущий символ
    xor eax, eax                ; длина строки
    .loop:
        mov byte cl, [rsi+rax]
        jrcxz .endloop
        inc rax
        jmp .loop
    .endloop:
        mov r10, rax            ; сохраняем длину
        mov r8, rax
        sar r8, 1               ; r8 = length/2
        mov r9, 1               ; i = 1
    .checkloop:
        cmp r8, r9              ; length/2 = i ?
        je .true
        inc r9                  ; i++
        xor edx, edx            ; сбрасываем rdx перед делением
        mov rax, r10            ; восстанавливаем длину строки
        div r9
        test rdx, rdx           ; остаток = 0 ?
        jnz .checkloop
    .false:
        xor eax, eax
        ret
    .true:
        mov rax, 1
        ret
