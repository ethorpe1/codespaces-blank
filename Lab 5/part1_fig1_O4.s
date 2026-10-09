	.file	"part1_fig1.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.globl	string
	.data
	.align 4
	.type	string, @object
	.size	string, 22
string:
	.string	"the bear ate the grub"
	.globl	f
	.align 4
	.type	f, @object
	.size	f, 4
f:
	.long	1067320848
	.globl	c
	.type	c, @object
	.size	c, 1
c:
	.byte	97
	.globl	a
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
