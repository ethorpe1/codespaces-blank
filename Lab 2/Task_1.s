# Task 1: Put 0xFF into RAM positions 0x50 through 0x58 using direct addressing

.section .bss
.globl ram
.lcomm ram, 256        # Reserve 256 bytes of RAM

.section .text
.globl fill_ram     # makes function visible to C program

fill_ram:
    # store FFh into RAM locations 50H -to 58H using direct addressing
    movb $0xFF, ram+0x50
    movb $0xFF, ram+0x51
    movb $0xFF, ram+0x52
    movb $0xFF, ram+0x53
    movb $0xFF, ram+0x54
    movb $0xFF, ram+0x55
    movb $0xFF, ram+0x56
    movb $0xFF, ram+0x57
    movb $0xFF, ram+0x58
    ret

.section .note.GNU-stack,"",@progbits