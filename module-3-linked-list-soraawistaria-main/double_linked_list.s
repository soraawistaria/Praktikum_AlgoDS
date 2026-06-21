	.file	"double_linked_list.cpp"
	.text
	.align 2
	.globl	__ZN16DoubleLinkedList4initEv
	.def	__ZN16DoubleLinkedList4initEv;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList4initEv:
LFB2185:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$0, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 4(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2185:
	.align 2
	.globl	__ZN16DoubleLinkedList8is_emptyEv
	.def	__ZN16DoubleLinkedList8is_emptyEv;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList8is_emptyEv:
LFB2186:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L3
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L3
	movl	$1, %eax
	jmp	L4
L3:
	movl	$0, %eax
L4:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2186:
	.align 2
	.globl	__ZN16DoubleLinkedList9add_frontEi
	.def	__ZN16DoubleLinkedList9add_frontEi;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList9add_frontEi:
LFB2187:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	$12, (%esp)
	call	__Znwj
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	testb	%al, %al
	je	L6
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	-28(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%eax)
	jmp	L7
L6:
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	-28(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
L7:
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE2187:
	.align 2
	.globl	__ZN16DoubleLinkedList8add_backEi
	.def	__ZN16DoubleLinkedList8add_backEi;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList8add_backEi:
LFB2188:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	testb	%al, %al
	je	L9
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList9add_frontEi
	subl	$4, %esp
	jmp	L8
L9:
	movl	$12, (%esp)
	call	__Znwj
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
L8:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE2188:
	.section .rdata,"dr"
LC0:
	.ascii "Woi input indeks yang bener\0"
LC1:
	.ascii "KELEBIHAN INDEKSNYA!\0"
	.text
	.align 2
	.globl	__ZN16DoubleLinkedList7add_idxEii
	.def	__ZN16DoubleLinkedList7add_idxEii;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList7add_idxEii:
LFB2189:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA2189
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	%ecx, -28(%ebp)
	cmpl	$0, 12(%ebp)
	jne	L12
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB0:
	call	__ZN16DoubleLinkedList9add_frontEi
LEHE0:
	subl	$4, %esp
	jmp	L11
L12:
	cmpl	$0, 12(%ebp)
	jns	L14
	movl	$8, (%esp)
	call	___cxa_allocate_exception
	movl	%eax, %ebx
	movl	$LC0, (%esp)
	movl	%ebx, %ecx
LEHB1:
	call	__ZNSt13runtime_errorC1EPKc
LEHE1:
	subl	$4, %esp
	movl	$__ZNSt13runtime_errorD1Ev, 8(%esp)
	movl	$__ZTISt13runtime_error, 4(%esp)
	movl	%ebx, (%esp)
LEHB2:
	call	___cxa_throw
LEHE2:
L14:
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jle	L15
	movl	$8, (%esp)
	call	___cxa_allocate_exception
	movl	%eax, %ebx
	movl	$LC1, (%esp)
	movl	%ebx, %ecx
LEHB3:
	call	__ZNSt13runtime_errorC1EPKc
LEHE3:
	subl	$4, %esp
	movl	$__ZNSt13runtime_errorD1Ev, 8(%esp)
	movl	$__ZTISt13runtime_error, 4(%esp)
	movl	%ebx, (%esp)
LEHB4:
	call	___cxa_throw
L15:
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	L16
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8add_backEi
	subl	$4, %esp
	jmp	L11
L16:
	movl	$12, (%esp)
	call	__Znwj
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movb	%dl, (%eax)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L17
L18:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	addl	$1, -16(%ebp)
L17:
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%ebp)
	jl	L18
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-20(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L11
L21:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	___cxa_free_exception
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	__Unwind_Resume
L22:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	___cxa_free_exception
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	__Unwind_Resume
LEHE4:
L11:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE2189:
	.section	.gcc_except_table,"w"
LLSDA2189:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE2189-LLSDACSB2189
LLSDACSB2189:
	.uleb128 LEHB0-LFB2189
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB2189
	.uleb128 LEHE1-LEHB1
	.uleb128 L21-LFB2189
	.uleb128 0
	.uleb128 LEHB2-LFB2189
	.uleb128 LEHE2-LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB3-LFB2189
	.uleb128 LEHE3-LEHB3
	.uleb128 L22-LFB2189
	.uleb128 0
	.uleb128 LEHB4-LFB2189
	.uleb128 LEHE4-LEHB4
	.uleb128 0
	.uleb128 0
LLSDACSE2189:
	.text
	.align 2
	.globl	__ZN16DoubleLinkedList12delete_frontEv
	.def	__ZN16DoubleLinkedList12delete_frontEv;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList12delete_frontEv:
LFB2190:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	testb	%al, %al
	jne	L29
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	L26
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L27
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	__ZdlPvj
L27:
	movl	-28(%ebp), %eax
	movl	$0, (%eax)
	movl	-28(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-28(%ebp), %eax
	movl	$0, 8(%eax)
	jmp	L23
L26:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, 8(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	-28(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	L28
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	__ZdlPvj
L28:
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L23
L29:
	nop
L23:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2190:
	.align 2
	.globl	__ZN16DoubleLinkedList11delete_backEv
	.def	__ZN16DoubleLinkedList11delete_backEv;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList11delete_backEv:
LFB2191:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	testb	%al, %al
	jne	L37
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	L33
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList12delete_frontEv
	jmp	L30
L33:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L34
L35:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
L34:
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	L35
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L36
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	__ZdlPvj
L36:
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	-28(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%eax)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, 8(%eax)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L30
L37:
	nop
L30:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2191:
	.align 2
	.globl	__ZN16DoubleLinkedList10delete_idxEi
	.def	__ZN16DoubleLinkedList10delete_idxEi;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList10delete_idxEi:
LFB2192:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	testb	%al, %al
	jne	L46
	cmpl	$0, 8(%ebp)
	jne	L41
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList12delete_frontEv
	jmp	L38
L41:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L42
L43:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	addl	$1, -16(%ebp)
L42:
	movl	8(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%ebp)
	jl	L43
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	-12(%ebp), %edx
	movl	4(%edx), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	L44
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList11delete_backEv
	jmp	L38
L44:
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	L45
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	__ZdlPvj
L45:
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L38
L46:
	nop
L38:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE2192:
	.section .rdata,"dr"
LC2:
	.ascii " \0"
LC3:
	.ascii "List Kosong\0"
	.text
	.align 2
	.globl	__ZN16DoubleLinkedList7displayEv
	.def	__ZN16DoubleLinkedList7displayEv;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList7displayEv:
LFB2193:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	xorl	$1, %eax
	testb	%al, %al
	je	L48
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
L49:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	$LC2, 4(%esp)
	movl	%eax, (%esp)
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	L49
	movl	$__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSolsEPFRSoS_E
	subl	$4, %esp
	jmp	L51
L48:
	movl	$LC3, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, (%esp)
	movl	%eax, %ecx
	call	__ZNSolsEPFRSoS_E
	subl	$4, %esp
L51:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2193:
	.section .rdata,"dr"
LC4:
	.ascii "List kosong\0"
	.text
	.align 2
	.globl	__ZN16DoubleLinkedList3getEi
	.def	__ZN16DoubleLinkedList3getEi;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList3getEi:
LFB2194:
	.cfi_startproc
	.cfi_personality 0x9b,LDFCM0
	.cfi_lsda 0x1b,LLSDA2194
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	testb	%al, %al
	je	L53
	movl	$8, (%esp)
	call	___cxa_allocate_exception
	movl	%eax, %ebx
	movl	$LC4, (%esp)
	movl	%ebx, %ecx
LEHB5:
	call	__ZNSt13runtime_errorC1EPKc
LEHE5:
	subl	$4, %esp
	movl	$__ZNSt13runtime_errorD1Ev, 8(%esp)
	movl	$__ZTISt13runtime_error, 4(%esp)
	movl	%ebx, (%esp)
LEHB6:
	call	___cxa_throw
L53:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L54
L55:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	addl	$1, -16(%ebp)
L54:
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	L55
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	jmp	L59
L58:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	___cxa_free_exception
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	__Unwind_Resume
LEHE6:
L59:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE2194:
	.section	.gcc_except_table,"w"
LLSDA2194:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE2194-LLSDACSB2194
LLSDACSB2194:
	.uleb128 LEHB5-LFB2194
	.uleb128 LEHE5-LEHB5
	.uleb128 L58-LFB2194
	.uleb128 0
	.uleb128 LEHB6-LFB2194
	.uleb128 LEHE6-LEHB6
	.uleb128 0
	.uleb128 0
LLSDACSE2194:
	.text
	.align 2
	.globl	__ZN16DoubleLinkedList3setEci
	.def	__ZN16DoubleLinkedList3setEci;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList3setEci:
LFB2195:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -20(%ebp)
	movl	8(%ebp), %eax
	movb	%al, -24(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	testb	%al, %al
	jne	L65
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	L63
L64:
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	addl	$1, -8(%ebp)
L63:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L64
	movl	-4(%ebp), %eax
	movzbl	-24(%ebp), %edx
	movb	%dl, (%eax)
	jmp	L60
L65:
	nop
L60:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE2195:
	.align 2
	.globl	__ZN16DoubleLinkedList5clearEv
	.def	__ZN16DoubleLinkedList5clearEv;	.scl	2;	.type	32;	.endef
__ZN16DoubleLinkedList5clearEv:
LFB2196:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	jmp	L67
L71:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	L68
	movl	-28(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	jmp	L69
L68:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	-28(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%eax)
L69:
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	L70
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	__ZdlPvj
L70:
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
L67:
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN16DoubleLinkedList8is_emptyEv
	xorl	$1, %eax
	testb	%al, %al
	jne	L71
	movl	-28(%ebp), %eax
	movl	$0, (%eax)
	movl	-28(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-28(%ebp), %eax
	movl	$0, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2196:
	.globl	__ZTISt13runtime_error
	.section	.rdata$_ZTISt13runtime_error,"dr"
	.linkonce same_size
	.align 4
__ZTISt13runtime_error:
	.long	__ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	__ZTSSt13runtime_error
	.long	__ZTISt9exception
	.globl	__ZTSSt13runtime_error
	.section	.rdata$_ZTSSt13runtime_error,"dr"
	.linkonce same_size
	.align 4
__ZTSSt13runtime_error:
	.ascii "St13runtime_error\0"
	.globl	__ZTISt9exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 4
__ZTISt9exception:
	.long	__ZTVN10__cxxabiv117__class_type_infoE+8
	.long	__ZTSSt9exception
	.globl	__ZTSSt9exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 4
__ZTSSt9exception:
	.ascii "St9exception\0"
	.data
	.align 4
LDFCM0:
	.long	___gxx_personality_v0
	.def	___gxx_personality_v0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (i686-posix-dwarf-rev0, Built by MinGW-Builds project) 15.2.0"
	.def	__Znwj;	.scl	2;	.type	32;	.endef
	.def	___cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	__ZNSt13runtime_errorC1EPKc;	.scl	2;	.type	32;	.endef
	.def	__ZNSt13runtime_errorD1Ev;	.scl	2;	.type	32;	.endef
	.def	___cxa_throw;	.scl	2;	.type	32;	.endef
	.def	___cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	__Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__ZdlPvj;	.scl	2;	.type	32;	.endef
	.def	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	__ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
