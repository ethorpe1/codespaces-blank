# Lab 5: C Language Code and Assembly

## Compile Commands
```bash
# Part 1A - unoptimized assembly
gcc -O0 -S -m32 part1_fig1.c -o part1_fig1_O0.s

# Part 1B - optimized assembly
gcc -O4 -S -m32 part1_fig1.c -o part1_fig1_O4.s

# Part 2 - C vs C++
gcc -O0 -S -m32 HelloWorld.c -o HelloWorld_c.s
g++ -O0 -S -m32 HelloWorldCpp.cpp -o HelloWorldCpp_cpp.s

# Part 3 - while loop and array max
gcc -O0 -S -m32 part3_fig4.c -o part3_fig4.s
gcc -m32 find_max.s -o find_max
```

---

## Part IA: Getting the Assembly Code

### Generated Assembly Code (Assignment Part IA Code):
```assembly
	.file	"part1_fig1.c"
	.text
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	1
	.globl	c
	.type	c, @object
	.size	c, 1
c:
	.byte	97
	.globl	f
	.align 4
	.type	f, @object
	.size	f, 4
f:
	.long	1067320848
	.globl	string
	.align 4
	.type	string, @object
	.size	string, 22
string:
	.string	"the bear ate the grub"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$0, -4(%ebp)
	jmp	.L2
.L3:
	movl	a@GOTOFF(%eax), %edx
	movl	%edx, a@GOTOFF(%eax)
	addl	$1, -4(%ebp)
.L2:
	cmpl	$9, -4(%ebp)
	jle	.L3
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB1:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
```

### Questions for Part IA:

**1. Do you recognize the C structures in the assembly generated code?**
Yes, all the variables and the loop from the C code are clearly visible in the assembly:
- `int a = 1;` is in `.data` as `.long 1` (4 bytes).
- `char c = 'a';` is stored as `.byte 97` (ASCII code for `'a'`).
- `float f = 1.23456;` is `.long 1067320848` (32-bit single-precision float in IEEE 754 format).
- `char string[]` is `.string "the bear ate the grub"`.
- The loop counter `i` is a local variable on the stack at `-4(%ebp)`.
- The `for` loop is built using a compare `cmpl $9, -4(%ebp)` and jump `jle .L3`.

**2. Using a snippet of the relevant assembly code, trace out the code and explain what is happening.**



---

## Part IB: Optimized Code

### Generated Assembly Code with `-O4`:
```assembly
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
```

### Questions for Part IB:

**1. How does the code portion of the optimized version differ from that of the unoptimized code?**
- In the unoptimized code (`-O0`), the compiler sets up a full stack frame and runs through all 10 loop iterations and memory reads/writes step-by-step.
- In the optimized version (`-O4`), GCC sees that `a = a` does not change any state or produce any output. It completely deletes the loop and local variable `i` (dead code elimination).
- As a result, the entire `main` function is reduced to two instructions: `xorl %eax, %eax` (return 0) and `ret`.

**2. Does the data portion change? If so, how does it change?**
- The actual values and sizes of global variables `a`, `c`, `f`, and `string` do not change.
- They are still kept in `.data` because they are marked `.globl`, meaning code in other source files could potentially use them.
- The only difference is that the compiler places the data section after `main` instead of before it, and slightly reordered the order in which the variables are written out.

```assembly
	movl	$0, -4(%ebp)           # i = 0 (set counter on stack)
	jmp	.L2                    # jump straight to condition check


---

## Part II: Compare to C++ Code

### Assembly Code Snippets

**1. C Version (`HelloWorld.c`):**
- Data section:
```assembly
	.section	.rodata
.LC0:
	.string	"Hello World"
```
- Code that prints the message:
```assembly
	leal	.LC0@GOTOFF(%eax), %edx
	pushl	%edx
	movl	%eax, %ebx
	call	puts@PLT
