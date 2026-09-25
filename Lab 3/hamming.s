# ====================================================================
# CMPE 310 Assembly Language Project 2: Hamming Distance
# Architecture: x86-64 Linux
# Syntax: GNU Assembly (GAS / AT&T Syntax)
# ====================================================================

.global _start

.section .rodata
prompt1:
    .ascii "Enter first string: "
prompt1_len = . - prompt1

prompt2:
    .ascii "Enter second string: "
prompt2_len = . - prompt2

res_msg:
    .ascii "Hamming distance: "
res_msg_len = . - res_msg

newline:
    .ascii "\n"
newline_len = . - newline

.section .bss
.lcomm str1, 256
.lcomm str2, 256
.lcomm num_buf, 32
.lcomm char_buf, 1

.section .text
_start:
    # 1. Prompt and read first string
    movq $1, %rax               # sys_write
    movq $1, %rdi               # stdout
    leaq prompt1(%rip), %rsi
    movq $prompt1_len, %rdx
    syscall

    leaq str1(%rip), %rdi
    call read_line
    movq %rax, %r14             # r14 = len1

    # 2. Prompt and read second string
    movq $1, %rax               # sys_write
    movq $1, %rdi               # stdout
    leaq prompt2(%rip), %rsi
    movq $prompt2_len, %rdx
    syscall

    leaq str2(%rip), %rdi
    call read_line
    movq %rax, %r15             # r15 = len2

    # 3. Compute min(len1, len2)
    movq %r14, %r10             # r10 = min_len
    cmpq %r15, %r10
    jle have_min_len
    movq %r15, %r10

have_min_len:
    # 4. Compute Hamming Distance (accumulated in r12d)
    xorl %r12d, %r12d           # r12d = 0 (total bit difference)
    xorq %rbx, %rbx             # rbx = index i = 0

hamming_loop:
    cmpq %r10, %rbx
    jge printing_result

    # Load byte from str1 and str2
    leaq str1(%rip), %rax
    movzbq (%rax, %rbx, 1), %rax # rax = str1[i]
    leaq str2(%rip), %rdx
    movzbq (%rdx, %rbx, 1), %rdx # rdx = str2[i]

    # XOR to find differing bits
    xorq %rdx, %rax             # rax = str1[i] ^ str2[i]

bit_count_loop:
    # Kernighan's Algorithm to count set bits: rax & (rax - 1)
    testq %rax, %rax
    jz next_char
    movq %rax, %rdx
    decq %rdx
    andq %rdx, %rax
    incl %r12d                  # Increment total hamming distance
    jmp bit_count_loop

next_char:
    incq %rbx                   # i++
    jmp hamming_loop

printing_result:
    # 5. Display Result Prompt
    movq $1, %rax               # sys_write
    movq $1, %rdi               # stdout
    leaq res_msg(%rip), %rsi
    movq $res_msg_len, %rdx
    syscall

    # 6. Convert r12d to ASCII string
    movl %r12d, %eax
    leaq num_buf(%rip), %rsi
    addq $31, %rsi              # Point to end of buffer
    movb $0, (%rsi)
    movl $10, %ecx              # Divisor = 10

convert_loop:
    decq %rsi
    xorl %edx, %edx             # Clear edx before division
    divl %ecx                   # eax = eax / 10, edx = remainder
    addb $'0', %dl              # Convert to ASCII
    movb %dl, (%rsi)
    testl %eax, %eax
    jnz convert_loop

    # Calculate length of converted string
    leaq num_buf(%rip), %rdx
    addq $31, %rdx
    subq %rsi, %rdx             # rdx = length

    # Print number string
    movq $1, %rax               # sys_write
    movq $1, %rdi               # stdout
    syscall

    # Print newline
    movq $1, %rax               # sys_write
    movq $1, %rdi               # stdout
    leaq newline(%rip), %rsi
    movq $newline_len, %rdx
    syscall

    # 7. Exit Program
    movq $60, %rax              # sys_exit
    xorq %rdi, %rdi             # exit code 0
    syscall

# --------------------------------------------------------------------
# read_line: Read up to 255 chars from stdin into buffer in %rdi
# If input exceeds 255 chars, stores first 255 and discards until '\n'
# Returns length read (0 to 255) in %rax
# --------------------------------------------------------------------
read_line:
    pushq %rbx
    pushq %r12
    movq %rdi, %rbx             # buffer ptr
    xorq %r12, %r12             # count = 0

read_char_loop:
    # Read 1 byte from stdin (fd 0)
    movq $0, %rax               # sys_read
    movq $0, %rdi               # stdin
    leaq char_buf(%rip), %rsi
    movq $1, %rdx
    syscall

    # Check for EOF or error (rax <= 0)
    cmpq $0, %rax
    jle read_line_done

    # Check if character is newline ('\n' = 10)
    leaq char_buf(%rip), %rax
    movb (%rax), %al
    cmpb $10, %al               # '\n'
    je read_line_done
    cmpb $13, %al               # '\r' (CRLF support)
    je read_char_loop

    # If already reached max capacity (255), discard remaining chars until newline
    cmpq $255, %r12
    jge read_char_loop

    # Store character in buffer
    movb %al, (%rbx, %r12, 1)
    incq %r12
    jmp read_char_loop

read_line_done:
    movb $0, (%rbx, %r12, 1)
    movq %r12, %rax             # Return length
    popq %r12
    popq %rbx
    ret

