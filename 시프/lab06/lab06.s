.text
.global _start

func: 
      add r1, r0, r1, LSL #1
      add r2, r2, r2, LSL #1
      add r1, r1, r2
      add r1, r1, r3, LSL #2
      ldr r2, [sp]
      add r2, r2, r2, LSL #2
      add r0, r1, r2
      bx lr

_start:
      push {lr}
      sub sp, sp, #12
      mov r3, #5
      str r3, [sp]
      mov r0, #1
      mov r1, #2
      mov r2, #3
      mov r3, #4
      bl func
      add sp,sp, #12
      @pop {pc}

exit:
    mov r0, #0
    mov r7, #1
    swi 0

.data
.end
