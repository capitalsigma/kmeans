	.text
main.B:
Main_init:
mantEntry:
	movq	%r8, %r12
	jmp	gcTest10
L_true19:
	movq	%r10, %rdi
then.14:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rbx, %r8
	jmp	letJoinK.15
	/* live= GP={%r12 %rax %rdi} spilled= GP={%r~1}  */
retGCF:
	movq	24(%rdi), %r9
	movq	16(%rdi), %r12
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest10:
	movq	%r11, %r14
	movq	448(%r14), %r15
	subq	%rsi, %r15
	jle	doGC11
	movq	%r9, -64(%rbp)
mainCheck.E:
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$lp.13, %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	addq	$24, %rsi
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$set_D_done_D_comm.16, %rcx
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	%r8, %rbx
	movq	%rsi, %r13
	movq	%r11, %r15
	call	GetNumVProcs
	movq	%rbx, %r8
	movq	%r13, %rsi
	movq	%r15, %r11
	movl	%eax, %r15d
	movq	$327697, -8(%rsi)
	movabsq	$letJoinK.18, %rcx
	movq	%rcx, (%rsi)
	movq	%r12, 8(%rsi)
	movq	-64(%rbp), %rbx
	movq	%rbx, 16(%rsi)
	movq	-56(%rbp), %rdi
	movq	%rdi, 24(%rsi)
	movq	%r14, 32(%rsi)
	movq	%rsi, %rax
	addq	$48, %rsi
	xorq	%rdx, %rdx
	movq	$65537, -8(%rsi)
	movq	%rdx, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.15, %rcx
	movq	%rcx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r15, 16(%rsi)
	movq	%rsi, %r10
	addq	$32, %rsi
	cmpq	$1, %r15
	je	L_true19
	movq	-56(%rbp), %r13
else.12:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$65537, -8(%rsi)
	incq	%rdx
	movq	%rdx, (%rsi)
	movq	%rsi, %r9
	addq	$16, %rsi
	movq	(%r13), %rdi
	movq	%r15, %r8
	shrq	$1, %r8
	jmp	lp.13
doGC11:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%r9, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGCF, %r8
	jmp	ASM_InvokeGC
	.global	mantEntry
	.global	Main_init
	.text
lp.13:
	movq	%r8, %rax
	jmp	gcTest1C
	/* live= GP={%r10 %r9 %rax %rdi} spilled=  */
retGC1B:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest1C:
	movq	%r11, %r12
	movq	448(%r12), %rbx
	subq	%rsi, %rbx
	jle	doGC1D
lpCheck.1A:
	cmpq	$1, %rax
	jne	L25
L_true24:
	movq	%r10, %rdi
then.23:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%rdi), %r14
	movq	%r9, %r8
	jmp	*%r14
doGC1D:
	movq	$262165, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC1B, %r8
	jmp	ASM_InvokeGC
L25:
else.1E:
gcTest21:
	movq	%r11, %r13
	movq	448(%r13), %rdx
	subq	%rsi, %rdx
	jg	L26
doGC22:
	movq	$262167, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rax, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC20, %r8
	jmp	ASM_InvokeGC
L26:
elseCheck.1F:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movq	(%r9), %rcx
	incq	%rcx
	movq	%rcx, (%rsi)
	movq	%rsi, %r9
	addq	$16, %rsi
	movq	%rax, %r8
	shrq	$1, %r8
	jmp	lp.13
	/* live= GP={%rax %r9 %r10 %rdi} spilled=  */
retGC20:
	movq	24(%rdi), %rax
	movq	16(%rdi), %r9
	movq	8(%rdi), %r10
	movq	(%rdi), %rdi
	jmp	gcTest21
	.text
set_D_done_D_comm.16:
	movq	%r8, %rax
	jmp	gcTest29
	/* live= GP={%r10 %r9 %rax %rdi} spilled=  */
retGC28:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest29:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC2A
set_D_done_D_commCheck.27:
	/* Liveout:  GP={%r8 %rdi}  */
	/* flushLoads */
	movq	24(%r11), %rdi
	movq	32(%rdi), %rbx
	movq	%rax, (%rbx)
	movq	(%r9), %r10
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	*%r10
doGC2A:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC28, %r8
	jmp	ASM_InvokeGC
	.text
else.37:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rax, %r8
	jmp	letJoinK.38
L45:
	movq	%rax, %r14
	movq	%r13, -64(%rbp)
	movq	%rbx, -56(%rbp)
AllocLongArray.33:
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movslq	%r14d, %r9
	movq	%r9, %rsi
	call	AllocLongArray
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r13), %rsi
	movq	%r12, %rdi
letJoinK.31:
	movq	$196635, -8(%rsi)
	movq	-64(%rbp), %r12
	movq	%r12, (%rsi)
	movq	%rax, 8(%rsi)
	movl	%r14d, 16(%rsi)
	movq	%rsi, %r15
	addq	$32, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.3A, %rcx
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	xorl	%ebx, %ebx
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.3B, %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	cmpl	%r14d, %ebx
	jl	L_true3C
	jmp	else.37
L_true3C:
then.39:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movl	%ebx, %r10d
	movq	$64, %rcx
	movq	-64(%rbp), %rdi
	subq	(%rdi), %rcx
	shlq	%cl, %r10
	movq	(%rax), %r12
	movq	%rbx, %r13
	shlq	$3, %r13
	movq	%r10, (%r12,%r13,1)
	movq	$65537, -8(%rsi)
	incl	%ebx
	movl	%ebx, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	(%r15), %rdi
	movq	%r14, %r8
	movq	-56(%rbp), %r10
	movq	16(%r10), %r10
	jmp	lp.3A
L_true43:
then.40:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str41, %r10
	movq	%r10, (%rsi)
	movl	$4, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rbx), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
L46:
	movq	%rdi, %rbx
letJoinKCheck.2B:
	movq	%r8, %r15
	movq	%rsi, %r12
	movq	%r11, %r14
	call	GetNumVProcs
	movq	%r15, %r8
	movq	%r12, %rsi
	movq	%r14, %r11
	movq	$327697, -8(%rsi)
	movabsq	$letJoinK.38, %r15
	movq	%r15, (%rsi)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%rsi)
	movq	24(%rbx), %rdi
	movq	%rdi, 24(%rsi)
	movq	32(%rbx), %r9
	movq	%r9, 32(%rsi)
	movq	%rsi, %r12
	addq	$48, %rsi
	cmpl	$0, %eax
	jl	L_true43
else.3D:
	movq	$65536, %rdi
	cmpl	$0, %edi
	jge	L3F
	addl	$7, %edi
L3F:
	sarl	$3, %edi
	cmpl	%edi, %eax
	jge	L44
L_true3E:
then.32:
	movl	%eax, 152(%r11)
gcTest35:
	movq	%r11, %rdx
	movq	448(%rdx), %rdi
	subq	%rsi, %rdi
	movl	152(%r11), %r10d
	leaq	4(%r10), %r9
	shlq	$3, %r9
	cmpq	%r9, %rdi
	jg	L45
doGC36:
	movq	$262169, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%r12, 8(%rsi)
	movl	%eax, 16(%rsi)
	movq	%r13, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC34, %r8
	jmp	ASM_InvokeGC
L44:
	movq	%rax, %r14
	movq	%r13, -64(%rbp)
	movq	%rbx, -56(%rbp)
else.2F:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r13
	movq	%r11, %r15
	movq	%r11, %rdi
	movslq	%r14d, %rax
	movq	%rax, %rsi
	call	AllocBigLongArray
	movq	%r13, %r8
	movq	%r15, %r11
	movq	144(%rbx), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r14d, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r12, %rdi
	jmp	letJoinK.31
letJoinK.18:
	movq	%r8, %r13
gcTest2D:
	movq	%r11, %r15
	movq	448(%r15), %rax
	subq	%rsi, %rax
	jg	L46
doGC2E:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2C, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r13 %rbx} spilled=  */
retGC2C:
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
	jmp	gcTest2D
	/* live= GP={%r14 %r12} spilled= GP={%r~1 %r~1}  */
retGC34:
	movq	24(%rdi), %r13
	movl	16(%rdi), %eax
	movq	8(%rdi), %r12
	movq	(%rdi), %rbx
	jmp	gcTest35
	.text
letJoinK.38:
	movq	%r8, %rbx
	movq	%rbx, -56(%rbp)
	movq	%rdi, %rbx
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$wrap_D_fiber.47, %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rdi
	movq	%rdi, -64(%rbp)
	addq	$24, %rsi
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$revQueue.48, %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	32(%rbx), %r15
	movq	%r15, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%r14, (%rsi)
	movabsq	$mkSwitch.49, %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %r9
	movq	%r9, -72(%rbp)
	addq	$24, %rsi
	movq	$3, (%r11)
	movq	%r8, %r12
	movq	%rsi, %r13
	movq	%r11, %r14
	call	GetNumVProcs
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	movq	$65537, -8(%rsi)
	movl	%eax, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	$131075, -8(%rsi)
	movq	-72(%rbp), %r10
	movq	%r10, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$initVPFields.4A, %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	16(%rbx), %rdx
	movq	%rdx, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%rcx, (%rsi)
	movabsq	$lp.4B, %rdi
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r12
	movq	%r12, -80(%rbp)
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	call	ListVProcs
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	$524319, -8(%rsi)
	movabsq	$letJoinK.4D, %rcx
	movq	%rcx, (%rsi)
	movq	8(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%rbx), %rdi
	movq	%rdi, 16(%rsi)
	movq	24(%rbx), %r9
	movq	%r9, 24(%rsi)
	movq	-56(%rbp), %r13
	movq	%r13, 32(%rsi)
	movq	-64(%rbp), %r14
	movq	%r14, 40(%rsi)
	movq	-72(%rbp), %rcx
	movq	%rcx, 48(%rsi)
	movq	%r11, 56(%rsi)
	movq	%rsi, %rdi
	addq	$72, %rsi
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.4E, %r12
	movq	%r12, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	cmpq	$1, %rax
	je	L53
L_true4F:
	movq	-80(%rbp), %r9
then.51:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$458787, -8(%rsi)
	movabsq	$letJoinK.52, %r13
	movq	%r13, (%rsi)
	movq	16(%rbx), %r14
	movq	%r14, 8(%rsi)
	movq	%r15, 16(%rsi)
	movq	%r9, 24(%rsi)
	movq	%r10, 32(%rsi)
	movq	8(%rax), %rcx
	movq	%rcx, 40(%rsi)
	movq	%rdi, 48(%rsi)
	movq	%rsi, %r9
	addq	$64, %rsi
	movq	(%r15), %rdi
	movq	(%rax), %rdx
	movq	(%rdx), %r8
	movq	16(%rbx), %r10
	jmp	initVPFields.4A
L53:
else.50:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.4D
	.text
wrap_D_fiber.47:
	movq	%r8, %rax
	jmp	gcTest56
	/* live= GP={%r12 %r10 %r9 %rax %rdi} spilled=  */
retGC55:
	movq	32(%rdi), %r12
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest56:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC57
wrap_D_fiberCheck.54:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$terminate.58, %rdi
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	$262181, -8(%rsi)
	movabsq	$act.59, %r14
	movq	%r14, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rbx, 24(%rsi)
	movq	%rsi, %r13
	addq	$40, %rsi
	movq	$393255, -8(%rsi)
	movabsq	$wrappedK.5A, %rcx
	movq	%rcx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r12, 24(%rsi)
	movq	%rbx, 32(%rsi)
	movq	%r13, 40(%rsi)
	movq	%rsi, %r15
	addq	$56, %rsi
	movq	(%r10), %rdx
	movq	%r10, %rdi
	movq	%r15, %r8
	jmp	*%rdx
doGC57:
	movq	$327683, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%r12, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	movabsq	$retGC55, %r8
	jmp	ASM_InvokeGC
	.text
terminate.58:
	jmp	gcTest5D
	/* live= GP={%rdi} spilled=  */
retGC5C:
	movq	(%rdi), %rdi
gcTest5D:
	movq	%r11, %rcx
	movq	448(%rcx), %rdx
	subq	%rsi, %rdx
	jg	L63
doGC5E:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC5C, %r8
	jmp	ASM_InvokeGC
L63:
terminateCheck.5B:
	movq	24(%r11), %r13
	movq	8(%r13), %r12
	cmpq	$1, %r12
	je	L64
L_true62:
	movq	%r12, -56(%rbp)
	movq	%rdi, %rbx
	movq	8(%rdi), %r14
	movq	32(%r14), %rax
then.61:
	/* Liveout:  GP={%rax %rdi}  */
	/* flushLoads */
	movq	$131075, -8(%rsi)
	movq	-56(%rbp), %r15
	movq	(%r15), %r14
	movq	(%r14), %r15
	movq	%r15, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	24(%r11), %r12
	movq	$65539, -8(%rsi)
	movq	%r13, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movq	$327693, -8(%rsi)
	movl	(%r12), %r13d
	movl	%r13d, (%rsi)
	movq	%rdi, 8(%rsi)
	movl	16(%r12), %r14d
	movl	%r14d, 16(%rsi)
	movq	24(%r12), %r15
	movq	%r15, 24(%rsi)
	movq	32(%r12), %rax
	movq	%rax, 32(%rsi)
	movq	%rsi, %r9
	addq	$48, %rsi
	movq	%r9, 24(%r11)
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	movq	8(%rbx), %rcx
	movq	16(%rcx), %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, -64(%rbp)
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	movq	8(%rbx), %rcx
	movq	24(%rcx), %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	-56(%rbp), %rcx
	movq	(%rcx), %r15
	movq	8(%rbx), %rcx
	movq	8(%rbx), %rdx
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	8(%rbx), %rax
	movq	8(%rax), %r9
	movq	%r9, %rsi
	call	PromoteObj
	movq	%rax, %r15
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	8(%rbx), %rdx
	movq	(%r15), %rax
	xorq	%rbx, %rbx
	lock
	cmpxchgq	%rbx, (%r15)
	movq	$3, (%r11)
	movq	32(%r11), %rdi
	movq	8(%rdi), %r9
	movq	%r9, 32(%r11)
	movq	(%rdi), %rdi
	movq	(%rdi), %r10
	movq	$1, %rax
	jmp	*%r10
L64:
else.5F:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r9
	movq	%r9, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r10
	movq	%r10, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r12
	jmp	*%r12
	.text
retGC66:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	jmp	gcTest67
L_true6F:
	movq	%r10, -64(%rbp)
	movq	%rdi, %rbx
	movq	8(%rdi), %r13
	movq	32(%r13), %r9
	movq	8(%rax), %rdi
	movq	%rdi, -56(%rbp)
then.6A:
	/* Liveout:  GP={%rax %rdi}  */
	/* flushLoads */
	movq	$131075, -8(%rsi)
	movq	-64(%rbp), %r14
	movq	(%r14), %r15
	movq	(%r15), %rax
	movq	%rax, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	24(%r11), %r12
	movq	$65539, -8(%rsi)
	movq	%r14, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	movq	$327693, -8(%rsi)
	movl	(%r12), %r13d
	movl	%r13d, (%rsi)
	movq	%rcx, 8(%rsi)
	movl	16(%r12), %r14d
	movl	%r14d, 16(%rsi)
	movq	24(%r12), %r15
	movq	%r15, 24(%rsi)
	movq	32(%r12), %rax
	movq	%rax, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	movq	%rdi, 24(%r11)
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	movq	8(%rbx), %rcx
	movq	16(%rcx), %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, -72(%rbp)
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	movq	8(%rbx), %rcx
	movq	24(%rcx), %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	8(%rbx), %rcx
	movq	8(%rbx), %rdx
	movq	-64(%rbp), %r15
	movq	(%r15), %rdi
	movq	-72(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	8(%rbx), %rax
	movq	8(%rax), %r9
	movq	%r9, %rsi
	call	PromoteObj
	movq	%rax, %r15
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	8(%rbx), %rdx
	movq	(%r15), %rax
	xorq	%rdi, %rdi
	lock
	cmpxchgq	%rdi, (%r15)
	movq	$393255, -8(%rsi)
	movabsq	$k.6B, %r10
	movq	%r10, (%rsi)
	movq	8(%rbx), %r12
	movq	%r12, 8(%rsi)
	movq	16(%rbx), %r13
	movq	%r13, 16(%rsi)
	movq	24(%rbx), %r14
	movq	%r14, 24(%rsi)
	movq	%rbx, 32(%rsi)
	movq	-56(%rbp), %rdx
	movq	%rdx, 40(%rsi)
	movq	%rsi, %r9
	addq	$56, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$3, (%r11)
	movq	32(%r11), %r15
	movq	8(%r15), %rcx
	movq	%rcx, 32(%r11)
	movq	(%r15), %rdi
	movq	(%rdi), %rdx
	jmp	*%rdx
L_true72:
then.6E:
	movq	24(%r11), %r12
	movq	8(%r12), %r10
	cmpq	$1, %r10
	jne	L_true6F
else.69:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r10
	movq	%r10, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
L_true73:
then.71:
	cmpq	$1, (%rax)
	je	L_true72
else.6C:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$65539, -8(%rsi)
	movabsq	$tag6D, %rbx
	movq	%rbx, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
L74:
actCheck.65:
	cmpq	$1, %rax
	jne	L_true73
else.70:
	/* Liveout:  GP={%rdi}  */
	movq	24(%rdi), %rdi
	jmp	terminate.58
act.59:
gcTest67:
	movq	%r11, %rdx
	movq	448(%rdx), %rbx
	subq	%rsi, %rbx
	jg	L74
doGC68:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC66, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%rax %rdi} spilled=  */
	jmp	retGC66
	.text
k.6B:
	jmp	gcTest77
	/* live= GP={%rax %rdi} spilled=  */
retGC76:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest77:
	movq	%r11, %r14
	movq	448(%r14), %r15
	subq	%rsi, %r15
	jle	doGC78
kCheck.75:
	movq	$3, (%r11)
	movq	$65539, -8(%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	movq	24(%r11), %r9
	movq	8(%r9), %rbx
	cmpq	$1, %rbx
	je	L80
L_true7F:
	movq	%rbx, -64(%rbp)
	movq	%r11, %r15
	movq	%r15, -56(%rbp)
	movq	%rdi, %r12
then.7C:
	movq	$131075, -8(%rsi)
	movq	-64(%rbp), %r10
	movq	(%r10), %r15
	movq	(%r15), %rax
	movq	%rax, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	24(%r11), %rbx
	movq	$65539, -8(%rsi)
	movq	%r14, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	movq	$327693, -8(%rsi)
	movl	(%rbx), %edi
	movl	%edi, (%rsi)
	movq	%rcx, 8(%rsi)
	movl	16(%rbx), %r9d
	movl	%r9d, 16(%rsi)
	movq	24(%rbx), %r10
	movq	%r10, 24(%rsi)
	movq	32(%rbx), %r13
	movq	%r13, 32(%rsi)
	movq	%rsi, %rdx
	addq	$48, %rsi
	movq	%rdx, 24(%r11)
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %r13
	movq	%r11, %rdi
	movq	8(%r12), %rcx
	movq	8(%rcx), %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, %r10
	movq	%r15, %r8
	movq	%r13, %r11
	movq	144(%r14), %rsi
	movq	8(%r12), %r15
	movq	-64(%rbp), %r13
	movq	(%r13), %rax
	movq	(%r10), %rax
	movq	-56(%rbp), %r14
	lock
	cmpxchgq	%r14, (%r10)
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	8(%r12), %r15
	movq	(%r15), %rcx
	movq	%rcx, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	(%rax), %rax
	cmpq	$1, %rax
	je	S_case7D
	cmpq	$3, %rax
	jne	S_case7D
S_case7E:
case.79:
	/* Liveout:  GP={%rdi}  */
	movq	24(%r12), %rdi
	jmp	terminate.58
doGC78:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC76, %r8
	jmp	ASM_InvokeGC
S_case7D:
	movq	-56(%rbp), %r13
case.7A:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131075, -8(%rsi)
	movq	32(%r12), %rcx
	movq	%rcx, (%rsi)
	movq	32(%r13), %rdx
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%rax, 32(%r13)
	movq	$1, (%r13)
	movq	40(%r12), %rdi
	movq	(%rdi), %rbx
	movq	$1, %rax
	jmp	*%rbx
L80:
else.7B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r10
	movq	%r10, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
	.text
wrappedK.5A:
	jmp	gcTest83
	/* live= GP={%rax %rdi} spilled=  */
retGC82:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest83:
	movq	%r11, %r14
	movq	448(%r14), %r15
	subq	%rsi, %r15
	jle	doGC84
wrappedKCheck.81:
	movq	$3, (%r11)
	movq	$65539, -8(%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	movq	24(%r11), %r9
	movq	8(%r9), %rbx
	cmpq	$1, %rbx
	je	L8C
L_true8B:
	movq	%rbx, -64(%rbp)
	movq	%r11, %r15
	movq	%r15, -56(%rbp)
	movq	%rdi, %r12
then.88:
	movq	$131075, -8(%rsi)
	movq	-64(%rbp), %r10
	movq	(%r10), %r15
	movq	(%r15), %rax
	movq	%rax, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	24(%r11), %rbx
	movq	$65539, -8(%rsi)
	movq	%r14, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	movq	$327693, -8(%rsi)
	movl	(%rbx), %edi
	movl	%edi, (%rsi)
	movq	%rcx, 8(%rsi)
	movl	16(%rbx), %r9d
	movl	%r9d, 16(%rsi)
	movq	24(%rbx), %r10
	movq	%r10, 24(%rsi)
	movq	32(%rbx), %r13
	movq	%r13, 32(%rsi)
	movq	%rsi, %rdx
	addq	$48, %rsi
	movq	%rdx, 24(%r11)
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %r13
	movq	%r11, %rdi
	movq	8(%r12), %rcx
	movq	8(%rcx), %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, %r10
	movq	%r15, %r8
	movq	%r13, %r11
	movq	144(%r14), %rsi
	movq	8(%r12), %r15
	movq	-64(%rbp), %r13
	movq	(%r13), %rax
	movq	(%r10), %rax
	movq	-56(%rbp), %r14
	lock
	cmpxchgq	%r14, (%r10)
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	8(%r12), %r15
	movq	(%r15), %rcx
	movq	%rcx, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	(%rax), %rax
	cmpq	$1, %rax
	je	S_case89
	cmpq	$3, %rax
	jne	S_case89
S_case8A:
case.85:
	/* Liveout:  GP={%rdi}  */
	movq	32(%r12), %rdi
	jmp	terminate.58
doGC84:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC82, %r8
	jmp	ASM_InvokeGC
S_case89:
	movq	-56(%rbp), %r13
case.86:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131075, -8(%rsi)
	movq	40(%r12), %rcx
	movq	%rcx, (%rsi)
	movq	32(%r13), %rdx
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%rax, 32(%r13)
	movq	$1, (%r13)
	movq	16(%r12), %rdi
	movq	(%rdi), %rbx
	movq	$1, %rax
	jmp	*%rbx
L8C:
else.87:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r10
	movq	%r10, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	24(%rdi), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
	.text
revQueue.48:
	movq	%r8, %rcx
	jmp	gcTest8F
	/* live= GP={%r13 %r12 %r10 %r9 %rcx %rdi} spilled=  */
retGC8E:
	movq	40(%rdi), %r13
	movq	32(%rdi), %r12
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdi
gcTest8F:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jle	doGC90
revQueueCheck.8D:
	movq	$196611, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	cmpq	$1, %r10
	jne	L98
L_true97:
	movq	%r13, %rdi
then.96:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%rdi), %r10
	movq	%r12, %r8
	jmp	*%r10
doGC90:
	movq	$393219, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%r12, 32(%rsi)
	movq	%r13, 40(%rsi)
	movq	%rsi, %rdi
	addq	$56, %rsi
	movabsq	$retGC8E, %r8
	jmp	ASM_InvokeGC
L98:
else.91:
gcTest94:
	movq	%r11, %r9
	movq	448(%r9), %rax
	subq	%rsi, %rax
	jg	L99
doGC95:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%r13, 16(%rsi)
	movq	%r12, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC93, %r8
	jmp	ASM_InvokeGC
L99:
elseCheck.92:
	/* Liveout:  GP={%r13 %r12 %r10 %r9 %r8 %rdi}  */
	movq	(%r10), %r8
	movq	8(%r10), %r9
	movq	16(%r10), %r10
	jmp	revQueue.48
	/* live= GP={%r12 %r13 %r10 %rdi} spilled=  */
retGC93:
	movq	24(%rdi), %r12
	movq	16(%rdi), %r13
	movq	8(%rdi), %r10
	movq	(%rdi), %rdi
	jmp	gcTest94
	.text
mkSwitch.49:
	movq	%r8, %r12
	jmp	gcTest9C
	/* live= GP={%r12 %r15} spilled= GP={%r~1 %r~1}  */
retGC9B:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %r12
	movq	(%rdi), %rdi
gcTest9C:
	movq	%r11, %r13
	movq	448(%r13), %r14
	subq	%rsi, %r14
	jle	doGC9D
	movq	%r10, -72(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rdi, %r15
mkSwitchCheck.9A:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movq	$0, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %rbx
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, -64(%rbp)
	movq	%r13, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	$65539, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %rbx
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	$262187, -8(%rsi)
	movq	-72(%rbp), %rcx
	movq	%rcx, (%rsi)
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%r12, 24(%rsi)
	movq	%rsi, %rcx
	addq	$40, %rsi
	movq	$131081, -8(%rsi)
	movq	%rcx, (%rsi)
	movabsq	$wakeupSleepingThreads.9E, %rdx
	movq	%rdx, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%r10, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%rbx, (%rsi)
	movabsq	$waitForWork.9F, %r9
	movq	%r9, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	$589869, -8(%rsi)
	movabsq	$switch.A0, %r13
	movq	%r13, (%rsi)
	movq	(%r15), %r14
	movq	%r14, 8(%rsi)
	movq	8(%r15), %r15
	movq	%r15, 16(%rsi)
	movq	-72(%rbp), %rbx
	movq	%rbx, 24(%rsi)
	movq	-64(%rbp), %r13
	movq	%r13, 32(%rsi)
	movq	%rax, 40(%rsi)
	movq	%r10, 48(%rsi)
	movq	%rdi, 56(%rsi)
	movq	%r12, 64(%rsi)
	movq	%rsi, %r10
	addq	$80, %rsi
	movq	-56(%rbp), %r14
	movq	(%r14), %rax
	movq	-56(%rbp), %rdi
	movq	%r10, %r8
	jmp	*%rax
doGC9D:
	movq	$262185, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC9B, %r8
	jmp	ASM_InvokeGC
	.text
retGCA2:
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
	jmp	gcTestA3
LB5:
	movq	%rdi, %rbx
wakeupSleepingThreadsCheck.A1:
	/* flushLoads */
	movq	%r8, %r12
	movq	%rsi, %r14
	movq	%r11, %r15
	call	M_GetTime
	movq	%r12, %r8
	movq	%r14, %rsi
	movq	%r15, %r11
	movq	8(%rbx), %r12
	movq	%rax, (%r12)
	movq	16(%rbx), %r14
	movq	(%r14), %r15
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$lp.A8, %rcx
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$393263, -8(%rsi)
	movq	(%rbx), %rdi
	movq	%rdi, (%rsi)
	movq	16(%rbx), %r9
	movq	%r9, 8(%rsi)
	movq	%r13, 16(%rsi)
	movq	%r14, 24(%rsi)
	movq	24(%rbx), %r10
	movq	%r10, 32(%rsi)
	movq	%rax, 40(%rsi)
	movq	%rsi, %rdx
	addq	$56, %rsi
	movq	$131081, -8(%rsi)
	movq	%rdx, (%rsi)
	movabsq	$loop.AA, %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$1, %rcx
	movq	$1, %r10
	movq	$327729, -8(%rsi)
	movabsq	$letJoinK.B2, %rdi
	movq	%rdi, (%rsi)
	movq	(%rbx), %r9
	movq	%r9, 8(%rsi)
	movq	16(%rbx), %r12
	movq	%r12, 16(%rsi)
	movq	%r13, 24(%rsi)
	movq	24(%rbx), %r13
	movq	%r13, 32(%rsi)
	movq	%rsi, %r12
	addq	$48, %rsi
	cmpq	$1, %r15
	jne	L_trueB3
else.AC:
	movq	$1, %r9
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$lp.AD, %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.A6, %rdx
	movq	%rdx, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%r15, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	cmpq	$1, %rcx
	je	LB4
L_trueAE:
	movq	%rdi, %r10
then.A7:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	(%rcx), %r13
	movq	%r13, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	(%r14), %rdi
	movq	8(%rcx), %r8
	jmp	lp.A8
LB4:
else.A5:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %r8
	jmp	letJoinK.A6
L_trueB3:
then.AF:
	movq	(%r15), %rdi
	movq	8(%r15), %rbx
	movq	16(%rdi), %r9
	cmpq	%rax, (%r9)
	jl	L_trueB0
else.A9:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	(%rdx), %rdi
	movq	%rbx, %r8
	movq	%rcx, %r9
	jmp	loop.AA
L_trueB0:
then.AB:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	(%rdx), %rdi
	movq	%rbx, %r8
	jmp	loop.AA
wakeupSleepingThreads.9E:
	movq	%r8, %r13
gcTestA3:
	movq	%r11, %r12
	movq	448(%r12), %r10
	subq	%rsi, %r10
	jg	LB5
doGCA4:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGCA2, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r13 %rbx} spilled=  */
	jmp	retGCA2
	.text
else.B7:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r10), %rdx
	movq	%r10, %rdi
	movq	%r9, %r8
	jmp	*%rdx
L_trueB6:
then.B8:
gcTestBB:
	movq	%r11, %rbx
	movq	448(%rbx), %rcx
	subq	%rsi, %rcx
	jle	doGCBC
thenCheck.B9:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	(%rax), %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	8(%rax), %r8
lp.A8:
	movq	%r8, %rax
	cmpq	$1, %rax
	jne	L_trueB6
	jmp	else.B7
doGCBC:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%r9, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGCBA, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r9 %rax %r10 %rdi} spilled=  */
retGCBA:
	movq	24(%rdi), %r9
	movq	16(%rdi), %rax
	movq	8(%rdi), %r10
	movq	(%rdi), %rdi
	jmp	gcTestBB
	.text
else.C4:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	%rax, %r8
loop.AA:
	movq	%r8, %rdx
	cmpq	$1, %rdx
	jne	L_trueBD
else.BE:
	movq	$1, %r13
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$lp.C2, %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$524319, -8(%rsi)
	movabsq	$letJoinK.C6, %r15
	movq	%r15, (%rsi)
	movq	(%rdi), %rcx
	movq	%rcx, 8(%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, 16(%rsi)
	movq	16(%rdi), %rbx
	movq	%rbx, 24(%rsi)
	movq	%r12, 32(%rsi)
	movq	%r10, 40(%rsi)
	movq	%rax, 48(%rsi)
	movq	32(%rdi), %r14
	movq	%r14, 56(%rsi)
	movq	%rsi, %r15
	addq	$72, %rsi
	cmpq	$1, %r9
	jne	L_trueC7
	movq	%r10, %rcx
else.C0:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.C1, %rdx
	movq	%rdx, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%r13, 16(%rsi)
	movq	%rsi, %r10
	addq	$32, %rsi
	movq	(%rax), %rdi
	movq	%rcx, %r8
	movq	$1, %r9
	jmp	lp.C2
L_trueC7:
	movq	%r9, %r14
	movq	%r15, %r10
then.C3:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	(%r14), %rbx
	movq	%rbx, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	24(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	8(%r14), %r8
	jmp	lp.A8
	/* live= GP={%r10 %r9 %rdx %r12 %rdi} spilled=  */
retGCC9:
	movq	32(%rdi), %r10
	movq	24(%rdi), %r9
	movq	16(%rdi), %rdx
	movq	8(%rdi), %r12
	movq	(%rdi), %rdi
	jmp	gcTestCA
L_trueBD:
then.BF:
gcTestCA:
	movq	%r11, %r15
	movq	448(%r15), %rbx
	subq	%rsi, %rbx
	jg	LCD
doGCCB:
	movq	$327683, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%r9, 24(%rsi)
	movq	%r10, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	movabsq	$retGCC9, %r8
	jmp	ASM_InvokeGC
LCD:
thenCheck.C8:
	movq	(%rdx), %rcx
	movq	8(%rdx), %rax
	movq	16(%rcx), %rdx
	movq	(%rdx), %rbx
	cmpq	40(%rdi), %rbx
	jl	L_trueCC
	jmp	else.C4
L_trueCC:
then.C5:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	%rax, %r8
	jmp	loop.AA
	.text
lpCheck.CE:
	cmpq	$1, %rax
	je	LD5
L_trueD4:
then.D3:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	(%rax), %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	8(%rax), %r8
lp.C2:
	movq	%r8, %rax
	jmp	gcTestD0
LD5:
	movq	%r10, %rdi
else.D2:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%rdi), %rbx
	movq	%r9, %r8
	jmp	*%rbx
retGCCF:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTestD0:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	lpCheck.CE
doGCD1:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGCCF, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.C6:
	movq	%r8, %rcx
	movq	$1, %rax
	movq	$393267, -8(%rsi)
	movabsq	$letJoinK.D7, %rdx
	movq	%rdx, (%rsi)
	movq	8(%rdi), %rbx
	movq	%rbx, 8(%rsi)
	movq	16(%rdi), %r9
	movq	%r9, 16(%rsi)
	movq	24(%rdi), %r10
	movq	%r10, 24(%rsi)
	movq	%rcx, 32(%rsi)
	movq	56(%rdi), %r12
	movq	%r12, 40(%rsi)
	movq	%rsi, %r10
	addq	$56, %rsi
	cmpq	$1, 40(%rdi)
	je	LDB
L_trueD8:
then.DA:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	40(%rdi), %r14
	movq	$131075, -8(%rsi)
	movq	(%r14), %r15
	movq	%r15, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	48(%rdi), %rax
	movq	(%rax), %rdi
	movq	8(%r14), %r8
	jmp	lp.C2
LDB:
else.D9:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	32(%rdi), %rdi
	movq	%r13, %r8
	jmp	letJoinK.B2
	.text
letJoinK.D7:
	movq	%r8, %r15
	movq	$327697, -8(%rsi)
	movabsq	$letJoinK.DC, %rax
	movq	%rax, (%rsi)
	movq	16(%rdi), %rcx
	movq	%rcx, 8(%rsi)
	movq	24(%rdi), %rdx
	movq	%rdx, 16(%rsi)
	movq	32(%rdi), %rbx
	movq	%rbx, 24(%rsi)
	movq	%r15, 32(%rsi)
	movq	%rsi, %r9
	addq	$48, %rsi
	movq	$65537, -8(%rsi)
	movq	40(%rdi), %r12
	movq	%r12, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r10, (%rsi)
	movabsq	$lp.DD, %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	cmpq	$1, 32(%rdi)
	je	LE7
L_trueDE:
then.E0:
	movq	32(%rdi), %rdx
	movq	8(%rdx), %rax
	movq	(%rdx), %rbx
	movq	$196611, -8(%rsi)
	movq	(%rbx), %r12
	movq	%r12, (%rsi)
	movq	8(%rbx), %r13
	movq	%r13, 8(%rsi)
	movq	40(%rdi), %r14
	movq	88(%r14), %r15
	movq	%r15, 16(%rsi)
	movq	%rsi, %r10
	addq	$32, %rsi
	movq	40(%rdi), %rdx
	movq	%r10, 88(%rdx)
	cmpq	$1, %rax
	je	LE8
L_trueE6:
	movq	%rdi, %rdx
then.E4:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rax), %rbx
	movq	$196611, -8(%rsi)
	movq	(%rbx), %r10
	movq	%r10, (%rsi)
	movq	8(%rbx), %r12
	movq	%r12, 8(%rsi)
	movq	40(%rdx), %r13
	movq	88(%r13), %r14
	movq	%r14, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movq	40(%rdx), %r15
	movq	%rdi, 88(%r15)
	movq	(%rcx), %rdi
	movq	8(%rax), %r8
	movq	8(%rdx), %r10
	jmp	lp.DD
LE8:
	movq	%r9, %rdi
else.E3:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.DC
LE9:
else.E1:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	24(%rbx), %rdi
	movq	(%rdi), %r14
	movq	$1, %r8
	jmp	*%r14
LE7:
	movq	%rdi, %rbx
else.DF:
	/* flushLoads */
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	16(%rbx), %rcx
	movq	%rax, (%rcx)
	cmpq	$1, 32(%rbx)
	je	LE9
L_trueE5:
then.E2:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	24(%rbx), %rdi
	movq	(%rdi), %r15
	movq	$3, %r8
	jmp	*%r15
	.text
letJoinK.DC:
	/* flushLoads */
	movq	%rdi, %rbx
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	32(%rbx), %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	8(%rbx), %rdx
	movq	%rax, (%rdx)
	cmpq	$1, 24(%rbx)
	je	LED
L_trueEA:
then.EC:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rbx), %rdi
	movq	(%rdi), %r9
	movq	$3, %r8
	jmp	*%r9
LED:
else.EB:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rbx), %rdi
	movq	(%rdi), %rbx
	movq	$1, %r8
	jmp	*%rbx
	.text
lpCheck.EE:
	cmpq	$1, %rax
	je	LF5
L_trueF4:
then.F3:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rax), %rbx
	movq	$196611, -8(%rsi)
	movq	(%rbx), %r13
	movq	%r13, (%rsi)
	movq	8(%rbx), %r14
	movq	%r14, 8(%rsi)
	movq	(%rdi), %r15
	movq	88(%r15), %rcx
	movq	%rcx, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	movq	(%rdi), %rdx
	movq	%r12, 88(%rdx)
	movq	8(%rax), %r8
lp.DD:
	movq	%r8, %rax
	jmp	gcTestF0
LF5:
	movq	%r9, %rdi
else.F2:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.DC
retGCEF:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTestF0:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	lpCheck.EE
doGCF1:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGCEF, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.C1:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r8, %rax
	movq	$131075, -8(%rsi)
	movq	16(%rdi), %rdx
	movq	%rdx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	8(%rdi), %rdi
	movq	%rcx, %r8
	jmp	letJoinK.B2
	.text
letJoinK.B2:
	movq	%r8, %rbx
	jmp	gcTestF9
	/* live= GP={%rbx %rdi} spilled=  */
retGCF8:
	movq	8(%rdi), %rbx
	movq	(%rdi), %rdi
gcTestF9:
	movq	%r11, %r10
	movq	448(%r10), %r9
	subq	%rsi, %r9
	jg	L100
doGCFA:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGCF8, %r8
	jmp	ASM_InvokeGC
L100:
letJoinKCheck.F7:
	movq	(%rbx), %rax
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.FC, %r12
	movq	%r12, (%rsi)
	movq	16(%rdi), %r13
	movq	%r13, 8(%rsi)
	movq	24(%rdi), %r14
	movq	%r14, 16(%rsi)
	movq	%rbx, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	movq	$65537, -8(%rsi)
	movq	32(%rdi), %rcx
	movq	%rcx, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.FE, %rdx
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	cmpq	$1, %rax
	je	L101
L_trueFF:
	movq	%rdi, %rcx
