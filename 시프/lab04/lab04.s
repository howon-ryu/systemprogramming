.text

.global _start
_start:
    adr r4, a
    ldr r0, [r4]
    adr r4, b
    ldr r1, [r4]
    add r3, r0, r1
    adr r4, c
    ldr r2, [r4]
    sub r3, r3, r2
    ldr r4, =0x12345678
    add r3, r3, r4

    ldr r4, =x
    str r3, [r4]
    @-check
    mov r7, #1
    mov r0, #0
    swi 0
    .align
a:  .word 1234
b:  .word 5678
c:  .word 4567
@x:  .word 0


.data

x:  .word 0


.end