```

**2. C++ Version (`HelloWorldCpp.cpp`):**
- Code inside `Greeting::greet()` that prints the message:
```assembly
_ZN8Greeting5greetEv:
.LFB1987:
	.cfi_startproc
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
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
	ret
	.cfi_endproc
```

### Questions for Part II:

**1. What is the file size of the assembly generated from the C version of hello world? How many lines are there?**
- Lines: **58 lines**
- File size: **1,137 bytes**

**2. What is the file size of the assembly generated from the C++ version of hello world? How many lines are there?**
- Lines: **903 lines**
- File size: **25,095 bytes**

**3. Why is the C++ generated code so much larger?**
- **Classes and Methods**: C++ creates constructor and destructor functions for the `Greeting` class.
- **`std::string`**: Using `std::string` brings in template methods, allocators, guards, memory copying, and destructor code.
- **Streams (`cout`, `<<`, `endl`)**: `cout <<` calls several overloaded operator functions and stream manipulators rather than a single simple `puts` or `printf` call.
- **Exception Handling**: C++ adds landing pads, exception tables (`.LLSDA`), and unwinding metadata (`__gxx_personality_v0`) to safely clean up objects if an exception gets thrown.

**4. With regards to the assembly code generated by C++ versus C:**
- **a. Which is more robust?**  
  **C++**, because OOP has stricter type checking, automatic resource management (RAII), and exception handling.
- **b. Which is more future proof?**  
  **C++**, because classes and OOP make it much easier to extend, modify, and reuse components as a program grows.
- **c. Which is faster?**  
  **C**, because it calls standard library functions directly with minimal stack frame setup and no OOP or dynamic string allocation overhead.



---

## Part III: Using C Generated Assembly to Find Code Structures

### Questions for Part III:

**1. Extract and attach the assembly code that performs the `while` loop, along with a simple explanation referring back to the code as to how it works.**

```assembly
	movl	$1, -12(%ebp)          # i = 1
	jmp	.L2                    # jump to loop test
.L3:
	addl	$1, -12(%ebp)          # i++
.L2:
	cmpl	$10, -12(%ebp)         # check if i <= 10
	jle	.L3                    # if i <= 10, jump to .L3
```

**Explanation:**
- `i` is stored on the stack at `-12(%ebp)` and starts at 1 (`movl $1, -12(%ebp)`).
- The compiler uses a test-at-bottom loop pattern: it jumps immediately (`jmp .L2`) to test the condition.
- In `.L2`, `cmpl $10, -12(%ebp)` checks `i` against 10.
- If `i <= 10`, `jle .L3` jumps back to `.L3` where `addl $1, -12(%ebp)` does `i++`.
- Once `i` becomes 11, the check fails and it drops out of the loop to print the result.

---

**2. Assembly program that finds the maximum value in an array of 10 integers using the while loop pattern (`find_max.s`):**

```assembly
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
```

### Output:
```bash
$ gcc -m32 find_max.s -o find_max
$ ./find_max
Max value: 23
```

.L3:
	movl	a@GOTOFF(%eax), %edx   # read 'a' into %edx
	movl	%edx, a@GOTOFF(%eax)   # write %edx back into 'a' (a = a)
	addl	$1, -4(%ebp)           # i++
.L2:
	cmpl	$9, -4(%ebp)           # is i <= 9?
	jle	.L3                    # if yes, jump to loop body (.L3)
```

**Trace:**
- First, `i` is set to 0 on the stack at `-4(%ebp)`.
- It jumps to `.L2` to check the condition first.
- At `.L2`, it compares `i` with 9. Since $0 \le 9$, it jumps to `.L3`.
- In `.L3`, it copies `a` into `%edx` and writes it back (`a = a`), then increments `i` by 1 (`i++`).
- Then it hits `.L2` again to re-check `i`.
- This loops 10 times total ($i = 0, 1, 2, \dots, 9$).
- When `i` reaches 10, the comparison fails, so it exits the loop, sets `%eax` to 0, and returns.
