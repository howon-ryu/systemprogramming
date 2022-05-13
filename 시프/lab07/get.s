.text
.global _my_putchar

_my_putchar:
    mov r0, #1
    sub sp, sp, #4
    mov r1, sp
    mov r2, #1
    mov r7, #4
    swi 0
    add sp, sp, #4
    bx lr
.end

