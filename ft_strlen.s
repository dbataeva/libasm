global _ft_strlen

section .text

_ft_strlen:
	xor rax, rax
	cmp byte [rdi], 0
	jz return
	push rcx
	push rsi
	push rdi
	xor	rcx, rcx
	cld				; читаем с начала строки в конец
	mov	rsi, rdi	; записываем в регистр значение принятого аргумента, т.к.
lp:					; lodsb читает символ из rsi
	lodsb			; считывает один символ в al и переходит к следующему
	inc rcx			; увеличиваем счетчик количества символов
	cmp al, 0		; сравниваем al с символом конца строки
	jnz lp			; если он не равен концу строки, то продолжай читать строку
	dec rcx			; иначе уменьши счетчик
	mov rax, rcx	; и запиши в регистр возврата значение счетчика
	pop rdi
	pop rsi
	pop rcx
return:
ret
