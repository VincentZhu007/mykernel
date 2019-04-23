main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$1, 24(%esp)
	movl	$2, 28(%esp)
	movl	$0, 20(%esp)
	movl	20(%esp), %eax
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	call	printf
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	%eax, %ecx
#APP
	movl $0,%eax
	addl %ecx,%eax
	addl %edx,%eax
	movl %eax,20(%esp)
	
# 0 "" 2
#NO_APP
	movl	20(%esp), %eax
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