then.FD:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rax), %r12
	movq	$196611, -8(%rsi)
	movq	(%r12), %r14
	movq	%r14, (%rsi)
	movq	8(%r12), %r15
	movq	%r15, 8(%rsi)
	movq	32(%rcx), %rbx
	movq	88(%rbx), %rdi
	movq	%rdi, 16(%rsi)
	movq	%rsi, %r13
	addq	$32, %rsi
	movq	32(%rcx), %r10
	movq	%r13, 88(%r10)
	movq	(%rdx), %rdi
	movq	8(%rax), %r8
	movq	8(%rcx), %r10
	jmp	lp.FE
L101:
	movq	%r9, %rdi
else.FB:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.FC
	.text
letJoinK.FC:
	/* flushLoads */
	movq	%rdi, %rbx
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	24(%rbx), %rcx
	movq	8(%rcx), %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	24(%rbx), %r9
	movq	8(%rbx), %rdi
	movq	%rax, (%rdi)
	movq	24(%rbx), %r10
	cmpq	$1, (%r10)
	je	L105
L_true102:
then.104:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rbx), %rdi
	movq	(%rdi), %r13
	movq	$3, %r8
	jmp	*%r13
L105:
else.103:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rbx), %rdi
	movq	(%rdi), %r12
	movq	$1, %r8
	jmp	*%r12
	.text
lpCheck.106:
	cmpq	$1, %rax
	je	L10D
L_true10C:
then.10B:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rax), %rbx
	movq	$196611, -8(%rsi)
	movq	(%rbx), %r13
	movq	%r13, (%rsi)
	movq	8(%rbx), %r14
	movq	%r14, 8(%rsi)
	movq	(%rdi), %r15
	movq	88(%r15), %rcx
	movq	%rcx, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	movq	(%rdi), %rdx
	movq	%r12, 88(%rdx)
	movq	8(%rax), %r8
lp.FE:
	movq	%r8, %rax
	jmp	gcTest108
L10D:
	movq	%r9, %rdi
else.10A:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.FC
retGC107:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest108:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	lpCheck.106
doGC109:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC107, %r8
	jmp	ASM_InvokeGC
	.text
lpCheck.10F:
	cmpq	$1, %rax
	je	L117
L_true116:
then.115:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	(%rax), %rbx
	movq	%rbx, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	8(%rax), %r8
lp.AD:
	movq	%r8, %rax
	jmp	gcTest111
L117:
	movq	%r10, %rdi
else.113:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %r8
	jmp	letJoinK.114
retGC110:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest111:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	lpCheck.10F
doGC112:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC110, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.A6:
	movq	%r8, %rcx
	movq	$1, %rax
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.114, %rdx
	movq	%rdx, (%rsi)
	movq	8(%rdi), %rbx
	movq	%rbx, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	%rsi, %r10
	addq	$32, %rsi
	cmpq	$1, 24(%rdi)
	je	L11C
L_true119:
then.11B:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	24(%rdi), %r12
	movq	$131075, -8(%rsi)
	movq	(%r12), %r13
	movq	%r13, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	16(%rdi), %r14
	movq	(%r14), %rdi
	movq	8(%r12), %r8
	jmp	lp.AD
L11C:
else.11A:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r10, %rdi
	movq	%rax, %r8
	jmp	letJoinK.114
	.text
letJoinK.114:
	movq	%r8, %rax
	jmp	gcTest11F
	/* live= GP={%rax %rdi} spilled=  */
retGC11E:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest11F:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC120
letJoinKCheck.11D:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131075, -8(%rsi)
	movq	16(%rdi), %r9
	movq	%r9, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	8(%rdi), %rdi
	movq	%rbx, %r8
	jmp	letJoinK.B2
doGC120:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC11E, %r8
	jmp	ASM_InvokeGC
	.text
waitForWork.9F:
	movq	%r8, %rax
	jmp	gcTest123
	/* live= GP={%rax %rdi} spilled=  */
retGC122:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest123:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC124
waitForWorkCheck.121:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movabsq	$waitForWork.9F, %r9
	movq	%r9, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$262187, -8(%rsi)
	movq	(%rdi), %r12
	movq	%r12, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	8(%rdi), %r13
	movq	%r13, 24(%rsi)
	movq	%rsi, %r10
	addq	$40, %rsi
	movq	$131081, -8(%rsi)
	movq	%r10, (%rsi)
	movabsq	$lp1.125, %r15
	movq	%r15, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movabsq	$waitForWork.9F, %rdx
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$327729, -8(%rsi)
	movabsq	$letJoinK.126, %rbx
	movq	%rbx, (%rsi)
	movq	(%rdi), %r9
	movq	%r9, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	%rax, 24(%rsi)
	movq	8(%rdi), %r10
	movq	%r10, 32(%rsi)
	movq	%rsi, %r9
	addq	$48, %rsi
	movq	(%r14), %rdi
	xorl	%r8d, %r8d
	jmp	lp1.125
doGC124:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC122, %r8
	jmp	ASM_InvokeGC
	.text
then.12D:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rax, %r8
	jmp	letJoinK.12E
	/* live= GP={%r9 %r10 %rdi} spilled=  */
retGC128:
	movq	16(%rdi), %r9
	movl	8(%rdi), %r10d
	movq	(%rdi), %rdi
gcTest129:
	movq	%r11, %r13
	movq	448(%r13), %r12
	subq	%rsi, %r12
	jle	doGC12A
lp1Check.127:
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movabsq	$lp1.125, %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$524343, -8(%rsi)
	movabsq	$letJoinK.12E, %r14
	movq	%r14, (%rsi)
	movq	(%rdi), %r15
	movq	%r15, 8(%rsi)
	movq	8(%rdi), %rax
	movq	%rax, 16(%rsi)
	movq	16(%rdi), %rcx
	movq	%rcx, 24(%rsi)
	movq	%r12, 32(%rsi)
	movq	%r9, 40(%rsi)
	movq	24(%rdi), %rdx
	movq	%rdx, 48(%rsi)
	movl	%r10d, 56(%rsi)
	movq	%rsi, %rcx
	addq	$72, %rsi
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.132, %rbx
	movq	%rbx, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	24(%rdi), %r9
	cmpq	$1, 384(%r9)
	je	L_true133
else.12F:
	movq	$65537, -8(%rsi)
	movq	24(%rdi), %r15
	movq	%r15, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r14, (%rsi)
	movabsq	$lp.12C, %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	24(%rdi), %r9
	movq	384(%r9), %r15
	movq	24(%rdi), %r13
	leaq	384(%r13), %r10
	movq	%r15, %rax
	movq	$1, %r14
	movq	24(%rdi), %rdi
	lock
	cmpxchgq	%r14, 384(%rdi)
	cmpq	%rax, %r15
	je	L_true130
else.12B:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	(%rbx), %rdi
	movq	%rdx, %r8
	jmp	lp.12C
L_true130:
	movq	%rcx, %rdi
	jmp	then.12D
doGC12A:
	movq	$196661, -8(%rsi)
	movq	%rdi, (%rsi)
	movl	%r10d, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC128, %r8
	jmp	ASM_InvokeGC
L_true133:
	movq	%rcx, %rdi
then.131:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.12E
lp1.125:
	movq	%r8, %r10
	jmp	gcTest129
	.text
case.13D:
	/* Liveout:  GP={%rdi}  */
	movq	24(%rdi), %rdi
	movq	(%rdi), %r14
	jmp	*%r14
L146:
else.139:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.13A, %r9
	movq	%r9, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	48(%rdi), %r12
	movq	%r12, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	movq	(%r10), %rdi
	movq	16(%rbx), %r8
	jmp	append.13B
letJoinK.12E:
	movq	%r8, %rbx
	movq	$458809, -8(%rsi)
	movq	8(%rdi), %r14
	movq	%r14, (%rsi)
	movq	16(%rdi), %r15
	movq	%r15, 8(%rsi)
	movq	24(%rdi), %rax
	movq	%rax, 16(%rsi)
	movq	32(%rdi), %rcx
	movq	%rcx, 24(%rsi)
	movq	40(%rdi), %rdx
	movq	%rdx, 32(%rsi)
	movq	48(%rdi), %r9
	movq	%r9, 40(%rsi)
	movl	56(%rdi), %r10d
	movl	%r10d, 48(%rsi)
	movq	%rsi, %r13
	addq	$64, %rsi
	movq	$131081, -8(%rsi)
	movq	%r13, (%rsi)
	movabsq	$lp2.134, %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$393267, -8(%rsi)
	movabsq	$letJoinK.135, %r13
	movq	%r13, (%rsi)
	movq	24(%rdi), %r14
	movq	%r14, 8(%rsi)
	movq	32(%rdi), %r15
	movq	%r15, 16(%rsi)
	movq	40(%rdi), %rcx
	movq	%rcx, 24(%rsi)
	movq	%rax, 32(%rsi)
	movl	56(%rdi), %edx
	movl	%edx, 40(%rsi)
	movq	%rsi, %rdx
	addq	$56, %rsi
	cmpq	$1, %rbx
	je	L_true136
else.137:
	movq	48(%rdi), %r9
	movq	80(%r9), %rcx
	movq	$65539, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r10, (%rsi)
	movabsq	$append.13B, %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	cmpq	$1, %rbx
	jne	L146
L_true143:
then.13C:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	48(%rdi), %r13
	movq	%rcx, 80(%r13)
	movq	%rdx, %rdi
	movq	$3, %r8
	jmp	letJoinK.135
L_true136:
then.138:
	movq	$1, %r13
	cmpq	$1, %r13
	jne	L147
S_case144:
case.141:
	pause
	xorl	%r12d, %r12d
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.140, %r15
	movq	%r15, (%rsi)
	movq	32(%rdi), %rcx
	movq	%rcx, 8(%rsi)
	movq	40(%rdi), %rdx
	movq	%rdx, 16(%rsi)
	movl	56(%rdi), %ebx
	movl	%ebx, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	cmpl	$500, %r12d
	jle	L148
L_true142:
	movq	%r9, %rdi
then.13F:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, %rax
	jmp	letJoinK.140
L148:
else.13E:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	(%rax), %rdi
	movq	%r12, %r8
	incl	%r8d
	jmp	lp2.134
L147:
	cmpq	$3, %r13
	jne	S_case144
S_case145:
	jmp	case.13D
	.text
then.14E:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.14F, %r12
	movq	%r12, (%rsi)
	movq	8(%rax), %r13
	movq	%r13, 8(%rsi)
	movq	16(%rax), %r14
	movq	%r14, 16(%rsi)
	movq	40(%rax), %r15
	movq	%r15, 24(%rsi)
	movq	%rsi, %r10
	addq	$40, %rsi
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	%r10, %r8
	jmp	wakeupSleepingThreads.9E
retGC14A:
	movq	16(%rdi), %r9
	movl	8(%rdi), %ecx
	movq	(%rdi), %rdi
gcTest14B:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jle	doGC14C
lp2Check.149:
	cmpl	$500, %ecx
	jg	L_true153
else.150:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	%rcx, %r8
	incl	%r8d
lp2.134:
	movq	%r8, %rcx
	jmp	gcTest14B
doGC14C:
	movq	$196661, -8(%rsi)
	movq	%rdi, (%rsi)
	movl	%ecx, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC14A, %r8
	jmp	ASM_InvokeGC
L_true153:
	movq	%rdi, %rax
then.151:
	cmpl	$2000, 48(%rax)
	jg	then.14E
L154:
else.14D:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	24(%rax), %rdi
	movq	(%rdi), %rdi
	movl	48(%rax), %r9d
	movq	%r9, %r8
	incl	%r8d
	movq	32(%rax), %r9
	jmp	lp1.125
	.text
letJoinK.14F:
	movq	%r8, %rax
	jmp	gcTest157
L160:
letJoinKCheck.155:
	cmpq	$1, %rax
	jne	L15F
S_case15D:
case.15A:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$wakeupK.15B, %rdx
	movq	%rdx, (%rsi)
	movq	8(%rdi), %rbx
	movq	%rbx, 8(%rsi)
	movq	16(%rdi), %r9
	movq	%r9, 16(%rsi)
	movq	%rsi, %rcx
	addq	$32, %rsi
	movq	24(%rdi), %r10
	movq	%rcx, 56(%r10)
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r13
	movq	24(%rdi), %rdi
	call	SleepCont
	movq	%rax, %rdi
	movq	%r12, %r8
	movq	%r13, %r11
	movq	144(%rbx), %rsi
	movq	$65537, -8(%rsi)
	movq	$1000000, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	(%rdi), %r12
	jmp	*%r12
L15F:
	cmpq	$3, %rax
	jne	S_case15D
S_case15E:
case.159:
	/* Liveout:  GP={%rdi}  */
	movq	16(%rdi), %rdi
	movq	(%rdi), %rax
	jmp	*%rax
	/* live= GP={%rax %rdi} spilled=  */
retGC156:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest157:
	movq	%r11, %r15
	movq	448(%r15), %r14
	subq	%rsi, %r14
	jg	L160
doGC158:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC156, %r8
	jmp	ASM_InvokeGC
	.text
wakeupK.15B:
	jmp	gcTest163
	/* live= GP={%rax %rax} spilled=  */
retGC162:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest163:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC164
	movq	%rdi, %rax
wakeupKCheck.161:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rax), %rbx
	movq	(%rbx), %rdi
	movq	16(%rax), %r8
	jmp	waitForWork.9F
doGC164:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC162, %r8
	jmp	ASM_InvokeGC
	.text
retGC166:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdi
gcTest167:
	movq	%r11, %r9
	movq	448(%r9), %rbx
	subq	%rsi, %rbx
	jg	L173
doGC168:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC166, %r8
	jmp	ASM_InvokeGC
L174:
	cmpq	$3, %rcx
	jne	S_case171
S_case172:
case.169:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	movq	(%rdi), %r10
	jmp	*%r10
L173:
letJoinKCheck.165:
	cmpq	$1, %rcx
	jne	L174
S_case171:
	movq	%rdi, %rax
case.16F:
	pause
	xorl	%edx, %edx
	cmpl	$500, %edx
	jg	L_true170
	movq	$1, %r9
else.16C:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	32(%rax), %r14
	movq	(%r14), %rdi
	movq	%rdx, %r8
	incl	%r8d
	jmp	lp2.134
L_true170:
then.16D:
	cmpl	$2000, 40(%rax)
	jg	L_true16E
else.16A:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	16(%rax), %r12
	movq	(%r12), %rdi
	movl	40(%rax), %r13d
	movq	%r13, %r8
	incl	%r8d
	movq	24(%rax), %r9
	jmp	lp1.125
L_true16E:
then.16B:
	/* Liveout:  GP={%rdi}  */
	movq	24(%rax), %rdi
	jmp	letJoinK.126
letJoinK.135:
	movq	%r8, %rcx
	jmp	gcTest167
	/* live= GP={%rcx %rdi} spilled=  */
	jmp	retGC166
	.text
letJoinK.140:
	jmp	gcTest177
	/* live= GP={%rax %rdi} spilled=  */
retGC176:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest177:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	L17C
doGC178:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC176, %r8
	jmp	ASM_InvokeGC
L17C:
letJoinKCheck.175:
	cmpl	$2000, 24(%rdi)
	jle	L17D
L_true17B:
then.17A:
	/* Liveout:  GP={%rdi}  */
	movq	16(%rdi), %rdi
	jmp	letJoinK.126
L17D:
	movq	%rdi, %rax
else.179:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	8(%rax), %rbx
	movq	(%rbx), %rdi
	movl	24(%rax), %r9d
	movq	%r9, %r8
	incl	%r8d
	movq	16(%rax), %r9
	jmp	lp1.125
	.text
appendCheck.17E:
	cmpq	$1, %rcx
	jne	L186
L_true185:
	movq	%rdi, %rax
then.184:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r9), %r12
	movq	%r9, %rdi
	movq	(%rax), %r8
	jmp	*%r12
L186:
else.182:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.183, %r10
	movq	%r10, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	16(%rcx), %r8
append.13B:
	movq	%r8, %rcx
	jmp	gcTest180
retGC17F:
	movq	16(%rdi), %r9
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdi
gcTest180:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jg	appendCheck.17E
doGC181:
	movq	$196611, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC17F, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.183:
	movq	%r8, %rax
	jmp	gcTest18A
	/* live= GP={%rax %rdi} spilled=  */
retGC189:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest18A:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC18B
letJoinKCheck.188:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$196611, -8(%rsi)
	movq	8(%rdi), %r9
	movq	(%r9), %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	8(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r14
	movq	%rbx, %r8
	jmp	*%r14
doGC18B:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC189, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.13A:
	movq	%r8, %rax
	jmp	gcTest18E
	/* live= GP={%rax %rdi} spilled=  */
retGC18D:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest18E:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC18F
letJoinKCheck.18C:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$196611, -8(%rsi)
	movq	8(%rdi), %r9
	movq	(%r9), %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	8(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	24(%rdi), %r14
	movq	%rbx, 80(%r14)
	movq	16(%rdi), %rdi
	movq	$3, %r8
	jmp	letJoinK.135
doGC18F:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC18D, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.132:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r8, %rax
	movq	8(%rdi), %rdi
	movq	%rax, %r8
	jmp	letJoinK.12E
	.text
else.191:
gcTest195:
	movq	%r11, %r15
	movq	448(%r15), %rdx
	subq	%rsi, %rdx
	jg	L197
doGC196:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC194, %r8
	jmp	ASM_InvokeGC
L197:
elseCheck.193:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	%rcx, %r8
lp.12C:
	movq	%r8, %rcx
	movq	(%rdi), %r9
	movq	384(%r9), %rbx
	movq	(%rdi), %r12
	leaq	384(%r12), %r10
	movq	%rbx, %rax
	movq	$1, %r13
	movq	(%rdi), %r14
	lock
	cmpxchgq	%r13, 384(%r14)
	cmpq	%rax, %rbx
	je	L_true190
	jmp	else.191
L_true190:
then.192:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rcx, %rdi
	movq	%rax, %r8
	jmp	letJoinK.132
	/* live= GP={%rcx %rdi} spilled=  */
retGC194:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdi
	jmp	gcTest195
	.text
letJoinK.126:
	jmp	gcTest19A
	/* live= GP={%rdi} spilled=  */
retGC199:
	movq	(%rdi), %rdi
gcTest19A:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC19B
letJoinKCheck.198:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.19C, %rbx
	movq	%rbx, (%rsi)
	movq	16(%rdi), %r9
	movq	%r9, 8(%rsi)
	movq	24(%rdi), %r10
	movq	%r10, 16(%rsi)
	movq	32(%rdi), %r12
	movq	%r12, 24(%rsi)
	movq	%rsi, %rdx
	addq	$40, %rsi
	movq	8(%rdi), %r13
	movq	(%r13), %rdi
	movq	%rdx, %r8
	jmp	wakeupSleepingThreads.9E
doGC19B:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC199, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.19C:
	movq	%r8, %rax
	jmp	gcTest19F
L1A7:
letJoinKCheck.19D:
	cmpq	$1, %rax
	jne	L1A6
S_case1A4:
case.1A2:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$wakeupK.1A3, %rdx
	movq	%rdx, (%rsi)
	movq	8(%rdi), %rbx
	movq	%rbx, 8(%rsi)
	movq	16(%rdi), %r9
	movq	%r9, 16(%rsi)
	movq	%rsi, %rcx
	addq	$32, %rsi
	movq	24(%rdi), %r10
	movq	%rcx, 56(%r10)
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r13
	movq	24(%rdi), %rdi
	call	SleepCont
	movq	%rax, %rdi
	movq	%r12, %r8
	movq	%r13, %r11
	movq	144(%rbx), %rsi
	movq	$65537, -8(%rsi)
	movq	$1000000, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	(%rdi), %r12
	jmp	*%r12
L1A6:
	cmpq	$3, %rax
	jne	S_case1A4
S_case1A5:
case.1A1:
	/* Liveout:  GP={%rdi}  */
	movq	16(%rdi), %rdi
	movq	(%rdi), %rax
	jmp	*%rax
	/* live= GP={%rax %rdi} spilled=  */
retGC19E:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest19F:
	movq	%r11, %r15
	movq	448(%r15), %r14
	subq	%rsi, %r14
	jg	L1A7
doGC1A0:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC19E, %r8
	jmp	ASM_InvokeGC
	.text
wakeupK.1A3:
	jmp	gcTest1AA
	/* live= GP={%rax %rax} spilled=  */
retGC1A9:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest1AA:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC1AB
	movq	%rdi, %rax
wakeupKCheck.1A8:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rax), %rbx
	movq	(%rbx), %rdi
	movq	16(%rax), %r8
	jmp	waitForWork.9F
doGC1AB:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC1A9, %r8
	jmp	ASM_InvokeGC
	.text
else.1B0:
	jmp	letJoinK.1B1
L_true1BD:
then.1B2:
	movq	(%r12), %rdi
	movq	$196611, -8(%rsi)
	movq	(%rdi), %r12
	movq	%r12, (%rsi)
	movq	8(%rdi), %r13
	movq	%r13, 8(%rsi)
	movq	64(%rbx), %r14
	movq	88(%r14), %r15
	movq	%r15, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	64(%rbx), %rax
	movq	%r9, 88(%rax)
	jmp	letJoinK.1B1
L221:
else.1C3:
	movq	64(%rbx), %r13
	movq	104(%r13), %r15
	cmpq	$1, %r15
	jne	L_true1C4
else.1BC:
	movq	$1, %r12
	cmpq	$1, %r12
	jne	L_true1BD
letJoinK.1B1:
	/* Liveout:  GP={%rdi}  */
	/* flushLoads */
	movq	24(%r11), %rax
	movq	32(%rax), %r15
	movq	%r10, (%r15)
	movq	%rcx, %rdi
	jmp	dispatch.1CB
L_true1C4:
then.1BE:
	movq	64(%rbx), %r13
	movq	$1, 104(%r13)
	movq	16(%r15), %r9
	movq	$1, %rdx
	movq	$196611, -8(%rsi)
	movq	(%r15), %r14
	movq	%r14, (%rsi)
	movq	8(%r15), %r15
	movq	%r15, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.1BF, %r12
	movq	%r12, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	64(%rbx), %r13
	movq	%r13, 16(%rsi)
	movq	%rsi, %r13
	addq	$32, %rsi
	cmpq	$1, %r9
	je	L_true1C0
else.1B8:
	movq	16(%r9), %r14
	movq	$196611, -8(%rsi)
	movq	(%r9), %rdi
	movq	%rdi, (%rsi)
	movq	8(%r9), %r9
	movq	%r9, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	cmpq	$1, %r14
	jne	L21F
L_true1B9:
then.1B6:
	movq	64(%rbx), %rdx
	movq	%rax, 96(%rdx)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	cmpq	$1, %r15
	je	letJoinK.1B1
L_true1B7:
then.1B4:
	movq	(%r15), %rdx
	movq	$196611, -8(%rsi)
	movq	(%rdx), %r9
	movq	%r9, (%rsi)
	movq	8(%rdx), %r12
	movq	%r12, 8(%rsi)
	movq	64(%rbx), %r13
	movq	88(%r13), %r14
	movq	%r14, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movq	64(%rbx), %r15
	movq	%rdi, 88(%r15)
	jmp	letJoinK.1B1
L_true1C0:
then.1BA:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	64(%rbx), %r10
	movq	%rdx, 96(%r10)
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %r12
	addq	$16, %rsi
	movq	%r12, %r8
	jmp	letJoinK.1BB
L21F:
else.1B5:
	/* Liveout:  GP={%r13 %r12 %r10 %r9 %r8 %rdi}  */
	movq	16(%rbx), %rax
	movq	(%rax), %rdi
	movq	(%r14), %r8
	movq	8(%r14), %r9
	movq	16(%r14), %r10
	jmp	revQueue.48
switch.A0:
gcTest1AE:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC1AF
switchCheck.1AC:
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$revQueue.21D, %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	$327729, -8(%rsi)
	movabsq	$dispatch.1CB, %r13
	movq	%r13, (%rsi)
	movq	56(%rdi), %r14
	movq	%r14, 8(%rsi)
	movq	%rdi, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	64(%rdi), %r15
	movq	%r15, 32(%rsi)
	movq	%rsi, %rcx
	addq	$48, %rsi
	cmpq	$1, %rax
	jne	L_true21E
	movq	%rdi, %rbx
else.217:
	movq	$3, %r10
	movq	24(%r11), %rdi
	movq	32(%rdi), %rdx
	cmpq	$3, (%rdx)
	je	L_true218
else.1C7:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.1C8, %rax
	movq	%rax, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	8(%rbx), %rcx
	movq	(%rcx), %rdi
	movq	%r10, %r8
	movq	24(%rbx), %r10
	jmp	set_D_done_D_comm.16
L_true218:
then.1C9:
	movq	64(%rbx), %rdx
	movq	96(%rdx), %r13
	movq	$393275, -8(%rsi)
	movabsq	$letJoinK.1BB, %rdi
	movq	%rdi, (%rsi)
	movq	8(%rbx), %r9
	movq	%r9, 8(%rsi)
	movq	24(%rbx), %r12
	movq	%r12, 16(%rsi)
	movq	%rcx, 24(%rsi)
	movq	64(%rbx), %r14
	movq	%r14, 32(%rsi)
	movq	%r10, 40(%rsi)
	movq	%rsi, %rdi
	addq	$56, %rsi
	cmpq	$1, %r13
	je	L221
L_true1CA:
then.1C5:
	movq	16(%r13), %r14
	movq	64(%rbx), %r15
	movq	%r14, 96(%r15)
	movq	$65539, -8(%rsi)
	movq	%r13, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	cmpq	$1, %r14
	jne	L_true1C6
	jmp	letJoinK.1B1
L_true1C6:
then.1C2:
	movq	(%r14), %r14
	movq	$196611, -8(%rsi)
	movq	(%r14), %rax
	movq	%rax, (%rsi)
	movq	8(%r14), %rdx
	movq	%rdx, 8(%rsi)
	movq	64(%rbx), %rdi
	movq	88(%rdi), %r9
	movq	%r9, 16(%rsi)
	movq	%rsi, %r15
	addq	$32, %rsi
	movq	64(%rbx), %r12
	movq	%r15, 88(%r12)
	jmp	letJoinK.1B1
L_true21E:
	movq	%rdi, %rdx
then.219:
	movq	(%rax), %r9
	cmpq	$3, %r9
	je	S_case21A
	cmpq	$5, %r9
	je	S_case21B
	cmpq	$1, %r9
	je	S_case21C
default.216:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$65539, -8(%rsi)
	movabsq	$tag6D, %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	24(%rdx), %rdi
	movq	(%rdi), %rcx
	jmp	*%rcx
S_case21A:
case.214:
	movq	$524349, -8(%rsi)
	movabsq	$letJoinK.1FB, %rbx
	movq	%rbx, (%rsi)
	movq	32(%rdx), %rdi
	movq	%rdi, 8(%rsi)
	movq	40(%rdx), %r9
	movq	%r9, 16(%rsi)
	movq	%rcx, 24(%rsi)
	movq	8(%rax), %r10
	movq	%r10, 32(%rsi)
	movq	64(%rdx), %r12
	movq	%r12, 40(%rsi)
	movq	16(%rax), %r13
	movq	%r13, 48(%rsi)
	movq	$3, 56(%rsi)
	movq	%rsi, %rdi
	addq	$72, %rsi
	movq	24(%r11), %r15
	movq	32(%r15), %r14
	cmpq	$3, (%r14)
	jne	L222
L_true215:
then.212:
	movq	64(%rdx), %r15
	movq	96(%r15), %r12
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.205, %rax
	movq	%rax, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	64(%rdx), %rcx
	movq	%rcx, 16(%rsi)
	movq	%rsi, %r14
	addq	$32, %rsi
	cmpq	$1, %r12
	je	L223
L_true213:
then.20F:
	movq	16(%r12), %r13
	movq	64(%rdx), %r14
	movq	%r13, 96(%r14)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	cmpq	$1, %r15
	jne	L_true210
else.20B:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.1FB
L223:
else.20D:
	movq	64(%rdx), %r12
	movq	104(%r12), %rax
	cmpq	$1, %rax
	jne	L_true20E
else.206:
	movq	$1, %r10
	cmpq	$1, %r10
	jne	L_true207
else.1FA:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.1FB
L_true207:
then.1FC:
	/* Liveout:  GP={%rdi}  */
	movq	(%r10), %r13
	movq	$196611, -8(%rsi)
	movq	(%r13), %r15
	movq	%r15, (%rsi)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsi)
	movq	64(%rdx), %rcx
	movq	88(%rcx), %rbx
	movq	%rbx, 16(%rsi)
	movq	%rsi, %r14
	addq	$32, %rsi
	movq	64(%rdx), %r9
	movq	%r14, 88(%r9)
	jmp	letJoinK.1FB
L_true20E:
then.208:
	movq	64(%rdx), %r15
	movq	$1, 104(%r15)
	movq	16(%rax), %r9
	movq	$1, %rbx
	movq	$196611, -8(%rsi)
	movq	(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	8(%rax), %r10
	movq	%r10, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	%rsi, %rcx
	addq	$32, %rsi
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.209, %r12
	movq	%r12, (%rsi)
	movq	%r14, 8(%rsi)
	movq	64(%rdx), %r13
	movq	%r13, 16(%rsi)
	movq	%rsi, %r13
	addq	$32, %rsi
	cmpq	$1, %r9
	je	L_true20A
else.202:
	movq	16(%r9), %r14
	movq	$196611, -8(%rsi)
	movq	(%r9), %r10
	movq	%r10, (%rsi)
	movq	8(%r9), %r12
	movq	%r12, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	cmpq	$1, %r14
	jne	L224
L_true203:
then.200:
	movq	64(%rdx), %rbx
	movq	%rcx, 96(%rbx)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	cmpq	$1, %r15
	je	L225
L_true201:
then.1FE:
	/* Liveout:  GP={%rdi}  */
	movq	(%r15), %r10
	movq	$196611, -8(%rsi)
	movq	(%r10), %r13
	movq	%r13, (%rsi)
	movq	8(%r10), %r14
	movq	%r14, 8(%rsi)
	movq	64(%rdx), %r15
	movq	88(%r15), %rax
	movq	%rax, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	movq	64(%rdx), %rcx
	movq	%r12, 88(%rcx)
	jmp	letJoinK.1FB
L224:
else.1FF:
	/* Liveout:  GP={%r13 %r12 %r10 %r9 %r8 %rdi}  */
	movq	16(%rdx), %rdx
	movq	(%rdx), %rdi
	movq	(%r14), %r8
	movq	8(%r14), %r9
	movq	16(%r14), %r10
	jmp	revQueue.48
L225:
else.1FD:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.1FB
L_true20A:
	movq	%r14, %rdi
then.204:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	64(%rdx), %r13
	movq	%rbx, 96(%r13)
	movq	$65539, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	%r14, %r8
	jmp	letJoinK.205
L222:
else.211:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.1FB
L_true210:
then.20C:
	/* Liveout:  GP={%rdi}  */
	movq	(%r15), %r14
	movq	$196611, -8(%rsi)
	movq	(%r14), %rax
	movq	%rax, (%rsi)
	movq	8(%r14), %rcx
	movq	%rcx, 8(%rsi)
	movq	64(%rdx), %rbx
	movq	88(%rbx), %r9
	movq	%r9, 16(%rsi)
	movq	%rsi, %r15
	addq	$32, %rsi
	movq	64(%rdx), %r10
	movq	%r15, 88(%r10)
	jmp	letJoinK.1FB
S_case21B:
case.1F8:
	movq	$393275, -8(%rsi)
	movabsq	$letJoinK.1DF, %r15
	movq	%r15, (%rsi)
	movq	48(%rdx), %rbx
	movq	%rbx, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	8(%rax), %rdi
	movq	%rdi, 24(%rsi)
	movq	64(%rdx), %r9
	movq	%r9, 32(%rsi)
	movq	$3, 40(%rsi)
	movq	%rsi, %rdi
	addq	$56, %rsi
	movq	24(%r11), %r12
	movq	32(%r12), %r10
	cmpq	$3, (%r10)
	je	L_true1F9
else.1F5:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.1DF
L_true1F9:
then.1F6:
	movq	64(%rdx), %r12
	movq	96(%r12), %rax
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.1E9, %r13
	movq	%r13, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	64(%rdx), %r14
	movq	%r14, 16(%rsi)
	movq	%rsi, %rcx
	addq	$32, %rsi
	cmpq	$1, %rax
	jne	L_true1F7
else.1F1:
	movq	64(%rdx), %rbx
	movq	104(%rbx), %r9
	cmpq	$1, %r9
	jne	L_true1F2
else.1EA:
	movq	$1, %r15
	cmpq	$1, %r15
	je	L226
L_true1EB:
then.1E0:
	/* Liveout:  GP={%rdi}  */
	movq	(%r15), %rcx
	movq	$196611, -8(%rsi)
	movq	(%rcx), %r9
	movq	%r9, (%rsi)
	movq	8(%rcx), %r10
	movq	%r10, 8(%rsi)
	movq	64(%rdx), %r12
	movq	88(%r12), %r13
	movq	%r13, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	64(%rdx), %r14
	movq	%rbx, 88(%r14)
	jmp	letJoinK.1DF
L226:
else.1DE:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.1DF
L_true1F7:
then.1F3:
	movq	16(%rax), %r9
	movq	64(%rdx), %r10
	movq	%r9, 96(%r10)
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	cmpq	$1, %rbx
	jne	L_true1F4
else.1EF:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.1DF
L_true1F4:
then.1F0:
	/* Liveout:  GP={%rdi}  */
	movq	(%rbx), %r9
	movq	$196611, -8(%rsi)
	movq	(%r9), %r12
	movq	%r12, (%rsi)
	movq	8(%r9), %r13
	movq	%r13, 8(%rsi)
	movq	64(%rdx), %r14
	movq	88(%r14), %r15
	movq	%r15, 16(%rsi)
	movq	%rsi, %r10
	addq	$32, %rsi
	movq	64(%rdx), %rax
	movq	%r10, 88(%rax)
	jmp	letJoinK.1DF
L_true1F2:
then.1EC:
	movq	64(%rdx), %r12
	movq	$1, 104(%r12)
	movq	16(%r9), %r14
	movq	$1, %r12
	movq	$196611, -8(%rsi)
	movq	(%r9), %r13
	movq	%r13, (%rsi)
	movq	8(%r9), %r15
	movq	%r15, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rsi, %r10
	addq	$32, %rsi
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.1ED, %rax
	movq	%rax, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	64(%rdx), %rbx
	movq	%rbx, 16(%rsi)
	movq	%rsi, %r13
	addq	$32, %rsi
	cmpq	$1, %r14
	jne	L227
L_true1EE:
	movq	%rcx, %rdi
then.1E8:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	64(%rdx), %r9
	movq	%r12, 96(%r9)
	movq	$65539, -8(%rsi)
	movq	%r10, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	%r10, %r8
	jmp	letJoinK.1E9
L227:
else.1E6:
	movq	16(%r14), %rax
	movq	$196611, -8(%rsi)
	movq	(%r14), %rcx
	movq	%rcx, (%rsi)
	movq	8(%r14), %rbx
	movq	%rbx, 8(%rsi)
	movq	%r10, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	cmpq	$1, %rax
	je	L_true1E7
else.1E3:
	/* Liveout:  GP={%r13 %r12 %r10 %r9 %r8 %rdi}  */
	movq	16(%rdx), %r14
	movq	(%r14), %rdi
	movq	(%rax), %r8
	movq	8(%rax), %r9
	movq	16(%rax), %r10
	jmp	revQueue.48
L_true1E7:
then.1E4:
	movq	64(%rdx), %r15
	movq	%r10, 96(%r15)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	cmpq	$1, %rcx
	jne	L_true1E5
else.1E1:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.1DF
L_true1E5:
then.1E2:
	/* Liveout:  GP={%rdi}  */
	movq	(%rcx), %r15
	movq	$196611, -8(%rsi)
	movq	(%r15), %rcx
	movq	%rcx, (%rsi)
	movq	8(%r15), %rbx
	movq	%rbx, 8(%rsi)
	movq	64(%rdx), %r9
	movq	88(%r9), %r10
	movq	%r10, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	64(%rdx), %r12
	movq	%rax, 88(%r12)
	jmp	letJoinK.1DF
S_case21C:
case.1DC:
	movq	8(%rax), %rdi
	movq	$1, %rbx
	movq	24(%r11), %rax
	movq	32(%rax), %r15
	cmpq	$3, (%r15)
	je	L_true1DD
else.1CC:
	movq	$3, %r10
letJoinK.1CD:
	/* flushLoads */
	movq	24(%r11), %r13
	movq	32(%r13), %r12
	movq	%rbx, (%r12)
	movq	64(%rdx), %r14
	movq	24(%r14), %r9
	cmpq	$1, %r10
	jne	L228
S_case1DA:
case.1D1:
	movq	$196611, -8(%rsi)
	movq	%r9, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	64(%rdx), %r13
	movq	88(%r13), %r14
	movq	%r14, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	movq	64(%rdx), %r15
	movq	%r12, 88(%r15)
	jmp	letJoinK.1D0
L228:
	cmpq	$3, %r10
	jne	S_case1DA
S_case1DB:
case.1CF:
	movq	$196611, -8(%rsi)
	movq	%r9, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	64(%rdx), %rdi
	movq	104(%rdi), %r9
	movq	%r9, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	64(%rdx), %r10
	movq	%rbx, 104(%r10)
letJoinK.1D0:
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.1D5, %rbx
	movq	%rbx, (%rsi)
	movq	48(%rdx), %rdi
	movq	%rdi, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	64(%rdx), %r9
	movq	%r9, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movq	64(%rdx), %r10
	cmpq	$1, 384(%r10)
	jne	L229
L_true1D9:
then.1D8:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.1D5
L229:
else.1D6:
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	64(%rdx), %rcx
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movabsq	$lp.1D3, %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	64(%rdx), %r10
	movq	384(%r10), %r9
	movq	64(%rdx), %r15
	leaq	384(%r15), %r14
	movq	%r9, %rax
	movq	$1, %rcx
	movq	64(%rdx), %rdx
	lock
	cmpxchgq	%rcx, 384(%rdx)
	cmpq	%rax, %r9
	je	L_true1D7
else.1D2:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	(%r12), %rdi
	movq	$1, %r8
	jmp	lp.1D3
L_true1D7:
then.1D4:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rax, %r8
	jmp	letJoinK.1D5
L_true1DD:
then.1CE:
	movq	$1, %r10
	jmp	letJoinK.1CD
doGC1AF:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC1AD, %r8
	jmp	ASM_InvokeGC
retGC1AD:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	jmp	gcTest1AE
else.1C1:
	jmp	letJoinK.1B1
else.1B3:
	jmp	letJoinK.1B1
	.text
revQueue.21D:
	movq	%r8, %rcx
	jmp	gcTest22C
	/* live= GP={%r13 %r12 %r10 %r9 %rcx %rdi} spilled=  */
retGC22B:
	movq	40(%rdi), %r13
	movq	32(%rdi), %r12
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdi
gcTest22C:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jle	doGC22D
revQueueCheck.22A:
	movq	$196611, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	cmpq	$1, %r10
	jne	L236
L_true235:
	movq	%r13, %rdi
then.233:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r12, %r8
	jmp	letJoinK.234
doGC22D:
	movq	$393219, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%r12, 32(%rsi)
	movq	%r13, 40(%rsi)
	movq	%rsi, %rdi
	addq	$56, %rsi
	movabsq	$retGC22B, %r8
	jmp	ASM_InvokeGC
L236:
else.22E:
gcTest231:
	movq	%r11, %r9
	movq	448(%r9), %rax
	subq	%rsi, %rax
	jg	L237
doGC232:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%r13, 16(%rsi)
	movq	%r12, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC230, %r8
	jmp	ASM_InvokeGC
L237:
elseCheck.22F:
	/* Liveout:  GP={%r13 %r12 %r10 %r9 %r8 %rdi}  */
	movq	(%r10), %r8
	movq	8(%r10), %r9
	movq	16(%r10), %r10
	jmp	revQueue.21D
	/* live= GP={%r12 %r13 %r10 %rdi} spilled=  */
retGC230:
	movq	24(%rdi), %r12
	movq	16(%rdi), %r13
	movq	8(%rdi), %r10
	movq	(%rdi), %rdi
	jmp	gcTest231
	.text
retGC239:
	movq	(%rdi), %rdi
	jmp	gcTest23A
L_true246:
	movq	%rax, %rdi
then.243:
	movq	32(%rdx), %r15
	movq	$1, 88(%r15)
	movq	16(%rbx), %r12
	movq	$1, %r10
	movq	$196611, -8(%rsi)
	movq	(%rbx), %rax
	movq	%rax, (%rsi)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	movq	%r10, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.234, %rbx
	movq	%rbx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	32(%rdx), %r13
	movq	%r13, 16(%rsi)
	movq	%rsi, %r13
	addq	$32, %rsi
	cmpq	$1, %r12
	je	L_true244
else.23F:
	movq	16(%r12), %r14
	movq	$196611, -8(%rsi)
	movq	(%r12), %r10
	movq	%r10, (%rsi)
	movq	8(%r12), %r12
	movq	%r12, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	cmpq	$1, %r14
	je	L_true240
else.23C:
	/* Liveout:  GP={%r13 %r12 %r10 %r9 %r8 %rdi}  */
	movq	24(%rdx), %rcx
	movq	(%rcx), %rdi
	movq	(%r14), %r8
	movq	8(%r14), %r9
	movq	16(%r14), %r10
	jmp	revQueue.21D
L_true240:
then.23D:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	32(%rdx), %rdx
	movq	%r9, 80(%rdx)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	%rbx, %r8
	jmp	letJoinK.23E
L_true244:
then.241:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	32(%rdx), %r13
	movq	%r10, 80(%r13)
	movq	$65539, -8(%rsi)
	movq	%r9, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	%r14, %r8
	jmp	letJoinK.23E
dispatch.1CB:
gcTest23A:
	movq	%r11, %rax
	movq	448(%rax), %r15
	subq	%rsi, %r15
	jle	doGC23B
dispatchCheck.238:
	movq	32(%rdi), %r9
	movq	80(%r9), %rcx
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$revQueue.248, %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	$393267, -8(%rsi)
	movabsq	$letJoinK.23E, %r13
	movq	%r13, (%rsi)
	movq	8(%rdi), %r14
	movq	%r14, 8(%rsi)
	movq	16(%rdi), %r15
	movq	%r15, 16(%rsi)
	movq	%rdi, 24(%rsi)
	movq	%r10, 32(%rsi)
	movq	32(%rdi), %rax
	movq	%rax, 40(%rsi)
	movq	%rsi, %rax
	addq	$56, %rsi
	cmpq	$1, %rcx
	je	L24A
L_true249:
then.247:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rcx), %r15
	movq	32(%rdi), %rdx
	movq	%r15, 80(%rdx)
	movq	$65539, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r8
	jmp	letJoinK.23E
