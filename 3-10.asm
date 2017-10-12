section .data
    str1: db "hello", 0
    str2: db "world", 0
    buff: times 10 db 0 
section .text
global _start
_start:
    mov rdi, str1
    mov rsi, str2
    mov rdx, buff
    call shake
    mov rdi, buff
    call print_string
    xor rdi, rdi
    mov rax, 60
    syscall

    shake:
        mov byte al, [rsi]
        mov byte [rdx], al
        mov rcx, 1
        .loop:
            mov byte al, [rdi+rcx-1]
            mov byte [rdx+rcx], al
            inc rcx
            cmp al, 0
            jne .loop
        mov rdi, 1
        dec rcx
        .loop2:
            mov byte al, [rsi+rdi]
            mov byte [rdx+rcx], al
            inc rcx
            inc rdi
            cmp al, 0
            jne .loop2
        ret
        

    print_string:
        .loop:
            cmp byte [rdi+rax], 0
            je .end
            inc rax
            jmp .loop
        .end:
            mov rdx, rax
            mov rax, 1
            mov rsi, rdi
            mov rdi, 1
            syscall
            ret
