.text
.global _my_divmod


_my_divmod:
    push {r2-r4}
    mov r3, r0
    movw r2, #0x6667
    movt r2, #0x6666
    smull r1, r4, r2, r0
    mov r1, r0, asr #31
    rsb r2, r1, r4, asr #2
    mov r0, r2
    add r4, r2, r2, asl #2
    sub r1, r3, r4, asl #1
    pop {r2-r4}
    mov pc, lr

.end


