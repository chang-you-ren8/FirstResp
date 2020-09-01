	.file	"overflow.c"
	.section	.rodata
.LC0:
	.string	"%ld\n"
.LC1:
	.string	"%ld "
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$5, -44(%rbp)
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -40(%rbp)
	jmp	.L2
.L3:
	leaq	-32(%rbp), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -40(%rbp)
.L2:
	cmpl	$7, -40(%rbp)
	jle	.L3
	movl	$0, -36(%rbp)
	jmp	.L4
.L5:
	leaq	-16(%rbp), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -36(%rbp)
.L4:
	cmpl	$7, -36(%rbp)
	jle	.L5
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
