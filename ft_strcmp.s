section .text
	global _ft_strcmp
	push rdi
	push rsi
	mov rax, 0

_ft_strcmp:
	loop:
		cmp [rdi + rax], [rsi + rax]
		je return
		inc rax
		jmp loop
	return:
		sub rax, [rsi + rax] 
		ret
