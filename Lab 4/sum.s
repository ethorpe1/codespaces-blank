# sum_array - takes the array address in %rdi and count in %rsi
# adds all the integers and returns the total in %eax

.section .text
.globl sum_array

sum_array:
    xorl %eax, %eax       # sum starts at 0
    xorl %ecx, %ecx       # index starts at 0

loop:
    cmpl %esi, %ecx       # if index == count we are done
    jge done
    addl (%rdi,%rcx,4), %eax   # add arr[i] to sum
    incl %ecx             # i++
    jmp loop

done:
    ret

.section .note.GNU-stack,"",@progbits

