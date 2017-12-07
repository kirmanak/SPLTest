; Переведите на ассемблер следующую функцию и последовательность команд для её
; вызова с аргументами 42, 43, 1.0
; int f( int a, long b, float c) { return a + b + *((int*)(&c)); }

section .rodata
c: dd 1.0
section .text
global _start

; a in rdi
; b in rsi
; c in xmm0
; returns result in rax
f:
  movd ecx, xmm0        ; loads a content of least 32 bytes xmm0 to ecx
  ; next command moves a result of rsi + rdi to rax 
  ; (equals to "add rdi, rsi" + "mov rax, rdi", 
  ; but doesn't change rdi as well as rsi)
  lea rax, [rsi + rdi]  
  add rax, rcx 
  ret
  
; how to call this func
_start:
  movss xmm0, [c]
  mov rdi, 42
  mov rsi, 43
  call f 
