section .data
string: db "one two three four five six", 0
section .text
global _start
_start:
    mov rdi, string
    call count
    mov rdi, rax
    mov rax, 60
    syscall

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
