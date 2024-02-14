%include 'in_out.asm' ; подключение внешнего файла

section .data ; секция инициированных данных
msg_result db 'Результат: ', 0

section .text ; Код программы
global _start ; Начало программы

_start: ; Точка входа в программу
; —- Для x1 = 2 —-
mov eax, 2 ; устанавливаем значение x1 = 2

add eax, 18 ; eax = 2 + 18 = 20
mov ebx, 5
imul eax, ebx ; eax = 5 * 20 = 100
sub eax, 28 ; eax = 100 - 28 = 72

mov edi, eax ; запись результата вычисления в edi

; —- Вывод результата для x1 на экран —-
mov eax, msg_result ; вызов подпрограммы печати сообщения 'Результат: '
call sprint

mov eax, edi ; вызов подпрограммы печати значения из edi в виде символов
call iprint

; —- Для x2 = 3 —-
mov eax, 3 ; устанавливаем значение x2 = 3

add eax, 18 ; eax = 3 + 18 = 21
mov ebx, 5
imul eax, ebx ; eax = 5 * 21 = 105
sub eax, 28 ; eax = 105 - 28 = 77

mov edi, eax ; запись результата вычисления в edi

; —- Вывод результата для x2 на экран —-
mov eax, msg_result ; вызов подпрограммы печати сообщения 'Результат: '
call sprint

mov eax, edi ; вызов подпрограммы печати значения из edi в виде символов
call iprint

call quit ; вызов подпрограммы завершения
