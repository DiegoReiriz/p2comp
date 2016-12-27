	.file	"mainOptimizado3.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"\nresultado: %f %f"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB50:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	xorl	%esi, %esi
	movq	%rsp, %rdi
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	call	gettimeofday
	pxor	%xmm0, %xmm0
	movl	$100, %ecx
	movl	$_ZZ4mainE1y+400000000, %edx
	mulss	%xmm0, %xmm0
	addss	.LC0(%rip), %xmm0
	shufps	$0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L3:
	movl	$_ZZ4mainE1y, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movaps	%xmm0, (%rax)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	.L2
	subl	$1, %ecx
	jne	.L3
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday
	movq	24(%rsp), %rax
	subq	8(%rsp), %rax
	movl	$.LC2, %esi
	pxor	%xmm1, %xmm1
	movl	$1, %edi
	pxor	%xmm2, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm1
	movq	16(%rsp), %rax
	subq	(%rsp), %rax
	cvtss2sd	_ZZ4mainE1y(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm2
	movl	$2, %eax
	divsd	.LC1(%rip), %xmm1
	addsd	%xmm2, %xmm1
	call	__printf_chk
	xorl	%eax, %eax
	movq	40(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L9
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
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
