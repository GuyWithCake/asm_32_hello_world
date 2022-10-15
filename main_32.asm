; Author: Cake


section .text
  
  global _start

_start:
  mov eax, 0x4                             ;/ sys_write
  mov ebx, 1            	           ;| stdout
  mov ecx, message                         ;| message
  mov edx, message_len                     ;| message length

  int 0x80                                 ;| syscall

  mov eax, 0x1                             ;| sys_exit
  mov ebx, 0                               ;| exit code

  int 0x80                                 ;| syscall

section .data
  message db "Hello, World!", 0x0a, 0x00   ;| Message
  message_len equ $ - message              ;\ Message length