L24A:
	movq	%rdi, %rdx
else.245:
	movq	32(%rdx), %r14
	movq	88(%r14), %rbx
	cmpq	$1, %rbx
	jne	L_true246
	movq	%rax, %rdi
else.242:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.23E
doGC23B:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC239, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%rdi} spilled=  */
	jmp	retGC239
	.text
revQueueCheck.24B:
	movq	$196611, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	cmpq	$1, %r10
	jne	L253
L_true252:
	movq	%r13, %rdi
then.250:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r12, %r8
	jmp	letJoinK.251
L253:
else.24F:
	/* Liveout:  GP={%r13 %r12 %r10 %r9 %r8 %rdi}  */
	movq	(%r10), %r8
	movq	8(%r10), %r9
	movq	16(%r10), %r10
revQueue.248:
	movq	%r8, %rax
	jmp	gcTest24D
retGC24C:
	movq	40(%rdi), %r13
	movq	32(%rdi), %r12
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest24D:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	revQueueCheck.24B
doGC24E:
	movq	$393219, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%r12, 32(%rsi)
	movq	%r13, 40(%rsi)
	movq	%rsi, %rdi
	addq	$56, %rsi
	movabsq	$retGC24C, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.23E:
	movq	%r8, %rax
	jmp	gcTest257
	/* live= GP={%rax %rdi} spilled=  */
retGC256:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest257:
	movq	%r11, %r10
	movq	448(%r10), %r9
	subq	%rsi, %r9
	jg	L279
doGC258:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC256, %r8
	jmp	ASM_InvokeGC
L279:
letJoinKCheck.255:
	cmpq	$1, %rax
	jne	L_true278
	movq	%rdi, %rdx
else.270:
	movq	40(%rdx), %rbx
	movq	96(%rbx), %rdi
	cmpq	$1, %rdi
	jne	L_true271
else.269:
	movq	40(%rdx), %rbx
	movq	104(%rbx), %r10
	cmpq	$1, %r10
	jne	L_true26A
else.262:
	movq	$1, %rcx
	cmpq	$1, %rcx
	jne	L_true263
else.259:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.25A, %r13
	movq	%r13, (%rsi)
	movq	24(%rdx), %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	8(%rdx), %r15
	movq	(%r15), %rdi
	movq	%r12, %r8
	jmp	waitForWork.9F
L_true26A:
then.264:
	movq	40(%rdx), %r12
	movq	$1, 104(%r12)
	movq	16(%r10), %rax
	movq	$1, %r15
	movq	$196611, -8(%rsi)
	movq	(%r10), %r13
	movq	%r13, (%rsi)
	movq	8(%r10), %r14
	movq	%r14, 8(%rsi)
	movq	%r15, 16(%rsi)
	movq	%rsi, %r14
	addq	$32, %rsi
	movq	$327729, -8(%rsi)
	movabsq	$letJoinK.251, %rcx
	movq	%rcx, (%rsi)
	movq	8(%rdx), %rbx
	movq	%rbx, 8(%rsi)
	movq	16(%rdx), %rdi
	movq	%rdi, 16(%rsi)
	movq	24(%rdx), %r9
	movq	%r9, 24(%rsi)
	movq	40(%rdx), %r10
	movq	%r10, 32(%rsi)
	movq	%rsi, %r13
	addq	$48, %rsi
	cmpq	$1, %rax
	je	L_true265
else.25F:
	movq	16(%rax), %rbx
	movq	$196611, -8(%rsi)
	movq	(%rax), %rdi
	movq	%rdi, (%rsi)
	movq	8(%rax), %r9
	movq	%r9, 8(%rsi)
	movq	%r14, 16(%rsi)
	movq	%rsi, %r12
	addq	$32, %rsi
	cmpq	$1, %rbx
	jne	L27A
L_true260:
then.25D:
	movq	40(%rdx), %rbx
	movq	%r14, 96(%rbx)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	jmp	letJoinK.25E
L_true265:
then.261:
	movq	40(%rdx), %r10
	movq	%r15, 96(%r10)
	movq	$65539, -8(%rsi)
	movq	%r14, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
letJoinK.25E:
	cmpq	$1, %rbx
	jne	L_true277
else.274:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.275, %r10
	movq	%r10, (%rsi)
	movq	24(%rdx), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	8(%rdx), %r13
	movq	(%r13), %rdi
	movq	%r9, %r8
	jmp	waitForWork.9F
L_true277:
then.276:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rbx), %r14
	movq	8(%r14), %rdi
	movq	(%r14), %r15
	movq	40(%rdx), %rax
	movq	%r15, 24(%rax)
	movq	$131075, -8(%rsi)
	movq	16(%rdx), %rbx
	movq	%rbx, (%rsi)
	movq	40(%rdx), %r9
	movq	32(%r9), %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	40(%rdx), %r12
	movq	%rcx, 32(%r12)
	movq	40(%rdx), %r13
	movq	$1, (%r13)
	movq	(%rdi), %r14
	movq	$1, %rax
	jmp	*%r14
L27A:
else.25C:
	/* Liveout:  GP={%r13 %r12 %r10 %r9 %r8 %rdi}  */
	movq	32(%rdx), %rdx
	movq	(%rdx), %rdi
	movq	(%rbx), %r8
	movq	8(%rbx), %r9
	movq	16(%rbx), %r10
	jmp	revQueue.248
L_true263:
then.25B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rcx), %rax
	movq	8(%rax), %rdi
	movq	(%rax), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 24(%rbx)
	movq	$131075, -8(%rsi)
	movq	16(%rdx), %r10
	movq	%r10, (%rsi)
	movq	40(%rdx), %r12
	movq	32(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	40(%rdx), %r14
	movq	%r9, 32(%r14)
	movq	40(%rdx), %r15
	movq	$1, (%r15)
	movq	(%rdi), %rcx
	movq	$1, %rax
	jmp	*%rcx
L_true271:
then.26B:
	movq	16(%rdi), %r9
	movq	40(%rdx), %r10
	movq	%r9, 96(%r10)
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %r9
	addq	$16, %rsi
	cmpq	$1, %r9
	jne	L_true26C
else.266:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.267, %r13
	movq	%r13, (%rsi)
	movq	24(%rdx), %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	8(%rdx), %r15
	movq	(%r15), %rdi
	movq	%r12, %r8
	jmp	waitForWork.9F
L_true26C:
then.268:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%r9), %rax
	movq	8(%rax), %rdi
	movq	(%rax), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 24(%rbx)
	movq	$131075, -8(%rsi)
	movq	16(%rdx), %r10
	movq	%r10, (%rsi)
	movq	40(%rdx), %r12
	movq	32(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	40(%rdx), %r14
	movq	%r9, 32(%r14)
	movq	40(%rdx), %r15
	movq	$1, (%r15)
	movq	(%rdi), %rcx
	movq	$1, %rax
	jmp	*%rcx
L_true278:
	movq	%rdi, %rcx
then.272:
	cmpq	$1, %rax
	jne	L_true273
else.26D:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.26E, %r13
	movq	%r13, (%rsi)
	movq	24(%rcx), %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	8(%rcx), %r15
	movq	(%r15), %rdi
	movq	%r12, %r8
	jmp	waitForWork.9F
L_true273:
then.26F:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	(%rax), %rdx
	movq	40(%rcx), %rbx
	movq	%rdx, 24(%rbx)
	movq	$131075, -8(%rsi)
	movq	16(%rcx), %r10
	movq	%r10, (%rsi)
	movq	40(%rcx), %r12
	movq	32(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	40(%rcx), %r14
	movq	%r9, 32(%r14)
	movq	40(%rcx), %r15
	movq	$1, (%r15)
	movq	(%rdi), %rcx
	movq	$1, %rax
	jmp	*%rcx
	.text
letJoinK.275:
	jmp	gcTest27D
	/* live= GP={%rdi} spilled=  */
retGC27C:
	movq	(%rdi), %rdi
gcTest27D:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC27E
letJoinKCheck.27B:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC27E:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC27C, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.26E:
	jmp	gcTest281
	/* live= GP={%rdi} spilled=  */
retGC280:
	movq	(%rdi), %rdi
gcTest281:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC282
letJoinKCheck.27F:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC282:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC280, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.267:
	jmp	gcTest285
	/* live= GP={%rdi} spilled=  */
retGC284:
	movq	(%rdi), %rdi
gcTest285:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC286
letJoinKCheck.283:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC286:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC284, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.251:
	movq	%r8, %rdx
	jmp	gcTest289
	/* live= GP={%rdx %rdi} spilled=  */
retGC288:
	movq	8(%rdi), %rdx
	movq	(%rdi), %rdi
gcTest289:
	movq	%r11, %r9
	movq	448(%r9), %rbx
	subq	%rsi, %rbx
	jg	L28F
doGC28A:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC288, %r8
	jmp	ASM_InvokeGC
L28F:
letJoinKCheck.287:
	movq	16(%rdx), %rax
	movq	32(%rdi), %rcx
	movq	%rax, 96(%rcx)
	movq	$65539, -8(%rsi)
	movq	%rdx, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	cmpq	$1, %rax
	je	L290
L_true28E:
	movq	%rdi, %rcx
then.28D:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rax), %r15
	movq	8(%r15), %rdi
	movq	(%r15), %rax
	movq	32(%rcx), %rdx
	movq	%rax, 24(%rdx)
	movq	$131075, -8(%rsi)
	movq	16(%rcx), %r9
	movq	%r9, (%rsi)
	movq	32(%rcx), %r10
	movq	32(%r10), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	32(%rcx), %r13
	movq	%rbx, 32(%r13)
	movq	32(%rcx), %r14
	movq	$1, (%r14)
	movq	(%rdi), %r15
	movq	$1, %rax
	jmp	*%r15
L290:
else.28B:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.28C, %r12
	movq	%r12, (%rsi)
	movq	24(%rdi), %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	8(%rdi), %r14
	movq	(%r14), %rdi
	movq	%r10, %r8
	jmp	waitForWork.9F
	.text
letJoinK.28C:
	jmp	gcTest293
	/* live= GP={%rdi} spilled=  */
retGC292:
	movq	(%rdi), %rdi
gcTest293:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC294
letJoinKCheck.291:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC294:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC292, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.25A:
	jmp	gcTest297
	/* live= GP={%rdi} spilled=  */
retGC296:
	movq	(%rdi), %rdi
gcTest297:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC298
letJoinKCheck.295:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC298:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC296, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.234:
	movq	%r8, %rax
	jmp	gcTest29B
	/* live= GP={%rax %rdi} spilled=  */
retGC29A:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest29B:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC29C
letJoinKCheck.299:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rax), %rbx
	movq	16(%rdi), %r9
	movq	%rbx, 80(%r9)
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%r10, %r8
	jmp	letJoinK.23E
doGC29C:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC29A, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.1FB:
	jmp	gcTest29F
	/* live= GP={%rbx} spilled=  */
retGC29E:
	movq	(%rdi), %rdi
gcTest29F:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC2A0
	movq	%rdi, %rbx
letJoinKCheck.29D:
	/* Liveout:  GP={%rdi}  */
	/* flushLoads */
	/* flushLoads */
	movq	24(%r11), %r9
	movq	32(%r9), %rdx
	movq	56(%rbx), %rdi
	movq	%rdi, (%rdx)
	movq	$65537, -8(%rsi)
	movq	8(%rbx), %r14
	movq	(%r14), %r13
	movq	48(%rbx), %r15
	leaq	(%r13,%r15,1), %r12
	movq	%r12, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	$196611, -8(%rsi)
	movq	40(%rbx), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, (%rsi)
	movq	32(%rbx), %rdi
	movq	%rdi, 8(%rsi)
	movq	%r10, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	$131075, -8(%rsi)
	movq	%rax, (%rsi)
	movq	16(%rbx), %r9
	movq	(%r9), %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r12, %r11
	movq	144(%r14), %rsi
	movq	40(%rbx), %rdx
	movq	8(%rbx), %r9
	movq	(%r9), %rdi
	movq	48(%rbx), %r10
	leaq	(%rdi,%r10,1), %r13
	movq	16(%rbx), %r12
	movq	16(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	24(%rbx), %rdi
	jmp	dispatch.1CB
doGC2A0:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC29E, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.205:
	movq	%r8, %rax
	jmp	gcTest2A3
	/* live= GP={%rax %rdi} spilled=  */
retGC2A2:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2A3:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	L2A8
doGC2A4:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2A2, %r8
	jmp	ASM_InvokeGC
L2A8:
letJoinKCheck.2A1:
	cmpq	$1, %rax
	je	L2A9
L_true2A7:
then.2A6:
	/* Liveout:  GP={%rdi}  */
	movq	(%rax), %rbx
	movq	$196611, -8(%rsi)
	movq	(%rbx), %r10
	movq	%r10, (%rsi)
	movq	8(%rbx), %r12
	movq	%r12, 8(%rsi)
	movq	16(%rdi), %r13
	movq	88(%r13), %r14
	movq	%r14, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	16(%rdi), %r15
	movq	%r9, 88(%r15)
	movq	8(%rdi), %rdi
	jmp	letJoinK.1FB
L2A9:
else.2A5:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	letJoinK.1FB
	.text
letJoinK.209:
	movq	%r8, %rax
	jmp	gcTest2AC
	/* live= GP={%rax %rdi} spilled=  */
retGC2AB:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2AC:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC2AD
letJoinKCheck.2AA:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rax), %rbx
	movq	16(%rdi), %r9
	movq	%rbx, 96(%r9)
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%r10, %r8
	jmp	letJoinK.205
doGC2AD:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2AB, %r8
	jmp	ASM_InvokeGC
	.text
then.2B4:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rax, %r8
	jmp	letJoinK.2B5
	/* live= GP={%rdi} spilled=  */
retGC2AF:
	movq	(%rdi), %rdi
gcTest2B0:
	movq	%r11, %r9
	movq	448(%r9), %rbx
	subq	%rsi, %rbx
	jle	doGC2B1
letJoinKCheck.2AE:
	/* flushLoads */
	movq	24(%r11), %r15
	movq	32(%r15), %r13
	movq	40(%rdi), %r14
	movq	%r14, (%r13)
	movq	$196611, -8(%rsi)
	movq	32(%rdi), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, (%rsi)
	movq	24(%rdi), %rbx
	movq	%rbx, 8(%rsi)
	movq	32(%rdi), %r9
	movq	88(%r9), %r10
	movq	%r10, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	32(%rdi), %r12
	movq	%rax, 88(%r12)
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.2B5, %r13
	movq	%r13, (%rsi)
	movq	8(%rdi), %r14
	movq	%r14, 8(%rsi)
	movq	16(%rdi), %r15
	movq	%r15, 16(%rsi)
	movq	32(%rdi), %rax
	movq	%rax, 24(%rsi)
	movq	%rsi, %rcx
	addq	$40, %rsi
	movq	32(%rdi), %rdx
	cmpq	$1, 384(%rdx)
	je	L_true2B9
else.2B6:
	movq	$131081, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	32(%rdi), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%r10, (%rsi)
	movabsq	$lp.2B3, %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	32(%rdi), %r15
	movq	384(%r15), %r14
	movq	32(%rdi), %r9
	leaq	384(%r9), %rbx
	movq	%r14, %rax
	movq	$1, %r10
	movq	32(%rdi), %r12
	lock
	cmpxchgq	%r10, 384(%r12)
	cmpq	%rax, %r14
	je	L_true2B7
else.2B2:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	(%rdx), %rdi
	movq	$1, %r8
	jmp	lp.2B3
L_true2B7:
	movq	%rcx, %rdi
	jmp	then.2B4
doGC2B1:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC2AF, %r8
	jmp	ASM_InvokeGC
L_true2B9:
	movq	%rcx, %rdi
then.2B8:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.2B5
letJoinK.1DF:
	jmp	gcTest2B0
	.text
letJoinK.2B5:
	movq	%r8, %rdx
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.2BA, %r9
	movq	%r9, (%rsi)
	movq	8(%rdi), %r10
	movq	%r10, 8(%rsi)
	movq	16(%rdi), %r12
	movq	%r12, 16(%rsi)
	movq	%rsi, %rcx
	addq	$32, %rsi
	cmpq	$1, %rdx
	je	L_true2BB
else.2BC:
	movq	24(%rdi), %rax
	movq	80(%rax), %rax
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%rbx, (%rsi)
	movabsq	$append.2C0, %r9
	movq	%r9, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	cmpq	$1, %rdx
	je	L_true2C2
else.2BE:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.2BF, %r13
	movq	%r13, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	24(%rdi), %r14
	movq	%r14, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	movq	(%rbx), %rdi
	movq	16(%rdx), %r8
	jmp	append.2C0
L_true2BB:
then.2BD:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.2C3, %r12
	movq	%r12, (%rsi)
	movq	16(%rdi), %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	8(%rdi), %r14
	movq	(%r14), %rdi
	movq	%r10, %r8
	jmp	wakeupSleepingThreads.9E
L_true2C2:
then.2C1:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	24(%rdi), %r15
	movq	%rax, 80(%r15)
	movq	%rcx, %rdi
	movq	$1, %r8
	jmp	letJoinK.2BA
	.text
letJoinK.2BA:
	movq	%r8, %rax
	jmp	gcTest2C6
	/* live= GP={%rax %rdi} spilled=  */
retGC2C5:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2C6:
	movq	%r11, %rbx
	movq	448(%rbx), %rcx
	subq	%rsi, %rcx
	jle	doGC2C7
letJoinKCheck.2C4:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.2C8, %r10
	movq	%r10, (%rsi)
	movq	16(%rdi), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	8(%rdi), %rdx
	movq	(%rdx), %rdi
	movq	%r9, %r8
	jmp	wakeupSleepingThreads.9E
doGC2C7:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2C5, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.2C8:
	movq	%r8, %rax
	jmp	gcTest2CB
	/* live= GP={%rax %rdi} spilled=  */
retGC2CA:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2CB:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC2CC
letJoinKCheck.2C9:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC2CC:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2CA, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.2C3:
	movq	%r8, %rax
	jmp	gcTest2CF
	/* live= GP={%rax %rdi} spilled=  */
retGC2CE:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2CF:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC2D0
letJoinKCheck.2CD:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC2D0:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2CE, %r8
	jmp	ASM_InvokeGC
	.text
else.2D2:
gcTest2D6:
	movq	%r11, %rbx
	movq	448(%rbx), %rcx
	subq	%rsi, %rcx
	jg	L2D9
doGC2D7:
	movq	$196611, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC2D5, %r8
	jmp	ASM_InvokeGC
L2D9:
elseCheck.2D4:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.2D8, %r10
	movq	%r10, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	16(%rax), %r8
append.2C0:
	movq	%r8, %rax
	cmpq	$1, %rax
	je	L_true2D1
	jmp	else.2D2
L_true2D1:
	movq	%rdi, %rdx
then.2D3:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r9), %r12
	movq	%r9, %rdi
	movq	(%rdx), %r8
	jmp	*%r12
	/* live= GP={%r9 %rax %rdi} spilled=  */
retGC2D5:
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	jmp	gcTest2D6
	.text
letJoinK.2D8:
	movq	%r8, %rax
	jmp	gcTest2DC
	/* live= GP={%rax %rdi} spilled=  */
retGC2DB:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2DC:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC2DD
letJoinKCheck.2DA:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$196611, -8(%rsi)
	movq	8(%rdi), %r9
	movq	(%r9), %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	8(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r14
	movq	%rbx, %r8
	jmp	*%r14
doGC2DD:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2DB, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.2BF:
	movq	%r8, %rax
	jmp	gcTest2E0
	/* live= GP={%rax %rdi} spilled=  */
retGC2DF:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2E0:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC2E1
letJoinKCheck.2DE:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$196611, -8(%rsi)
	movq	8(%rdi), %r9
	movq	(%r9), %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	8(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	24(%rdi), %r14
	movq	%rbx, 80(%r14)
	movq	16(%rdi), %rdi
	movq	$1, %r8
	jmp	letJoinK.2BA
doGC2E1:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2DF, %r8
	jmp	ASM_InvokeGC
	.text
else.2E3:
gcTest2E7:
	movq	%r11, %r14
	movq	448(%r14), %rax
	subq	%rsi, %rax
	jg	L2E9
doGC2E8:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC2E6, %r8
	jmp	ASM_InvokeGC
L2E9:
elseCheck.2E5:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	$1, %r8
lp.2B3:
	movq	8(%rdi), %rbx
	movq	384(%rbx), %rdx
	movq	8(%rdi), %r10
	leaq	384(%r10), %r9
	movq	%rdx, %rax
	movq	$1, %r12
	movq	8(%rdi), %r13
	lock
	cmpxchgq	%r12, 384(%r13)
	cmpq	%rax, %rdx
	je	L_true2E2
	jmp	else.2E3
L_true2E2:
then.2E4:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%rdi), %rdi
	movq	%rax, %r8
	jmp	letJoinK.2B5
	/* live= GP={%rdi} spilled=  */
retGC2E6:
	movq	(%rdi), %rdi
	jmp	gcTest2E7
	.text
letJoinK.1E9:
	movq	%r8, %rax
	jmp	gcTest2EC
	/* live= GP={%rax %rdi} spilled=  */
retGC2EB:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2EC:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	L2F1
doGC2ED:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2EB, %r8
	jmp	ASM_InvokeGC
L2F1:
letJoinKCheck.2EA:
	cmpq	$1, %rax
	je	L2F2
L_true2F0:
then.2EF:
	/* Liveout:  GP={%rdi}  */
	movq	(%rax), %rbx
	movq	$196611, -8(%rsi)
	movq	(%rbx), %r10
	movq	%r10, (%rsi)
	movq	8(%rbx), %r12
	movq	%r12, 8(%rsi)
	movq	16(%rdi), %r13
	movq	88(%r13), %r14
	movq	%r14, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	16(%rdi), %r15
	movq	%r9, 88(%r15)
	movq	8(%rdi), %rdi
	jmp	letJoinK.1DF
L2F2:
else.2EE:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	letJoinK.1DF
	.text
letJoinK.1ED:
	movq	%r8, %rax
	jmp	gcTest2F5
	/* live= GP={%rax %rdi} spilled=  */
retGC2F4:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest2F5:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC2F6
letJoinKCheck.2F3:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rax), %rbx
	movq	16(%rdi), %r9
	movq	%rbx, 96(%r9)
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%r10, %r8
	jmp	letJoinK.1E9
doGC2F6:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC2F4, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.1D5:
	movq	%r8, %rdx
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.2F7, %r9
	movq	%r9, (%rsi)
	movq	8(%rdi), %r10
	movq	%r10, 8(%rsi)
	movq	16(%rdi), %r12
	movq	%r12, 16(%rsi)
	movq	%rsi, %rcx
	addq	$32, %rsi
	cmpq	$1, %rdx
	je	L_true2F8
else.2F9:
	movq	24(%rdi), %rax
	movq	80(%rax), %rax
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%rbx, (%rsi)
	movabsq	$append.2FD, %r9
	movq	%r9, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	cmpq	$1, %rdx
	je	L_true2FF
else.2FB:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.2FC, %r13
	movq	%r13, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	24(%rdi), %r14
	movq	%r14, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	movq	(%rbx), %rdi
	movq	16(%rdx), %r8
	jmp	append.2FD
L_true2F8:
then.2FA:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.300, %r12
	movq	%r12, (%rsi)
	movq	16(%rdi), %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	8(%rdi), %r14
	movq	(%r14), %rdi
	movq	%r10, %r8
	jmp	wakeupSleepingThreads.9E
L_true2FF:
then.2FE:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	24(%rdi), %r15
	movq	%rax, 80(%r15)
	movq	%rcx, %rdi
	movq	$1, %r8
	jmp	letJoinK.2F7
	.text
letJoinK.2F7:
	movq	%r8, %rax
	jmp	gcTest303
	/* live= GP={%rax %rdi} spilled=  */
retGC302:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest303:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC304
letJoinKCheck.301:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.305, %r9
	movq	%r9, (%rsi)
	movq	16(%rdi), %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	8(%rdi), %r12
	movq	(%r12), %rdi
	movq	%rbx, %r8
	jmp	wakeupSleepingThreads.9E
doGC304:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC302, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.305:
	movq	%r8, %rax
	jmp	gcTest308
	/* live= GP={%rax %rdi} spilled=  */
retGC307:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest308:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC309
letJoinKCheck.306:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC309:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC307, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.300:
	movq	%r8, %rax
	jmp	gcTest30C
	/* live= GP={%rax %rdi} spilled=  */
retGC30B:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest30C:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC30D
letJoinKCheck.30A:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC30D:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC30B, %r8
	jmp	ASM_InvokeGC
	.text
else.30F:
gcTest313:
	movq	%r11, %rbx
	movq	448(%rbx), %rcx
	subq	%rsi, %rcx
	jg	L316
doGC314:
	movq	$196611, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC312, %r8
	jmp	ASM_InvokeGC
L316:
elseCheck.311:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.315, %r10
	movq	%r10, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	16(%rax), %r8
append.2FD:
	movq	%r8, %rax
	cmpq	$1, %rax
	je	L_true30E
	jmp	else.30F
L_true30E:
	movq	%rdi, %rdx
then.310:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r9), %r12
	movq	%r9, %rdi
	movq	(%rdx), %r8
	jmp	*%r12
	/* live= GP={%r9 %rax %rdi} spilled=  */
retGC312:
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	jmp	gcTest313
	.text
letJoinK.315:
	movq	%r8, %rax
	jmp	gcTest319
	/* live= GP={%rax %rdi} spilled=  */
retGC318:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest319:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC31A
letJoinKCheck.317:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$196611, -8(%rsi)
	movq	8(%rdi), %r9
	movq	(%r9), %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	8(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r14
	movq	%rbx, %r8
	jmp	*%r14
doGC31A:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC318, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.2FC:
	movq	%r8, %rax
	jmp	gcTest31D
	/* live= GP={%rax %rdi} spilled=  */
retGC31C:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest31D:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC31E
letJoinKCheck.31B:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$196611, -8(%rsi)
	movq	8(%rdi), %r9
	movq	(%r9), %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	8(%r12), %r13
	movq	%r13, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	24(%rdi), %r14
	movq	%rbx, 80(%r14)
	movq	16(%rdi), %rdi
	movq	$1, %r8
	jmp	letJoinK.2F7
doGC31E:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC31C, %r8
	jmp	ASM_InvokeGC
	.text
else.320:
gcTest324:
	movq	%r11, %r14
	movq	448(%r14), %rax
	subq	%rsi, %rax
	jg	L326
doGC325:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC323, %r8
	jmp	ASM_InvokeGC
L326:
elseCheck.322:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	$1, %r8
lp.1D3:
	movq	8(%rdi), %rbx
	movq	384(%rbx), %rdx
	movq	8(%rdi), %r10
	leaq	384(%r10), %r9
	movq	%rdx, %rax
	movq	$1, %r12
	movq	8(%rdi), %r13
	lock
	cmpxchgq	%r12, 384(%r13)
	cmpq	%rax, %rdx
	je	L_true31F
	jmp	else.320
L_true31F:
then.321:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%rdi), %rdi
	movq	%rax, %r8
	jmp	letJoinK.1D5
	/* live= GP={%rdi} spilled=  */
retGC323:
	movq	(%rdi), %rdi
	jmp	gcTest324
	.text
letJoinK.1BB:
	movq	%r8, %rax
	jmp	gcTest329
	/* live= GP={%rax %rdi} spilled=  */
retGC328:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest329:
	movq	%r11, %r9
	movq	448(%r9), %rbx
	subq	%rsi, %rbx
	jg	L330
doGC32A:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC328, %r8
	jmp	ASM_InvokeGC
L330:
letJoinKCheck.327:
	cmpq	$1, %rax
	je	L331
L_true32F:
	movq	%rdi, %rcx
then.32D:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rax), %r14
	movq	$196611, -8(%rsi)
	movq	(%r14), %rax
	movq	%rax, (%rsi)
	movq	8(%r14), %rdx
	movq	%rdx, 8(%rsi)
	movq	32(%rcx), %rbx
	movq	88(%rbx), %rdi
	movq	%rdi, 16(%rsi)
	movq	%rsi, %r15
	addq	$32, %rsi
	movq	32(%rcx), %r9
	movq	%r15, 88(%r9)
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.32E, %r10
	movq	%r10, (%rsi)
	movq	24(%rcx), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	8(%rcx), %r13
	movq	(%r13), %rdi
	movq	40(%rcx), %r8
	movq	16(%rcx), %r10
	jmp	set_D_done_D_comm.16
L331:
	movq	%rdi, %rdx
else.32B:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.32C, %r10
	movq	%r10, (%rsi)
	movq	24(%rdx), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	8(%rdx), %r13
	movq	(%r13), %rdi
	movq	40(%rdx), %r8
	movq	16(%rdx), %r10
	jmp	set_D_done_D_comm.16
	.text
letJoinK.32E:
	movq	%r8, %rax
	jmp	gcTest334
	/* live= GP={%rax %rdi} spilled=  */
retGC333:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest334:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC335
letJoinKCheck.332:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC335:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC333, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.32C:
	movq	%r8, %rax
	jmp	gcTest338
	/* live= GP={%rax %rdi} spilled=  */
retGC337:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest338:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC339
letJoinKCheck.336:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC339:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC337, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.1BF:
	movq	%r8, %rax
	jmp	gcTest33C
	/* live= GP={%rax %rdi} spilled=  */
retGC33B:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest33C:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC33D
letJoinKCheck.33A:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%rax), %rbx
	movq	16(%rdi), %r9
	movq	%rbx, 96(%r9)
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%r10, %r8
	jmp	letJoinK.1BB
doGC33D:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC33B, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.1C8:
	movq	%r8, %rax
	jmp	gcTest340
	/* live= GP={%rax %rdi} spilled=  */
retGC33F:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest340:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC341
letJoinKCheck.33E:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	dispatch.1CB
doGC341:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC33F, %r8
	jmp	ASM_InvokeGC
	.text
initVPFields.4A:
	movq	%r8, %r13
	jmp	gcTest344
	/* live= GP={%r13} spilled= GP={%r~1 %r~1 %r~1}  */
retGC343:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
gcTest344:
	movq	%r11, %r14
	movq	448(%r14), %r15
	subq	%rsi, %r15
	jle	doGC345
	movq	%r10, -56(%rbp)
	movq	%r9, -72(%rbp)
	movq	%rdi, -64(%rbp)
initVPFieldsCheck.342:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movabsq	$schedCont.346, %rcx
	movq	%rcx, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r12, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	%rax, 40(%r13)
	movq	$65537, -8(%rsi)
	movl	$0, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	$131075, -8(%rsi)
	movq	%r15, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%rax, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$65537, -8(%rsi)
	movq	$3, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %r14
	movq	%r11, %r12
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r14, %r8
	movq	%r12, %r11
	movq	144(%r15), %rsi
	movq	$327693, -8(%rsi)
	movl	$-1, (%rsi)
	movq	$1, 8(%rsi)
	xorl	%edx, %edx
	incl	%edx
	movl	%edx, 16(%rsi)
	movq	%rbx, 24(%rsi)
	movq	%rax, 32(%rsi)
	movq	%rsi, %rcx
	addq	$48, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%rcx, %rsi
	call	PromoteObj
	movq	%r12, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	%rax, 24(%r13)
	movq	$65537, -8(%rsi)
	movabsq	$dummyK.347, %rax
	movq	%rax, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r12, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	%rax, 48(%r13)
	movq	$262167, -8(%rsi)
	movabsq	$shutdownCont.348, %rax
	movq	%rax, (%rsi)
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rsi)
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rsi)
	movq	%r13, 24(%rsi)
	movq	%rsi, %r15
	addq	$40, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r12, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	%rax, 64(%r13)
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.349, %r15
	movq	%r15, (%rsi)
	movq	-72(%rbp), %rbx
	movq	%rbx, 8(%rsi)
	movq	%r13, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rax
	movq	(%rax), %rdi
	movq	%r13, %r8
	movq	-56(%rbp), %r10
	jmp	mkSwitch.49
doGC345:
	movq	$262185, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC343, %r8
	jmp	ASM_InvokeGC
	.text
schedCont.346:
	jmp	gcTest34C
	/* live= GP={%rax %rdi} spilled=  */
