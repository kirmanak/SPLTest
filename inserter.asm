; Напишите функцию на ассемблере, которая примет строку, указатель на буфер 
; в памяти и символ. Она заполнит буфер содержимым строки, перемежая 
; символы строки своим третьим аргументом. Например, для строки “abc” 
; и символа “x” результат “axbxcx”.
global inserter

; first arg (rdi) is a string
; second arg (rsi) is a buffer
; third arg (rdx) is a symbol
inserter:
  .loop:
    mov BYTE al, [rdi]
    inc rdi
    mov BYTE [rsi], al
    inc rsi
    test al, al
    jz .exit
    mov BYTE [rsi], dl
    inc rsi
    jmp .loop
  .exit:
    ret 
  
