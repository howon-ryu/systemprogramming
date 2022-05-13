.text
_start: .global _start
    adr r4, dot
    mov r3, #3
    ldrb r5, [r4]
read:
   
@sys_read(stdin, buf, 1);

    mov r0, #0 @ fd = stdin
    ldr r1, =buf @ buf = buf
    mov r2, #1 @len =1
    mov r7, #3 @syscall = sys_read

    @ldrb r3, [r1]
    @ldrb r5, [r4]
    @cmp r3, r5
    @beq exit
    swi 0
    ldrb r3, [r1]
    cmp r3, r5
    beq exit

@sys_write(stdout, buf ,1);
    mov r0, #1 @fd = stdout
    ldr r1, =buf @buf = buf
    mov r2, #1 @ len =1
    mov r7, #4 @ syscall = sys_write
    swi 0

    b read

exit:
@sys_exit(0);
    mov r0, #0
    mov r7, #1
    swi 0

dot: .asciz "."

.data
.align
buf: .skip 4
.end
