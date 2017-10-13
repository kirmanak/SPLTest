section .text
global shake
; первый аргумент в rdi
; второй в rsi
; целевой буфер в rdx
shake:
    push r15        ; счётчик символов в буфере
    xor rcx, rcx    ; счётчик символов в строках
    xor r15, r15        
    .loop:
        mov byte al, [rsi+rcx]
        mov byte [rdx+r15], al
        inc r15
        mov byte al, [rdi+rcx]
        mov byte [rdx+r15], al
        inc rcx
        inc r15
        test al, al
        jnz .loop
    pop r15
    ret
