section .data
    str1: db "ffff", 0
    str2: db "aaaa", 0
    buff: times 9 db 0 
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

    print_string:
        xor rax, rax
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
