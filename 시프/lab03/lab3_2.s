.text
_start: .global _start
    adr r3, msg
    mov r4, #0
    mov r5, #1


loop:
    cmp r5, #0
    beq exit


    mov r0,#1
    add r1, r3, r4
    mov r2, #1
    mov r7, #4
    swi 0
    LDRB r5, [r1]
    add r4, r4, #1
    b loop
    bl disp_str
disp_str:
    mov r0, #1
    adr r1, msg
    mov r2, #1
    mov r7, #4
    @swi
    mov pc, lr

exit:
    mov r0, #0
    mov r7, #1
    swi 0
    .align
msg:
    .asciz "Helloo, World!\n\0kk"
.end

