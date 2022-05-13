.text
.global _start

_fibo:
    str lr, [sp], #-4

    cmp r0, #2
    movle r0, #1
    ldrle pc, [sp, #4]!

    mov r3, r0
    mov r0, #0
    mov r1, #1
    mov r2, #1

    loop:
        cmp r3, #2

        movle r0, r2
        ldrle pc, [sp, #4]!

        add r0, r1
        add r0, r2
        mov r1, r2
        mov r2, r0
        sub r0, r0

        sub r3, #1
        b loop

_start:
    mov r0, #10
    bl _fibo
    mov r7, #1
    swi 0

.end
