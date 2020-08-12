global _ft_read
extern ___error

section .data


section .text
_ft_read: ; こいつは返り値が読み込んだバイト数だから注意。

    je SIZE_ZERO; size < 0
    xor rax, rax

    mov	rax, 0x2000003
	syscall
    jc READ_ERROR
	ret
READ_ERROR:
    mov rax, -1
    mov errno, 2
    call ___error
    ret

SIZE_ZERO:
    mov rax, 0
    ret