global _ft_strcpy

section .text

_ft_strcpy:
	push rdi
	push rsi
	cld			; иди в направлении с начала в конец
lp:	
	lodsb		; считай в al первый бит второго аргумента и перейди на след.
	stosb		; запиши его в первый байт первого аргумента и перейди на след.
	cmp al, 0	; сравни al с символом конца строки
	jnz lp		; если не конец строки, продолжи копирование
	pop rsi
	pop rdi
	mov rax, rdi	; запиши указатель на первый аргумент в возвращаемый регистр
ret
