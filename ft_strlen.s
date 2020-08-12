
global _ft_strlen

section .text

_ft_strlen:
    test rdi, rdi ; str = NULL
    jz FT_STRLEN_ERROR

    mov rax, 0 ; int i = 0

.loop:
    cmp byte [rdi + rax] , 0 ;if (str[rax] == 0)
    je .end             ; return
    inc rax             ;i++
    jmp .loop           ;ループの先頭にモドル

.end:
    ret

FT_STRLEN_ERROR:
    mov rax, 0
    ret