retGC34B:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest34C:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC34D
schedContCheck.34A:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$3, (%r11)
	movq	32(%r11), %rbx
	movq	8(%rbx), %rdi
	movq	%rdi, 32(%r11)
	movq	(%rbx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
doGC34D:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC34B, %r8
	jmp	ASM_InvokeGC
	.text
dummyK.347:
	jmp	gcTest350
	/* live= GP={%rax %rdi} spilled=  */
retGC34F:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest350:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC351
dummyKCheck.34E:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$3, (%r11)
	movq	32(%r11), %rbx
	movq	8(%rbx), %rdi
	movq	%rdi, 32(%r11)
	movq	(%rbx), %rdi
	movq	(%rdi), %r9
	movq	$1, %rax
	jmp	*%r9
doGC351:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC34F, %r8
	jmp	ASM_InvokeGC
	.text
shutdownCont.348:
	jmp	gcTest354
	/* live= GP={%rax %rdi} spilled=  */
retGC353:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest354:
	movq	%r11, %r13
	movq	448(%r13), %r12
	subq	%rsi, %r12
	jg	L35B
doGC355:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC353, %r8
	jmp	ASM_InvokeGC
L35B:
shutdownContCheck.352:
	movl	$-1, %r15d
	movq	8(%rdi), %rax
	lock
	xaddl	%r15d, (%rax)
	movq	$131081, -8(%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, (%rsi)
	movq	24(%rdi), %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%rcx, (%rsi)
	movabsq	$wait.357, %r9
	movq	%r9, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	8(%rdi), %r12
	cmpl	$0, (%r12)
	jne	L35C
L_true35A:
	movq	%rdi, %rbx
then.358:
	/* Liveout:  GP={%rdi}  */
	movq	%r8, %r15
	movq	%rsi, %r12
	movq	%r11, %r13
	movq	24(%rbx), %rdi
	call	VProcExit
	movq	%r15, %r8
	movq	%r12, %rsi
	movq	%r13, %r11
	movq	16(%rbx), %rdi
	movq	(%rdi), %r14
	jmp	*%r14
L35C:
	movq	%rdi, %r9
else.356:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	(%r10), %rdi
	movq	16(%r9), %r8
	jmp	wait.357
	.text
else.35E:
gcTest362:
	movq	%r11, %rax
	movq	448(%rax), %r9
	subq	%rsi, %r9
	jg	L364
doGC363:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC361, %r8
	jmp	ASM_InvokeGC
L364:
elseCheck.360:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	%rbx, %r8
wait.357:
	movq	%r8, %rbx
	movq	(%rdi), %r15
	cmpl	$0, (%r15)
	je	L_true35D
	jmp	else.35E
L_true35D:
then.35F:
	/* Liveout:  GP={%rdi}  */
	movq	%r8, %r14
	movq	%rsi, %r13
	movq	%r11, %r12
	movq	8(%rdi), %rdi
	call	VProcExit
	movq	%r14, %r8
	movq	%r13, %rsi
	movq	%r12, %r11
	movq	(%rbx), %rdx
	movq	%rbx, %rdi
	jmp	*%rdx
	/* live= GP={%rbx %rdi} spilled=  */
retGC361:
	movq	8(%rdi), %rbx
	movq	(%rdi), %rdi
	jmp	gcTest362
	.text
letJoinK.349:
	movq	%r8, %rax
	jmp	gcTest367
	/* live= GP={%rax %rbx} spilled=  */
retGC366:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest367:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC368
	movq	%rdi, %rbx
letJoinKCheck.365:
	/* Liveout:  GP={%rdi}  */
	movq	$131075, -8(%rsi)
	movq	%rax, (%rsi)
	movq	16(%rbx), %rdi
	movq	32(%rdi), %r9
	movq	%r9, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r12, %r11
	movq	144(%r14), %rsi
	movq	16(%rbx), %r10
	movq	%rax, 32(%r10)
	movq	8(%rbx), %rdi
	movq	(%rdi), %r12
	jmp	*%r12
doGC368:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC366, %r8
	jmp	ASM_InvokeGC
	.text
lp.4B:
	movq	%r8, %rax
	jmp	gcTest36B
	/* live= GP={%r9 %rax %rdi} spilled=  */
retGC36A:
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest36B:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jg	L371
doGC36C:
	movq	$196611, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC36A, %r8
	jmp	ASM_InvokeGC
L371:
lpCheck.369:
	cmpq	$1, %rax
	je	L372
L_true370:
	movq	%rdi, %rcx
then.36E:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131081, -8(%rsi)
	movq	%rcx, (%rsi)
	movabsq	$lp.4B, %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.36F, %r12
	movq	%r12, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	8(%rax), %r13
	movq	%r13, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	movq	8(%rcx), %r14
	movq	(%r14), %rdi
	movq	(%rax), %r15
	movq	(%r15), %r8
	movq	(%rcx), %r10
	jmp	initVPFields.4A
L372:
	movq	%r9, %rdi
else.36D:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.4E
	.text
letJoinK.36F:
	jmp	gcTest375
	/* live= GP={%rax} spilled=  */
retGC374:
	movq	(%rdi), %rdi
gcTest375:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC376
	movq	%rdi, %rax
letJoinKCheck.373:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	8(%rax), %rbx
	movq	(%rbx), %rdi
	movq	24(%rax), %r8
	movq	16(%rax), %r9
	jmp	lp.4B
doGC376:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC374, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.4D:
	jmp	gcTest379
	/* live= GP={%rax} spilled=  */
retGC378:
	movq	(%rdi), %rdi
gcTest379:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC37A
	movq	%rdi, %rax
letJoinKCheck.377:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$458815, -8(%rsi)
	movabsq	$letJoinK.37B, %rbx
	movq	%rbx, (%rsi)
	movq	8(%rax), %rdi
	movq	%rdi, 8(%rsi)
	movq	16(%rax), %r9
	movq	%r9, 16(%rsi)
	movq	24(%rax), %r10
	movq	%r10, 24(%rsi)
	movq	32(%rax), %r12
	movq	%r12, 32(%rsi)
	movq	40(%rax), %r13
	movq	%r13, 40(%rsi)
	movq	56(%rax), %r14
	movq	%r14, 48(%rsi)
	movq	%rsi, %r9
	addq	$64, %rsi
	movq	48(%rax), %r15
	movq	(%r15), %rdi
	movq	56(%rax), %r8
	movq	16(%rax), %r10
	jmp	mkSwitch.49
doGC37A:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC378, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.37B:
	movq	%r8, %r13
	jmp	gcTest37E
	/* live= GP={%r13 %rbx} spilled=  */
retGC37D:
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
gcTest37E:
	movq	%r11, %r15
	movq	448(%r15), %r14
	subq	%rsi, %r14
	jg	L385
doGC37F:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC37D, %r8
	jmp	ASM_InvokeGC
L385:
	movq	%rdi, %rbx
letJoinKCheck.37C:
	movq	$131075, -8(%rsi)
	movq	%r13, (%rsi)
	movq	48(%rbx), %rdx
	movq	32(%rdx), %rdi
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	48(%rbx), %r9
	movq	%rcx, 32(%r9)
	movq	48(%rbx), %r10
	movq	$1, (%r10)
	movq	%r8, %r13
	movq	%rsi, %r14
	movq	%r11, %r15
	call	GetNumVProcs
	movq	%r13, %r8
	movq	%r14, %rsi
	movq	%r15, %r11
	movl	%eax, %r12d
	movq	$327697, -8(%rsi)
	movabsq	$letJoinK.383, %rdi
	movq	%rdi, (%rsi)
	movq	8(%rbx), %r9
	movq	%r9, 8(%rsi)
	movq	16(%rbx), %r10
	movq	%r10, 16(%rsi)
	movq	32(%rbx), %r13
	movq	%r13, 24(%rsi)
	movq	40(%rbx), %r14
	movq	%r14, 32(%rsi)
	movq	%rsi, %rdx
	addq	$48, %rsi
	xorq	%rcx, %rcx
	movq	$65537, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.382, %r15
	movq	%r15, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rsi, %r10
	addq	$32, %rsi
	cmpq	$1, %r12
	jne	L386
L_true384:
	movq	%r10, %rdi
then.381:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rax, %r8
	jmp	letJoinK.382
L386:
else.380:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$65537, -8(%rsi)
	incq	%rcx
	movq	%rcx, (%rsi)
	movq	%rsi, %r9
	addq	$16, %rsi
	movq	24(%rbx), %rax
	movq	(%rax), %rdi
	movq	%r12, %r8
	shrq	$1, %r8
	jmp	lp.13
	.text
else.392:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rax, %r8
	jmp	letJoinK.393
L39F:
	movq	%rax, %r14
	movq	%r13, -64(%rbp)
	movq	%rbx, -56(%rbp)
AllocLongArray.38E:
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movslq	%r14d, %r9
	movq	%r9, %rsi
	call	AllocLongArray
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r13), %rsi
	movq	%r12, %rdi
letJoinK.38C:
	movq	$196635, -8(%rsi)
	movq	-64(%rbp), %r12
	movq	%r12, (%rsi)
	movq	%rax, 8(%rsi)
	movl	%r14d, 16(%rsi)
	movq	%rsi, %r15
	addq	$32, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.395, %rcx
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	xorl	%ebx, %ebx
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.396, %rdx
	movq	%rdx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	cmpl	%r14d, %ebx
	jl	L_true397
	jmp	else.392
L_true397:
then.394:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movl	%ebx, %r10d
	movq	$64, %rcx
	movq	-64(%rbp), %rdi
	subq	(%rdi), %rcx
	shlq	%cl, %r10
	movq	(%rax), %r12
	movq	%rbx, %r13
	shlq	$3, %r13
	movq	%r10, (%r12,%r13,1)
	movq	$65537, -8(%rsi)
	incl	%ebx
	movl	%ebx, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	(%r15), %rdi
	movq	%r14, %r8
	movq	-56(%rbp), %r10
	movq	16(%r10), %r10
	jmp	lp.395
L_true39D:
then.39B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str41, %r10
	movq	%r10, (%rsi)
	movl	$4, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rbx), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
L3A0:
	movq	%rdi, %rbx
letJoinKCheck.387:
	movq	%r8, %r15
	movq	%rsi, %r12
	movq	%r11, %r14
	call	GetNumVProcs
	movq	%r15, %r8
	movq	%r12, %rsi
	movq	%r14, %r11
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$lp.39C, %rcx
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$393255, -8(%rsi)
	movabsq	$letJoinK.393, %rdx
	movq	%rdx, (%rsi)
	movq	8(%rbx), %rdi
	movq	%rdi, 8(%rsi)
	movq	16(%rbx), %r9
	movq	%r9, 16(%rsi)
	movq	24(%rbx), %r10
	movq	%r10, 24(%rsi)
	movq	32(%rbx), %r12
	movq	%r12, 32(%rsi)
	movq	%r15, 40(%rsi)
	movq	%rsi, %r12
	addq	$56, %rsi
	cmpl	$0, %eax
	jl	L_true39D
else.398:
	movq	$65536, %rdi
	cmpl	$0, %edi
	jge	L39A
	addl	$7, %edi
L39A:
	sarl	$3, %edi
	cmpl	%edi, %eax
	jge	L39E
L_true399:
then.38D:
	movl	%eax, 152(%r11)
gcTest390:
	movq	%r11, %rdx
	movq	448(%rdx), %rdi
	subq	%rsi, %rdi
	movl	152(%r11), %r10d
	leaq	4(%r10), %r9
	shlq	$3, %r9
	cmpq	%r9, %rdi
	jg	L39F
doGC391:
	movq	$262169, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%r12, 8(%rsi)
	movl	%eax, 16(%rsi)
	movq	%r13, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC38F, %r8
	jmp	ASM_InvokeGC
L39E:
	movq	%rax, %r14
	movq	%r13, -64(%rbp)
	movq	%rbx, -56(%rbp)
else.38B:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r13
	movq	%r11, %r15
	movq	%r11, %rdi
	movslq	%r14d, %rax
	movq	%rax, %rsi
	call	AllocBigLongArray
	movq	%r13, %r8
	movq	%r15, %r11
	movq	144(%rbx), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r14d, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r12, %rdi
	jmp	letJoinK.38C
letJoinK.383:
	movq	%r8, %r13
gcTest389:
	movq	%r11, %r15
	movq	448(%r15), %rax
	subq	%rsi, %rax
	jg	L3A0
doGC38A:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC388, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r13 %rbx} spilled=  */
retGC388:
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
	jmp	gcTest389
	/* live= GP={%r14 %r12} spilled= GP={%r~1 %r~1}  */
retGC38F:
	movq	24(%rdi), %r13
	movl	16(%rdi), %eax
	movq	8(%rdi), %r12
	movq	(%rdi), %rbx
	jmp	gcTest390
	.text
else.3A2:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r9), %rdx
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	*%rdx
L_true3A1:
then.3A3:
gcTest3A6:
	movq	%r11, %rbx
	movq	448(%rbx), %rcx
	subq	%rsi, %rcx
	jle	doGC3A7
thenCheck.3A4:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.3A8, %r10
	movq	%r10, (%rsi)
	movq	%r9, 8(%rsi)
	movq	(%rax), %r12
	movq	%r12, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	8(%rax), %r8
	movq	$1, %r10
lp.39C:
	movq	%r8, %rax
	cmpq	$1, %rax
	jne	L_true3A1
	jmp	else.3A2
doGC3A7:
	movq	$196611, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC3A5, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r9 %rax %rdi} spilled=  */
retGC3A5:
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	jmp	gcTest3A6
	.text
letJoinK.3A8:
	movq	%r8, %r9
	jmp	gcTest3AB
	/* live= GP={%r9 %rdi} spilled=  */
retGC3AA:
	movq	8(%rdi), %r9
	movq	(%rdi), %rdi
gcTest3AB:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC3AC
letJoinKCheck.3A9:
	cmpq	$1, %r9
	je	S_case3B4
	cmpq	$3, %r9
	jne	S_case3B4
S_case3B5:
case.3AD:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rdi), %rdi
	movq	(%rdi), %rdx
	movq	$3, %r8
	jmp	*%rdx
doGC3AC:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC3AA, %r8
	jmp	ASM_InvokeGC
S_case3B4:
	movq	%rdi, %rbx
case.3B0:
	movq	$131081, -8(%rsi)
	movabsq	$str3B1, %r10
	movq	%r10, (%rsi)
	movl	$18, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	%r8, %r14
	movq	%rsi, %r13
	movq	%r11, %r12
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	call	M_StringSame
	movq	%r14, %r8
	movq	%r13, %rsi
	movq	%r12, %r11
	cmpl	$1, %eax
	je	L_true3B3
else.3AE:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rbx), %rdi
	movq	(%rdi), %rbx
	movq	$1, %r8
	jmp	*%rbx
L_true3B3:
then.3AF:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rbx), %rdi
	movq	(%rdi), %r9
	movq	$3, %r8
	jmp	*%r9
	.text
letJoinK.393:
	movq	%r8, %r12
	movq	%rdi, %rbx
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	call	M_Arguments
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	$393255, -8(%rsi)
	movabsq	$letJoinK.3B7, %rcx
	movq	%rcx, (%rsi)
	movq	8(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%rbx), %rdi
	movq	%rdi, 16(%rsi)
	movq	24(%rbx), %r9
	movq	%r9, 24(%rsi)
	movq	32(%rbx), %r10
	movq	%r10, 32(%rsi)
	movq	%r12, 40(%rsi)
	movq	%rsi, %rdi
	addq	$56, %rsi
	cmpq	$1, %rax
	je	L3BC
L_true3B8:
then.3BA:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.3BB, %r12
	movq	%r12, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	(%rax), %r13
	movq	%r13, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	40(%rbx), %r14
	movq	(%r14), %rdi
	movq	8(%rax), %r8
	movq	$1, %r10
	jmp	lp.39C
L3BC:
else.3B9:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.3B7
	.text
else.3C9:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rax, %r8
	jmp	letJoinK.3CA
L3D9:
	movq	%rax, %r14
	movq	%rdx, -64(%rbp)
	movq	%r12, -56(%rbp)
AllocIntArray.3C5:
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movslq	%r14d, %r9
	movq	%r9, %rsi
	call	AllocIntArray
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r12), %rsi
	movq	-64(%rbp), %r9
	movq	-56(%rbp), %rcx
letJoinK.3C3:
	movq	$196675, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r14d, 8(%rsi)
	movl	%r13d, 16(%rsi)
	movq	%rsi, %r15
	addq	$32, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.3CC, %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	xorl	%edi, %edi
	cmpl	%r14d, %edi
	jl	L_true3CD
	movq	%r9, %rdi
	jmp	else.3C9
L_true3CD:
then.3CB:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rax), %r10
	movq	%rdi, %r12
	shlq	$2, %r12
	movl	%r13d, (%r10,%r12,1)
	movq	$65537, -8(%rsi)
	incl	%edi
	movl	%edi, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	movq	(%rdx), %rdi
	movq	%r13, %r8
	movq	16(%rcx), %r10
	jmp	lp.3CC
L_true3D7:
then.3D1:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str3D2, %r10
	movq	%r10, (%rsi)
	movl	$24, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movslq	%eax, %rdi
	call	M_IntToString
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%rax, %rbx
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rcx
	movq	%rcx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %r14
	movq	%r11, %r13
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r13, %r11
	movq	144(%r15), %rsi
	movq	%r8, %r13
	movq	%rsi, %r14
	movq	%r11, %r15
	movq	(%rax), %rdi
	call	M_Print
	movq	%r13, %r8
	movq	%r14, %rsi
	movq	%r15, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rax
	movq	%rax, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%r12), %rdi
	movq	(%rdi), %rcx
	jmp	*%rcx
L3DA:
	movq	%rdi, %r12
letJoinKCheck.3BD:
	movq	%r8, %r13
	movq	%rsi, %r14
	movq	%r11, %r15
	call	GetNumVProcs
	movq	%r13, %r8
	movq	%r14, %rsi
	movq	%r15, %r11
	movq	$458815, -8(%rsi)
	movabsq	$letJoinK.3CA, %rcx
	movq	%rcx, (%rsi)
	movq	8(%r12), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%r12), %rdi
	movq	%rdi, 16(%rsi)
	movq	24(%r12), %r9
	movq	%r9, 24(%rsi)
	movq	32(%r12), %r10
	movq	%r10, 32(%rsi)
	movq	40(%r12), %r13
	movq	%r13, 40(%rsi)
	movq	%rbx, 48(%rsi)
	movq	%rsi, %rdx
	addq	$64, %rsi
	cmpl	$0, %eax
	jl	L_true3D7
	xorl	%r13d, %r13d
else.3CE:
	movq	$65536, %r9
	cmpl	$0, %r9d
	jge	L3D0
	addl	$3, %r9d
L3D0:
	sarl	$2, %r9d
	cmpl	%r9d, %eax
	jge	L3D8
L_true3CF:
then.3C4:
	movl	%eax, 152(%r11)
gcTest3C7:
	movq	%r11, %rbx
	movq	448(%rbx), %rdi
	subq	%rsi, %rdi
	movl	152(%r11), %r10d
	leaq	4(%r10), %r9
	shlq	$2, %r9
	cmpq	%r9, %rdi
	jg	L3D9
doGC3C8:
	movq	$262209, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rdx, 8(%rsi)
	movl	%r13d, 16(%rsi)
	movl	%eax, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC3C6, %r8
	jmp	ASM_InvokeGC
L3D8:
	movq	%rax, %r14
	movq	%rdx, -64(%rbp)
	movq	%r12, -56(%rbp)
else.3C1:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r15
	movq	%r11, %rdi
	movslq	%r14d, %rax
	movq	%rax, %rsi
	call	AllocBigIntArray
	movq	%r12, %r8
	movq	%r15, %r11
	movq	144(%rbx), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r14d, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	-64(%rbp), %r9
	movq	-56(%rbp), %rcx
	jmp	letJoinK.3C3
letJoinK.3B7:
	movq	%r8, %rbx
gcTest3BF:
	movq	%r11, %r15
	movq	448(%r15), %rax
	subq	%rsi, %rax
	jg	L3DA
doGC3C0:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC3BE, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%rbx %r12} spilled=  */
retGC3BE:
	movq	8(%rdi), %rbx
	movq	(%rdi), %rdi
	jmp	gcTest3BF
	/* live= GP={%r14 %r13} spilled= GP={%r~1 %r~1}  */
retGC3C6:
	movl	24(%rdi), %eax
	movl	16(%rdi), %r13d
	movq	8(%rdi), %rdx
	movq	(%rdi), %r12
	jmp	gcTest3C7
	.text
retGC3E3:
	movl	24(%rdi), %eax
	movl	16(%rdi), %r12d
	movq	8(%rdi), %r14
	movq	(%rdi), %rbx
gcTest3E4:
	movq	%r11, %r15
	movq	448(%r15), %rcx
	subq	%rsi, %rcx
	movl	152(%r11), %edi
	leaq	4(%rdi), %rdx
	shlq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	L3EC
doGC3E5:
	movq	$262209, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%r14, 8(%rsi)
	movl	%r12d, 16(%rsi)
	movl	%eax, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC3E3, %r8
	jmp	ASM_InvokeGC
L3EE:
	xorl	%r12d, %r12d
else.3DD:
	movq	$65536, %r9
	cmpl	$0, %r9d
	jge	L3EB
	addl	$3, %r9d
L3EB:
	sarl	$2, %r9d
	cmpl	%r9d, %eax
	jge	L3ED
L_true3EA:
then.3E1:
	movl	%eax, 152(%r11)
	jmp	gcTest3E4
L3ED:
	movq	%rax, %r13
	movq	%r14, -64(%rbp)
	movq	%rbx, -56(%rbp)
else.3DF:
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movslq	%r13d, %r9
	movq	%r9, %rsi
	call	AllocBigIntArray
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r13d, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	-64(%rbp), %r9
	movq	-56(%rbp), %rcx
	jmp	letJoinK.3E0
L3EC:
	movq	%rax, %r13
	movq	%r14, -64(%rbp)
	movq	%rbx, -56(%rbp)
AllocIntArray.3E2:
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movslq	%r13d, %r9
	movq	%r9, %rsi
	call	AllocIntArray
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	-64(%rbp), %r9
	movq	-56(%rbp), %rcx
letJoinK.3E0:
	movq	$196675, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r13d, 8(%rsi)
	movl	%r12d, 16(%rsi)
	movq	%rsi, %r15
	addq	$32, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.3E8, %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	xorl	%edi, %edi
	cmpl	%r13d, %edi
	jl	L_true3E9
	movq	%r9, %rdi
else.3E6:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rax, %r8
	jmp	letJoinK.3DB
L_true3E9:
then.3E7:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rax), %r10
	movq	%rdi, %r13
	shlq	$2, %r13
	movl	%r12d, (%r10,%r13,1)
	movq	$65537, -8(%rsi)
	incl	%edi
	movl	%edi, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	(%rdx), %rdi
	movq	%r14, %r8
	movq	16(%rcx), %r10
	jmp	lp.3E8
letJoinK.3CA:
	movq	%r8, %r13
	movq	%rdi, %rbx
	movq	%r8, %r15
	movq	%rsi, %r12
	movq	%r11, %r14
	call	GetNumVProcs
	movq	%r15, %r8
	movq	%r12, %rsi
	movq	%r14, %r11
	movq	$524319, -8(%rsi)
	movabsq	$letJoinK.3DB, %r15
	movq	%r15, (%rsi)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%rsi)
	movq	24(%rbx), %rdi
	movq	%rdi, 24(%rsi)
	movq	32(%rbx), %r9
	movq	%r9, 32(%rsi)
	movq	40(%rbx), %r10
	movq	%r10, 40(%rsi)
	movq	%r13, 48(%rsi)
	movq	48(%rbx), %r12
	movq	%r12, 56(%rsi)
	movq	%rsi, %r14
	addq	$72, %rsi
	cmpl	$0, %eax
	jge	L3EE
L_true3DC:
then.3DE:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str3D2, %r10
	movq	%r10, (%rsi)
	movl	$24, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movslq	%eax, %rdi
	call	M_IntToString
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%rax, %r15
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rcx
	movq	%rcx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r13, %r8
	movq	%r12, %r11
	movq	144(%r14), %rsi
	movq	%r8, %r12
	movq	%rsi, %r13
	movq	%r11, %r14
	movq	(%rax), %rdi
	call	M_Print
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rax
	movq	%rax, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rbx), %rdi
	movq	(%rdi), %rcx
	jmp	*%rcx
	/* live= GP={%r13 %r12} spilled= GP={%r~1 %r~1}  */
	jmp	retGC3E3
	.text
case.3F2:
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$anon.3F6, %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	movq	%rax, -72(%rbp)
	addq	$24, %rsi
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$anon.3F7, %r15
	movq	%r15, 8(%rsi)
	movq	%rsi, %rcx
	movq	%rcx, -64(%rbp)
	addq	$24, %rsi
	movq	%rdi, %r12
	jmp	letJoinK.3F5
S_case3FF:
	movq	%r11, %r13
case.3F8:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%r13)
	movq	$131105, -8(%rsi)
	movabsq	$k.3F9, %rcx
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%r13), %rdx
	movq	8(%rdx), %rbx
	movq	%rbx, 32(%r13)
	movq	(%rdx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
letJoinK.3DB:
	movq	%r8, %r9
	movq	$65539, -8(%rsi)
	movq	48(%rdi), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$incNumSteals.3EF, %rdx
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$65539, -8(%rsi)
	movq	%r9, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%rbx, (%rsi)
	movabsq	$incNumFailedSteals.3F0, %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	56(%rdi), %r12
	cmpq	$1, %r12
	je	case.3F2
L400:
	cmpq	$3, %r12
	je	S_case3F3
S_case3F1:
	jmp	case.3F2
S_case3F3:
	movq	$1, %r12
	movq	$1, %r10
case.3F4:
	movq	$262147, -8(%rsi)
	movq	%r10, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	%r9, 24(%rsi)
	movq	%rsi, %r13
	addq	$40, %rsi
	movq	%rdi, %r12
	movq	24(%r13), %r14
	movq	%r14, -64(%rbp)
	movq	16(%r13), %r15
	movq	%r15, -72(%rbp)
letJoinK.3F5:
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$try_D_pop_D_local_D_in_D_atomic.3FC, %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rdx
	movq	%rdx, -80(%rbp)
	addq	$24, %rsi
	movq	$3, (%r11)
	movl	240(%r11), %r13d
	movq	40(%r12), %r15
	movq	(%r15), %r14
	movq	%r13, %rax
	shlq	$3, %rax
	movq	(%r14,%rax,1), %rbx
	movq	%rbx, -56(%rbp)
	incq	-56(%rbp)
	movq	24(%r11), %rdi
	movq	%rdi, -88(%rbp)
	movq	40(%r12), %rdx
	movq	(%rdx), %rcx
	shlq	$3, %r13
	movq	-56(%rbp), %r9
	movq	%r9, (%rcx,%r13,1)
	movq	%r8, %r14
	movq	%rsi, %r15
	movq	%r11, %rbx
	call	GetNumVProcs
	movq	%rax, %r13
	movq	%r14, %r8
	movq	%r15, %rsi
	movq	%rbx, %r11
	movq	$65537, -8(%rsi)
	movl	$0, (%rsi)
	movq	%rsi, %r9
	addq	$16, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r15
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%r9, %rsi
	call	PromoteObj
	movq	%rax, -96(%rbp)
	movq	%r15, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	$65537, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rsi, %r9
	addq	$16, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r15
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%r9, %rsi
	call	PromoteObj
	movq	%rax, -104(%rbp)
	movq	%r15, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movq	$1, %r9
	movq	%r9, %rsi
	call	PromoteObj
	movq	%rax, %rdx
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r15
	movq	%r11, %r14
	movq	%r11, %rdi
	movslq	%r13d, %r10
	movq	%r10, %rsi
	call	AllocBigPolyArray
	movq	%r15, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r13d, 8(%rsi)
	movq	%rsi, %r10
	movq	%r10, -112(%rbp)
	addq	$24, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movq	$1, %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, %rdx
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r15
	movq	%r11, %r14
	movq	%r11, %rdi
	movslq	%r13d, %rcx
	movq	%rcx, %rsi
	call	AllocBigPolyArray
	movq	%r15, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r13d, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$3, (%r11)
	movq	$983109, -8(%rsi)
	movabsq	$letJoinK.3FB, %rdx
	movq	%rdx, (%rsi)
	movq	8(%r12), %rbx
	movq	%rbx, 8(%rsi)
	movq	16(%r12), %rdi
	movq	%rdi, 16(%rsi)
	movq	24(%r12), %r9
	movq	%r9, 24(%rsi)
	movq	32(%r12), %r10
	movq	%r10, 32(%rsi)
	movq	-72(%rbp), %r12
	movq	%r12, 40(%rsi)
	movq	-64(%rbp), %r14
	movq	%r14, 48(%rsi)
	movq	-80(%rbp), %r15
	movq	%r15, 56(%rsi)
	movq	-88(%rbp), %rcx
	movq	%rcx, 64(%rsi)
	movq	-96(%rbp), %rdx
	movq	%rdx, 72(%rsi)
	movq	-104(%rbp), %rbx
	movq	%rbx, 80(%rsi)
	movq	-112(%rbp), %rdi
	movq	%rdi, 88(%rsi)
	movq	%rax, 96(%rsi)
	movq	-56(%rbp), %r9
	movq	%r9, 104(%rsi)
	movl	%r13d, 112(%rsi)
	movq	%rsi, %rdi
	addq	$128, %rsi
	movq	8(%r11), %r12
	cmpq	$1, %r12
	je	S_case3FE
	cmpq	$3, %r12
	je	S_case3FF
S_case3FE:
	movq	%r11, %r14
case.3FA:
	/* Liveout:  GP={%rdi}  */
	movq	$1, (%r14)
	jmp	letJoinK.3FB
	.text
case.410:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rdx
	movq	%rdx, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rdi
	movq	%rdi, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r10
	movq	%r10, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r12
	movq	%rbx, %rdi
	jmp	*%r12
S_case423:
case.41E:
	movq	(%r10), %rdx
	movq	(%rdx), %rcx
	movq	%r13, %r9
	shlq	$2, %r9
	movl	(%rcx,%r9,1), %r15d
	incl	%r15d
	movq	(%r10), %r12
	cmpl	8(%r12), %r13d
	jl	L_true41F
else.419:
	movq	$1, %rax
	cmpq	$1, %rax
	jne	L427
S_case41A:
case.40D:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rdi
	movq	%rdi, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %r9
	movq	%r9, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r13
	movq	%r13, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	jmp	*%r14
L427:
	cmpq	$3, %rax
	jne	S_case41A
S_case41B:
case.40B:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r10), %rbx
	movq	(%rbx), %rdx
	shlq	$2, %r13
	movl	%r15d, (%rdx,%r13,1)
	movq	$1, %r8
	jmp	letJoinK.40C
L_true41F:
then.41C:
	cmpl	$0, %r13d
	jl	L428
L_true41D:
then.416:
	movq	$3, %r14
	cmpq	$1, %r14
	jne	L429
S_case417:
case.412:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rcx
	movq	%rcx, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rdx
	movq	%rdx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r9
	movq	%r9, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r10
	movq	%rbx, %rdi
	jmp	*%r10
L428:
else.413:
	movq	$1, %r12
	cmpq	$1, %r12
	jne	L42A
S_case414:
	jmp	case.410
L42A:
	cmpq	$3, %r12
	jne	case.410
S_case415:
case.40F:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r10), %rcx
	movq	(%rcx), %rax
	shlq	$2, %r13
	movl	%r15d, (%rax,%r13,1)
	movq	$1, %r8
	jmp	letJoinK.40C
L429:
	cmpq	$3, %r14
	jne	S_case417
S_case418:
case.411:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r10), %rax
	movq	(%rax), %r14
	shlq	$2, %r13
	movl	%r15d, (%r14,%r13,1)
	movq	$1, %r8
	jmp	letJoinK.40C
retGC402:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %r12
	movq	(%rdi), %rdi
gcTest403:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC404
incNumStealsCheck.401:
	cmpq	$1, %r12
	je	S_case426
S_case426:
	movq	%r10, %rbx
	movq	%rdi, %r10
case.424:
	movl	240(%r11), %r13d
	movq	(%r10), %r12
	cmpl	8(%r12), %r13d
	jl	L_true425
	movq	%r9, %rdi
else.408:
	movq	$1, %r14
letJoinK.406:
	cmpq	$1, %r14
	je	S_case422
	cmpq	$3, %r14
	je	S_case423
S_case422:
case.420:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str421, %r13
	movq	%r13, (%rsi)
	movl	$33, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %r14
	movq	%r14, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	%r8, %r14
	movq	%rsi, %r13
	movq	%r11, %r12
	movq	(%rax), %rdi
	call	M_Print
	movq	%r14, %r8
	movq	%r13, %rsi
	movq	%r12, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdx
	movq	%rdx, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r9
	movq	%rbx, %rdi
	jmp	*%r9
L_true425:
	movq	%r9, %rdi
then.409:
	cmpl	$0, %r13d
	jge	L_true40A
else.405:
	movq	$1, %r14
	jmp	letJoinK.406
L_true40A:
then.407:
	movq	$3, %r14
	jmp	letJoinK.406
doGC404:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC402, %r8
	jmp	ASM_InvokeGC
incNumSteals.3EF:
	movq	%r8, %r12
	jmp	gcTest403
	.text
case.439:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rdx
	movq	%rdx, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rdi
	movq	%rdi, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r10
	movq	%r10, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r12
	movq	%rbx, %rdi
	jmp	*%r12
S_case44B:
case.447:
	movq	(%r10), %rdx
	movq	(%rdx), %rcx
	movq	%r13, %r9
	shlq	$2, %r9
	movl	(%rcx,%r9,1), %r15d
	incl	%r15d
	movq	(%r10), %r12
	cmpl	8(%r12), %r13d
	jl	L_true448
else.442:
	movq	$1, %rax
	cmpq	$1, %rax
	jne	L44F
S_case443:
case.437:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rdi
	movq	%rdi, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %r9
	movq	%r9, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r13
	movq	%r13, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	jmp	*%r14
L44F:
	cmpq	$3, %rax
	jne	S_case443
S_case444:
case.435:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r10), %rbx
	movq	(%rbx), %rdx
	shlq	$2, %r13
	movl	%r15d, (%rdx,%r13,1)
	movq	$1, %r8
	jmp	letJoinK.436
L_true448:
then.445:
	cmpl	$0, %r13d
	jl	L450
L_true446:
then.43F:
	movq	$3, %r14
	cmpq	$1, %r14
	jne	L451
S_case440:
case.43B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rcx
	movq	%rcx, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rdx
	movq	%rdx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r9
	movq	%r9, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r10
	movq	%rbx, %rdi
	jmp	*%r10
L450:
else.43C:
	movq	$1, %r12
	cmpq	$1, %r12
	jne	L452
S_case43D:
	jmp	case.439
L452:
	cmpq	$3, %r12
	jne	case.439
S_case43E:
case.438:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r10), %rcx
	movq	(%rcx), %rax
	shlq	$2, %r13
	movl	%r15d, (%rax,%r13,1)
	movq	$1, %r8
	jmp	letJoinK.436
L451:
	cmpq	$3, %r14
	jne	S_case440
S_case441:
case.43A:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	(%r10), %rax
	movq	(%rax), %r14
	shlq	$2, %r13
	movl	%r15d, (%r14,%r13,1)
	movq	$1, %r8
	jmp	letJoinK.436
retGC42C:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %r12
	movq	(%rdi), %rdi
gcTest42D:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC42E
incNumFailedStealsCheck.42B:
	cmpq	$1, %r12
	je	S_case44E
S_case44E:
	movq	%r10, %rbx
	movq	%rdi, %r10
case.44C:
	movl	240(%r11), %r13d
	movq	(%r10), %r12
	cmpl	8(%r12), %r13d
	jl	L_true44D
	movq	%r9, %rdi
else.432:
	movq	$1, %r14
letJoinK.430:
	cmpq	$1, %r14
	je	S_case44A
	cmpq	$3, %r14
	je	S_case44B
S_case44A:
case.449:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str421, %r13
	movq	%r13, (%rsi)
	movl	$33, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %r14
	movq	%r14, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	%r8, %r14
	movq	%rsi, %r13
	movq	%r11, %r12
	movq	(%rax), %rdi
	call	M_Print
	movq	%r14, %r8
	movq	%r13, %rsi
	movq	%r12, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdx
	movq	%rdx, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r9
	movq	%rbx, %rdi
	jmp	*%r9
L_true44D:
	movq	%r9, %rdi
then.433:
	cmpl	$0, %r13d
	jge	L_true434
else.42F:
	movq	$1, %r14
	jmp	letJoinK.430
L_true434:
then.431:
	movq	$3, %r14
	jmp	letJoinK.430
doGC42E:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC42C, %r8
	jmp	ASM_InvokeGC
incNumFailedSteals.3F0:
	movq	%r8, %r12
	jmp	gcTest42D
	.text
else.46F:
	decl	%r13d
	movq	%r13, %rdx
	shll	$3, %edx
	movslq	%edx, %rcx
	movq	16(%rax,%rcx,1), %r15
	movq	%r13, %r9
	shll	$3, %r9d
	movslq	%r9d, %rbx
	movq	$1, 16(%rax,%rbx,1)
	movl	%r13d, 4(%rax)
	movq	$65539, -8(%rsi)
	movq	%r15, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	cmpq	$1, %r10
	je	L480
L_true470:
then.46C:
	movq	$131075, -8(%rsi)
	movq	(%r10), %r13
	movq	%r13, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	jmp	succeed.45A
L480:
letJoinK.46B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rdi), %rdx
	movq	$1, %rax
	jmp	*%rdx
L483:
else.475:
	movl	4(%rax), %r13d
	cmpl	$0, %r13d
	jg	else.46F
L_true476:
	movl	8(%rax), %ecx
then.471:
	decl	%ecx
	movq	%rcx, %r14
	shll	$3, %r14d
	movslq	%r14d, %r13
	movq	16(%rax,%r13,1), %r12
	movq	%rcx, %rdx
	shll	$3, %edx
	movslq	%edx, %r15
	movq	$1, 16(%rax,%r15,1)
	movl	%ecx, 4(%rax)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	cmpq	$1, %rbx
	je	letJoinK.46B
L_true472:
then.46E:
	movq	$131075, -8(%rsi)
	movq	(%rbx), %r14
	movq	%r14, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
succeed.45A:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rdi), %r9
	jmp	*%r9
else.46D:
	jmp	letJoinK.46B
else.467:
letJoinK.458:
	movq	%r8, %rbx
	movq	%rsi, %r12
	movq	%r11, %r14
	movq	%r13, %rdi
	movq	%rcx, %rsi
	call	M_PrimaryDeque
	movq	%rbx, %r8
	movq	%r12, %rsi
	movq	%r14, %r11
	cmpq	$1, %rax
	je	L_true47D
	movq	%r15, %rdi
else.479:
	movl	4(%rax), %r15d
	cmpl	(%rax), %r15d
	jne	L483
L_true47A:
then.477:
	movq	$1, %r14
	cmpq	$1, %r14
	je	L484
L_true478:
then.474:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131075, -8(%rsi)
	movq	(%r14), %r10
	movq	%r10, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rdi), %r12
	jmp	*%r12
L484:
else.473:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rdi), %r9
	movq	$1, %rax
	jmp	*%r9
L_true47D:
	movq	%r15, %rdi
then.47B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rdi), %rcx
	movq	$1, %rax
	jmp	*%rcx
try_D_pop_D_local_D_in_D_atomic.3FC:
	movq	%r8, %r13
gcTest455:
	movq	%r11, %rdx
	movq	448(%rdx), %rbx
	subq	%rsi, %rbx
	jle	doGC456
	movq	%r10, %r15
	movq	%r9, %rbx
try_D_pop_D_local_D_in_D_atomicCheck.453:
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r10
	movq	%r10, -56(%rbp)
	movq	%r11, %r14
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	M_ResumeDeques
	movq	-56(%rbp), %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	cmpq	$1, %rax
	jne	L_true47F
	movq	%rbx, %rcx
	jmp	letJoinK.458
doGC456:
	movq	$262215, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC454, %r8
	jmp	ASM_InvokeGC
L_true47F:
	movq	%r15, %rdi
	movq	%rbx, %rcx
then.468:
	movq	(%rax), %r10
	movq	(%r10), %r10
	movl	4(%r10), %r12d
	cmpl	(%r10), %r12d
	je	L_true469
else.463:
	movl	4(%r10), %ebx
	cmpl	$0, %ebx
	jle	L_true464
else.45D:
	decl	%ebx
	movq	%rbx, %r15
	shll	$3, %r15d
	movslq	%r15d, %r14
	movq	16(%r10,%r14,1), %r12
	movq	%rbx, %rdx
	shll	$3, %edx
	movslq	%edx, %rax
	movq	$1, 16(%r10,%rax,1)
	movl	%ebx, 4(%r10)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	cmpq	$1, %rbx
	jne	L_true45E
	movq	%rdi, %r15
	jmp	letJoinK.458
L_true464:
	movl	8(%r10), %r15d
then.45F:
	decl	%r15d
	movq	%r15, %r14
	shll	$3, %r14d
	movslq	%r14d, %r12
	movq	16(%r10,%r12,1), %r9
	movq	%r15, %rdx
	shll	$3, %edx
	movslq	%edx, %rax
	movq	$1, 16(%r10,%rax,1)
	movl	%r15d, 4(%r10)
	movq	$65539, -8(%rsi)
	movq	%r9, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	cmpq	$1, %rbx
	jne	L_true460
	movq	%rdi, %r15
	jmp	letJoinK.458
L_true460:
then.45C:
	movq	$131075, -8(%rsi)
	movq	(%rbx), %r10
	movq	%r10, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	jmp	succeed.45A
L_true469:
then.465:
	movq	$1, %r9
	cmpq	$1, %r9
	jne	L_true466
	movq	%rdi, %r15
	jmp	letJoinK.458
L_true466:
then.462:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131075, -8(%rsi)
	movq	(%r9), %r9
	movq	%r9, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rdi), %r10
	jmp	*%r10
L_true45E:
then.459:
	movq	$131075, -8(%rsi)
	movq	(%rbx), %r9
	movq	%r9, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	jmp	succeed.45A
else.461:
	jmp	letJoinK.458
else.46A:
	jmp	letJoinK.46B
else.457:
	jmp	letJoinK.458
retGC454:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
	jmp	gcTest455
else.45B:
	jmp	letJoinK.458
	.text
letJoinK.3FB:
	jmp	gcTest487
