	.file	"HelloWorldCpp.cpp"
	.text
	.section	.text._ZSt23__is_constant_evaluatedv,"axG",@progbits,_ZSt23__is_constant_evaluatedv,comdat
	.weak	_ZSt23__is_constant_evaluatedv
	.type	_ZSt23__is_constant_evaluatedv, @function
_ZSt23__is_constant_evaluatedv:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$0, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZSt23__is_constant_evaluatedv, .-_ZSt23__is_constant_evaluatedv
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB115:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	call	_ZSt23__is_constant_evaluatedv
	testb	%al, %al
	je	.L4
	subl	$12, %esp
	pushl	8(%ebp)
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	addl	$16, %esp
	jmp	.L5
.L4:
	subl	$12, %esp
	pushl	8(%ebp)
	call	strlen@PLT
	addl	$16, %esp
	nop
.L5:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE115:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN8GreetingC5ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 2
	.weak	_ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1985:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1985
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	movl	8(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	movl	%esi, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	addl	$16, %esp
	movl	8(%ebp), %eax
	subl	$8, %esp
	pushl	12(%ebp)
	pushl	%eax
	movl	%esi, %ebx
.LEHB0:
	.cfi_escape 0x2e,0x10
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
.LEHE0:
	addl	$16, %esp
	jmp	.L9
.L8:
	movl	%eax, %edi
	movl	8(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	movl	%esi, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addl	$16, %esp
	movl	%edi, %eax
	subl	$12, %esp
	pushl	%eax
	movl	%esi, %ebx
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L9:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1985:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN8GreetingC5ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
.LLSDA1985:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1985-.LLSDACSB1985
.LLSDACSB1985:
	.uleb128 .LEHB0-.LFB1985
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB1985
	.uleb128 0
	.uleb128 .LEHB1-.LFB1985
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE1985:
	.section	.text._ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN8GreetingC5ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.size	_ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZN8GreetingC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.set	_ZN8GreetingC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN8GreetingC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZN8Greeting5greetEv,"axG",@progbits,_ZN8Greeting5greetEv,comdat
	.align 2
	.weak	_ZN8Greeting5greetEv
	.type	_ZN8Greeting5greetEv, @function
_ZN8Greeting5greetEv:
.LFB1987:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	movl	_ZSt4cout@GOT(%ebx), %eax
	pushl	%eax
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	addl	$16, %esp
	subl	$8, %esp
	movl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOT(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	_ZNSolsEPFRSoS_E@PLT
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1987:
	.size	_ZN8Greeting5greetEv, .-_ZN8Greeting5greetEv
	.section	.text._ZN8GreetingD2Ev,"axG",@progbits,_ZN8GreetingD5Ev,comdat
	.align 2
	.weak	_ZN8GreetingD2Ev
	.type	_ZN8GreetingD2Ev, @function
_ZN8GreetingD2Ev:
.LFB1990:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	subl	$12, %esp
	pushl	%edx
	movl	%eax, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1990:
	.size	_ZN8GreetingD2Ev, .-_ZN8GreetingD2Ev
	.weak	_ZN8GreetingD1Ev
	.set	_ZN8GreetingD1Ev,_ZN8GreetingD2Ev
	.section	.rodata
.LC0:
	.string	"Hello World!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1988:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1988
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$72, %esp
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	leal	-81(%ebp), %eax
	movl	%eax, -80(%ebp)
	nop
	nop
	subl	$4, %esp
	leal	-81(%ebp), %eax
	pushl	%eax
	leal	.LC0@GOTOFF(%esi), %eax
	pushl	%eax
	leal	-52(%ebp), %eax
	pushl	%eax
.LEHB2:
	.cfi_escape 0x2e,0x10
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	addl	$16, %esp
	subl	$8, %esp
	leal	-52(%ebp), %eax
	pushl	%eax
	leal	-76(%ebp), %eax
	pushl	%eax
.LEHB3:
	call	_ZN8GreetingC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE3:
	addl	$16, %esp
	subl	$12, %esp
	leal	-52(%ebp), %eax
	pushl	%eax
	movl	%esi, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-81(%ebp), %eax
	pushl	%eax
	call	_ZNSt15__new_allocatorIcED2Ev
	addl	$16, %esp
	nop
	subl	$12, %esp
	leal	-76(%ebp), %eax
	pushl	%eax
.LEHB4:
	call	_ZN8Greeting5greetEv
.LEHE4:
	addl	$16, %esp
	movl	$0, %ebx
	subl	$12, %esp
	leal	-76(%ebp), %eax
	pushl	%eax
	call	_ZN8GreetingD1Ev
	addl	$16, %esp
	movl	%ebx, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L19
	jmp	.L23
.L21:
	movl	%eax, %edi
	subl	$12, %esp
	leal	-52(%ebp), %eax
	pushl	%eax
	movl	%esi, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addl	$16, %esp
	movl	%edi, %ebx
	jmp	.L15
.L20:
	movl	%eax, %ebx
.L15:
	subl	$12, %esp
	leal	-81(%ebp), %eax
	pushl	%eax
	call	_ZNSt15__new_allocatorIcED2Ev
	addl	$16, %esp
	nop
	movl	%ebx, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L16
	call	__stack_chk_fail_local
.L16:
	subl	$12, %esp
	pushl	%eax
	movl	%esi, %ebx
.LEHB5:
	call	_Unwind_Resume@PLT
.L22:
	movl	%eax, %ebx
	subl	$12, %esp
	leal	-76(%ebp), %eax
	pushl	%eax
	call	_ZN8GreetingD1Ev
	addl	$16, %esp
	movl	%ebx, %eax
	movl	-28(%ebp), %edx
	subl	%gs:20, %edx
	je	.L18
	call	__stack_chk_fail_local
.L18:
	subl	$12, %esp
	pushl	%eax
	movl	%esi, %ebx
	call	_Unwind_Resume@PLT
.LEHE5:
.L23:
	call	__stack_chk_fail_local
.L19:
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1988:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1988:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1988-.LLSDACSB1988
.LLSDACSB1988:
	.uleb128 .LEHB2-.LFB1988
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L20-.LFB1988
	.uleb128 0
	.uleb128 .LEHB3-.LFB1988
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L21-.LFB1988
	.uleb128 0
	.uleb128 .LEHB4-.LFB1988
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L22-.LFB1988
	.uleb128 0
	.uleb128 .LEHB5-.LFB1988
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1988:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB1992:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -16(%ebp)
	jmp	.L25
.L26:
	addl	$1, -16(%ebp)
.L25:
	movb	$0, -17(%ebp)
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	subl	$8, %esp
	leal	-17(%ebp), %eax
	pushl	%eax
	pushl	%edx
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	addl	$16, %esp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L26
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	%gs:20, %edx
	je	.L28
	call	__stack_chk_fail_local
.L28:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1992:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB2101:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	subl	$12, %esp
	pushl	-12(%ebp)
	call	_ZNSt15__new_allocatorIcED2Ev
	addl	$16, %esp
	nop
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2101:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.rodata
	.align 4
.LC1:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB2254:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2254
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	movl	8(%ebp), %edi
	subl	$12, %esp
	pushl	8(%ebp)
	movl	%esi, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	16(%ebp)
	pushl	%eax
	pushl	%edi
	movl	%esi, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
	addl	$16, %esp
	cmpl	$0, 12(%ebp)
	jne	.L31
	subl	$12, %esp
	leal	.LC1@GOTOFF(%esi), %eax
	pushl	%eax
	movl	%esi, %ebx
.LEHB6:
	.cfi_escape 0x2e,0x10
	call	_ZSt19__throw_logic_errorPKc@PLT
.L31:
	subl	$12, %esp
	pushl	12(%ebp)
	call	_ZNSt11char_traitsIcE6lengthEPKc
	addl	$16, %esp
	movl	12(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	movzbl	-41(%ebp), %eax
	pushl	%eax
	pushl	-28(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE6:
	addl	$16, %esp
	jmp	.L34
.L33:
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	addl	$16, %esp
	movl	%ebx, %eax
	subl	$12, %esp
	pushl	%eax
	movl	%esi, %ebx
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L34:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2254:
	.section	.gcc_except_table
.LLSDA2254:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2254-.LLSDACSB2254
.LLSDACSB2254:
	.uleb128 .LEHB6-.LFB2254
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L33-.LFB2254
	.uleb128 0
	.uleb128 .LEHB7-.LFB2254
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2254:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB2256:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movzbl	(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	sete	%al
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2256:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, @function
_ZNSt15__new_allocatorIcED2Ev:
.LFB2264:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2264:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB2294:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2294:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB2297:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2297
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	testl	%edx, %edx
	je	.L41
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	subl	$12, %esp
	pushl	%edx
	movl	%eax, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	addl	$16, %esp
.L41:
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2297:
	.section	.gcc_except_table
.LLSDA2297:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2297-.LLSDACSB2297
.LLSDACSB2297:
.LLSDACSE2297:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB2292:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	-48(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -28(%ebp)
	nop
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	subl	-24(%ebp), %eax
	nop
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	$15, %eax
	jbe	.L46
	subl	$4, %esp
	pushl	$0
	leal	-36(%ebp), %eax
	pushl	%eax
	pushl	-44(%ebp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj@PLT
	addl	$16, %esp
	subl	$8, %esp
	pushl	%eax
	pushl	-44(%ebp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	addl	$16, %esp
	movl	-36(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-44(%ebp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEj@PLT
	addl	$16, %esp
	jmp	.L47
.L46:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	nop
.L47:
	subl	$8, %esp
	pushl	-44(%ebp)
	leal	-32(%ebp), %eax
	pushl	%eax
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	addl	$16, %esp
	subl	$12, %esp
	pushl	-44(%ebp)
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	-52(%ebp)
	pushl	-48(%ebp)
	pushl	%eax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	addl	$16, %esp
	movl	$0, -32(%ebp)
	movl	-36(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-44(%ebp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEj@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-32(%ebp), %eax
	pushl	%eax
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	addl	$16, %esp
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L48
	call	__stack_chk_fail_local
.L48:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2292:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB2519:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE2519:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB2520:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE2520:
	.section	.text.__x86.get_pc_thunk.si,"axG",@progbits,__x86.get_pc_thunk.si,comdat
	.globl	__x86.get_pc_thunk.si
	.hidden	__x86.get_pc_thunk.si
	.type	__x86.get_pc_thunk.si, @function
__x86.get_pc_thunk.si:
.LFB2521:
	.cfi_startproc
	movl	(%esp), %esi
	ret
	.cfi_endproc
.LFE2521:
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 4
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 4
DW.ref.__gxx_personality_v0:
	.long	__gxx_personality_v0
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
