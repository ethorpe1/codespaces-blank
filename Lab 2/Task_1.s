.section .bss
.globl ram
.lcomm ram, 256        # Reserve 256 bytes of RAM

.section .text
.globl fill_ram

fill_ram:
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