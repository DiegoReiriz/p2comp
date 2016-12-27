	.file	"main3.cpp"
	.section	.rodata
.LC1:
	.string	"\nresultado: %f %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday
	movl	$0, -68(%rbp)
.L5:
	cmpl	$99, -68(%rbp)
	jg	.L2
	movl	$0, -72(%rbp)
.L4:
	cmpl	$99999999, -72(%rbp)
	jg	.L3
	movl	-72(%rbp), %eax
	cltq
	movss	_ZZ4mainE1x(,%rax,4), %xmm0
	mulss	-64(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	movl	-72(%rbp), %eax
	cltq
	movss	%xmm0, _ZZ4mainE1y(,%rax,4)
	addl	$1, -72(%rbp)
	jmp	.L4
.L3:
	addl	$1, -68(%rbp)
	jmp	.L5
.L2:
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movss	_ZZ4mainE1y(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1
	movl	$.LC1, %edi
	movl	$2, %eax
	call	printf
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
.LFE7:
	.size	main, .-main
	.local	_ZZ4mainE1x
	.comm	_ZZ4mainE1x,400000000,32
	.local	_ZZ4mainE1y
	.comm	_ZZ4mainE1y,400000000,32
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
