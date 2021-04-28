section .text
	global _ft_strcpy

_ft_strcpy:
	mov rax, 0
    xor rcx, rcx
	push rdi
	loop:
		mov cl, byte[rsi + rax]
		mov byte[rdi + rax], cl
		cmp cl, 0
		je return
		inc rax
		jmp loop
	return:
		
        mov byte[rdi + rax], 0
        mov rax, rdi
        pop rdi
		ret