global _ft_write
extern ___error

section .text
_ft_write:
    cmp rdi, 0
    jl write_error; fd < 0

    cmp rdx, 0
    jl write_error; size < 0
    cmp rdx, 0
    je size_zero; size == 0
    mov rax, 0x2000004      ; Syscall number shound be in ra
                            ; この段階でrdi には fd が、rsi はstring が、rdx にはsize が入っている
    syscall                 ; this instruction invokes as system call
    ret

write_error:
    mov rax, -1
    ret

size_zero:
    mov rax, 0
    ret