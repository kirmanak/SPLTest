section .text
global shake
; первый аргумент в rdi
; второй в rsi
; целевой буфер в rdx
; Напишите функцию на ассемблере, которая примет две строки и перемешает их содержимое. На-
; пример, “abc” и “def” => “adbecf”.
shake:
    xor rax, rax                ; счётчик символов в строках
    xor r8, r8                  ; счётчик символов в буфере
    xor rcx, rcx                ; текущий символ
    .loop:
        mov byte cl, [rsi+rax]  ; берём символ из первой строки
        mov byte [rdx+r8], cl   ; записывем в буфер
        inc r8
        mov byte cl, [rdi+rax]  ; из второй строки
        jrcxz .exit             ; записываем, если не конец
        mov byte [rdx+r8], cl
        inc rax
        inc r8
        jmp .loop
    .exit: ret
