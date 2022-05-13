.text
.global _my_disp_dec
.extern _my_divmod
.global dd1

msgSize = 10

_my_disp_dec:
    push {r0-r5, r7, lr}
    @ldr r5, =msg
    sub sp, sp, #20
    mov r5, sp
    add r5, r5, #msgSize
    mov r2, r5
    add sp, sp, #20
    b dd1
    bx lr

dd1:
    bl _my_divmod
    add r1, r1, #'0'
    strb r1, [r5, #-1]!
    cmp r0, #0
    bne dd1


    mov r1, r5
    mov r0, #1
    sub r2, r2, r5
    mov r7, #4
    swi 0
    pop {r0-r5, r7, pc}
    @add sp, sp, #4


.end
