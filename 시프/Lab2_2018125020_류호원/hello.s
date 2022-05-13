.text
_start:.global _start
    mov r0, #1
    adr r1, msg
    mov r2, #msg1-msg
    mov r7, #4
    swi 0

    mov r0, #0
    mov r7, #1
    swi 0
msg:
    .asciz "Hello, world!\n System-programming!! \n hello1 \n hello2\n"
msg1:    
.end