L493:
letJoinKCheck.485:
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$spawnFn.48C, %rdx
	movq	%rdx, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$resumeFn.48D, %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$removeFn.48E, %r9
	movq	%r9, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$1179721, -8(%rsi)
	movabsq	$k.48F, %r12
	movq	%r12, (%rsi)
	movq	8(%rdi), %r13
	movq	%r13, 8(%rsi)
	movq	16(%rdi), %r14
	movq	%r14, 16(%rsi)
	movq	24(%rdi), %r15
	movq	%r15, 24(%rsi)
	movq	32(%rdi), %rax
	movq	%rax, 32(%rsi)
	movq	40(%rdi), %rcx
	movq	%rcx, 40(%rsi)
	movq	48(%rdi), %rdx
	movq	%rdx, 48(%rsi)
	movq	56(%rdi), %r12
	movq	%r12, 56(%rsi)
	movq	64(%rdi), %r13
	movq	%r13, 64(%rsi)
	movq	72(%rdi), %r14
	movq	%r14, 72(%rsi)
	movq	80(%rdi), %r15
	movq	%r15, 80(%rsi)
	movq	88(%rdi), %rax
	movq	%rax, 88(%rsi)
	movq	96(%rdi), %rcx
	movq	%rcx, 96(%rsi)
	movq	%r10, 104(%rsi)
	movq	%rbx, 112(%rsi)
	movq	%r9, 120(%rsi)
	movq	104(%rdi), %rdx
	movq	%rdx, 128(%rsi)
	movl	112(%rdi), %ebx
	movl	%ebx, 136(%rsi)
	movq	%rsi, %r10
	addq	$152, %rsi
	movq	$3, (%r11)
	movq	$196611, -8(%rsi)
	movq	24(%r11), %r9
	movq	%r9, (%rsi)
	movq	%r10, 8(%rsi)
	movq	88(%r11), %r10
	movq	%r10, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movq	%rdi, 88(%r11)
	movq	8(%r11), %r12
	cmpq	$1, %r12
	jne	L492
S_case490:
	movq	%r11, %rdx
case.48B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, (%rdx)
	movq	$3, (%r11)
	movq	32(%r11), %r14
	movq	8(%r14), %r15
	movq	%r15, 32(%r11)
	movq	(%r14), %rdi
	movq	(%rdi), %rcx
	movq	$1, %rax
	jmp	*%rcx
L492:
	cmpq	$3, %r12
	jne	S_case490
S_case491:
	movq	%r11, %rcx
case.489:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%rcx)
	movq	$65537, -8(%rsi)
	movabsq	$k.48A, %r9
	movq	%r9, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%rcx), %r10
	movq	8(%r10), %r12
	movq	%r12, 32(%rcx)
	movq	(%r10), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
	/* live= GP={%rdi} spilled=  */
retGC486:
	movq	(%rdi), %rdi
gcTest487:
	movq	%r11, %rbx
	movq	448(%rbx), %rax
	subq	%rsi, %rax
	jg	L493
doGC488:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC486, %r8
	jmp	ASM_InvokeGC
	.text
else.4B1:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r10
	movq	%r10, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rdi), %r13
	jmp	*%r13
L4B7:
	cmpq	$3, %r15
	jne	S_case4A5
S_case4A6:
case.49E:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%r10)
	movq	$131105, -8(%rsi)
	movabsq	$k.49F, %rcx
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%r10), %rdx
	movq	8(%rdx), %rbx
	movq	%rbx, 32(%r10)
	movq	(%rdx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
L_true4B3:
	movq	%rdi, %r12
	movq	%rdx, %rdi
then.4AF:
	movq	(%rbx), %rdx
	movq	32(%rdx), %rcx
	movq	(%rcx), %r15
	movl	240(%r10), %r14d
	shlq	$3, %r14
	movq	(%r15,%r14,1), %r13
	movq	(%r13), %r13
	movl	(%r13), %ebx
	cmpl	4(%r13), %ebx
	jg	L4B5
L_true4B0:
then.49A:
	movl	4(%r13), %r9d
	subl	(%r13), %r9d
letJoinK.499:
	movl	8(%r13), %r15d
	decl	%r15d
	cmpl	%r15d, %r9d
	jge	L_true4AC
else.4A7:
	movl	4(%r13), %ecx
	movl	4(%r13), %edx
	movl	8(%r13), %ebx
	decl	%ebx
	cmpl	%ebx, %edx
	jl	L4B6
L_true4A8:
then.4A4:
	movl	$0, 4(%r13)
	shll	$3, %ecx
	movslq	%ecx, %r14
	movq	%rax, 16(%r13,%r14,1)
	movq	8(%r10), %r15
	cmpq	$1, %r15
	jne	L4B7
S_case4A5:
case.4A0:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, (%r10)
	movq	(%rdi), %r10
	movq	$1, %rax
	jmp	*%r10
L4B6:
else.4A1:
	incl	%edx
	movl	%edx, 4(%r13)
	shll	$3, %ecx
	movslq	%ecx, %r12
	movq	%rax, 16(%r13,%r12,1)
	movq	8(%r10), %r13
	cmpq	$1, %r13
	jne	L4B8
S_case4A2:
case.49D:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, (%r10)
	movq	(%rdi), %r15
	movq	$1, %rax
	jmp	*%r15
L4B8:
	cmpq	$3, %r13
	jne	S_case4A2
S_case4A3:
case.49B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%r10)
	movq	$131105, -8(%rsi)
	movabsq	$k.49C, %r9
	movq	%r9, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%r10), %r12
	movq	8(%r12), %r13
	movq	%r13, 32(%r10)
	movq	(%r12), %rdi
	movq	(%rdi), %r14
	jmp	*%r14
L_true4AC:
then.4A9:
	/* Liveout:  GP={%rax %rdi}  */
	movq	%r8, %rbx
	movq	%rsi, %r13
	movq	%r11, %r14
	movabsq	$str4AA, %rdi
	call	M_Print
	movq	%rbx, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	movq	$131081, -8(%rsi)
	movabsq	$str4AB, %rax
	movq	%rax, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rcx
	movq	%rcx, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%r12), %rdx
	movq	%r12, %rdi
	jmp	*%rdx
L4B5:
else.498:
	movl	8(%r13), %r14d
	subl	(%r13), %r14d
	movl	4(%r13), %edx
	leal	(%r14,%rdx,1), %r9d
	jmp	letJoinK.499
L_true4B4:
	movq	%r11, %r10
	movq	%r9, %rdi
then.4B2:
	movq	(%rcx), %r14
	movq	(%r14), %rbx
	cmpq	$1, %rbx
	jne	L_true4B3
else.4AD:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str4AE, %r9
	movq	%r9, (%rsi)
	movl	$58, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r10
	movq	%r10, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rdi), %r12
	jmp	*%r12
L4B9:
spawnFnCheck.494:
	movq	$3, (%r11)
	movq	24(%r11), %r15
	movq	8(%r15), %rcx
	cmpq	$1, %rcx
	jne	L_true4B4
	movq	%r9, %rdi
	jmp	else.4B1
spawnFn.48C:
	movq	%r8, %rdx
	jmp	gcTest496
	/* live= GP={%r9 %rdx %rax %rdi} spilled=  */
retGC495:
	movq	24(%rdi), %r9
	movq	16(%rdi), %rdx
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest496:
	movq	%r11, %rcx
	movq	448(%rcx), %r15
	subq	%rsi, %r15
	jg	L4B9
doGC497:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%r9, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC495, %r8
	jmp	ASM_InvokeGC
	.text
k.49F:
	jmp	gcTest4BC
	/* live= GP={%rax %rdi} spilled=  */
retGC4BB:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest4BC:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC4BD
kCheck.4BA:
	/* Liveout:  GP={%rax %rdi}  */
	movq	8(%rdi), %rdi
	movq	(%rdi), %rbx
	movq	$1, %rax
	jmp	*%rbx
doGC4BD:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC4BB, %r8
	jmp	ASM_InvokeGC
	.text
k.49C:
	jmp	gcTest4C0
	/* live= GP={%rax %rdi} spilled=  */
retGC4BF:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest4C0:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC4C1
kCheck.4BE:
	/* Liveout:  GP={%rax %rdi}  */
	movq	8(%rdi), %rdi
	movq	(%rdi), %rbx
	movq	$1, %rax
	jmp	*%rbx
doGC4C1:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC4BF, %r8
	jmp	ASM_InvokeGC
	.text
retGC4C3:
	movq	24(%rdi), %r9
	movq	16(%rdi), %r13
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest4C4:
	movq	%r11, %rcx
	movq	448(%rcx), %rdx
	subq	%rsi, %rdx
	jg	L4DA
doGC4C5:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r13, 16(%rsi)
	movq	%r9, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC4C3, %r8
	jmp	ASM_InvokeGC
L_true4D5:
	movq	%r13, %rdi
	movq	-56(%rbp), %r15
then.4CF:
	movl	$0, 4(%rax)
	shll	$3, %edx
	movslq	%edx, %rcx
	movq	%r15, 16(%rax,%rcx,1)
	decl	12(%rax)
	movq	8(%r12), %rdx
	cmpq	$1, %rdx
	jne	L4DB
S_case4D0:
case.4CB:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, (%r12)
	movq	(%rdi), %r10
	movq	$1, %rax
	jmp	*%r10
L4DB:
	cmpq	$3, %rdx
	jne	S_case4D0
S_case4D1:
case.4C9:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%r12)
	movq	$131105, -8(%rsi)
	movabsq	$k.4CA, %rcx
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%r12), %rdx
	movq	8(%rdx), %rbx
	movq	%rbx, 32(%r12)
	movq	(%rdx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
L4DA:
resumeFnCheck.4C2:
	movq	$3, (%r11)
	movq	24(%r11), %rdi
	movq	8(%rdi), %rbx
	cmpq	$1, %rbx
	je	L4DC
L_true4D9:
	movq	%r11, %r12
	movq	%r9, %rdi
then.4D7:
	movq	(%rbx), %rdx
	movq	(%rdx), %rcx
	cmpq	$1, %rcx
	je	L4DD
L_true4D8:
	movq	%rax, -56(%rbp)
then.4D3:
	movq	%r8, %r14
	movq	%rsi, %r15
	movq	%r11, %rbx
	movq	%r12, %rdi
	movq	(%rcx), %rax
	movq	(%rax), %r9
	movq	%r9, %rsi
	movl	$64000, %ecx
	movslq	%ecx, %rdx
	call	M_ResumeDequeAlloc
	movq	%r14, %r8
	movq	%r15, %rsi
	movq	%rbx, %r11
	movl	4(%rax), %edx
	movl	4(%rax), %ebx
	movl	8(%rax), %edi
	decl	%edi
	cmpl	%edi, %ebx
	jge	L_true4D5
	movq	%r13, %rdi
	movq	-56(%rbp), %r14
else.4CC:
	incl	%ebx
	movl	%ebx, 4(%rax)
	shll	$3, %edx
	movslq	%edx, %r13
	movq	%r14, 16(%rax,%r13,1)
	decl	12(%rax)
	movq	8(%r12), %r14
	cmpq	$1, %r14
	je	S_case4CD
	cmpq	$3, %r14
	jne	S_case4CD
S_case4CE:
case.4C6:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%r12)
	movq	$131105, -8(%rsi)
	movabsq	$k.4C7, %r9
	movq	%r9, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%r12), %r10
	movq	8(%r10), %r13
	movq	%r13, 32(%r12)
	movq	(%r10), %rdi
	movq	(%rdi), %r14
	jmp	*%r14
L4DD:
else.4D2:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str4AE, %r9
	movq	%r9, (%rsi)
	movl	$58, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r10
	movq	%r10, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rdi), %r12
	jmp	*%r12
L4DC:
	movq	%r9, %rdi
else.4D6:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r10
	movq	%r10, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rdi), %r13
	jmp	*%r13
S_case4CD:
case.4C8:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, (%r12)
	movq	(%rdi), %r15
	movq	$1, %rax
	jmp	*%r15
resumeFn.48D:
	movq	%r8, %r13
	jmp	gcTest4C4
	/* live= GP={%r9 %r13 %rax %rdi} spilled=  */
	jmp	retGC4C3
	.text
k.4CA:
	jmp	gcTest4E0
	/* live= GP={%rax %rdi} spilled=  */
retGC4DF:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest4E0:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC4E1
kCheck.4DE:
	/* Liveout:  GP={%rax %rdi}  */
	movq	8(%rdi), %rdi
	movq	(%rdi), %rbx
	movq	$1, %rax
	jmp	*%rbx
doGC4E1:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC4DF, %r8
	jmp	ASM_InvokeGC
	.text
k.4C7:
	jmp	gcTest4E4
	/* live= GP={%rax %rdi} spilled=  */
retGC4E3:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest4E4:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC4E5
kCheck.4E2:
	/* Liveout:  GP={%rax %rdi}  */
	movq	8(%rdi), %rdi
	movq	(%rdi), %rbx
	movq	$1, %rax
	jmp	*%rbx
doGC4E5:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC4E3, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.4EB:
	movq	8(%rbx), %r12
	cmpq	$1, %r12
	je	S_case4F8
	cmpq	$3, %r12
	je	S_case4F9
S_case4F8:
case.4F7:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, (%rbx)
	movq	(%rdi), %r10
	jmp	*%r10
S_case4F9:
case.4F5:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%rbx)
	movq	$196637, -8(%rsi)
	movabsq	$k.4F6, %rcx
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%rbx), %rdx
	movq	8(%rdx), %rdi
	movq	%rdi, 32(%rbx)
	movq	(%rdx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
L_true500:
	movq	%r11, %rbx
	movq	%r9, %rdi
then.4FE:
	movq	(%rax), %rdx
	movq	(%rdx), %rdx
	cmpq	$1, %rdx
	jne	L_true4FF
else.4FA:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str4AE, %r14
	movq	%r14, (%rsi)
	movl	$58, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r15
	movq	%r15, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rdi), %rcx
	jmp	*%rcx
L_true4FF:
	movq	%rcx, %rdi
then.4FB:
	movq	(%rdx), %r12
	movq	32(%r12), %r10
	movq	(%r10), %r9
	movl	240(%rbx), %r10d
	shlq	$3, %r10
	movq	(%r9,%r10,1), %rdx
	movq	(%rdx), %r9
	movl	4(%r9), %r13d
	cmpl	(%r9), %r13d
	je	L_true4FC
else.4F0:
	movl	4(%r9), %r12d
	cmpl	$0, %r12d
	jle	L_true4F1
else.4EA:
	decl	%r12d
	movq	%r12, %rdx
	shll	$3, %edx
	movslq	%edx, %rcx
	movq	16(%r9,%rcx,1), %rax
	movq	%r12, %r13
	shll	$3, %r13d
	movslq	%r13d, %r10
	movq	$1, 16(%r9,%r10,1)
	movl	%r12d, 4(%r9)
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	jmp	letJoinK.4EB
L_true4FC:
then.4F2:
	movq	$1, %rax
	movq	8(%rbx), %r15
	cmpq	$1, %r15
	je	S_case4F3
	cmpq	$3, %r15
	je	S_case4F4
S_case4F3:
case.4EF:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, (%rbx)
	movq	(%rdi), %r14
	jmp	*%r14
S_case4F4:
case.4ED:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%rbx)
	movq	$196627, -8(%rsi)
	movabsq	$k.4EE, %r9
	movq	%r9, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%rbx), %r10
	movq	8(%r10), %r12
	movq	%r12, 32(%rbx)
	movq	(%r10), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
L_true4F1:
	movl	8(%r9), %r13d
then.4EC:
	decl	%r13d
	movq	%r13, %rax
	shll	$3, %eax
	movslq	%eax, %r15
	movq	16(%r9,%r15,1), %r14
	movq	%r13, %rdx
	shll	$3, %edx
	movslq	%edx, %rcx
	movq	$1, 16(%r9,%rcx,1)
	movl	%r13d, 4(%r9)
	movq	$65539, -8(%rsi)
	movq	%r14, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	jmp	letJoinK.4EB
	/* live= GP={%r9 %rcx %rax %rdi} spilled=  */
retGC4E7:
	movq	24(%rdi), %r9
	movq	16(%rdi), %rcx
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest4E8:
	movq	%r11, %r15
	movq	448(%r15), %r14
	subq	%rsi, %r14
	jle	doGC4E9
removeFnCheck.4E6:
	movq	$3, (%r11)
	movq	24(%r11), %rbx
	movq	8(%rbx), %rax
	cmpq	$1, %rax
	jne	L_true500
	movq	%r9, %rdi
else.4FD:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r15
	movq	%r15, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rax
	movq	%rax, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rdi), %rcx
	jmp	*%rcx
doGC4E9:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rcx, 16(%rsi)
	movq	%r9, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC4E7, %r8
	jmp	ASM_InvokeGC
removeFn.48E:
	movq	%r8, %rcx
	jmp	gcTest4E8
	.text
k.4F6:
	jmp	gcTest503
	/* live= GP={%rax %rdi} spilled=  */
retGC502:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest503:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jle	doGC504
kCheck.501:
	/* Liveout:  GP={%rax %rdi}  */
	movq	8(%rdi), %rcx
	movq	(%rcx), %r9
	movq	16(%rdi), %rax
	movq	%rcx, %rdi
	jmp	*%r9
doGC504:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC502, %r8
	jmp	ASM_InvokeGC
	.text
k.4EE:
	jmp	gcTest507
	/* live= GP={%rax %rdi} spilled=  */
retGC506:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest507:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jle	doGC508
kCheck.505:
	/* Liveout:  GP={%rax %rdi}  */
	movq	8(%rdi), %rcx
	movq	(%rcx), %r9
	movq	16(%rdi), %rax
	movq	%rcx, %rdi
	jmp	*%r9
doGC508:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC506, %r8
	jmp	ASM_InvokeGC
	.text
k.48F:
	jmp	gcTest50B
	/* live= GP={%rax %r12} spilled=  */
retGC50A:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest50B:
	movq	%r11, %r14
	movq	448(%r14), %r15
	subq	%rsi, %r15
	jg	L515
doGC50C:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC50A, %r8
	jmp	ASM_InvokeGC
L515:
	movq	%rdi, %r12
kCheck.509:
	movq	%r8, %r14
	movq	%rsi, %r15
	movq	%r11, %rbx
	call	GetNumVProcs
	movq	%rax, %r13
	movq	%r14, %r8
	movq	%r15, %rsi
	movq	%rbx, %r11
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movq	$1, %r9
	movq	%r9, %rsi
	call	PromoteObj
	movq	%rax, %rdx
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movslq	%r13d, %r9
	movq	%r9, %rsi
	call	AllocBigPolyArray
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r13d, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	$458787, -8(%rsi)
	movq	128(%r12), %r14
	movq	%r14, (%rsi)
	movq	104(%r12), %r15
	movq	%r15, 8(%rsi)
	movq	112(%r12), %rax
	movq	%rax, 16(%rsi)
	movq	120(%r12), %rcx
	movq	%rcx, 24(%rsi)
	movq	88(%r12), %rdx
	movq	%rdx, 32(%rsi)
	movq	%r10, 40(%rsi)
	movq	80(%r12), %rbx
	movq	%rbx, 48(%rsi)
	movq	%rsi, %r13
	addq	$64, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %rbx
	movq	%r11, %rdi
	movq	%r13, %rsi
	call	PromoteObj
	movq	%rax, -56(%rbp)
	movq	%r15, %r8
	movq	%rbx, %r11
	movq	144(%r14), %rsi
	movq	$852043, -8(%rsi)
	movq	16(%r12), %r9
	movq	%r9, (%rsi)
	movq	24(%r12), %r10
	movq	%r10, 8(%rsi)
	movq	32(%r12), %r13
	movq	%r13, 16(%rsi)
	movq	40(%r12), %r14
	movq	%r14, 24(%rsi)
	movq	48(%r12), %r15
	movq	%r15, 32(%rsi)
	movq	56(%r12), %rax
	movq	%rax, 40(%rsi)
	movq	64(%r12), %rcx
	movq	%rcx, 48(%rsi)
	movq	72(%r12), %rdx
	movq	%rdx, 56(%rsi)
	movq	80(%r12), %rbx
	movq	%rbx, 64(%rsi)
	movq	88(%r12), %rdi
	movq	%rdi, 72(%rsi)
	movq	96(%r12), %r9
	movq	%r9, 80(%rsi)
	movq	128(%r12), %r10
	movq	%r10, 88(%rsi)
	movl	136(%r12), %r13d
	movl	%r13d, 96(%rsi)
	movq	%rsi, %rdi
	addq	$112, %rsi
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movabsq	$spawnWorker.511, %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	16(%r12), %rax
	movq	%rax, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.512, %rcx
	movq	%rcx, 8(%rsi)
	movq	%rsi, %r13
	movq	%r13, -64(%rbp)
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	call	ListVProcs
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.50E, %rcx
	movq	%rcx, (%rsi)
	movq	8(%r12), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%r12), %rdi
	movq	%rdi, 16(%rsi)
	movq	-56(%rbp), %r14
	movq	%r14, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.513, %r10
	movq	%r10, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	cmpq	$1, %rax
	je	L516
L_true514:
	movq	-64(%rbp), %r13
then.50F:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$458787, -8(%rsi)
	movabsq	$letJoinK.510, %rcx
	movq	%rcx, (%rsi)
	movq	16(%r12), %rdx
	movq	%rdx, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	%r13, 24(%rsi)
	movq	%r9, 32(%rsi)
	movq	8(%rax), %r9
	movq	%r9, 40(%rsi)
	movq	%rdi, 48(%rsi)
	movq	%rsi, %r9
	addq	$64, %rsi
	movq	(%rbx), %rdi
	movq	(%rax), %r10
	movq	(%r10), %r8
	movq	16(%r12), %r10
	jmp	spawnWorker.511
L516:
else.50D:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.50E
	.text
retGC518:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rbx
	movq	(%rdi), %rdi
gcTest519:
	movq	%r11, %r12
	movq	448(%r12), %r13
	subq	%rsi, %r13
	jg	L52A
doGC51A:
	movq	$262185, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC518, %r8
	jmp	ASM_InvokeGC
L52B:
	cmpq	$3, %r14
	jne	S_case520
S_case521:
	movq	%rdi, %r12
	movq	%rbx, %rdi
case.51B:
	/* Liveout:  GP={%rdi}  */
	movq	%r8, %r15
	movq	%rsi, %rbx
	movq	%r11, %r13
	call	VProcWake
	movq	%r15, %r8
	movq	%rbx, %rsi
	movq	%r13, %r11
	movq	%r12, %rdi
	jmp	letJoinK.51D
L52C:
else.524:
	movq	$196635, -8(%rsi)
	movq	%r13, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	%rsi, %r15
	addq	$32, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.523, %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %r10
	movq	%r10, -56(%rbp)
	addq	$24, %rsi
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.51D, %rcx
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	%rsi, %r12
	movq	%r12, -64(%rbp)
	addq	$32, %rsi
	movq	384(%rbx), %r12
	movq	$196611, -8(%rsi)
	movq	%r13, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %r14
	movq	%r11, %r13
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, %rcx
	movq	%r14, %r8
	movq	%r13, %r11
	movq	144(%r15), %rsi
	movq	%r12, %rax
	lock
	cmpxchgq	%rcx, 384(%rbx)
	cmpq	%r12, %rax
	jne	L_true525
	movq	-64(%rbp), %rdi
else.51F:
	movq	16(%rbx), %r14
	cmpq	$1, %r14
	jne	L52B
S_case520:
case.51E:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.51D
L_true525:
then.522:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	-56(%rbp), %r9
	movq	(%r9), %rdi
	movq	-64(%rbp), %r8
	jmp	lp.523
spawnWorker.511:
	movq	%r8, %rbx
	jmp	gcTest519
L52A:
spawnWorkerCheck.517:
	movq	$3, (%r11)
	movl	240(%r11), %r10d
	movq	8(%rdi), %r13
	movq	(%r13), %r12
	movq	%r10, %r14
	shlq	$3, %r14
	movq	(%r12,%r14,1), %r15
	incq	%r15
	movq	8(%rdi), %rcx
	movq	(%rcx), %rax
	shlq	$3, %r10
	movq	%r15, (%rax,%r10,1)
	movq	$327693, -8(%rsi)
	movl	240(%rbx), %edx
	movl	%edx, (%rsi)
	movq	48(%rdi), %r10
	movq	8(%r10), %r12
	movq	%r12, 8(%rsi)
	movq	48(%rdi), %r13
	movl	16(%r13), %r14d
	movl	%r14d, 16(%rsi)
	movq	48(%rdi), %r15
	movq	24(%r15), %rax
	movq	%rax, 24(%rsi)
	movq	48(%rdi), %rcx
	movq	32(%rcx), %rdx
	movq	%rdx, 32(%rsi)
	movq	%rsi, %r13
	addq	$48, %rsi
	movq	$786509, -8(%rsi)
	movabsq	$initWorker_P_.528, %r10
	movq	%r10, (%rsi)
	movq	(%rdi), %r14
	movq	%r14, 8(%rsi)
	movq	16(%rdi), %r15
	movq	%r15, 16(%rsi)
	movq	24(%rdi), %rax
	movq	%rax, 24(%rsi)
	movq	32(%rdi), %rcx
	movq	%rcx, 32(%rsi)
	movq	40(%rdi), %rdx
	movq	%rdx, 40(%rsi)
	movq	56(%rdi), %r10
	movq	%r10, 48(%rsi)
	movq	64(%rdi), %r12
	movq	%r12, 56(%rsi)
	movq	72(%rdi), %r14
	movq	%r14, 64(%rsi)
	movq	80(%rdi), %r15
	movq	%r15, 72(%rsi)
	movq	88(%rdi), %rax
	movq	%rax, 80(%rsi)
	movl	96(%rdi), %ecx
	movl	%ecx, 88(%rsi)
	movq	%rsi, %rdx
	addq	$104, %rsi
	movq	$3, (%r11)
	movq	$196627, -8(%rsi)
	movabsq	$letJoinK.527, %rdi
	movq	%rdi, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%r11, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	cmpq	%rbx, %r11
	jne	L52C
L_true529:
	movq	%r11, %r9
then.526:
	/* Liveout:  GP={%rdi}  */
	movq	$196611, -8(%rsi)
	movq	%r13, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	88(%r9), %rbx
	movq	%rbx, 16(%rsi)
	movq	%rsi, %rdx
	addq	$32, %rsi
	movq	%rdx, 88(%r9)
	jmp	letJoinK.527
	/* live= GP={%r10 %r9 %rbx %rdi} spilled=  */
	jmp	retGC518
	.text
initWorker_P_.528:
	jmp	gcTest52F
	/* live= GP={%rax %rbx} spilled=  */
retGC52E:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest52F:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jle	doGC530
	movq	%rdi, %rbx
initWorker_P_Check.52D:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$3, (%r11)
	movq	%r8, %r12
	movq	%rsi, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	80(%rbx), %r9
	movq	%r9, %rsi
	movl	$64000, %r15d
	movslq	%r15d, %rdx
	call	M_PrimaryDequeAlloc
	movq	%rax, %r15
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	movq	%r8, %r12
	movq	%rsi, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	80(%rbx), %rax
	movq	%rax, %rsi
	movl	$64000, %edx
	movslq	%edx, %rdx
	call	M_SecondaryDequeAlloc
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	movq	$65537, -8(%rsi)
	movq	%r15, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	64(%rbx), %r12
	movq	(%r12), %r10
	movl	240(%r11), %ecx
	shlq	$3, %rcx
	movq	%rax, (%r10,%rcx,1)
	movq	$917583, -8(%rsi)
	movabsq	$schedLp.533, %r13
	movq	%r13, (%rsi)
	movq	8(%rbx), %r14
	movq	%r14, 8(%rsi)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsi)
	movq	24(%rbx), %rcx
	movq	%rcx, 24(%rsi)
	movq	32(%rbx), %rdx
	movq	%rdx, 32(%rsi)
	movq	40(%rbx), %rdi
	movq	%rdi, 40(%rsi)
	movq	48(%rbx), %r9
	movq	%r9, 48(%rsi)
	movq	56(%rbx), %r10
	movq	%r10, 56(%rsi)
	movq	64(%rbx), %r12
	movq	%r12, 64(%rsi)
	movq	72(%rbx), %r13
	movq	%r13, 72(%rsi)
	movq	80(%rbx), %r14
	movq	%r14, 80(%rsi)
	movl	88(%rbx), %eax
	movl	%eax, 88(%rsi)
	movq	%r11, 96(%rsi)
	movq	%r15, 104(%rsi)
	movq	%rsi, %rdi
	addq	$120, %rsi
	movq	$1, %rax
	jmp	schedLp.533
doGC530:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC52E, %r8
	jmp	ASM_InvokeGC
	.text
retGC535:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	jmp	gcTest536
L_true540:
	movq	8(%rax), %r9
then.53D:
	movq	(%r13), %r15
	movq	8(%r15), %r14
	movq	$327761, -8(%rsi)
	movabsq	$letJoinK.539, %rax
	movq	%rax, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%r15, 16(%rsi)
	movq	96(%rdx), %rcx
	movq	%rcx, 24(%rsi)
	movq	104(%rdx), %rbx
	movq	%rbx, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	cmpq	$1, %r14
	je	L550
L_true53E:
then.53A:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.53B, %rbx
	movq	%rbx, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	16(%rdx), %rdi
	movq	(%rdi), %rdi
	movq	(%r14), %r8
	movq	8(%rdx), %r12
	jmp	wrap_D_fiber.47
L550:
else.538:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %r8
	jmp	letJoinK.539
L552:
	cmpq	$1, %r15
	jne	S_case54D
S_case54E:
case.53F:
	movq	24(%r11), %rdi
	movq	8(%rdi), %r13
	cmpq	$1, %r13
	jne	L_true540
else.53C:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r10
	movq	%r10, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r12
	movq	%r12, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	8(%rdx), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
schedLp.533:
gcTest536:
	movq	%r11, %rcx
	movq	448(%rcx), %r15
	subq	%rsi, %r15
	jle	doGC537
schedLpCheck.534:
	movq	$917583, -8(%rsi)
	movabsq	$executeNextTask.54B, %rcx
	movq	%rcx, (%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rsi)
	movq	24(%rdi), %rbx
	movq	%rbx, 16(%rsi)
	movq	32(%rdi), %r9
	movq	%r9, 24(%rsi)
	movq	40(%rdi), %r10
	movq	%r10, 32(%rsi)
	movq	48(%rdi), %r12
	movq	%r12, 40(%rsi)
	movq	56(%rdi), %r13
	movq	%r13, 48(%rsi)
	movq	64(%rdi), %r14
	movq	%r14, 56(%rsi)
	movq	72(%rdi), %r15
	movq	%r15, 64(%rsi)
	movq	%rdi, 72(%rsi)
	movq	80(%rdi), %rcx
	movq	%rcx, 80(%rsi)
	movl	88(%rdi), %edx
	movl	%edx, 88(%rsi)
	movq	96(%rdi), %rbx
	movq	%rbx, 96(%rsi)
	movq	104(%rdi), %r9
	movq	%r9, 104(%rsi)
	movq	%rsi, %rcx
	addq	$120, %rsi
	cmpq	$1, %rax
	je	L551
L_true54F:
	movq	%rdi, %rdx
then.54C:
	movq	(%rax), %r15
	cmpq	$5, %r15
	jne	L552
S_case54D:
case.548:
	movq	24(%r11), %r14
	movq	8(%r14), %rbx
	cmpq	$1, %rbx
	jne	L_true549
else.545:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r15
	movq	%r15, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rax
	movq	%rax, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	8(%rdx), %rdi
	movq	(%rdi), %rcx
	jmp	*%rcx
L551:
	movq	%rcx, %rdi
else.54A:
	/* Liveout:  GP={%rdi}  */
	jmp	executeNextTask.54B
L_true549:
	movq	8(%rax), %r9
then.546:
	movq	(%rbx), %rbx
	movq	8(%rbx), %r12
	movq	$327761, -8(%rsi)
	movabsq	$letJoinK.542, %rdi
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	96(%rdx), %r10
	movq	%r10, 24(%rsi)
	movq	104(%rdx), %r13
	movq	%r13, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	cmpq	$1, %r12
	jne	L_true547
else.541:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %r8
	jmp	letJoinK.542
L_true547:
then.543:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.544, %r10
	movq	%r10, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	16(%rdx), %r13
	movq	(%r13), %rdi
	movq	(%r12), %r8
	movq	8(%rdx), %r12
	jmp	wrap_D_fiber.47
doGC537:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC535, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%rax %rdi} spilled=  */
	jmp	retGC535
	.text
else.557:
	decl	%edx
	movq	104(%rbx), %r13
	movq	%rdx, %r15
	shll	$3, %r15d
	movslq	%r15d, %r14
	movq	16(%r13,%r14,1), %r12
	movq	104(%rbx), %rax
	movq	%rdx, %rdi
	shll	$3, %edi
	movslq	%edi, %rcx
	movq	$1, 16(%rax,%rcx,1)
	movq	104(%rbx), %r10
	leaq	4(%r10), %r9
	movq	104(%rbx), %r13
	movl	%edx, 4(%r13)
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	jmp	letJoinK.558
L563:
executeNextTaskCheck.553:
	movq	104(%rdi), %r15
	movq	104(%rdi), %rax
	movl	4(%r15), %ecx
	cmpl	(%rax), %ecx
	je	L_true561
	movq	%rdi, %rbx
else.55A:
	movq	104(%rbx), %rax
	movl	4(%rax), %edx
	cmpl	$0, %edx
	jg	else.557
L_true55B:
	movq	104(%rbx), %rcx
	movl	8(%rcx), %edi
then.559:
	decl	%edi
	movq	104(%rbx), %r15
	movq	%rdi, %rcx
	shll	$3, %ecx
	movslq	%ecx, %rax
	movq	16(%r15,%rax,1), %r14
	movq	104(%rbx), %rdx
	movq	%rdi, %r10
	shll	$3, %r10d
	movslq	%r10d, %r9
	movq	$1, 16(%rdx,%r9,1)
	movq	104(%rbx), %r13
	leaq	4(%r13), %r12
	movq	104(%rbx), %r15
	movl	%edi, 4(%r15)
	movq	$65539, -8(%rsi)
	movq	%r14, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
letJoinK.558:
	cmpq	$1, %rdi
	jne	L_true560
else.55D:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$852051, -8(%rsi)
	movabsq	$letJoinK.55E, %rdx
	movq	%rdx, (%rsi)
	movq	8(%rbx), %rdi
	movq	%rdi, 8(%rsi)
	movq	16(%rbx), %r9
	movq	%r9, 16(%rsi)
	movq	24(%rbx), %r10
	movq	%r10, 24(%rsi)
	movq	32(%rbx), %r12
	movq	%r12, 32(%rsi)
	movq	40(%rbx), %r13
	movq	%r13, 40(%rsi)
	movq	48(%rbx), %r14
	movq	%r14, 48(%rsi)
	movq	64(%rbx), %r15
	movq	%r15, 56(%rsi)
	movq	%rbx, 64(%rsi)
	movq	80(%rbx), %rax
	movq	%rax, 72(%rsi)
	movl	88(%rbx), %ecx
	movl	%ecx, 80(%rsi)
	movq	96(%rbx), %rdx
	movq	%rdx, 88(%rsi)
	movq	104(%rbx), %rdi
	movq	%rdi, 96(%rsi)
	movq	%rsi, %r10
	addq	$112, %rsi
	movq	32(%rbx), %r9
	movq	(%r9), %rdi
	movq	96(%rbx), %r8
	movq	80(%rbx), %r9
	jmp	try_D_pop_D_local_D_in_D_atomic.3FC
L_true561:
	movq	%rdi, %rbx
then.55C:
	movq	$1, %rdi
	jmp	letJoinK.558
L_true560:
then.55F:
	/* Liveout:  GP={%rax %rdi}  */
	movq	(%rdi), %r12
	movq	$65537, -8(%rsi)
	movq	104(%rbx), %r10
	movq	%r10, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	56(%rbx), %r15
	movq	(%r15), %r14
	movq	96(%rbx), %rcx
	movl	240(%rcx), %ecx
	shlq	$3, %rcx
	movq	%rax, (%r14,%rcx,1)
	movq	24(%r11), %rdx
	movq	$65539, -8(%rsi)
	movq	8(%r12), %r9
	movq	%r9, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movq	$327693, -8(%rsi)
	movl	(%rdx), %r13d
	movl	%r13d, (%rsi)
	movq	%rdi, 8(%rsi)
	movl	16(%rdx), %r14d
	movl	%r14d, 16(%rsi)
	movq	24(%rdx), %r15
	movq	%r15, 24(%rsi)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rsi)
	movq	%rsi, %r10
	addq	$48, %rsi
	movq	%r10, 24(%r11)
	movq	(%r12), %rdi
	movq	$131075, -8(%rsi)
	movq	72(%rbx), %rdx
	movq	%rdx, (%rsi)
	movq	96(%rbx), %r9
	movq	32(%r9), %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	96(%rbx), %r12
	movq	%rcx, 32(%r12)
	movq	96(%rbx), %r13
	movq	$1, (%r13)
	movq	(%rdi), %r14
	movq	$1, %rax
	jmp	*%r14
executeNextTask.54B:
	jmp	gcTest555
retGC554:
	movq	(%rdi), %rdi
gcTest555:
	movq	%r11, %r10
	movq	448(%r10), %r9
	subq	%rsi, %r9
	jg	L563
doGC556:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC554, %r8
	jmp	ASM_InvokeGC
	.text
else.568:
	movq	96(%rdi), %r14
	leaq	4(%r14), %r12
	movq	%r13, %r14
	incl	%r14d
	movq	96(%rdi), %r15
	movl	%r14d, 4(%r15)
	movq	96(%rdi), %rdi
	movq	%rdx, %r15
	shll	$3, %r15d
	movslq	%r15d, %r12
	movq	%rax, 16(%rdi,%r12,1)
	jmp	letJoinK.569
L_true56E:
then.56A:
	movq	96(%rdi), %r14
	leaq	4(%r14), %r13
	movq	96(%rdi), %r15
	movl	$0, 4(%r15)
	movq	96(%rdi), %rax
	shll	$3, %edx
	movslq	%edx, %rdx
	movq	%r12, 16(%rax,%rdx,1)
letJoinK.569:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rcx), %rdi
	movq	%rbx, %r8
	jmp	lp.56B
letJoinK.55E:
	jmp	gcTest566
	/* live= GP={%rax %rdi} spilled=  */
retGC565:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest566:
	movq	%r11, %rcx
	movq	448(%rcx), %r14
	subq	%rsi, %r14
	jg	L575
doGC567:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC565, %r8
	jmp	ASM_InvokeGC
L575:
letJoinKCheck.564:
	cmpq	$1, %rax
	jne	L_true574
	movq	%rdi, %r12
else.56F:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movl	$1, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %r14
	movq	%r11, %r13
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, %rbx
	movq	%r14, %r8
	movq	%r13, %r11
	movq	144(%r15), %rsi
	movq	%r8, %r13
	movq	%rsi, %r14
	movq	%r11, %r15
	call	GetNumVProcs
	movq	%r13, %r8
	movq	%r14, %rsi
	movq	%r15, %r11
	movq	$1114197, -8(%rsi)
	movabsq	$lp.570, %rcx
	movq	%rcx, (%rsi)
	movq	8(%r12), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%r12), %rdi
	movq	%rdi, 16(%rsi)
	movq	24(%r12), %r9
	movq	%r9, 24(%rsi)
	movq	32(%r12), %r10
	movq	%r10, 32(%rsi)
	movq	40(%r12), %r13
	movq	%r13, 40(%rsi)
	movq	48(%r12), %r14
	movq	%r14, 48(%rsi)
	movq	56(%r12), %r15
	movq	%r15, 56(%rsi)
	movq	64(%r12), %rcx
	movq	%rcx, 64(%rsi)
	movq	%rbx, 72(%rsi)
	movq	72(%r12), %rdx
	movq	%rdx, 80(%rsi)
	movl	80(%r12), %ebx
	movl	%ebx, 88(%rsi)
	movq	88(%r12), %rdi
	movq	%rdi, 96(%rsi)
	movq	96(%r12), %r9
	movq	%r9, 104(%rsi)
	movl	$20, 112(%rsi)
	movl	%eax, 120(%rsi)
	movq	88(%r12), %r10
	movl	240(%r10), %r12d
	movl	%r12d, 128(%rsi)
	movq	%rsi, %rdi
	addq	$144, %rsi
	xorl	%r8d, %r8d
	jmp	lp.570
