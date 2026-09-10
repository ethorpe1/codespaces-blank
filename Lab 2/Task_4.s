.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    movb $0, %al           # Clear accumulator (sum = 0)
    movb $1, %bl           # Counter i = 1

sum_loop:
    addb %bl, %al          # sum = sum + i
    incb %bl               # i++
    cmpb $10, %bl          # Compare i to 10
    jle sum_loop           # Loop while i <= 10

    movb %al, ram+0x50     # Store final sum (55 / 0x37) at offset 0x50
    ret

.section .note.GNU-stack,"",@progbits