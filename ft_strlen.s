section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0
	push rdi
	loop:
		cmp byte[rdi], 0
		je return
		inc rax
		inc rdi
		jmp loop
	return:
		pop rdi
		ret