L_true574:
then.571:
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.572, %r13
	movq	%r13, (%rsi)
	movq	64(%rdi), %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$65537, -8(%rsi)
	movq	96(%rdi), %rcx
	movq	%rcx, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.56B, %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	cmpq	$1, %rax
	jne	L_true573
else.56C:
	/* Liveout:  GP={%rdi}  */
	movq	64(%rdi), %rdi
	jmp	executeNextTask.54B
L_true573:
	movq	%rdx, %r9
	movq	$1, %r10
then.56D:
	movq	8(%rax), %rbx
	movq	(%rax), %r12
	movq	96(%rdi), %r13
	movl	4(%r13), %edx
	movq	96(%rdi), %r14
	movl	4(%r14), %eax
	movq	96(%rdi), %r15
	movl	8(%r15), %r13d
	decl	%r13d
	cmpl	%r13d, %eax
	jge	L_true56E
	movq	%rax, %r13
	movq	%r12, %rax
	jmp	else.568
	.text
letJoinK.572:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	executeNextTask.54B
	.text
then.57B:
	xorl	%ebx, %ebx
letJoinK.57A:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rdi), %r12
	leaq	4(%r12), %r15
	movq	(%rdi), %r13
	movl	%ebx, 4(%r13)
	movq	(%rdi), %r14
	shll	$3, %eax
	movslq	%eax, %r15
	movq	%rcx, 16(%r14,%r15,1)
	movq	%rdx, %r8
lp.56B:
	movq	%r8, %r13
	cmpq	$1, %r13
	je	L581
L_true576:
then.578:
gcTest57E:
	movq	%r11, %rax
	movq	448(%rax), %r14
	subq	%rsi, %r14
	jle	doGC57F
thenCheck.57C:
	movq	8(%r13), %rdx
	movq	(%r13), %rcx
	movq	(%rdi), %rbx
	movl	4(%rbx), %eax
	movq	(%rdi), %r12
	movl	4(%r12), %ebx
	movq	(%rdi), %r13
	movl	8(%r13), %r12d
	decl	%r12d
	cmpl	%r12d, %ebx
	jge	then.57B
L582:
else.579:
	incl	%ebx
	jmp	letJoinK.57A
doGC57F:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC57D, %r8
	jmp	ASM_InvokeGC
retGC57D:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
	jmp	gcTest57E
L581:
else.577:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	letJoinK.572
	.text
lp.570:
	movq	%r8, %rdx
	jmp	gcTest585
	/* live= GP={%rdx %rdi} spilled=  */
retGC584:
	movl	8(%rdi), %edx
	movq	(%rdi), %rdi
gcTest585:
	movq	%r11, %r9
	movq	448(%r9), %rbx
	subq	%rsi, %rbx
	jle	doGC586
lpCheck.583:
	cmpl	120(%rdi), %edx
	jle	L591
L_true590:
	movq	%rdi, %rcx
then.58D:
	movq	$589913, -8(%rsi)
	movabsq	$letJoinK.58A, %rdi
	movq	%rdi, (%rsi)
	movq	40(%rcx), %r9
	movq	%r9, 8(%rsi)
	movq	48(%rcx), %r10
	movq	%r10, 16(%rsi)
	movq	56(%rcx), %r12
	movq	%r12, 24(%rsi)
	movq	72(%rcx), %r13
	movq	%r13, 32(%rsi)
	movq	%rcx, 40(%rsi)
	movl	88(%rcx), %r14d
	movl	%r14d, 48(%rsi)
	movl	112(%rcx), %r15d
	movl	%r15d, 56(%rsi)
	movl	128(%rcx), %eax
	movl	%eax, 64(%rsi)
	movq	%rsi, %rdi
	addq	$80, %rsi
	movq	96(%rcx), %rbx
	movq	8(%rbx), %rdx
	cmpq	$1, %rdx
	je	S_case58E
	cmpq	$3, %rdx
	jne	S_case58E
S_case58F:
case.587:
	/* Liveout:  GP={%rax %rdi}  */
	movq	96(%rcx), %r10
	movq	$1, 8(%r10)
	movq	$131105, -8(%rsi)
	movabsq	$k.588, %r13
	movq	%r13, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	96(%rcx), %r15
	movq	32(%r15), %r14
	movq	8(%r14), %rdx
	movq	96(%rcx), %rbx
	movq	%rdx, 32(%rbx)
	movq	(%r14), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
doGC586:
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movl	%edx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC584, %r8
	jmp	ASM_InvokeGC
S_case58E:
case.589:
	/* Liveout:  GP={%rdi}  */
	movq	96(%rcx), %r10
	movq	$1, (%r10)
	jmp	letJoinK.58A
L591:
else.58B:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$786519, -8(%rsi)
	movabsq	$k.58C, %r13
	movq	%r13, (%rsi)
	movq	8(%rdi), %r14
	movq	%r14, 8(%rsi)
	movq	16(%rdi), %r15
	movq	%r15, 16(%rsi)
	movq	24(%rdi), %rax
	movq	%rax, 24(%rsi)
	movq	32(%rdi), %rcx
	movq	%rcx, 32(%rsi)
	movq	56(%rdi), %rbx
	movq	%rbx, 40(%rsi)
	movq	64(%rdi), %r9
	movq	%r9, 48(%rsi)
	movq	%rdi, 56(%rsi)
	movq	80(%rdi), %r10
	movq	%r10, 64(%rsi)
	movq	96(%rdi), %r12
	movq	%r12, 72(%rsi)
	movq	104(%rdi), %r13
	movq	%r13, 80(%rsi)
	movl	%edx, 88(%rsi)
	movq	%rsi, %r12
	addq	$104, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	96(%rdi), %r15
	movq	32(%r15), %r14
	movq	8(%r14), %rcx
	movq	96(%rdi), %rdx
	movq	%rcx, 32(%rdx)
	movq	(%r14), %rdi
	movq	(%rdi), %rbx
	jmp	*%rbx
	.text
letJoinK.58A:
	jmp	gcTest594
	/* live= GP={%rdi} spilled=  */
retGC593:
	movq	(%rdi), %rdi
gcTest594:
	movq	%r11, %r9
	movq	448(%r9), %rbx
	subq	%rsi, %rbx
	jg	L5A3
doGC595:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC593, %r8
	jmp	ASM_InvokeGC
L5A3:
letJoinKCheck.592:
	movq	$1, %r15
	cmpq	$1, %r15
	je	S_case5A1
	cmpq	$3, %r15
	je	S_case5A2
S_case5A1:
	movq	%rdi, %rbx
case.59A:
	movl	$1, %r14d
	movq	8(%rbx), %r15
	lock
	xaddl	%r14d, (%r15)
	movl	48(%rbx), %edx
	decl	%edx
	cmpl	%edx, %r14d
	je	L_true59B
	jmp	letJoinK.597
L_true59B:
then.599:
	/* flushLoads */
	movq	16(%rbx), %r13
	movq	$3, (%r13)
	jmp	letJoinK.597
else.598:
letJoinK.597:
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	movq	$3, %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	24(%rbx), %rdi
	movq	(%rdi), %rdx
	movl	64(%rbx), %ecx
	shlq	$3, %rcx
	movq	%rax, (%rdx,%rcx,1)
	movq	32(%rbx), %r9
	movl	$1, %r15d
	movl	(%r9), %ecx
	shll	%cl, %r15d
	movq	$65537, -8(%rsi)
	movl	%r15d, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r10, (%rsi)
	movabsq	$spin.59D, %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	xorl	%r10d, %r10d
	movq	$589913, -8(%rsi)
	movabsq	$letJoinK.59F, %r13
	movq	%r13, (%rsi)
	movq	8(%rbx), %r14
	movq	%r14, 8(%rsi)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsi)
	movq	24(%rbx), %rcx
	movq	%rcx, 24(%rsi)
	movq	32(%rbx), %rdx
	movq	%rdx, 32(%rsi)
	movq	40(%rbx), %rdi
	movq	%rdi, 40(%rsi)
	movl	48(%rbx), %r9d
	movl	%r9d, 48(%rsi)
	movl	56(%rbx), %r13d
	movl	%r13d, 56(%rsi)
	movl	64(%rbx), %r14d
	movl	%r14d, 64(%rsi)
	movq	%rsi, %r9
	addq	$80, %rsi
	cmpl	%r15d, %r10d
	jl	L_true5A0
else.59C:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	(%r12), %rdi
	movq	%r10, %r8
	incl	%r8d
	jmp	spin.59D
L_true5A0:
	movq	%r9, %rdi
then.59E:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.59F
S_case5A2:
	movq	%rdi, %rbx
case.596:
	movl	$-1, %r10d
	movq	8(%rbx), %r12
	lock
	xaddl	%r10d, (%r12)
	jmp	letJoinK.597
	.text
spinCheck.5A4:
	cmpl	(%rdi), %eax
	jge	L5AB
L_true5AA:
	movq	%r9, %rdi
then.5A9:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.59F
L5AB:
else.5A8:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	%rax, %r8
	incl	%r8d
spin.59D:
	movq	%r8, %rax
	jmp	gcTest5A6
retGC5A5:
	movq	16(%rdi), %r9
	movl	8(%rdi), %eax
	movq	(%rdi), %rdi
gcTest5A6:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	spinCheck.5A4
doGC5A7:
	movq	$196661, -8(%rsi)
	movq	%rdi, (%rsi)
	movl	%eax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC5A5, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.59F:
	movq	32(%rdi), %rdx
	movl	(%rdx), %ebx
	cmpl	56(%rdi), %ebx
	jle	L_true5AD
else.5AE:
	/* flushLoads */
	movq	32(%rdi), %r9
	movl	$1, (%r9)
	movq	$3, %rax
letJoinK.5B0:
	movq	$458843, -8(%rsi)
	movabsq	$letJoinK.5B4, %rbx
	movq	%rbx, (%rsi)
	movq	8(%rdi), %r9
	movq	%r9, 8(%rsi)
	movq	16(%rdi), %r10
	movq	%r10, 16(%rsi)
	movq	24(%rdi), %r12
	movq	%r12, 24(%rsi)
	movq	40(%rdi), %r13
	movq	%r13, 32(%rsi)
	movl	48(%rdi), %r14d
	movl	%r14d, 40(%rsi)
	movl	64(%rdi), %r15d
	movl	%r15d, 48(%rsi)
	movq	%rsi, %rdi
	addq	$64, %rsi
	cmpq	$1, %rax
	je	S_case5B5
	cmpq	$3, %rax
	je	S_case5B6
S_case5B5:
case.5B3:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.5B4
S_case5B6:
case.5B1:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131105, -8(%rsi)
	movabsq	$k.5B2, %r14
	movq	%r14, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	$196627, -8(%rsi)
	movq	$3, (%rsi)
	movq	%r13, 8(%rsi)
	movq	$1000000, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	$3, (%r11)
	movq	32(%r11), %r15
	movq	8(%r15), %rcx
	movq	%rcx, 32(%r11)
	movq	(%r15), %rdi
	movq	(%rdi), %rdx
	jmp	*%rdx
L_true5AD:
then.5AF:
	/* flushLoads */
	movq	32(%rdi), %r12
	movl	(%r12), %ecx
	incl	%ecx
	movq	32(%rdi), %r10
	movl	%ecx, (%r10)
	movq	$1, %rax
	jmp	letJoinK.5B0
	.text
letJoinK.5B4:
	jmp	gcTest5B9
	/* live= GP={%rdi} spilled=  */
retGC5B8:
	movq	(%rdi), %rdi
gcTest5B9:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC5BA
letJoinKCheck.5B7:
	movq	16(%rdi), %r10
	movq	(%r10), %r9
	cmpq	$1, %r9
	je	S_case5C4
	cmpq	$3, %r9
	je	case.5BB
S_case5C4:
	movq	%rdi, %rbx
case.5C1:
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	$1, %rax
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	24(%rbx), %rdx
	movq	(%rdx), %rcx
	movl	48(%rbx), %r15d
	shlq	$3, %r15
	movq	%rax, (%rcx,%r15,1)
	movq	$3, %rdi
	cmpq	$1, %rdi
	je	S_case5C2
	cmpq	$3, %rdi
	je	S_case5C3
S_case5C2:
case.5BF:
	movl	$1, %r14d
	movq	8(%rbx), %r15
	lock
	xaddl	%r14d, (%r15)
	movl	40(%rbx), %eax
	decl	%eax
	cmpl	%eax, %r14d
	je	L_true5C0
else.5BD:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$3, (%r11)
	movq	32(%rbx), %rdi
	xorl	%r8d, %r8d
	jmp	lp.570
case.5BB:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$3, (%r11)
	movq	32(%r11), %rbx
	movq	8(%rbx), %rdi
	movq	%rdi, 32(%r11)
	movq	(%rbx), %rdi
	movq	(%rdi), %r9
	movq	$1, %rax
	jmp	*%r9
doGC5BA:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC5B8, %r8
	jmp	ASM_InvokeGC
L_true5C0:
then.5BE:
	/* Liveout:  GP={%r8 %rdi}  */
	/* flushLoads */
	movq	16(%rbx), %r13
	movq	$3, (%r13)
	movq	$3, (%r11)
	movq	32(%rbx), %rdi
	xorl	%r8d, %r8d
	jmp	lp.570
S_case5C3:
case.5BC:
	/* Liveout:  GP={%r8 %rdi}  */
	movl	$-1, %r10d
	movq	8(%rbx), %r12
	lock
	xaddl	%r10d, (%r12)
	movq	$3, (%r11)
	movq	32(%rbx), %rdi
	xorl	%r8d, %r8d
	jmp	lp.570
	.text
k.5B2:
	jmp	gcTest5C7
	/* live= GP={%rax %rdi} spilled=  */
retGC5C6:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest5C7:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC5C8
kCheck.5C5:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	letJoinK.5B4
doGC5C8:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC5C6, %r8
	jmp	ASM_InvokeGC
	.text
k.588:
	jmp	gcTest5CB
	/* live= GP={%rax %rdi} spilled=  */
retGC5CA:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest5CB:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC5CC
kCheck.5C9:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	letJoinK.58A
doGC5CC:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC5CA, %r8
	jmp	ASM_InvokeGC
	.text
case.5D3:
	/* Liveout:  GP={%rdi}  */
	movq	%r8, %r14
	movq	%rsi, %r15
	movq	%r11, %r12
	call	VProcWake
	movq	%r14, %r8
	movq	%r15, %rsi
	movq	%r12, %r11
	movq	%rbx, %rdi
	jmp	letJoinK.5D4
L5E5:
else.5DE:
	movq	40(%rbx), %rcx
	movq	(%rcx), %r15
	shlq	$3, %r12
	movq	(%r15,%r12,1), %r14
	cmpq	$1, %r14
	je	S_case5DF
	cmpq	$3, %r14
	je	S_case5E0
S_case5DF:
	movq	%rdi, %r14
	movq	%rax, -64(%rbp)
case.5DB:
	movq	$65539, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r12
	movq	%r11, %r15
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%r12, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	$196627, -8(%rsi)
	movabsq	$thief.5DC, %rcx
	movq	%rcx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	64(%rbx), %rdx
	movq	%rdx, 16(%rsi)
	movq	%rsi, %rcx
	addq	$32, %rsi
	movq	24(%r11), %rdx
	movq	$196635, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	-64(%rbp), %r13
	movq	%r13, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movabsq	$lp.5DA, %r9
	movq	%r9, 8(%rsi)
	movq	%rsi, %r15
	movq	%r15, -56(%rbp)
	addq	$24, %rsi
	movq	$524343, -8(%rsi)
	movabsq	$letJoinK.5D4, %r10
	movq	%r10, (%rsi)
	movq	8(%rbx), %r12
	movq	%r12, 8(%rsi)
	movq	16(%rbx), %r13
	movq	%r13, 16(%rsi)
	movq	24(%rbx), %r15
	movq	%r15, 24(%rsi)
	movq	%r14, 32(%rsi)
	movq	%rax, 40(%rsi)
	movq	72(%rbx), %rdi
	movq	%rdi, 48(%rsi)
	movq	-64(%rbp), %rax
	movq	%rax, 56(%rsi)
	movq	%rsi, %rdi
	movq	%rdi, -72(%rbp)
	addq	$72, %rsi
	movq	-64(%rbp), %r9
	movq	384(%r9), %r12
	movq	$196611, -8(%rsi)
	movq	%rdx, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %r14
	movq	%r11, %r13
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, %r10
	movq	%r14, %r8
	movq	%r13, %r11
	movq	144(%r15), %rsi
	movq	%r12, %rax
	movq	-64(%rbp), %r13
	lock
	cmpxchgq	%r10, 384(%r13)
	cmpq	%r12, %rax
	jne	L_true5DD
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %r9
else.5D6:
	movq	16(%r9), %r13
	cmpq	$1, %r13
	je	S_case5D7
	cmpq	$3, %r13
	jne	S_case5D7
S_case5D8:
	movq	%rdi, %rbx
	movq	%r9, %rdi
	jmp	case.5D3
S_case5E0:
case.5D1:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, %rax
	jmp	letJoinK.5D2
S_case5D7:
case.5D5:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.5D4
L_true5DD:
then.5D9:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	-56(%rbp), %r12
	movq	(%r12), %rdi
	movq	-72(%rbp), %r8
	jmp	lp.5DA
	/* live= GP={%rax %rbx} spilled=  */
retGC5CE:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest5CF:
	movq	%r11, %r10
	movq	448(%r10), %r12
	subq	%rsi, %r12
	jle	doGC5D0
	movq	%rdi, %rbx
kCheck.5CD:
	movq	$3, (%r11)
	movq	%r8, %r12
	movq	%rsi, %r13
	movq	%r11, %r14
	call	GetNumVProcs
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	movq	%r8, %r15
	movq	%rsi, %r13
	movq	%r11, %r14
	xorl	%edx, %edx
	movslq	%edx, %rdi
	movslq	%eax, %rax
	movq	%rax, %rsi
	call	M_RandomInt
	movq	%rax, %r12
	movq	%r15, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	movq	%r8, %r13
	movq	%rsi, %r14
	movq	%r11, %r15
	movslq	%r12d, %rdi
	call	GetNthVProc
	movq	%r13, %r8
	movq	%r14, %rsi
	movq	%r15, %r11
	movq	$327761, -8(%rsi)
	movabsq	$letJoinK.5D2, %rcx
	movq	%rcx, (%rsi)
	movq	48(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	movq	56(%rbx), %rdi
	movq	%rdi, 16(%rsi)
	movq	80(%rbx), %r9
	movq	%r9, 24(%rsi)
	movl	88(%rbx), %r10d
	movl	%r10d, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	cmpq	72(%rbx), %rax
	jne	L5E5
L_true5E4:
	movq	%rdi, %r10
then.5E1:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	32(%rbx), %rdx
	movq	(%rdx), %rdi
	movq	72(%rbx), %r8
	movq	64(%rbx), %r9
	jmp	try_D_pop_D_local_D_in_D_atomic.3FC
doGC5D0:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC5CE, %r8
	jmp	ASM_InvokeGC
k.58C:
	jmp	gcTest5CF
	.text
else.5EA:
	movq	24(%rdi), %r14
	leaq	4(%r14), %r12
	movq	%r13, %r14
	incl	%r14d
	movq	24(%rdi), %r15
	movl	%r14d, 4(%r15)
	movq	24(%rdi), %rdi
	movq	%rdx, %r15
	shll	$3, %r15d
	movslq	%r15d, %r12
	movq	%rax, 16(%rdi,%r12,1)
	jmp	letJoinK.5EB
L_true5F0:
then.5EC:
	movq	24(%rdi), %r14
	leaq	4(%r14), %r13
	movq	24(%rdi), %r15
	movl	$0, 4(%r15)
	movq	24(%rdi), %rax
	shll	$3, %edx
	movslq	%edx, %rdx
	movq	%r12, 16(%rax,%rdx,1)
letJoinK.5EB:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rcx), %rdi
	movq	%rbx, %r8
	jmp	lp.5ED
letJoinK.5D2:
	jmp	gcTest5E8
	/* live= GP={%rax %rdi} spilled=  */
retGC5E7:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest5E8:
	movq	%r11, %rcx
	movq	448(%rcx), %r14
	subq	%rsi, %r14
	jg	L5F6
doGC5E9:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC5E7, %r8
	jmp	ASM_InvokeGC
L5F6:
letJoinKCheck.5E6:
	cmpq	$1, %rax
	jne	L_true5F5
	movq	%rdi, %r9
else.5F1:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	16(%r9), %rdi
	movl	32(%r9), %eax
	movq	%rax, %r8
	incl	%r8d
	jmp	lp.570
L_true5F5:
then.5F2:
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.5F3, %rcx
	movq	%rcx, (%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$65537, -8(%rsi)
	movq	24(%rdi), %r9
	movq	%r9, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%rbx, (%rsi)
	movabsq	$lp.5ED, %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	cmpq	$1, %rax
	jne	L_true5F4
else.5EE:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	executeNextTask.54B
L_true5F4:
	movq	%rdx, %r9
	movq	$1, %r10
then.5EF:
	movq	8(%rax), %rbx
	movq	(%rax), %r12
	movq	24(%rdi), %r13
	movl	4(%r13), %edx
	movq	24(%rdi), %r14
	movl	4(%r14), %eax
	movq	24(%rdi), %r15
	movl	8(%r15), %r13d
	decl	%r13d
	cmpl	%r13d, %eax
	jge	L_true5F0
	movq	%rax, %r13
	movq	%r12, %rax
	jmp	else.5EA
	.text
letJoinK.5F3:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	executeNextTask.54B
	.text
then.5FC:
	xorl	%ebx, %ebx
letJoinK.5FB:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rdi), %r12
	leaq	4(%r12), %r15
	movq	(%rdi), %r13
	movl	%ebx, 4(%r13)
	movq	(%rdi), %r14
	shll	$3, %eax
	movslq	%eax, %r15
	movq	%rcx, 16(%r14,%r15,1)
	movq	%rdx, %r8
lp.5ED:
	movq	%r8, %r13
	cmpq	$1, %r13
	je	L602
L_true5F7:
then.5F9:
gcTest5FF:
	movq	%r11, %rax
	movq	448(%rax), %r14
	subq	%rsi, %r14
	jle	doGC600
thenCheck.5FD:
	movq	8(%r13), %rdx
	movq	(%r13), %rcx
	movq	(%rdi), %rbx
	movl	4(%rbx), %eax
	movq	(%rdi), %r12
	movl	4(%r12), %ebx
	movq	(%rdi), %r13
	movl	8(%r13), %r12d
	decl	%r12d
	cmpl	%r12d, %ebx
	jge	then.5FC
L603:
else.5FA:
	incl	%ebx
	jmp	letJoinK.5FB
doGC600:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC5FE, %r8
	jmp	ASM_InvokeGC
retGC5FE:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
	jmp	gcTest5FF
L602:
else.5F8:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	letJoinK.5F3
	.text
else.612:
letJoinK.609:
	movq	%r8, %r12
	movq	%rsi, %r13
	movq	%r11, %r14
	movq	16(%rbx), %r15
	movq	%r15, %rsi
	call	M_PrimaryDeque
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	cmpq	$1, %rax
	je	L_true637
else.631:
	movl	(%rax), %r15d
	cmpl	4(%rax), %r15d
	jle	L_true632
else.61B:
	movl	8(%rax), %r14d
	subl	(%rax), %r14d
	movl	4(%rax), %ecx
	leal	(%r14,%rcx,1), %r13d
	jmp	letJoinK.61C
L_true632:
then.61D:
	movl	4(%rax), %r13d
	subl	(%rax), %r13d
letJoinK.61C:
	cmpl	$1, %r13d
	jg	L_true630
else.62D:
	movq	$1, %r15
	jmp	letJoinK.60B
L63F:
else.623:
	incl	%edx
	movl	%edx, (%rax)
	movq	$65539, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rsi, %r12
	addq	$16, %rsi
	cmpq	$1, %r12
	je	letJoinK.61F
L_true624:
then.620:
	movq	$131075, -8(%rsi)
	movq	(%r12), %rdx
	movq	%rdx, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
letJoinK.60B:
	cmpq	$1, %r15
	je	L63D
L_true63A:
then.639:
	/* Liveout:  GP={%rax %rdi}  */
	/* flushLoads */
	movq	$65539, -8(%rsi)
	movq	%r15, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r12, %r11
	movq	144(%r14), %rsi
	movq	8(%rbx), %r10
	movq	%rax, (%r10)
	movq	$3, (%r11)
	movq	32(%r11), %r12
	movq	8(%r12), %r13
	movq	%r13, 32(%r11)
	movq	(%r12), %rdi
	movq	(%rdi), %r14
	movq	$1, %rax
	jmp	*%r14
else.61E:
letJoinK.61F:
	movq	$1, %r15
	cmpq	$1, %r15
	je	L63E
L_true636:
then.635:
	/* Liveout:  GP={%rax %rdi}  */
	/* flushLoads */
	movq	$65539, -8(%rsi)
	movq	%r15, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r12, %r11
	movq	144(%r14), %rsi
	movq	8(%rbx), %r10
	movq	%rax, (%r10)
	movq	$3, (%r11)
	movq	32(%r11), %r12
	movq	8(%r12), %r13
	movq	%r13, 32(%r11)
	movq	(%r12), %rdi
	movq	(%rdi), %r14
	movq	$1, %rax
	jmp	*%r14
L63E:
else.634:
	/* Liveout:  GP={%rax %rdi}  */
	/* flushLoads */
	movq	$65539, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r12, %r11
	movq	144(%r14), %rsi
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	$3, (%r11)
	movq	32(%r11), %rdx
	movq	8(%rdx), %rbx
	movq	%rbx, 32(%r11)
	movq	(%rdx), %rdi
	movq	(%rdi), %r9
	movq	$1, %rax
	jmp	*%r9
L63D:
else.638:
	/* Liveout:  GP={%rax %rdi}  */
	/* flushLoads */
	movq	$65539, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r11, %rdi
	movq	%r15, %rsi
	call	PromoteObj
	movq	%r13, %r8
	movq	%r12, %r11
	movq	144(%r14), %rsi
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	$3, (%r11)
	movq	32(%r11), %rdx
	movq	8(%rdx), %rbx
	movq	%rbx, 32(%r11)
	movq	(%rdx), %rdi
	movq	(%rdi), %r9
	movq	$1, %rax
	jmp	*%r9
L_true630:
then.62E:
	movl	4(%rax), %r14d
	cmpl	(%rax), %r14d
	je	L_true62F
else.629:
	movl	(%rax), %edi
	movq	%rdi, %r12
	shll	$3, %r12d
	movslq	%r12d, %r10
	movq	16(%rax,%r10,1), %rcx
	shll	$3, %edi
	movslq	%edi, %r13
	movq	$1, 16(%rax,%r13,1)
	movl	(%rax), %edx
	movl	8(%rax), %r9d
	decl	%r9d
	cmpl	%r9d, %edx
	jl	L63F
L_true62A:
then.625:
	movl	$0, (%rax)
	movq	$65539, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	cmpq	$1, %r10
	je	letJoinK.61F
L_true626:
then.622:
	movq	$131075, -8(%rsi)
	movq	(%r10), %rdi
	movq	%rdi, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	jmp	letJoinK.60B
L_true62F:
then.62B:
	movq	$1, %rax
	cmpq	$1, %rax
	je	L641
L_true62C:
then.628:
	movq	$131075, -8(%rsi)
	movq	(%rax), %r9
	movq	%r9, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	jmp	letJoinK.60B
L641:
else.627:
	movq	$1, %r15
	jmp	letJoinK.60B
L_true637:
then.633:
	movq	$1, %r15
	jmp	letJoinK.60B
L_true617:
then.613:
	movq	$131075, -8(%rsi)
	movq	(%rax), %rdx
	movq	%rdx, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	jmp	letJoinK.60B
L_true615:
then.610:
	movl	$0, (%r15)
	movq	$65539, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rsi, %r12
	addq	$16, %rsi
	cmpq	$1, %r12
	jne	L_true611
	jmp	letJoinK.609
L_true611:
then.60D:
	movq	$131075, -8(%rsi)
	movq	(%r12), %rcx
	movq	%rcx, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	jmp	letJoinK.60B
retGC605:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest606:
	movq	%r11, %r15
	movq	448(%r15), %r14
	subq	%rsi, %r14
	jle	doGC607
	movq	%rdi, %rbx
thiefCheck.604:
	movq	$3, (%r11)
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r11, %rdi
	movq	16(%rbx), %r15
	movq	%r15, %rsi
	call	M_ResumeDeques
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	cmpq	$1, %rax
	je	L642
L_true63B:
	movq	%r11, %rdi
then.619:
	movq	(%rax), %r14
	movq	(%r14), %r15
	movl	4(%r15), %eax
	cmpl	(%r15), %eax
	je	L_true61A
else.614:
	movl	(%r15), %r9d
	movq	%r9, %r12
	shll	$3, %r12d
	movslq	%r12d, %r10
	movq	16(%r15,%r10,1), %rcx
	shll	$3, %r9d
	movslq	%r9d, %r13
	movq	$1, 16(%r15,%r13,1)
	movl	(%r15), %edx
	movl	8(%r15), %r10d
	decl	%r10d
	cmpl	%r10d, %edx
	jge	L_true615
else.60E:
	incl	%edx
	movl	%edx, (%r15)
	movq	$65539, -8(%rsi)
	movq	%rcx, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	cmpq	$1, %r13
	jne	L_true60F
	jmp	letJoinK.609
L642:
	movq	%r11, %rdi
	jmp	letJoinK.609
L_true60F:
then.60A:
	movq	$131075, -8(%rsi)
	movq	(%r13), %rax
	movq	%rax, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	jmp	letJoinK.60B
L_true61A:
then.616:
	movq	$1, %rax
	cmpq	$1, %rax
	jne	L_true617
	jmp	letJoinK.609
doGC607:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC605, %r8
	jmp	ASM_InvokeGC
else.618:
	jmp	letJoinK.609
else.608:
	jmp	letJoinK.609
thief.5DC:
	jmp	gcTest606
else.60C:
	jmp	letJoinK.609
else.621:
	jmp	letJoinK.61F
	.text
case.646:
	/* Liveout:  GP={%rdi}  */
	movq	%r8, %r12
	movq	%rsi, %r13
	movq	%r11, %rbx
	movq	16(%r14), %rdi
	call	VProcWake
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	%rbx, %r11
	movq	%r15, %rdi
	jmp	letJoinK.5D4
thenCheck.64A:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	%r15, %r8
lp.5DA:
	movq	%r8, %r14
	movq	%r14, -56(%rbp)
	movq	%rdi, %r14
	movq	16(%r14), %rax
	movq	384(%rax), %rbx
	movq	$196611, -8(%rsi)
	movq	8(%r14), %rcx
	movq	%rcx, (%rsi)
	movq	(%r14), %rdx
	movq	%rdx, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, %rcx
	movq	%r13, %r8
	movq	%r12, %r11
	movq	144(%r15), %rsi
	movq	16(%r14), %r12
	leaq	384(%r12), %r10
	movq	%rbx, %rax
	movq	16(%r14), %rdx
	lock
	cmpxchgq	%rcx, 384(%rdx)
	cmpq	%rbx, %rax
	je	L64E
L_true643:
	movq	-56(%rbp), %r15
	movq	%r14, %rdi
then.645:
gcTest64C:
	movq	%r11, %r12
	movq	448(%r12), %r13
	subq	%rsi, %r13
	jle	doGC64D
	jmp	thenCheck.64A
L64E:
	movq	-56(%rbp), %rdi
else.644:
	movq	16(%r14), %r10
	movq	16(%r10), %r9
	cmpq	$1, %r9
	jne	L64F
S_case648:
case.647:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.5D4
L64F:
	cmpq	$3, %r9
	jne	S_case648
S_case649:
	movq	%rdi, %r15
	jmp	case.646
doGC64D:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC64B, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r15 %rdi} spilled=  */
retGC64B:
	movq	8(%rdi), %r15
	movq	(%rdi), %rdi
	jmp	gcTest64C
	.text
letJoinK.5D4:
	movq	$65537, -8(%rsi)
	movq	56(%rdi), %r9
	movq	%r9, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%rbx, (%rsi)
	movabsq	$preempt.650, %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$458815, -8(%rsi)
	movabsq	$letJoinK.651, %r12
	movq	%r12, (%rsi)
	movq	8(%rdi), %r13
	movq	%r13, 8(%rsi)
	movq	16(%rdi), %r14
	movq	%r14, 16(%rsi)
	movq	24(%rdi), %r15
	movq	%r15, 24(%rsi)
	movq	32(%rdi), %rax
	movq	%rax, 32(%rsi)
	movq	40(%rdi), %rcx
	movq	%rcx, 40(%rsi)
	movq	48(%rdi), %rbx
	movq	%rbx, 48(%rsi)
	movq	%rsi, %rcx
	addq	$64, %rsi
	movq	56(%rdi), %r9
	movq	448(%r9), %rbx
	movq	56(%rdi), %r13
	leaq	448(%r13), %r12
	movq	%rbx, %rax
	xorq	%r14, %r14
	movq	56(%rdi), %r15
	lock
	cmpxchgq	%r14, 448(%r15)
	cmpq	%rbx, %rax
	je	L655
L_true652:
then.654:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	(%rdx), %rdi
	movq	%rcx, %r8
	jmp	preempt.650
L655:
else.653:
	/* Liveout:  GP={%rdi}  */
	movq	%rcx, %rdi
	jmp	letJoinK.651
	.text
preemptCheck.656:
	movq	(%rdi), %r10
	movq	448(%r10), %r9
	movq	(%rdi), %r13
	leaq	448(%r13), %r12
	movq	%r9, %rax
	xorq	%r14, %r14
	movq	(%rdi), %r15
	lock
	cmpxchgq	%r14, 448(%r15)
	cmpq	%r9, %rax
	je	L65D
L_true65C:
then.65B:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	%rcx, %r8
preempt.650:
	movq	%r8, %rcx
	jmp	gcTest658
L65D:
	movq	%rcx, %rdi
else.65A:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.651
retGC657:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdi
gcTest658:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jg	preemptCheck.656
doGC659:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC657, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.651:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rdi, %rax
	movq	$393309, -8(%rsi)
	movq	8(%rax), %rdx
	movq	%rdx, (%rsi)
	movq	16(%rax), %rbx
	movq	%rbx, 8(%rsi)
	movq	24(%rax), %rdi
	movq	%rdi, 16(%rsi)
	movq	32(%rax), %r9
	movq	%r9, 24(%rsi)
	movq	40(%rax), %r10
	movq	%r10, 32(%rsi)
	movq	48(%rax), %r12
	movq	%r12, 40(%rsi)
	movq	%rsi, %rcx
	addq	$56, %rsi
	movq	$131081, -8(%rsi)
	movq	%rcx, (%rsi)
	movabsq	$wait.65F, %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	(%r13), %rdi
	movq	32(%rax), %r8
	jmp	wait.65F
	.text
then.665:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.40C, %rax
	movq	%rax, (%rsi)
	movq	24(%rcx), %rbx
	movq	%rbx, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	8(%rcx), %rdi
	movq	8(%rdi), %r12
	movq	(%rdi), %rdi
	movq	$1, %r8
	movq	(%rcx), %r10
	jmp	*%r12
retGC661:
	movq	8(%rdi), %rbx
	movq	(%rdi), %rdi
gcTest662:
	movq	%r11, %r10
	movq	448(%r10), %r9
	subq	%rsi, %r9
	jle	doGC663
waitCheck.660:
	movq	32(%rdi), %r10
	movq	(%r10), %rax
	cmpq	$1, %rax
	jne	L_true66A
