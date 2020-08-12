global _ft_strcmp

section .text

_ft_strcmp:


	mov al, byte [rdi]
	cmp al, byte [rsi]
	je .equal
	ja .s1_big
	jl .s1_little

.equal:
	cmp al, 0
	je .return_zero
	inc rdi
	inc rsi
	jmp _ft_strcmp

.s1_big:
	mov rax, 1;
	ret

.s1_little:
	xor rax, rax
	dec rax
	ret

.return_zero:

	xor rax, rax
	ret