# find_max.s - finds the maximum number in an array using a while loop pattern

.globl main
.section .data
Numbers:
.long 1
.long 15
.long 4
.long 2
.long 7
.long 9
.long 23
.long 7
.long 3
.long 11
Array_length:
.long 10

format_str:
.string "Max value: %d\n"

.section .text
main:
    pushl %ebp
    movl %esp, %ebp

    # i = 0 (index counter in %ecx)
    movl $0, %ecx

    # get array length into %edx
    movl Array_length, %edx

    # max = Numbers[0] (keep max in %eax)
    movl Numbers(,%ecx,4), %eax

while_loop:
    # check condition: while (i < Array_length)
    cmpl %edx, %ecx
    jge done

    # get current element Numbers[i] into %ebx
    movl Numbers(,%ecx,4), %ebx

    # if Numbers[i] > max, update max
    cmpl %eax, %ebx
    jle skip_update
    movl %ebx, %eax       # max = Numbers[i]

skip_update:
    incl %ecx             # i++
    jmp while_loop

done:
    # print the result using printf
    pushl %eax
    pushl $format_str
    call printf
    addl $8, %esp

    # return 0
    movl $0, %eax
    movl %ebp, %esp
    popl %ebp
    ret

.section .note.GNU-stack,"",@progbits