else.666:
	/* Liveout:  GP={%rax %rdi}  */
	pause
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movabsq	$wait.65F, %r14
	movq	%r14, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	$131105, -8(%rsi)
	movabsq	$k.667, %rax
	movq	%rax, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	40(%rdi), %rdx
	movq	32(%rdx), %rcx
	movq	8(%rcx), %rbx
	movq	40(%rdi), %rdi
	movq	%rbx, 32(%rdi)
	movq	(%rcx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
doGC663:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC661, %r8
	jmp	ASM_InvokeGC
L_true66A:
	movq	%rdi, %rcx
then.668:
	movq	(%rax), %rdx
	cmpq	$1, %rdx
	jne	then.665
L66B:
else.664:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.436, %r12
	movq	%r12, (%rsi)
	movq	24(%rcx), %r13
	movq	%r13, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%rsi, %r9
	addq	$32, %rsi
	movq	16(%rcx), %r14
	movq	8(%r14), %r15
	movq	(%r14), %rdi
	movq	$1, %r8
	movq	(%rcx), %r10
	jmp	*%r15
wait.65F:
	movq	%r8, %rbx
	jmp	gcTest662
	.text
letJoinK.40C:
	movq	%r8, %rax
	jmp	gcTest66E
	/* live= GP={%rax %rdi} spilled=  */
retGC66D:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest66E:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC66F
letJoinKCheck.66C:
	/* Liveout:  GP={%rax %rdi}  */
	movq	16(%rdi), %rax
	movq	8(%rdi), %rdi
	jmp	letJoinK.5D2
doGC66F:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC66D, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.436:
	movq	%r8, %rax
	jmp	gcTest672
	/* live= GP={%rax %rdi} spilled=  */
retGC671:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest672:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC673
letJoinKCheck.670:
	/* Liveout:  GP={%rax %rdi}  */
	movq	16(%rdi), %rax
	movq	8(%rdi), %rdi
	jmp	letJoinK.5D2
doGC673:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC671, %r8
	jmp	ASM_InvokeGC
	.text
k.667:
	jmp	gcTest676
	/* live= GP={%rax %rdi} spilled=  */
retGC675:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest676:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC677
kCheck.674:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$3, (%r11)
	movq	8(%rdi), %rbx
	movq	(%rbx), %rdi
	movq	$1, %r8
	jmp	wait.65F
doGC677:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC675, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.542:
	movq	%r8, %r9
	jmp	gcTest67A
	/* live= GP={%r9 %rdi} spilled=  */
retGC679:
	movq	8(%rdi), %r9
	movq	(%rdi), %rdi
gcTest67A:
	movq	%r11, %r12
	movq	448(%r12), %r10
	subq	%rsi, %r10
	jg	L681
doGC67B:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC679, %r8
	jmp	ASM_InvokeGC
L681:
letJoinKCheck.678:
	movq	$131075, -8(%rsi)
	movq	%r9, (%rsi)
	movq	16(%rdi), %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	32(%rdi), %r12
	movl	4(%r12), %eax
	movq	32(%rdi), %r13
	movl	4(%r13), %edx
	movq	32(%rdi), %r14
	movl	8(%r14), %ebx
	decl	%ebx
	cmpl	%ebx, %edx
	jl	L682
L_true680:
then.67E:
	/* Liveout:  GP={%rax %rdi}  */
	movq	32(%rdi), %r9
	leaq	4(%r9), %rbx
	movq	32(%rdi), %r10
	movl	$0, 4(%r10)
	movq	32(%rdi), %r12
	shll	$3, %eax
	movslq	%eax, %r13
	movq	%rcx, 16(%r12,%r13,1)
	movq	$131105, -8(%rsi)
	movabsq	$k.67F, %r15
	movq	%r15, (%rsi)
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	24(%rdi), %rdx
	movq	32(%rdx), %rcx
	movq	8(%rcx), %rbx
	movq	24(%rdi), %rdi
	movq	%rbx, 32(%rdi)
	movq	(%rcx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
L682:
else.67C:
	/* Liveout:  GP={%rax %rdi}  */
	movq	32(%rdi), %r14
	leaq	4(%r14), %r13
	incl	%edx
	movq	32(%rdi), %r15
	movl	%edx, 4(%r15)
	movq	32(%rdi), %rdx
	shll	$3, %eax
	movslq	%eax, %rbx
	movq	%rcx, 16(%rdx,%rbx,1)
	movq	$131105, -8(%rsi)
	movabsq	$k.67D, %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	24(%rdi), %r14
	movq	32(%r14), %r13
	movq	8(%r13), %r15
	movq	24(%rdi), %rcx
	movq	%r15, 32(%rcx)
	movq	(%r13), %rdi
	movq	(%rdi), %rdx
	jmp	*%rdx
	.text
k.67F:
	jmp	gcTest685
	/* live= GP={%rax %rdi} spilled=  */
retGC684:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest685:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC686
kCheck.683:
	/* Liveout:  GP={%rdi}  */
	movq	$3, (%r11)
	movq	8(%rdi), %rdi
	jmp	executeNextTask.54B
doGC686:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC684, %r8
	jmp	ASM_InvokeGC
	.text
k.67D:
	jmp	gcTest689
	/* live= GP={%rax %rdi} spilled=  */
retGC688:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest689:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC68A
kCheck.687:
	/* Liveout:  GP={%rdi}  */
	movq	$3, (%r11)
	movq	8(%rdi), %rdi
	jmp	executeNextTask.54B
doGC68A:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC688, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.544:
	movq	%r8, %rax
	jmp	gcTest68D
	/* live= GP={%rax %rdi} spilled=  */
retGC68C:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest68D:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC68E
letJoinKCheck.68B:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rdi), %rdi
	movq	%rax, %r8
	jmp	letJoinK.542
doGC68E:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC68C, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.539:
	movq	%r8, %r9
	jmp	gcTest691
	/* live= GP={%r9 %rdi} spilled=  */
retGC690:
	movq	8(%rdi), %r9
	movq	(%rdi), %rdi
gcTest691:
	movq	%r11, %r12
	movq	448(%r12), %r10
	subq	%rsi, %r10
	jg	L698
doGC692:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC690, %r8
	jmp	ASM_InvokeGC
L698:
letJoinKCheck.68F:
	movq	$131075, -8(%rsi)
	movq	%r9, (%rsi)
	movq	16(%rdi), %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	32(%rdi), %r12
	movl	4(%r12), %eax
	movq	32(%rdi), %r13
	movl	4(%r13), %edx
	movq	32(%rdi), %r14
	movl	8(%r14), %ebx
	decl	%ebx
	cmpl	%ebx, %edx
	jl	L699
L_true697:
then.695:
	/* Liveout:  GP={%rax %rdi}  */
	movq	32(%rdi), %r9
	leaq	4(%r9), %rbx
	movq	32(%rdi), %r10
	movl	$0, 4(%r10)
	movq	32(%rdi), %r12
	shll	$3, %eax
	movslq	%eax, %r13
	movq	%rcx, 16(%r12,%r13,1)
	movq	$131105, -8(%rsi)
	movabsq	$k.696, %r15
	movq	%r15, (%rsi)
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	24(%rdi), %rdx
	movq	32(%rdx), %rcx
	movq	8(%rcx), %rbx
	movq	24(%rdi), %rdi
	movq	%rbx, 32(%rdi)
	movq	(%rcx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
L699:
else.693:
	/* Liveout:  GP={%rax %rdi}  */
	movq	32(%rdi), %r14
	leaq	4(%r14), %r13
	incl	%edx
	movq	32(%rdi), %r15
	movl	%edx, 4(%r15)
	movq	32(%rdi), %rdx
	shll	$3, %eax
	movslq	%eax, %rbx
	movq	%rcx, 16(%rdx,%rbx,1)
	movq	$131105, -8(%rsi)
	movabsq	$k.694, %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	24(%rdi), %r14
	movq	32(%r14), %r13
	movq	8(%r13), %r15
	movq	24(%rdi), %rcx
	movq	%r15, 32(%rcx)
	movq	(%r13), %rdi
	movq	(%rdi), %rdx
	jmp	*%rdx
	.text
k.696:
	jmp	gcTest69C
	/* live= GP={%rax %rdi} spilled=  */
retGC69B:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest69C:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC69D
kCheck.69A:
	/* Liveout:  GP={%rdi}  */
	movq	$3, (%r11)
	movq	8(%rdi), %rdi
	jmp	executeNextTask.54B
doGC69D:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC69B, %r8
	jmp	ASM_InvokeGC
	.text
k.694:
	jmp	gcTest6A0
	/* live= GP={%rax %rdi} spilled=  */
retGC69F:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest6A0:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC6A1
kCheck.69E:
	/* Liveout:  GP={%rdi}  */
	movq	$3, (%r11)
	movq	8(%rdi), %rdi
	jmp	executeNextTask.54B
doGC6A1:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC69F, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.53B:
	movq	%r8, %rax
	jmp	gcTest6A4
	/* live= GP={%rax %rdi} spilled=  */
retGC6A3:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest6A4:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC6A5
letJoinKCheck.6A2:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rdi), %rdi
	movq	%rax, %r8
	jmp	letJoinK.539
doGC6A5:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC6A3, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.527:
	movq	16(%rdi), %rdx
	movq	8(%rdx), %rcx
	cmpq	$1, %rcx
	je	S_case6A6
	cmpq	$3, %rcx
	je	S_case6A8
S_case6A6:
case.6A7:
gcTest6AD:
	movq	%r11, %rbx
	movq	448(%rbx), %rax
	subq	%rsi, %rax
	jle	doGC6AE
caseCheck.6AB:
	/* Liveout:  GP={%rdi}  */
	movq	16(%rdi), %r9
	movq	$1, (%r9)
	movq	8(%rdi), %rdi
	movq	(%rdi), %r10
	jmp	*%r10
doGC6AE:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC6AC, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%rdi} spilled=  */
retGC6AC:
	movq	(%rdi), %rdi
	jmp	gcTest6AD
S_case6A8:
case.6A9:
	/* Liveout:  GP={%rax %rdi}  */
	movq	16(%rdi), %rbx
	movq	$1, 8(%rbx)
	movq	$131105, -8(%rsi)
	movabsq	$k.6AA, %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %r14
	movq	32(%r14), %r13
	movq	8(%r13), %r15
	movq	16(%rdi), %rcx
	movq	%r15, 32(%rcx)
	movq	(%r13), %rdi
	movq	(%rdi), %rdx
	jmp	*%rdx
	.text
k.6AA:
	jmp	gcTest6B1
	/* live= GP={%rax %rdi} spilled=  */
retGC6B0:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest6B1:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC6B2
kCheck.6AF:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	movq	(%rdi), %rbx
	jmp	*%rbx
doGC6B2:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC6B0, %r8
	jmp	ASM_InvokeGC
	.text
lp.523:
	movq	%r8, %r13
	jmp	gcTest6B5
	/* live= GP={%r12} spilled= GP={%r~1}  */
retGC6B4:
	movq	8(%rdi), %r13
	movq	(%rdi), %rdi
gcTest6B5:
	movq	%r11, %r15
	movq	448(%r15), %rax
	subq	%rsi, %rax
	jle	doGC6B6
	movq	%r13, -56(%rbp)
	movq	%rdi, %r12
lpCheck.6B3:
	movq	16(%r12), %rdx
	movq	384(%rdx), %rbx
	movq	$196611, -8(%rsi)
	movq	(%r12), %rcx
	movq	%rcx, (%rsi)
	movq	8(%r12), %rdx
	movq	%rdx, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	%rsi, %rax
	addq	$32, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %r14
	movq	%r11, %r13
	movq	%r11, %rdi
	movq	%rax, %rsi
	call	PromoteObj
	movq	%rax, %rcx
	movq	%r14, %r8
	movq	%r13, %r11
	movq	144(%r15), %rsi
	movq	16(%r12), %r13
	leaq	384(%r13), %r10
	movq	%rbx, %rax
	movq	16(%r12), %rdx
	lock
	cmpxchgq	%rcx, 384(%rdx)
	cmpq	%rbx, %rax
	je	L6BE
L_true6BD:
	movq	-56(%rbp), %r14
	movq	%r12, %rdi
then.6BC:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	%r14, %r8
	jmp	lp.523
doGC6B6:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC6B4, %r8
	jmp	ASM_InvokeGC
L6BE:
	movq	-56(%rbp), %rdi
else.6B9:
	movq	16(%r12), %rcx
	movq	16(%rcx), %rax
	cmpq	$1, %rax
	je	S_case6BA
	cmpq	$3, %rax
	je	S_case6BB
S_case6BA:
case.6B8:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.51D
S_case6BB:
	movq	%rdi, %r14
case.6B7:
	/* Liveout:  GP={%rdi}  */
	movq	%r8, %rbx
	movq	%rsi, %r13
	movq	%r11, %r15
	movq	16(%r12), %rdi
	call	VProcWake
	movq	%rbx, %r8
	movq	%r13, %rsi
	movq	%r15, %r11
	movq	%r14, %rdi
	jmp	letJoinK.51D
	.text
letJoinK.51D:
	movq	$131081, -8(%rsi)
	movq	8(%rdi), %r9
	movq	%r9, (%rsi)
	movq	16(%rdi), %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movq	%rbx, (%rsi)
	movabsq	$preempt.6BF, %r12
	movq	%r12, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	16(%rdi), %r14
	movq	448(%r14), %r13
	movq	16(%rdi), %rbx
	leaq	448(%rbx), %rdx
	movq	%r13, %rax
	xorq	%r9, %r9
	movq	16(%rdi), %r10
	lock
	cmpxchgq	%r9, 448(%r10)
	cmpq	%r13, %rax
	je	L6C3
L_true6C0:
	movq	$1, %rdx
then.6C2:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	(%rcx), %rdi
	movq	%rdx, %r8
	jmp	preempt.6BF
L6C3:
else.6C1:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	letJoinK.527
	.text
preemptCheck.6C4:
	movq	8(%rdi), %r10
	movq	448(%r10), %r9
	movq	8(%rdi), %r13
	leaq	448(%r13), %r12
	movq	%r9, %rax
	xorq	%r14, %r14
	movq	8(%rdi), %r15
	lock
	cmpxchgq	%r14, 448(%r15)
	cmpq	%r9, %rax
	je	L6CB
L_true6CA:
then.6C9:
	/* Liveout:  GP={%r8 %rdi}  */
	pause
	movq	%rcx, %r8
preempt.6BF:
	movq	%r8, %rcx
	jmp	gcTest6C6
L6CB:
else.6C8:
	/* Liveout:  GP={%rdi}  */
	movq	(%rdi), %rdi
	jmp	letJoinK.527
retGC6C5:
	movq	8(%rdi), %rcx
	movq	(%rdi), %rdi
gcTest6C6:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jg	preemptCheck.6C4
doGC6C7:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC6C5, %r8
	jmp	ASM_InvokeGC
	.text
lp.512:
	movq	%r8, %rax
	jmp	gcTest6CF
	/* live= GP={%r9 %rax %rdi} spilled=  */
retGC6CE:
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest6CF:
	movq	%r11, %rbx
	movq	448(%rbx), %rdx
	subq	%rsi, %rdx
	jg	L6D5
doGC6D0:
	movq	$196611, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC6CE, %r8
	jmp	ASM_InvokeGC
L6D5:
lpCheck.6CD:
	cmpq	$1, %rax
	je	L6D6
L_true6D4:
	movq	%rdi, %rcx
then.6D2:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	$131081, -8(%rsi)
	movq	%rcx, (%rsi)
	movabsq	$lp.512, %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.6D3, %r12
	movq	%r12, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	8(%rax), %r13
	movq	%r13, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	movq	8(%rcx), %r14
	movq	(%r14), %rdi
	movq	(%rax), %r15
	movq	(%r15), %r8
	movq	(%rcx), %r10
	jmp	spawnWorker.511
L6D6:
	movq	%r9, %rdi
else.6D1:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.513
	.text
letJoinK.6D3:
	jmp	gcTest6D9
	/* live= GP={%rax} spilled=  */
retGC6D8:
	movq	(%rdi), %rdi
gcTest6D9:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC6DA
	movq	%rdi, %rax
letJoinKCheck.6D7:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	8(%rax), %rbx
	movq	(%rbx), %rdi
	movq	24(%rax), %r8
	movq	16(%rax), %r9
	jmp	lp.512
doGC6DA:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC6D8, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.50E:
	jmp	gcTest6DD
L6E6:
letJoinKCheck.6DB:
	movq	$262181, -8(%rsi)
	movabsq	$k.6E2, %rbx
	movq	%rbx, (%rsi)
	movq	8(%rdi), %r9
	movq	%r9, 8(%rsi)
	movq	16(%rdi), %r10
	movq	%r10, 16(%rsi)
	movq	24(%rdi), %r12
	movq	%r12, 24(%rsi)
	movq	%rsi, %rdx
	addq	$40, %rsi
	movq	$3, (%r11)
	movq	$196611, -8(%rsi)
	movq	24(%r11), %r14
	movq	%r14, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	88(%r11), %r15
	movq	%r15, 16(%rsi)
	movq	%rsi, %r13
	addq	$32, %rsi
	movq	%r13, 88(%r11)
	movq	8(%r11), %rax
	cmpq	$1, %rax
	jne	L6E5
S_case6E3:
	movq	%r11, %rdx
case.6E1:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, (%rdx)
	movq	$3, (%r11)
	movq	32(%r11), %r14
	movq	8(%r14), %r15
	movq	%r15, 32(%r11)
	movq	(%r14), %rdi
	movq	(%rdi), %rcx
	movq	$1, %rax
	jmp	*%rcx
L6E5:
	cmpq	$3, %rax
	jne	S_case6E3
S_case6E4:
	movq	%r11, %rcx
case.6DF:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$1, 8(%rcx)
	movq	$65537, -8(%rsi)
	movabsq	$k.6E0, %r9
	movq	%r9, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	32(%rcx), %r10
	movq	8(%r10), %r12
	movq	%r12, 32(%rcx)
	movq	(%r10), %rdi
	movq	(%rdi), %r13
	jmp	*%r13
	/* live= GP={%rdi} spilled=  */
retGC6DC:
	movq	(%rdi), %rdi
gcTest6DD:
	movq	%r11, %rbx
	movq	448(%rbx), %rax
	subq	%rsi, %rax
	jg	L6E6
doGC6DE:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC6DC, %r8
	jmp	ASM_InvokeGC
	.text
else.6F1:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r12
	movq	%r12, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r10
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r13
	movq	%r13, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r14
	jmp	*%r14
L_true6FB:
then.6F8:
	movq	(%rax), %rdx
	movq	$131075, -8(%rsi)
	movq	24(%rdi), %r9
	movq	%r9, (%rsi)
	movq	(%rdx), %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	8(%rdx), %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	24(%r11), %r14
	movq	$65539, -8(%rsi)
	movq	%r12, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	$327693, -8(%rsi)
	movl	(%r14), %ecx
	movl	%ecx, (%rsi)
	movq	%r15, 8(%rsi)
	movl	16(%r14), %edx
	movl	%edx, 16(%rsi)
	movq	24(%r14), %rbx
	movq	%rbx, 24(%rsi)
	movq	32(%r14), %r9
	movq	%r9, 32(%rsi)
	movq	%rsi, %rax
	addq	$48, %rsi
	movq	%rax, 24(%r11)
	movq	$196637, -8(%rsi)
	movabsq	$k.6F9, %r10
	movq	%r10, (%rsi)
	movq	8(%rdi), %r12
	movq	%r12, 8(%rsi)
	movq	16(%rdi), %r13
	movq	%r13, 16(%rsi)
	movq	%rsi, %rdx
	addq	$32, %rsi
	movq	24(%r11), %r14
	movq	8(%r14), %rcx
	cmpq	$1, %rcx
	jne	L_true6FA
else.6F4:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %rcx
	movq	%rcx, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdx
	movq	%rdx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %rbx
	jmp	*%rbx
L_true6FA:
then.6F5:
	movq	$131075, -8(%rsi)
	movq	(%rcx), %r10
	movq	(%r10), %r12
	movq	%r12, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%rdx, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	24(%r11), %r13
	movq	8(%r13), %rbx
	cmpq	$1, %rbx
	je	else.6F1
L_true6F6:
then.6F2:
	movq	(%rbx), %r15
	movq	(%r15), %r9
	cmpq	$1, %r9
	jne	L_true6F3
else.6EE:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str4AE, %r13
	movq	%r13, (%rsi)
	movl	$58, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r14
	movq	%r14, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r15
	jmp	*%r15
L_true6F3:
then.6EF:
	/* Liveout:  GP={%r9 %r8 %rax %rdi}  */
	movq	(%r9), %rbx
	movq	8(%rbx), %rdx
	movq	$65537, -8(%rsi)
	movabsq	$letJoinK.6F0, %r9
	movq	%r9, (%rsi)
	movq	%rsi, %r10
	addq	$16, %rsi
	movq	8(%rdx), %rcx
	movq	16(%rdi), %r9
	movq	(%rdx), %rdi
	movq	%r10, %r8
	jmp	*%rcx
then.6ED:
letJoinK.6EC:
	movq	24(%r11), %r15
	movq	8(%r15), %rax
	cmpq	$1, %rax
	jne	L_true6FB
else.6F7:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str60, %r15
	movq	%r15, (%rsi)
	movl	$51, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rax
	movq	%rax, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %rcx
	jmp	*%rcx
L6FE:
kCheck.6E7:
	movq	24(%r11), %rax
	cmpq	$1, 8(%rax)
	jne	letJoinK.6EC
L6FF:
else.6EB:
	movq	$131075, -8(%rsi)
	movq	$1, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	24(%r11), %r15
	movq	$65539, -8(%rsi)
	movq	%r14, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	$327693, -8(%rsi)
	movl	(%r15), %edx
	movl	%edx, (%rsi)
	movq	%rax, 8(%rsi)
	movl	16(%r15), %ebx
	movl	%ebx, 16(%rsi)
	movq	24(%r15), %r9
	movq	%r9, 24(%rsi)
	movq	32(%r15), %r10
	movq	%r10, 32(%rsi)
	movq	%rsi, %rcx
	addq	$48, %rsi
	movq	%rcx, 24(%r11)
	jmp	letJoinK.6EC
k.6E2:
gcTest6E9:
	movq	%r11, %r13
	movq	448(%r13), %r12
	subq	%rsi, %r12
	jg	L6FE
doGC6EA:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC6E8, %r8
	jmp	ASM_InvokeGC
retGC6E8:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	jmp	gcTest6E9
	.text
then.706:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65539, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%rsi, %r12
	addq	$16, %rsi
	movq	%r12, %r8
	jmp	letJoinK.707
	/* live= GP={%rax %rbx} spilled=  */
retGC701:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest702:
	movq	%r11, %r9
	movq	448(%r9), %r10
	subq	%rsi, %r10
	jle	doGC703
	movq	%rdi, %rbx
kCheck.700:
	movq	$131081, -8(%rsi)
	movabsq	$str70B, %r14
	movq	%r14, (%rsi)
	movl	$14, 8(%rsi)
	movq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	addq	$24, %rsi
	movq	$131073, -8(%rsi)
	movq	$3, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rdi
	movq	%rdi, -72(%rbp)
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str70C, %r15
	movq	%r15, (%rsi)
	movl	$16, 8(%rsi)
	movq	%rsi, %r9
	movq	%r9, -80(%rbp)
	addq	$24, %rsi
	movq	$196637, -8(%rsi)
	movabsq	$letJoinK.70D, %rax
	movq	%rax, (%rsi)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	movq	16(%rbx), %rdi
	movq	%rdi, 16(%rsi)
	movq	%rsi, %r10
	movq	%r10, -88(%rbp)
	addq	$32, %rsi
	movq	$65539, -8(%rsi)
	movq	-80(%rbp), %r12
	movq	%r12, (%rsi)
	movq	%rsi, %r9
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r9, (%rsi)
	movabsq	$f.705, %r10
	movq	%r10, 8(%rsi)
	movq	%rsi, %r13
	movq	%r13, -56(%rbp)
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	call	M_Arguments
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	$327697, -8(%rsi)
	movabsq	$letJoinK.707, %r15
	movq	%r15, (%rsi)
	movq	16(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	movq	-64(%rbp), %r14
	movq	%r14, 16(%rsi)
	movq	-72(%rbp), %r15
	movq	%r15, 24(%rsi)
	movq	-88(%rbp), %rcx
	movq	%rcx, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	cmpq	$1, %rax
	jne	L_true70E
else.708:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.707
doGC703:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC701, %r8
	jmp	ASM_InvokeGC
L_true70E:
	movq	%rdi, %r14
then.709:
	movq	8(%rax), %rbx
	movq	%r8, %r15
	movq	%rsi, %r12
	movq	%r11, %r13
	movq	(%rax), %rdi
	movq	-80(%rbp), %rsi
	call	M_StringSame
	movq	%r15, %r8
	movq	%r12, %rsi
	movq	%r13, %r11
	cmpl	$1, %eax
	je	L_true70A
	movq	%r14, %r9
	movq	-56(%rbp), %rdi
else.704:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%rdi), %rdi
	movq	%rbx, %r8
	movq	$1, %r10
	jmp	f.705
L_true70A:
	movq	%r14, %rdi
	jmp	then.706
k.6F9:
	jmp	gcTest702
	.text
letJoinK.70D:
	movq	%rdi, -80(%rbp)
	movq	$65537, -8(%rsi)
	movl	$512, (%rsi)
	movq	%rsi, %rax
	movq	%rax, -64(%rbp)
	addq	$16, %rsi
	movq	$65537, -8(%rsi)
	movl	$512, (%rsi)
	movq	%rsi, %r12
	addq	$16, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	movq	%r12, %rsi
	call	PromoteObj
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str70F, %rcx
	movq	%rcx, (%rsi)
	movl	$14, 8(%rsi)
	movq	%rsi, %rcx
	movq	%rcx, -72(%rbp)
	addq	$24, %rsi
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$lp.710, %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$327697, -8(%rsi)
	movabsq	$letJoinK.711, %rdi
	movq	%rdi, (%rsi)
	movq	-80(%rbp), %rbx
	movq	8(%rbx), %r9
	movq	%r9, 8(%rsi)
	movq	-80(%rbp), %rdi
	movq	16(%rdi), %r10
	movq	%r10, 16(%rsi)
	movq	%rax, 24(%rsi)
	movq	%rdx, 32(%rsi)
	movq	%rsi, %rbx
	addq	$48, %rsi
	movq	$65539, -8(%rsi)
	movq	-72(%rbp), %r9
	movq	%r9, (%rsi)
	movq	%rsi, %r12
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r12, (%rsi)
	movabsq	$f.712, %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r10
	movq	%r10, -56(%rbp)
	addq	$24, %rsi
	movq	%r11, %r14
	movq	%rsi, 144(%r14)
	movq	%r8, %r15
	movq	%r11, %r12
	call	M_Arguments
	movq	%r15, %r8
	movq	%r12, %r11
	movq	144(%r14), %rsi
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.713, %r13
	movq	%r13, (%rsi)
	movq	-80(%rbp), %r12
	movq	16(%r12), %r14
	movq	%r14, 8(%rsi)
	movq	-64(%rbp), %r13
	movq	%r13, 16(%rsi)
	movq	%rbx, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	cmpq	$1, %rax
	jne	L_true714
else.715:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$1, %r8
	jmp	letJoinK.713
L_true714:
	movq	%rdi, %r12
then.716:
	movq	8(%rax), %rbx
	movq	%r8, %r13
	movq	%rsi, %r14
	movq	%r11, %r15
	movq	(%rax), %rdi
	movq	-72(%rbp), %rsi
	call	M_StringSame
	movq	%r13, %r8
	movq	%r14, %rsi
	movq	%r15, %r11
	cmpl	$1, %eax
	jne	L71A
L_true719:
	movq	%r12, %rdi
then.718:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65539, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r15, %r8
	jmp	letJoinK.713
L71A:
	movq	%r12, %r9
	movq	-56(%rbp), %r10
else.717:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	(%r10), %rdi
	movq	%rbx, %r8
	movq	$1, %r10
	jmp	f.712
	.text
else.71C:
	/* Liveout:  GP={%rdi}  */
	movq	%r10, %rdi
	jmp	letJoinK.71E
L_true71B:
then.71D:
gcTest721:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC722
thenCheck.71F:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	8(%rax), %r8
	incl	%r9d
lp.710:
	movq	%r8, %rax
	cmpq	$1, %rax
	jne	L_true71B
	jmp	else.71C
doGC722:
	movq	$262167, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%rax, 16(%rsi)
	movl	%r9d, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC720, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r9 %rax %r10 %rdi} spilled=  */
retGC720:
	movl	24(%rdi), %r9d
	movq	16(%rdi), %rax
	movq	8(%rdi), %r10
	movq	(%rdi), %rdi
	jmp	gcTest721
	.text
letJoinK.711:
	movq	%r8, %rcx
	movq	24(%rdi), %rdx
	cmpl	$1, (%rdx)
	jl	L_true723
else.724:
	/* flushLoads */
	movl	(%rcx), %r9d
	movq	24(%rdi), %r10
	movl	%r9d, (%r10)
	movq	$1, %rax
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$lp.728, %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.71E, %r14
	movq	%r14, (%rsi)
	movq	8(%rdi), %r15
	movq	%r15, 8(%rsi)
	movq	16(%rdi), %rcx
	movq	%rcx, 16(%rsi)
	movq	%r12, 24(%rsi)
	movq	%rsi, %r10
	addq	$40, %rsi
	cmpq	$1, %rax
	jne	L_true729
	movq	%r10, %rdi
else.726:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.71E
L_true723:
then.725:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str72A, %rbx
	movq	%rbx, (%rsi)
	movl	$21, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r9
	movq	%r9, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%rdi), %rdi
	movq	(%rdi), %r10
	jmp	*%r10
L_true729:
	xorl	%r9d, %r9d
then.727:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	32(%rdi), %rbx
	movq	(%rbx), %rdi
	movq	8(%rax), %r8
	incl	%r9d
	jmp	lp.710
	.text
lpCheck.72B:
	cmpq	$1, %rax
	je	L733
L_true732:
then.731:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	8(%rax), %r8
	incl	%r9d
lp.728:
	movq	%r8, %rax
	jmp	gcTest72D
L733:
	movq	%r10, %rdi
else.72F:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %r8
	jmp	letJoinK.730
retGC72C:
	movq	24(%rdi), %r10
	movl	16(%rdi), %r9d
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest72D:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	lpCheck.72B
doGC72E:
	movq	$262239, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movl	%r9d, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC72C, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.71E:
	movq	$1, %rax
	xorl	%r9d, %r9d
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.730, %rcx
	movq	%rcx, (%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%rdi), %rbx
	movq	%rbx, 16(%rsi)
	movq	%rax, 24(%rsi)
	movq	%rsi, %r10
	addq	$40, %rsi
	cmpq	$1, %rax
	je	L738
L_true735:
then.737:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	24(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	8(%rax), %r8
	incl	%r9d
	jmp	lp.728
L738:
else.736:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r10, %rdi
	movq	%r9, %r8
	jmp	letJoinK.730
	.text
else.73B:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r11, %rdi
	movslq	%r12d, %rcx
	movq	%rcx, %rsi
	call	AllocBigIntArray
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%rbx), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r12d, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
letJoinK.73D:
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r14, (%rsi)
	movabsq	$lp.749, %r15
	movq	%r15, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movabsq	$lp.751, %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.74E, %rdi
	movq	%rdi, (%rsi)
	movq	8(%r13), %r9
	movq	%r9, 8(%rsi)
	movq	16(%r13), %r10
	movq	%r10, 16(%rsi)
	movq	%rdx, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	cmpq	$1, 24(%r13)
	je	L753
L_true752:
	movq	%rax, %r14
	movq	%r13, %r15
	xorl	%eax, %eax
	movq	%rcx, %rbx
then.74F:
	movq	24(%r15), %r12
	movq	(%r12), %rcx
	movq	8(%r12), %r12
	cmpl	8(%r14), %eax
	jge	L754
L_true750:
	movq	%rax, %r10
	movq	%r12, %r13
	movq	%rcx, %rax
	movq	%rdi, %r12
	movq	%rbx, %r9
	movq	%r14, %rdi
	movq	%r15, %rbx
then.746:
	cmpl	$0, %r10d
	jge	L_true747
	movq	%r13, %rdx
	movq	%r12, %rcx
else.742:
	movq	%rbx, %r13
	movq	$1, %r14
	jmp	letJoinK.743
L_true747:
	movq	%r13, %rdx
	movq	%r12, %rcx
then.744:
	movq	%rbx, %r13
	movq	$3, %r14
letJoinK.743:
	cmpq	$1, %r14
	je	S_case74B
	cmpq	$3, %r14
	je	S_case74C
S_case74B:
	movq	%r13, %r12
case.74A:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rdx
	movq	%rdx, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rbx
	movq	%rbx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	%r8, %r14
	movq	%rsi, %r13
	movq	%r11, %rbx
	movq	(%rax), %rdi
	call	M_Print
	movq	%r14, %r8
	movq	%r13, %rsi
	movq	%rbx, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r9
	movq	%r9, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%r12), %rdi
	movq	(%rdi), %r10
	jmp	*%r10
S_case74C:
	movq	%r10, %rbx
	movq	%rdx, %r14
	movq	%rax, %r15
	movq	%rcx, %r10
	movq	%r9, %rdx
	movq	%r13, %r12
case.748:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movl	(%r15), %r13d
	movq	(%rdi), %r15
	movq	%rbx, %rax
	shlq	$2, %rax
	movl	%r13d, (%r15,%rax,1)
	movq	$65537, -8(%rsi)
	incl	%ebx
	movl	%ebx, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	movq	(%rdx), %rdi
	movq	%rcx, %r8
	movq	%r14, %r9
	movq	16(%r12), %r12
	jmp	lp.749
	/* live= GP={%r9 %r13} spilled=  */
retGC73F:
	movl	8(%rdi), %r12d
	movq	(%rdi), %rdi
	jmp	gcTest740
L_true739:
then.73C:
	movl	%r12d, 152(%r11)
gcTest740:
	movq	%r11, %rbx
	movq	448(%rbx), %r15
	subq	%rsi, %r15
	movl	152(%r11), %r9d
	leaq	4(%r9), %rax
	shlq	$2, %rax
	cmpq	%rax, %r15
	jle	doGC741
	movq	%r12, %r9
	movq	%rdi, %r13
AllocIntArray.73E:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r15
	movq	%r11, %r14
	movq	%r11, %rdi
	movslq	%r9d, %r10
	movq	%r10, %rsi
	call	AllocIntArray
	movq	%r15, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	jmp	letJoinK.73D
doGC741:
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movl	%r12d, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC73F, %r8
	jmp	ASM_InvokeGC
letJoinK.730:
	movq	%r8, %r12
	movq	$65536, %rax
	cmpl	$0, %eax
	jl	L755
L73A:
	sarl	$2, %eax
	cmpl	%eax, %r12d
	jl	L_true739
	movq	%rdi, %r13
	jmp	else.73B
L755:
	addl	$3, %eax
	jmp	L73A
L754:
	movq	%rcx, %r9
	movq	%r15, %r13
else.745:
	movq	%rax, %r10
	movq	%r12, %rdx
	movq	%r9, %rax
	movq	%rdi, %rcx
	movq	%rbx, %r9
	movq	%r14, %rdi
	movq	$1, %r14
	jmp	letJoinK.743
L753:
else.74D:
	/* Liveout:  GP={%rdi}  */
	jmp	letJoinK.74E
	.text
else.757:
	/* Liveout:  GP={%rdi}  */
	movq	%r10, %rdi
	jmp	letJoinK.74E
L772:
	movq	%r12, %rbx
else.765:
	movq	$1, %r15
	cmpq	$1, %r15
	jne	L76F
S_case766:
case.75A:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %r15
	movq	%r15, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rax
	movq	%rax, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdx
	movq	%rdx, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r9
	movq	%rbx, %rdi
	jmp	*%r9
L76F:
	cmpq	$3, %r15
	jne	S_case766
S_case767:
	movq	%rbx, %r12
case.759:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movl	(%rax), %edx
	movq	(%rdi), %r13
	movq	(%r13), %rbx
	movl	(%rcx), %eax
	shlq	$2, %rax
	movl	%edx, (%rbx,%rax,1)
	movq	$65537, -8(%rsi)
	movl	(%rcx), %ecx
	incl	%ecx
	movl	%ecx, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	%r14, %r8
lp.749:
	movq	%r8, %rcx
	cmpq	$1, %r9
	je	else.757
L_true756:
then.758:
	jmp	gcTest76C
retGC76B:
	movq	32(%rdi), %r9
	movq	24(%rdi), %rcx
	movq	16(%rdi), %r12
	movq	8(%rdi), %r10
	movq	(%rdi), %rdi
gcTest76C:
	movq	%r11, %rax
	movq	448(%rax), %r13
	subq	%rsi, %r13
	jg	L771
doGC76D:
	movq	$327683, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rcx, 24(%rsi)
	movq	%r9, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	movabsq	$retGC76B, %r8
	jmp	ASM_InvokeGC
L771:
thenCheck.76A:
	movq	(%r9), %rax
	movq	8(%r9), %r9
	movq	(%rdi), %rdx
	movl	(%rcx), %ebx
	cmpl	8(%rdx), %ebx
	jge	L772
L_true76E:
then.768:
	cmpl	$0, (%rcx)
	jl	L773
L_true769:
then.762:
	movq	$3, %r14
	cmpq	$1, %r14
	jne	L774
S_case763:
case.75E:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rcx
	movq	%rcx, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rdx
	movq	%rdx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %rbx
	movq	%r11, %r13
	movq	%r14, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%rbx, %r8
	movq	%r13, %r11
	movq	144(%r15), %rsi
	movq	%r8, %r15
	movq	%rsi, %r13
	movq	%r11, %rbx
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r13, %rsi
	movq	%rbx, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdi
	movq	%rdi, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%r12), %r9
	movq	%r12, %rdi
	jmp	*%r9
L773:
else.75F:
	movq	$1, %r13
	cmpq	$1, %r13
	je	S_case760
	cmpq	$3, %r13
	jne	S_case760
S_case761:
case.75B:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movl	(%rax), %r13d
	movq	(%rdi), %r15
	movq	(%r15), %r14
	movl	(%rcx), %eax
	shlq	$2, %rax
	movl	%r13d, (%r14,%rax,1)
	movq	$65537, -8(%rsi)
	movl	(%rcx), %ecx
	incl	%ecx
	movl	%ecx, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%rax, %r8
	jmp	lp.749
S_case760:
case.75C:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str40E, %rcx
	movq	%rcx, (%rsi)
	movl	$36, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rdx
	movq	%rdx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r9
	movq	%r9, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%r12), %r10
	movq	%r12, %rdi
	jmp	*%r10
L774:
	cmpq	$3, %r14
	jne	S_case763
S_case764:
case.75D:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movl	(%rax), %r13d
	movq	(%rdi), %r15
	movq	(%r15), %r14
	movl	(%rcx), %eax
	shlq	$2, %rax
	movl	%r13d, (%r14,%rax,1)
	movq	$65537, -8(%rsi)
	movl	(%rcx), %ecx
	incl	%ecx
	movl	%ecx, (%rsi)
	movq	%rsi, %rax
	addq	$16, %rsi
	movq	%rax, %r8
	jmp	lp.749
	.text
lpCheck.775:
	cmpq	$1, %rax
	je	L77D
L_true77C:
then.77B:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	8(%rax), %r8
	incl	%r9d
lp.751:
	movq	%r8, %rax
	jmp	gcTest777
L77D:
	movq	%r10, %rdi
else.779:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %r8
	jmp	letJoinK.77A
retGC776:
	movq	24(%rdi), %r10
	movl	16(%rdi), %r9d
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest777:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	lpCheck.775
doGC778:
	movq	$262239, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movl	%r9d, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC776, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.74E:
	movq	$1, %rax
	xorl	%r9d, %r9d
	movq	$262167, -8(%rsi)
	movabsq	$letJoinK.77A, %rcx
	movq	%rcx, (%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%rdi), %rbx
	movq	%rbx, 16(%rsi)
	movq	%rax, 24(%rsi)
	movq	%rsi, %r10
	addq	$40, %rsi
	cmpq	$1, %rax
	je	L782
L_true77F:
then.781:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	24(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	8(%rax), %r8
	incl	%r9d
	jmp	lp.751
L782:
else.780:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r10, %rdi
	movq	%r9, %r8
	jmp	letJoinK.77A
	.text
else.785:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r13
	movq	%r11, %rdi
	movslq	%r15d, %rax
	movq	%rax, %rsi
	call	AllocBigDoubleArray
	movq	%r12, %r8
	movq	%r13, %r11
	movq	144(%rbx), %rsi
	movq	$131081, -8(%rsi)
	movq	%rax, (%rsi)
	movl	%r15d, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
letJoinK.788:
	movq	$65539, -8(%rsi)
	movq	%rax, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	$131081, -8(%rsi)
	movq	%r15, (%rsi)
	movabsq	$lp.794, %rcx
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$131105, -8(%rsi)
	movabsq	$letJoinK.79C, %rdx
	movq	%rdx, (%rsi)
	movq	8(%r14), %rbx
	movq	%rbx, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	cmpq	$1, 24(%r14)
	je	L79E
L_true79D:
	movq	%r14, %rdi
	xorl	%r12d, %r12d
	movq	%rcx, %r10
then.79A:
	movq	24(%rdi), %r14
	movq	(%r14), %r15
	movq	8(%r14), %r14
	cmpl	8(%rax), %r12d
	jge	L79F
L_true79B:
	movq	%r12, %rbx
	movq	%r14, %rcx
	movq	%r15, %r9
	movq	%r13, %rdx
then.791:
	cmpl	$0, %ebx
	jge	L_true792
	movq	%rax, %r12
	movq	%rdi, %r13
else.78D:
	movq	%r10, %r14
	movq	%r12, %r10
	movq	%r13, %rdi
	movq	$1, %r15
	jmp	letJoinK.78E
L_true792:
then.78F:
	movq	%r10, %r14
	movq	%rax, %r10
	movq	$3, %r15
letJoinK.78E:
	cmpq	$1, %r15
	je	S_case797
	cmpq	$3, %r15
	je	S_case798
S_case797:
	movq	%rdi, %r13
case.795:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str796, %rax
	movq	%rax, (%rsi)
	movl	$39, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rcx
	movq	%rcx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r12), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r12
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r12, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdi
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	16(%r13), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
S_case798:
	movq	%rcx, %r12
	movq	%r9, %r15
	movq	%rdx, %rax
	movq	%r14, %rdx
	movq	%rdi, %r13
