%define SOURCE src db "%%define SOURCE src db %2$c%1$s%2$c%3$c%%define FILENAME %2$cGrace_kid.s%2$c%3$c%3$c%%macro _macro 0%3$cextern fopen%3$cextern fprintf%3$cextern fclose%3$c%3$csection .data%3$c%4$cfile db FILENAME,0%3$c%4$cmode db %2$cw%2$c,0%3$c%4$cSOURCE%3$c%3$csection .text%3$c%4$cglobal main%3$c%3$cmain:%3$c%4$cpush rbp%3$c%4$cmov rbp,rsp%3$c%4$csub rsp,16%3$c%4$clea rdi,[rel file]%3$c%4$clea rsi,[rel mode]%3$c%4$cxor eax,eax%3$c%4$ccall fopen wrt ..plt%3$c%4$ctest rax,rax%3$c%4$cjz error ; comment%3$c%4$cmov [rbp-8],rax%3$c%4$cmov rdi,rax%3$c%4$clea rsi,[rel src]%3$c%4$clea rdx,[rel src]%3$c%4$cmov rcx,34%3$c%4$cmov r8,10%3$c%4$cmov r9,9%3$c%4$cxor eax,eax%3$c%4$ccall fprintf wrt ..plt%3$c%4$cmov rdi,[rbp-8]%3$c%4$ccall fclose wrt ..plt%3$c%4$cxor eax,eax%3$c%4$cleave%3$c%4$cret%3$c%3$cerror:%3$c%4$cmov eax,1%3$c%4$cleave%3$c%4$cret%3$c%%endmacro%3$c%3$c_macro ; comment%3$c"
%define FILENAME "Grace_kid.s"

%macro _macro 0
extern fopen
extern fprintf
extern fclose

section .data
	file db FILENAME,0
	mode db "w",0
	SOURCE

section .text
	global main

main:
	push rbp
	mov rbp,rsp
	sub rsp,16
	lea rdi,[rel file]
	lea rsi,[rel mode]
	xor eax,eax
	call fopen wrt ..plt
	test rax,rax
	jz error ; comment
	mov [rbp-8],rax
	mov rdi,rax
	lea rsi,[rel src]
	lea rdx,[rel src]
	mov rcx,34
	mov r8,10
	mov r9,9
	xor eax,eax
	call fprintf wrt ..plt
	mov rdi,[rbp-8]
	call fclose wrt ..plt
	xor eax,eax
	leave
	ret

error:
	mov eax,1
	leave
	ret
%endmacro

_macro ; comment
