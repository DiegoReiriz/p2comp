	.file	"mainOptimizado3.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"\nresultado: %f %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB50:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movl	$0, %esi
	movq	%rsp, %rdi
	call	gettimeofday
	pxor	%xmm0, %xmm0
	mulss	%xmm0, %xmm0
	addss	.LC0(%rip), %xmm0
	movl	$100, %ecx
	movl	$_ZZ4mainE1y+400000000, %edx
.L3:
	movl	$_ZZ4mainE1y, %eax
.L2:
	movss	%xmm0, (%rax)
	movss	%xmm0, 4(%rax)
	movss	%xmm0, 8(%rax)
	movss	%xmm0, 12(%rax)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	.L2
	subl	$1, %ecx
	jne	.L3
	movl	$0, %esi
	leaq	16(%rsp), %rdi
	call	gettimeofday
	movq	24(%rsp), %rax
	subq	8(%rsp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	.LC1(%rip), %xmm1
	movq	16(%rsp), %rax
	subq	(%rsp), %rax
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	cvtss2sd	_ZZ4mainE1y(%rip), %xmm0
	addsd	%xmm2, %xmm1
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
	movl	$0, %eax
	movq	40(%rsp), %rsi
	xorq	%fs:40, %rsi
	je	.L4
	call	__stack_chk_fail
.L4:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.local	_ZZ4mainE1y
	.comm	_ZZ4mainE1y,400000000,32
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
