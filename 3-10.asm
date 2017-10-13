section .text
global shake
; первый аргумент в rdi
; второй в rsi
; целевой буфер в rdx
shake:
    xor rcx, rcx    ; счётчик символов в строках
    xor r8, r8      ; счётчик символов в буфере
    .loop:
        mov byte al, [rsi+rcx]
        mov byte [rdx+r8], al
        inc r8
        mov byte al, [rdi+rcx]
        mov byte [rdx+r8], al
        inc rcx
        inc r8
        test al, al
        jnz .loop
    ret
