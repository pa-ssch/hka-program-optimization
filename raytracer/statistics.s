	.file	"statistics.cc"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1548:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1548:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Statistics"
.LC1:
	.string	"  FLOAT = "
.LC2:
	.string	"float"
.LC3:
	.string	", sizeof(FLOAT) = "
.LC4:
	.string	"  Raytracing time: "
.LC5:
	.string	" [s] ."
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"  Number of ray / triangle intersection tests : "
	.align 8
.LC7:
	.string	"  Number of ray / triangle intersections found : "
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10Statistics5printEv
	.type	_ZN10Statistics5printEv, @function
_ZN10Statistics5printEv:
.LFB2112:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC0(%rip), %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	_ZSt4cerr(%rip), %rdi
	movl	$10, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cerr(%rip), %rax
	leaq	_ZSt4cerr(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbx
	testq	%rbx, %rbx
	je	.L7
	cmpb	$0, 56(%rbx)
	je	.L5
	movsbl	67(%rbx), %esi
.L6:
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	movl	$10, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	movl	$5, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	movl	$18, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cerr(%rip), %rdi
	movl	$4, %esi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L7
	cmpb	$0, 56(%rbx)
	je	.L8
	movsbl	67(%rbx), %esi
.L9:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	movl	$19, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	16(%r12), %xmm0
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rbx
	movl	$6, %edx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L7
	cmpb	$0, 56(%rbp)
	je	.L10
	movsbl	67(%rbp), %esi
.L11:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	movl	$48, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r12), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L7
	cmpb	$0, 56(%rbx)
	je	.L12
	movsbl	67(%rbx), %esi
.L13:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	movl	$49, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%r12), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L7
	cmpb	$0, 56(%rbx)
	je	.L14
	movsbl	67(%rbx), %esi
.L15:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L6
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L8:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L9
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L10:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L11
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L12:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L13
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L14:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L15
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L15
.L7:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE2112:
	.size	_ZN10Statistics5printEv, .-_ZN10Statistics5printEv
	.align 2
	.p2align 4,,15
	.globl	_ZN10Statistics10time_startEv
	.type	_ZN10Statistics10time_startEv, @function
_ZN10Statistics10time_startEv:
.LFB2113:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%rax, 24(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2113:
	.size	_ZN10Statistics10time_startEv, .-_ZN10Statistics10time_startEv
	.align 2
	.p2align 4,,15
	.globl	_ZN10Statistics9time_stopEv
	.type	_ZN10Statistics9time_stopEv, @function
_ZN10Statistics9time_stopEv:
.LFB2114:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	subq	24(%rbx), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC8(%rip), %xmm0, %xmm0
	vaddsd	16(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2114:
	.size	_ZN10Statistics9time_stopEv, .-_ZN10Statistics9time_stopEv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN10Statistics5printEv, @function
_GLOBAL__sub_I__ZN10Statistics5printEv:
.LFB2620:
	.cfi_startproc
	leaq	_ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2620:
	.size	_GLOBAL__sub_I__ZN10Statistics5printEv, .-_GLOBAL__sub_I__ZN10Statistics5printEv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN10Statistics5printEv
	.globl	stats
	.bss
	.align 32
	.type	stats, @object
	.size	stats, 32
stats:
	.zero	32
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	0
	.long	1104006501
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.5.0-6ubuntu2) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
