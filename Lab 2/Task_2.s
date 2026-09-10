.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    lea ram, %rbx          # Load base address of ram into %rbx
    movq $0x50, %rcx        # Start offset at 0x50

loop_start:
    movb $0xFF, (%rbx,%rcx) # Store 0xFF at ram + offset
    incq %rcx               # Increment offset
    cmpq $0x58, %rcx        # Check if offset <= 0x58
    jle loop_start

    ret

.section .note.GNU-stack,"",@progbits