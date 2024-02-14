%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x: ', 0
rem: DB 'Ответ: ', 0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprint
mov ax, [x]
sub ax, 18
mov bx, ax
imul bx, bx
mov ax, bx
mov bx, 5
imul bx
mov, ax
mov eax, 1
int 0x80
call iprint;
call quit;

