global _ft_strdup

extern _ft_strlen
extern _ft_strcpy
extern _malloc

section .text

_ft_strdup:
	xor		rax, rax
	call	_ft_strlen
	add		rax, 1		; +1 байт для '\0'
	push	rdi
	mov		rdi, rax	; записываем в rdi длину строки + '\0'
	call	_malloc		; вызываем malloc с rdi - размером памяти для выделения
	cmp 	rax, 0		; проверяем, выделилась ли память
	jz 		quit		; если в rax нулл, то выходим из программы
	pop		rdi			; возвращаем из стека строку, которую нужно скопировать
	mov		rsi, rdi	; записываем ее в нужный для strcpy регистр
	mov		rdi, rax	; записываем в нужный регистр адрес выделенной памяти
	call	_ft_strcpy
	ret
quit:
	pop rdi
	ret
