section .text
global count
count:
    xor rcx, rcx
    xor rsi, rsi
    .loop:
       mov al, [rdi+rcx]
       inc rcx
       cmp al, 0x09
       je .inc
       cmp al, 0x20 
       jne .check
    .inc:
        inc rsi
    .check:
        cmp al, 0x00
        jne .loop
    mov rax, rsi
    ret
