.text
.global _my_getchar

_my_getchar:
    mov r0, #0
    sub  sp, sp, #4
    mov r1, sp
    @ldr r1, =buf
    mov r2, #1
    mov r7, #3
    swi 0 
    add sp, sp, #4
    bx lr
.end