case.793:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movsd	 (%r15), %xmm0
	movq	(%r10), %r10
	movq	%rbx, %r14
	shlq	$3, %r14
	movsd	 %xmm0, (%r10,%r14,1)
	movq	$65537, -8(%rsi)
	incl	%ebx
	movl	%ebx, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	(%rdx), %rdi
	movq	%r15, %r8
	movq	%r12, %r9
	movq	%rax, %r10
	movq	16(%r13), %r12
	jmp	lp.794
	/* live= GP={%r15 %r14} spilled=  */
retGC78A:
	movl	8(%rdi), %r15d
	movq	(%rdi), %rdi
	jmp	gcTest78B
L_true783:
then.786:
	movl	%r15d, 152(%r11)
gcTest78B:
	movq	%r11, %rdx
	movq	448(%rdx), %rax
	subq	%rsi, %rax
	movl	152(%r11), %ebx
	leaq	4(%rbx), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jle	doGC78C
	movq	%rdi, %r14
AllocDoubleArray.789:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r13
	movq	%r11, %rdi
	movslq	%r15d, %r9
	movq	%r9, %rsi
	call	AllocDoubleArray
	movq	%r12, %r8
	movq	%r13, %r11
	movq	144(%rbx), %rsi
	jmp	letJoinK.788
doGC78C:
	movq	$131081, -8(%rsi)
	movq	%rdi, (%rsi)
	movl	%r15d, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC78A, %r8
	jmp	ASM_InvokeGC
letJoinK.77A:
	movq	%r8, %r15
	movq	$65536, %r14
	cmpl	$0, %r14d
	jl	L7A0
L784:
	sarl	$3, %r14d
	cmpl	%r14d, %r15d
	jl	L_true783
	movq	%rdi, %r14
	jmp	else.785
L7A0:
	addl	$7, %r14d
	jmp	L784
L79F:
	movq	%r14, %r9
	movq	%r15, %rdx
	movq	%r13, %r15
	movq	%r10, %r14
else.790:
	movq	%r12, %rbx
	movq	%r9, %rcx
	movq	%rdx, %r9
	movq	%r15, %rdx
	movq	%rax, %r10
	movq	$1, %r15
	jmp	letJoinK.78E
L79E:
else.799:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%r14), %rdi
	movq	(%rdi), %r10
	movq	$1, %r8
	jmp	*%r10
	.text
else.7A2:
	/* Liveout:  GP={%rdi}  */
	movq	%r10, %rdi
	jmp	letJoinK.79C
L7BD:
	movq	%r12, %rbx
else.7B0:
	movq	$1, %r15
	cmpq	$1, %r15
	jne	L7BA
S_case7B1:
case.7A5:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str796, %r14
	movq	%r14, (%rsi)
	movl	$39, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %r15
	movq	%r15, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdx
	movq	%rdx, (%rsi)
	movq	%r12, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%rbx), %r9
	movq	%rbx, %rdi
	jmp	*%r9
L7BA:
	cmpq	$3, %r15
	jne	S_case7B1
S_case7B2:
	movq	%rbx, %r12
case.7A4:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movsd	 (%rax), %xmm1
	movq	(%rdi), %rbx
	movq	(%rbx), %rdx
	movl	(%rcx), %eax
	shlq	$3, %rax
	movsd	 %xmm1, (%rdx,%rax,1)
	movq	$65537, -8(%rsi)
	movl	(%rcx), %ecx
	incl	%ecx
	movl	%ecx, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	movq	%r13, %r8
lp.794:
	movq	%r8, %rcx
	cmpq	$1, %r9
	je	else.7A2
L_true7A1:
then.7A3:
	jmp	gcTest7B7
retGC7B6:
	movq	32(%rdi), %r9
	movq	24(%rdi), %rcx
	movq	16(%rdi), %r12
	movq	8(%rdi), %r10
	movq	(%rdi), %rdi
gcTest7B7:
	movq	%r11, %rax
	movq	448(%rax), %r13
	subq	%rsi, %r13
	jg	L7BC
doGC7B8:
	movq	$327683, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%r12, 16(%rsi)
	movq	%rcx, 24(%rsi)
	movq	%r9, 32(%rsi)
	movq	%rsi, %rdi
	addq	$48, %rsi
	movabsq	$retGC7B6, %r8
	jmp	ASM_InvokeGC
L7BC:
thenCheck.7B5:
	movq	(%r9), %rax
	movq	8(%r9), %r9
	movq	(%rdi), %rdx
	movl	(%rcx), %ebx
	cmpl	8(%rdx), %ebx
	jge	L7BD
L_true7B9:
then.7B3:
	cmpl	$0, (%rcx)
	jl	L7BE
L_true7B4:
then.7AD:
	movq	$3, %r14
	cmpq	$1, %r14
	jne	L7BF
S_case7AE:
case.7A9:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str796, %rax
	movq	%rax, (%rsi)
	movl	$39, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rcx
	movq	%rcx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r15
	movq	%rsi, 144(%r15)
	movq	%r8, %rbx
	movq	%r11, %r13
	movq	%r14, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%rbx, %r8
	movq	%r13, %r11
	movq	144(%r15), %rsi
	movq	%r8, %r15
	movq	%rsi, %r13
	movq	%r11, %rbx
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r13, %rsi
	movq	%rbx, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rbx
	movq	%rbx, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%r12), %r9
	movq	%r12, %rdi
	jmp	*%r9
L7BE:
else.7AA:
	movq	$1, %r13
	cmpq	$1, %r13
	je	S_case7AB
	cmpq	$3, %r13
	jne	S_case7AB
S_case7AC:
case.7A6:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movsd	 (%rax), %xmm2
	movq	(%rdi), %r14
	movq	(%r14), %r13
	movl	(%rcx), %eax
	shlq	$3, %rax
	movsd	 %xmm2, (%r13,%rax,1)
	movq	$65537, -8(%rsi)
	movl	(%rcx), %ecx
	incl	%ecx
	movl	%ecx, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r15, %r8
	jmp	lp.794
S_case7AB:
case.7A7:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str796, %rax
	movq	%rax, (%rsi)
	movl	$39, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rcx
	movq	%rcx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r11, %r13
	movq	%rsi, 144(%r13)
	movq	%r8, %r14
	movq	%r11, %r15
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	M_StringConcat2
	movq	%r14, %r8
	movq	%r15, %r11
	movq	144(%r13), %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdi
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	(%r12), %r9
	movq	%r12, %rdi
	jmp	*%r9
L7BF:
	cmpq	$3, %r14
	jne	S_case7AE
S_case7AF:
case.7A8:
	/* Liveout:  GP={%r12 %r10 %r9 %r8 %rdi}  */
	movsd	 (%rax), %xmm0
	movq	(%rdi), %r14
	movq	(%r14), %r13
	movl	(%rcx), %eax
	shlq	$3, %rax
	movsd	 %xmm0, (%r13,%rax,1)
	movq	$65537, -8(%rsi)
	movl	(%rcx), %ecx
	incl	%ecx
	movl	%ecx, (%rsi)
	movq	%rsi, %r15
	addq	$16, %rsi
	movq	%r15, %r8
	jmp	lp.794
	.text
letJoinK.79C:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rdi), %rdi
	movq	(%rdi), %rax
	movq	$1, %r8
	jmp	*%rax
	.text
else.7C3:
gcTest7C6:
	movq	%r11, %rcx
	movq	448(%rcx), %rdx
	subq	%rsi, %rdx
	jle	doGC7C7
elseCheck.7C4:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	%rbx, %r8
	movq	$1, %r10
f.712:
	movq	%r8, %rax
	cmpq	$1, %rax
	je	L7CA
L_true7C0:
	movq	%r9, -56(%rbp)
	movq	%rdi, %r12
then.7C2:
	movq	8(%rax), %rbx
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	movq	(%r12), %r9
	movq	%r9, %rsi
	call	M_StringSame
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	cmpl	$1, %eax
	je	L_true7C9
	movq	-56(%rbp), %r9
	movq	%r12, %rdi
	jmp	else.7C3
doGC7C7:
	movq	$196611, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC7C5, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%rbx %r9 %rdi} spilled=  */
retGC7C5:
	movq	16(%rdi), %rbx
	movq	8(%rdi), %r9
	movq	(%rdi), %rdi
	jmp	gcTest7C6
L7CA:
else.7C1:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	letJoinK.713
L_true7C9:
	movq	-56(%rbp), %rdi
then.7C8:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65539, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	%rbx, %r8
	jmp	letJoinK.713
	.text
then.7D4:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	24(%rbx), %rdi
	movq	(%rax), %r8
	jmp	letJoinK.711
L_true7D6:
	movq	%rdi, %rbx
then.7D0:
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	movq	(%rax), %rdi
	call	M_IntFromString
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
letJoinK.7CF:
	cmpq	$1, %rax
	je	L7D7
L_true7D5:
	jmp	then.7D4
L7D7:
else.7D2:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str7D3, %rdx
	movq	%rdx, (%rsi)
	movl	$30, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdi
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	8(%rbx), %rdi
	movq	(%rdi), %r9
	jmp	*%r9
L7D8:
	movq	%rdi, %rax
else.7CC:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	24(%rax), %rdi
	movq	16(%rax), %r8
	jmp	letJoinK.711
letJoinK.713:
	movq	%r8, %r15
	cmpq	$1, %r15
	je	L7D8
L_true7CB:
then.7CD:
	movq	(%r15), %rax
	cmpq	$1, %rax
	jne	L_true7D6
	movq	%rdi, %rbx
else.7CE:
	movq	$1, %rax
	jmp	letJoinK.7CF
	.text
else.7DC:
gcTest7DF:
	movq	%r11, %rcx
	movq	448(%rcx), %rdx
	subq	%rsi, %rdx
	jle	doGC7E0
elseCheck.7DD:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	%rbx, %r8
	movq	$1, %r10
f.705:
	movq	%r8, %rax
	cmpq	$1, %rax
	je	L7E3
L_true7D9:
	movq	%r9, -56(%rbp)
	movq	%rdi, %r12
then.7DB:
	movq	8(%rax), %rbx
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	(%rax), %rdi
	movq	(%r12), %r9
	movq	%r9, %rsi
	call	M_StringSame
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	cmpl	$1, %eax
	je	L_true7E2
	movq	-56(%rbp), %r9
	movq	%r12, %rdi
	jmp	else.7DC
doGC7E0:
	movq	$196611, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rbx, 16(%rsi)
	movq	%rsi, %rdi
	addq	$32, %rsi
	movabsq	$retGC7DE, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%rbx %r9 %rdi} spilled=  */
retGC7DE:
	movq	16(%rdi), %rbx
	movq	8(%rdi), %r9
	movq	(%rdi), %rdi
	jmp	gcTest7DF
L7E3:
else.7DA:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	letJoinK.707
L_true7E2:
	movq	-56(%rbp), %rdi
then.7E1:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65539, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%rsi, %rbx
	addq	$16, %rsi
	movq	%rbx, %r8
	jmp	letJoinK.707
	.text
letJoinK.707:
	movq	%r8, %r13
	cmpq	$1, %r13
	jne	L_true7E4
	movq	%rdi, %r14
else.7E5:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	32(%r14), %rdi
	movq	24(%r14), %r8
	jmp	letJoinK.70D
L_true7E4:
then.7E6:
	movq	(%r13), %r9
	cmpq	$1, %r9
	jne	L_true80C
	movq	%rdi, -64(%rbp)
else.805:
	movq	$131081, -8(%rsi)
	movabsq	$str7E8, %rbx
	movq	%rbx, (%rsi)
	movl	$3, 8(%rsi)
	movq	%rsi, %r14
	movq	%r14, -80(%rbp)
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str806, %rdi
	movq	%rdi, (%rsi)
	movl	$23, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str7EA, %r9
	movq	%r9, (%rsi)
	movl	$8, 8(%rsi)
	movq	%rsi, %r15
	movq	%r15, -72(%rbp)
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str7EB, %r10
	movq	%r10, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %rax
	movq	%rax, -88(%rbp)
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str7EC, %r12
	movq	%r12, (%rsi)
	movl	$2, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%r14, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-80(%rbp), %rcx
	movq	%rcx, (%rsi)
	movq	%r15, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-64(%rbp), %r9
	movq	16(%r9), %r10
	movq	%r10, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r9
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-72(%rbp), %r10
	movq	%r10, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r15
	call	M_StringConcatList
	movq	%rax, -56(%rbp)
	movq	%r13, %r8
	movq	%r15, %r11
	movq	144(%r12), %rsi
	movq	$131075, -8(%rsi)
	movq	%r14, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%rbx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-80(%rbp), %r12
	movq	%r12, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-88(%rbp), %r13
	movq	%r13, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-64(%rbp), %r14
	movq	16(%r14), %r9
	movq	%r9, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-72(%rbp), %r15
	movq	%r15, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	call	M_StringConcatList
	movq	%rax, %rdi
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rax
	movq	%rax, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r13
	movq	%r15, %rsi
	call	M_StringConcat2
	movq	%r12, %r8
	movq	%r13, %r11
	movq	144(%rbx), %rsi
	movq	%r8, %r15
	movq	%rsi, %rbx
	movq	%r11, %r12
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%rbx, %rsi
	movq	%r12, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r14
	movq	%r14, (%rsi)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	-64(%rbp), %r12
	jmp	letJoinK.7EE
L_true804:
	movq	%r15, %rdi
	movq	-64(%rbp), %r12
then.7FE:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r13
	movq	%r11, %r14
	call	M_IntFromString
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	cmpq	$1, %rax
	jne	L_true7FF
else.7F9:
	movq	$1, %r13
letJoinK.7EE:
	cmpq	$1, %r13
	jne	L_true80B
else.809:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$131081, -8(%rsi)
	movabsq	$str7D3, %rcx
	movq	%rcx, (%rsi)
	movl	$30, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %rdx
	movq	%rdx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	8(%r12), %rdi
	movq	(%rdi), %rbx
	jmp	*%rbx
L_true7FF:
then.7FA:
	movq	$131073, -8(%rsi)
	movq	$1, (%rsi)
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$65539, -8(%rsi)
	movq	%r15, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	jmp	letJoinK.7EE
L_true80B:
then.80A:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	32(%r12), %rdi
	movq	(%r13), %r8
	jmp	letJoinK.70D
L_true80C:
	movq	%rdi, %r12
then.807:
	movq	(%r9), %rdi
	movq	8(%r9), %r15
	cmpq	$1, %r15
	je	L80D
L_true808:
	movq	%rdi, %rbx
	movq	%r12, -64(%rbp)
then.802:
	movq	(%r15), %r15
	movq	$131081, -8(%rsi)
	movabsq	$str803, %rcx
	movq	%rcx, (%rsi)
	movl	$3, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r8, %r14
	movq	%rsi, %r13
	movq	%r11, %r12
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	M_StringSame
	movq	%r14, %r8
	movq	%r13, %rsi
	movq	%r12, %r11
	cmpl	$1, %eax
	je	L_true804
	movq	%r15, -56(%rbp)
	movq	-64(%rbp), %r12
else.7FB:
	movq	$131081, -8(%rsi)
	movabsq	$str7FC, %rcx
	movq	%rcx, (%rsi)
	movl	$3, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%r11, %r13
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	M_StringSame
	movq	%r15, %r8
	movq	%r14, %rsi
	movq	%r13, %r11
	cmpl	$1, %eax
	je	L_true7FD
	movq	%rbx, %rdi
else.7F4:
	movq	$131081, -8(%rsi)
	movabsq	$str7F5, %rdx
	movq	%rdx, (%rsi)
	movl	$3, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	%r8, %r13
	movq	%rsi, %r14
	movq	%r11, %r15
	movq	%rcx, %rsi
	call	M_StringSame
	movq	%r13, %r8
	movq	%r14, %rsi
	movq	%r15, %r11
	cmpl	$1, %eax
	je	L_true7F6
else.7F0:
	movq	$1, %r13
	jmp	letJoinK.7EE
L80D:
else.800:
	movq	$131081, -8(%rsi)
	movabsq	$str7F5, %rax
	movq	%rax, (%rsi)
	movl	$3, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	%r8, %rbx
	movq	%rsi, %r13
	movq	%r11, %r14
	movq	%r15, %rsi
	call	M_StringSame
	movq	%rbx, %r8
	movq	%r13, %rsi
	movq	%r14, %r11
	cmpl	$1, %eax
	je	L_true801
	movq	%r12, -64(%rbp)
else.7E7:
	movq	$131081, -8(%rsi)
	movabsq	$str7E8, %r15
	movq	%r15, (%rsi)
	movl	$3, 8(%rsi)
	movq	%rsi, %r10
	movq	%r10, -80(%rbp)
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str7E9, %rax
	movq	%rax, (%rsi)
	movl	$23, 8(%rsi)
	movq	%rsi, %r12
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str7EA, %rcx
	movq	%rcx, (%rsi)
	movl	$8, 8(%rsi)
	movq	%rsi, %r13
	movq	%r13, -72(%rbp)
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str7EB, %rdx
	movq	%rdx, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %r14
	movq	%r14, -88(%rbp)
	addq	$24, %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str7EC, %rbx
	movq	%rbx, (%rsi)
	movl	$2, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%r12, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%r15, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-88(%rbp), %rcx
	movq	%rcx, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-72(%rbp), %rbx
	movq	%rbx, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r13
	movq	%r11, %r14
	call	M_StringConcatList
	movq	%rax, -56(%rbp)
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	movq	$131075, -8(%rsi)
	movq	%r12, (%rsi)
	movq	$1, 8(%rsi)
	movq	%rsi, %rax
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	%r15, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rcx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-80(%rbp), %rdi
	movq	%rdi, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rsi, %rdx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-88(%rbp), %r9
	movq	%r9, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%rsi, %rbx
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-64(%rbp), %r10
	movq	16(%r10), %r9
	movq	%r9, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	$131075, -8(%rsi)
	movq	-72(%rbp), %r12
	movq	%r12, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movq	%r11, %r12
	movq	%rsi, 144(%r12)
	movq	%r8, %r13
	movq	%r11, %r14
	call	M_StringConcatList
	movq	%rax, %rdi
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%r12), %rsi
	movq	$131081, -8(%rsi)
	movabsq	$str3D5, %rax
	movq	%rax, (%rsi)
	movl	$1, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r12
	movq	%r11, %r13
	movq	%r15, %rsi
	call	M_StringConcat2
	movq	%r12, %r8
	movq	%r13, %r11
	movq	144(%rbx), %rsi
	movq	%r8, %r15
	movq	%rsi, %rbx
	movq	%r11, %r12
	movq	(%rax), %rdi
	call	M_Print
	movq	%r15, %r8
	movq	%rbx, %rsi
	movq	%r12, %r11
	movq	$131075, -8(%rsi)
	movabsq	$tag42, %r13
	movq	%r13, (%rsi)
	movq	-56(%rbp), %r13
	movq	%r13, 8(%rsi)
	movq	%rsi, %r13
	addq	$24, %rsi
	movq	-64(%rbp), %r12
	jmp	letJoinK.7EE
L_true801:
then.7EF:
	movq	$65539, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	jmp	letJoinK.7EE
L_true7FD:
	movq	-56(%rbp), %rdi
then.7F7:
	movq	%r11, %rbx
	movq	%rsi, 144(%rbx)
	movq	%r8, %r13
	movq	%r11, %r14
	call	M_IntFromString
	movq	%r13, %r8
	movq	%r14, %r11
	movq	144(%rbx), %rsi
	cmpq	$1, %rax
	jne	L_true7F8
else.7F2:
	movq	$1, %r13
	jmp	letJoinK.7EE
L_true7F8:
then.7F3:
	movq	$131073, -8(%rsi)
	movq	$3, (%rsi)
	movq	(%rax), %r15
	movl	(%r15), %eax
	movl	%eax, 8(%rsi)
	movq	%rsi, %r14
	addq	$24, %rsi
	movq	$65539, -8(%rsi)
	movq	%r14, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	jmp	letJoinK.7EE
L_true7F6:
then.7F1:
	movq	$65539, -8(%rsi)
	movq	$1, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	jmp	letJoinK.7EE
	.text
letJoinK.6F0:
	jmp	gcTest810
	/* live= GP={%rax %rdi} spilled=  */
retGC80F:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest810:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC811
letJoinKCheck.80E:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$3, (%r11)
	movq	32(%r11), %rbx
	movq	8(%rbx), %rdi
	movq	%rdi, 32(%r11)
	movq	(%rbx), %rdi
	movq	(%rdi), %r9
	movq	$1, %rax
	jmp	*%r9
doGC811:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC80F, %r8
	jmp	ASM_InvokeGC
	.text
k.6E0:
	jmp	gcTest814
	/* live= GP={%rax %rdi} spilled=  */
retGC813:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest814:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC815
kCheck.812:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$3, (%r11)
	movq	32(%r11), %rbx
	movq	8(%rbx), %rdi
	movq	%rdi, 32(%r11)
	movq	(%rbx), %rdi
	movq	(%rdi), %r9
	movq	$1, %rax
	jmp	*%r9
doGC815:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC813, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.513:
	jmp	gcTest818
	/* live= GP={%rdi} spilled=  */
retGC817:
	movq	(%rdi), %rdi
gcTest818:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC819
letJoinKCheck.816:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	letJoinK.50E
doGC819:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC817, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.510:
	jmp	gcTest81C
	/* live= GP={%rdi} spilled=  */
retGC81B:
	movq	(%rdi), %rdi
gcTest81C:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	L822
doGC81D:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC81B, %r8
	jmp	ASM_InvokeGC
L822:
letJoinKCheck.81A:
	cmpq	$1, 40(%rdi)
	je	L823
L_true821:
	movq	%rdi, %rax
then.81F:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	40(%rax), %rbx
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.820, %rdi
	movq	%rdi, (%rsi)
	movq	24(%rax), %r9
	movq	%r9, 8(%rsi)
	movq	32(%rax), %r10
	movq	%r10, 16(%rsi)
	movq	8(%rbx), %r12
	movq	%r12, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	movq	16(%rax), %r13
	movq	(%r13), %rdi
	movq	(%rbx), %r14
	movq	(%r14), %r8
	movq	8(%rax), %r10
	jmp	spawnWorker.511
L823:
else.81E:
	/* Liveout:  GP={%rdi}  */
	movq	48(%rdi), %rdi
	jmp	letJoinK.50E
	.text
letJoinK.820:
	jmp	gcTest826
	/* live= GP={%rax} spilled=  */
retGC825:
	movq	(%rdi), %rdi
gcTest826:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC827
	movq	%rdi, %rax
letJoinKCheck.824:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	8(%rax), %rbx
	movq	(%rbx), %rdi
	movq	24(%rax), %r8
	movq	16(%rax), %r9
	jmp	lp.512
doGC827:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC825, %r8
	jmp	ASM_InvokeGC
	.text
k.48A:
	jmp	gcTest82A
	/* live= GP={%rax %rdi} spilled=  */
retGC829:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest82A:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC82B
kCheck.828:
	/* Liveout:  GP={%rax %rdi}  */
	movq	$3, (%r11)
	movq	32(%r11), %rbx
	movq	8(%rbx), %rdi
	movq	%rdi, 32(%r11)
	movq	(%rbx), %rdi
	movq	(%rdi), %r9
	movq	$1, %rax
	jmp	*%r9
doGC82B:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC829, %r8
	jmp	ASM_InvokeGC
	.text
k.3F9:
	jmp	gcTest82E
	/* live= GP={%rax %rdi} spilled=  */
retGC82D:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest82E:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC82F
kCheck.82C:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	letJoinK.3FB
doGC82F:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC82D, %r8
	jmp	ASM_InvokeGC
	.text
anon.3F6:
	movq	%r8, %rax
	jmp	gcTest832
	/* live= GP={%r10 %r9 %rax %rdi} spilled=  */
retGC831:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest832:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC833
anonCheck.830:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	letJoinK.40C
doGC833:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC831, %r8
	jmp	ASM_InvokeGC
	.text
anon.3F7:
	movq	%r8, %rax
	jmp	gcTest836
	/* live= GP={%r10 %r9 %rax %rdi} spilled=  */
retGC835:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest836:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC837
anonCheck.834:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	letJoinK.436
doGC837:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC835, %r8
	jmp	ASM_InvokeGC
	.text
lpCheck.838:
	movl	(%rax), %ebx
	cmpl	8(%rdi), %ebx
	jge	L83F
L_true83E:
then.83D:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movl	16(%rdi), %r14d
	movq	(%rdi), %rcx
	movq	(%rcx), %r15
	movl	(%rax), %edx
	shlq	$2, %rdx
	movl	%r14d, (%r15,%rdx,1)
	movq	$65537, -8(%rsi)
	movl	(%rax), %ebx
	incl	%ebx
	movl	%ebx, (%rsi)
	movq	%rsi, %rdx
	addq	$16, %rsi
	movq	%rdx, %r8
lp.3E8:
	movq	%r8, %rax
	jmp	gcTest83A
L83F:
	movq	%rdi, %rcx
else.83C:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	(%rcx), %r8
	jmp	letJoinK.3DB
retGC839:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest83A:
	movq	%r11, %r13
	movq	448(%r13), %r12
	subq	%rsi, %r12
	jg	lpCheck.838
doGC83B:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC839, %r8
	jmp	ASM_InvokeGC
	.text
lpCheck.841:
	movl	(%rax), %ebx
	cmpl	8(%rdi), %ebx
	jge	L848
L_true847:
then.846:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movl	16(%rdi), %r14d
	movq	(%rdi), %rcx
	movq	(%rcx), %r15
	movl	(%rax), %edx
	shlq	$2, %rdx
	movl	%r14d, (%r15,%rdx,1)
	movq	$65537, -8(%rsi)
	movl	(%rax), %ebx
	incl	%ebx
	movl	%ebx, (%rsi)
	movq	%rsi, %rdx
	addq	$16, %rsi
	movq	%rdx, %r8
lp.3CC:
	movq	%r8, %rax
	jmp	gcTest843
L848:
	movq	%rdi, %rcx
else.845:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	(%rcx), %r8
	jmp	letJoinK.3CA
retGC842:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest843:
	movq	%r11, %r13
	movq	448(%r13), %r12
	subq	%rsi, %r12
	jg	lpCheck.841
doGC844:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC842, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.3BB:
	movq	%r8, %r9
	jmp	gcTest84C
	/* live= GP={%r9 %rdi} spilled=  */
retGC84B:
	movq	8(%rdi), %r9
	movq	(%rdi), %rdi
gcTest84C:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC84D
letJoinKCheck.84A:
	cmpq	$1, %r9
	je	S_case853
	cmpq	$3, %r9
	jne	S_case853
S_case854:
case.84E:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rdi), %rdi
	movq	$3, %r8
	jmp	letJoinK.3B7
doGC84D:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%r9, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC84B, %r8
	jmp	ASM_InvokeGC
S_case853:
	movq	%rdi, %rbx
case.851:
	movq	$131081, -8(%rsi)
	movabsq	$str3B1, %rdx
	movq	%rdx, (%rsi)
	movl	$18, 8(%rsi)
	movq	%rsi, %r15
	addq	$24, %rsi
	movq	%r8, %r14
	movq	%rsi, %r13
	movq	%r11, %r12
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	call	M_StringSame
	movq	%r14, %r8
	movq	%r13, %rsi
	movq	%r12, %r11
	cmpl	$1, %eax
	je	L_true852
else.84F:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rbx), %rdi
	movq	$1, %r8
	jmp	letJoinK.3B7
L_true852:
then.850:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	8(%rbx), %rdi
	movq	$3, %r8
	jmp	letJoinK.3B7
	.text
else.856:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	letJoinK.396
L_true855:
then.857:
gcTest85A:
	movq	%r11, %r14
	movq	448(%r14), %r12
	subq	%rsi, %r12
	jle	doGC85B
thenCheck.858:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movl	(%rbx), %eax
	movq	(%rdi), %r15
	movq	$64, %rcx
	subq	(%r15), %rcx
	shlq	%cl, %rax
	movq	8(%rdi), %r12
	movq	(%r12), %rdx
	movl	(%rbx), %ecx
	shlq	$3, %rcx
	movq	%rax, (%rdx,%rcx,1)
	movq	$65537, -8(%rsi)
	movl	(%rbx), %edx
	incl	%edx
	movl	%edx, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	movq	%r13, %r8
lp.395:
	movq	%r8, %rbx
	movl	(%rbx), %r13d
	cmpl	16(%rdi), %r13d
	jl	L_true855
	jmp	else.856
doGC85B:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC859, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r10 %r9 %rbx %rdi} spilled=  */
retGC859:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rbx
	movq	(%rdi), %rdi
	jmp	gcTest85A
	.text
letJoinK.396:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rdi, %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %r8
	jmp	letJoinK.393
	.text
case.860:
	movq	$1, %r9
	jmp	letJoinK.861
letJoinK.382:
	movq	%r8, %rax
	jmp	gcTest85E
	/* live= GP={%rax %rdi} spilled=  */
retGC85D:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest85E:
	movq	%r11, %r13
	movq	448(%r13), %rbx
	subq	%rsi, %rbx
	jg	L872
doGC85F:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC85D, %r8
	jmp	ASM_InvokeGC
L872:
letJoinKCheck.85C:
	movq	$1, %rbx
	movq	(%rax), %rcx
	shlq	%cl, %rbx
	movq	16(%rdi), %rdx
	subq	%rbx, %rdx
	xorq	%rcx, %rcx
	cmpq	%rcx, %rdx
	je	L_true871
else.86D:
	cmpq	%rcx, %rdx
	jb	L_true86E
else.866:
	movq	$3, %r9
	cmpq	$3, %r9
	jne	L873
S_case867:
	jmp	case.860
L_true871:
then.86F:
	movq	$5, %r15
	cmpq	$3, %r15
	je	S_case870
default.86C:
	xorq	%r12, %r12
letJoinK.86B:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movq	(%rax), %r14
	leaq	(%r14,%r12,1), %r13
	movq	%r13, (%rsi)
	movq	%rsi, %r12
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%r12, %r8
	jmp	letJoinK.383
S_case870:
case.86A:
	movq	$1, %r12
	jmp	letJoinK.86B
L_true86E:
then.868:
	movq	$1, %r10
	cmpq	$3, %r10
	jne	L874
S_case869:
case.863:
	movq	$1, %r10
letJoinK.864:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movq	(%rax), %rbx
	leaq	(%rbx,%r10,1), %rdx
	movq	%rdx, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%rcx, %r8
	jmp	letJoinK.383
L874:
default.865:
	xorq	%r10, %r10
	jmp	letJoinK.864
L873:
default.862:
	xorq	%r9, %r9
letJoinK.861:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movq	(%rax), %rax
	leaq	(%rax,%r9,1), %r15
	movq	%r15, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%r14, %r8
	jmp	letJoinK.383
	.text
letJoinK.4E:
	jmp	gcTest877
	/* live= GP={%rdi} spilled=  */
retGC876:
	movq	(%rdi), %rdi
gcTest877:
	movq	%r11, %rcx
	movq	448(%rcx), %rax
	subq	%rsi, %rax
	jle	doGC878
letJoinKCheck.875:
	/* Liveout:  GP={%rdi}  */
	movq	8(%rdi), %rdi
	jmp	letJoinK.4D
doGC878:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC876, %r8
	jmp	ASM_InvokeGC
	.text
letJoinK.52:
	jmp	gcTest87B
	/* live= GP={%rdi} spilled=  */
retGC87A:
	movq	(%rdi), %rdi
gcTest87B:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jg	L881
doGC87C:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC87A, %r8
	jmp	ASM_InvokeGC
L881:
letJoinKCheck.879:
	cmpq	$1, 40(%rdi)
	je	L882
L_true880:
	movq	%rdi, %rax
then.87E:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movq	40(%rax), %rbx
	movq	$262181, -8(%rsi)
	movabsq	$letJoinK.87F, %rdi
	movq	%rdi, (%rsi)
	movq	24(%rax), %r9
	movq	%r9, 8(%rsi)
	movq	32(%rax), %r10
	movq	%r10, 16(%rsi)
	movq	8(%rbx), %r12
	movq	%r12, 24(%rsi)
	movq	%rsi, %r9
	addq	$40, %rsi
	movq	16(%rax), %r13
	movq	(%r13), %rdi
	movq	(%rbx), %r14
	movq	(%r14), %r8
	movq	8(%rax), %r10
	jmp	initVPFields.4A
L882:
else.87D:
	/* Liveout:  GP={%rdi}  */
	movq	48(%rdi), %rdi
	jmp	letJoinK.4D
	.text
letJoinK.87F:
	jmp	gcTest885
	/* live= GP={%rax} spilled=  */
retGC884:
	movq	(%rdi), %rdi
gcTest885:
	movq	%r11, %rdx
	movq	448(%rdx), %rcx
	subq	%rsi, %rcx
	jle	doGC886
	movq	%rdi, %rax
letJoinKCheck.883:
	/* Liveout:  GP={%r9 %r8 %rdi}  */
	movq	8(%rax), %rbx
	movq	(%rbx), %rdi
	movq	24(%rax), %r8
	movq	16(%rax), %r9
	jmp	lp.4B
doGC886:
	movq	$65539, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rsi, %rdi
	addq	$16, %rsi
	movabsq	$retGC884, %r8
	jmp	ASM_InvokeGC
	.text
else.888:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%r9, %rdi
	movq	$1, %r8
	jmp	letJoinK.3B
L_true887:
then.889:
gcTest88C:
	movq	%r11, %r14
	movq	448(%r14), %r12
	subq	%rsi, %r12
	jle	doGC88D
thenCheck.88A:
	/* Liveout:  GP={%r10 %r9 %r8 %rdi}  */
	movl	(%rbx), %eax
	movq	(%rdi), %r15
	movq	$64, %rcx
	subq	(%r15), %rcx
	shlq	%cl, %rax
	movq	8(%rdi), %r12
	movq	(%r12), %rdx
	movl	(%rbx), %ecx
	shlq	$3, %rcx
	movq	%rax, (%rdx,%rcx,1)
	movq	$65537, -8(%rsi)
	movl	(%rbx), %edx
	incl	%edx
	movl	%edx, (%rsi)
	movq	%rsi, %r13
	addq	$16, %rsi
	movq	%r13, %r8
lp.3A:
	movq	%r8, %rbx
	movl	(%rbx), %r13d
	cmpl	16(%rdi), %r13d
	jl	L_true887
	jmp	else.888
doGC88D:
	movq	$262147, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%r9, 16(%rsi)
	movq	%r10, 24(%rsi)
	movq	%rsi, %rdi
	addq	$40, %rsi
	movabsq	$retGC88B, %r8
	jmp	ASM_InvokeGC
	/* live= GP={%r10 %r9 %rbx %rdi} spilled=  */
retGC88B:
	movq	24(%rdi), %r10
	movq	16(%rdi), %r9
	movq	8(%rdi), %rbx
	movq	(%rdi), %rdi
	jmp	gcTest88C
	.text
letJoinK.3B:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	%rdi, %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %r8
	jmp	letJoinK.38
	.text
case.892:
	movq	$1, %r9
	jmp	letJoinK.893
letJoinK.15:
	movq	%r8, %rax
	jmp	gcTest890
	/* live= GP={%rax %rdi} spilled=  */
retGC88F:
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
gcTest890:
	movq	%r11, %r13
	movq	448(%r13), %rbx
	subq	%rsi, %rbx
	jg	L8A4
doGC891:
	movq	$131075, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rsi, %rdi
	addq	$24, %rsi
	movabsq	$retGC88F, %r8
	jmp	ASM_InvokeGC
L8A4:
letJoinKCheck.88E:
	movq	$1, %rbx
	movq	(%rax), %rcx
	shlq	%cl, %rbx
	movq	16(%rdi), %rdx
	subq	%rbx, %rdx
	xorq	%rcx, %rcx
	cmpq	%rcx, %rdx
	je	L_true8A3
else.89F:
	cmpq	%rcx, %rdx
	jb	L_true8A0
else.898:
	movq	$3, %r9
	cmpq	$3, %r9
	jne	L8A5
S_case899:
	jmp	case.892
L_true8A3:
then.8A1:
	movq	$5, %r15
	cmpq	$3, %r15
	je	S_case8A2
default.89E:
	xorq	%r12, %r12
letJoinK.89D:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movq	(%rax), %r14
	leaq	(%r14,%r12,1), %r13
	movq	%r13, (%rsi)
	movq	%rsi, %r12
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%r12, %r8
	jmp	letJoinK.18
S_case8A2:
case.89C:
	movq	$1, %r12
	jmp	letJoinK.89D
L_true8A0:
then.89A:
	movq	$1, %r10
	cmpq	$3, %r10
	jne	L8A6
S_case89B:
case.895:
	movq	$1, %r10
letJoinK.896:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movq	(%rax), %rbx
	leaq	(%rbx,%r10,1), %rdx
	movq	%rdx, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%rcx, %r8
	jmp	letJoinK.18
L8A6:
default.897:
	xorq	%r10, %r10
	jmp	letJoinK.896
L8A5:
default.894:
	xorq	%r9, %r9
letJoinK.893:
	/* Liveout:  GP={%r8 %rdi}  */
	movq	$65537, -8(%rsi)
	movq	(%rax), %rax
	leaq	(%rax,%r9,1), %r15
	movq	%r15, (%rsi)
	movq	%rsi, %r14
	addq	$16, %rsi
	movq	8(%rdi), %rdi
	movq	%r14, %r8
	jmp	letJoinK.18
	.text
	.section	.rodata
	.global	mantMagic
mantMagic:
	.long	45464992
	.global	SequentialFlag
SequentialFlag:
	.long	0
	.align	8
str70F:
	.asciz	"-max-leaf-size"
	.align	8
str60:
	.asciz	"FLS.ite: nonexistant implicit threading environment"
	.align	8
str7D3:
	.asciz	"find: failed to parse argument"
	.align	8
str70C:
	.asciz	"-chunking-policy"
	.align	8
str7FC:
	.asciz	"LTS"
	.align	8
str796:
	.asciz	"DoubleArray.update: index out of bounds"
	.align	8
str40E:
	.asciz	"IntArray.update: index out of bounds"
	.align	8
str70B:
	.asciz	"ChunkingPolicy"
	.align	8
str4AE:
	.asciz	"ImplicitThread.@current-work-group: empty work-group stack"
	.align	8
str72A:
	.asciz	"invalid max leaf size"
	.align	8
str4AB:
	.asciz	"WorkStealing.@spawn-task: full deque"
	.align	8
str7EA:
	.asciz	"Fail in "
	.align	8
str4AA:
	.asciz	"WorkStealing: full deque\n"
	.align	8
str7F5:
	.asciz	"SEQ"
	.align	8
str7EC:
	.asciz	": "
	.align	8
str7E9:
	.asciz	"invalid argument (loc1)"
	.align	8
str3D5:
	.asciz	"\n"
	.align	8
str806:
	.asciz	"invalid argument (loc2)"
	.align	8
str41:
	.asciz	"Size"
	.align	8
str803:
	.asciz	"ETS"
	.align	8
str421:
	.asciz	"IntArray.sub: index out of bounds"
	.align	8
str3B1:
	.asciz	"-ws-log-num-steals"
	.align	8
str7E8:
	.asciz	"cvt"
	.align	8
str7EB:
	.asciz	"."
	.align	8
str3D2:
	.asciz	"IntArray.tabulate: size "
	.align	8
tag42:
	.asciz	"Fail"
	.align	8
tag6D:
	.asciz	"Match"
