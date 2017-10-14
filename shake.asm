section .text
global shake
; первый аргумент в rdi
; второй в rsi
; целевой буфер в rdx
; Напишите функцию на ассемблере, которая примет две строки и перемешает их содержимое. На-
; пример, “abc” и “def” => “adbecf”.
shake:
    xor rax, rax    ; счётчик символов в строках
    xor r8, r8      ; счётчик символов в буфере
    xor rcx, rcx    ; текущий символ
    .loop:
        mov byte cl, [rsi+rax]
        mov byte [rdx+r8], cl
        inc r8
        mov byte cl, [rdi+rax]
        jrcxz .exit
        mov byte [rdx+r8], cl
        inc rax
        inc r8
        jmp .loop
    .exit: ret
