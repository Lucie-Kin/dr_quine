extern printf

section .data
	src: db "extern printf%3$c%3$csection .data%3$c%5$csrc: db %2$c%1$s%2$c, 0%3$c%3$c%4$c comment%3$csection .text%3$c%5$cglobal main%3$c%3$cmain: %4$c comment%3$c%5$csub rsp,8%3$c%3$c%5$clea rdi,[rel src]%3$c%5$clea rsi,[rel src]%3$c%5$cmov rdx,34%3$c%5$cmov rcx,10%3$c%5$cmov r8,59%3$c%5$cmov r9,9%3$c%5$cxor eax,eax%3$c%5$ccall printf wrt ..plt%3$c%3$c%5$cadd rsp,8%3$c%5$cret%3$c", 0

; comment
section .text
	global main

main: ; comment
	sub rsp,8

	lea rdi,[rel src]
	lea rsi,[rel src]
	mov rdx,34
	mov rcx,10
	mov r8,59
	mov r9,9
	xor eax,eax
	call printf wrt ..plt

	add rsp,8
	ret
