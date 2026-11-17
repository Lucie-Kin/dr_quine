%define SOURCE src db "%%define SOURCE src db %2$c%1$s%2$c%3$c%3$c%%define FILENAME %2$cSully_%%d.s%2$c%3$c%%define STDOUT 1%3$c%%define COMPILE %2$cnasm -f elf64 %%s -o Sully.o && gcc Sully.o -o Sully && ./Sully%2$c%3$c%3$c%%macro _macro 0%3$cextern fopen%3$cextern fprintf%3$cextern fclose%3$cextern dprintf%3$cextern sprintf%3$cextern system%3$c%3$csection .data%3$c%4$cfilename_fmt db FILENAME,0%3$c%4$ccommand_fmt db COMPILE,10,0%3$c%4$cmode db %2$cw%2$c,0%3$c%4$ci dd %5$d%3$c%4$cSOURCE%3$c%3$csection .bss%3$c%4$cfile resb 100%3$c%4$ccommand resb 100%3$c%3$csection .text%3$c%4$cglobal main%3$c%3$cmain:%3$c%4$cpush rbp%3$c%4$cmov rbp,rsp%3$c%4$csub rsp,16%3$c%3$c%4$cdec dword [rel i]%3$c%4$ccmp dword [rel i],0%3$c%4$cjl done%3$c%3$c%4$clea rdi,[rel file]%3$c%4$clea rsi,[rel filename_fmt]%3$c%4$cmov edx,[rel i]%3$c%4$cxor eax,eax%3$c%4$ccall sprintf wrt ..plt%3$c%3$c%4$clea rdi,[rel file]%3$c%4$clea rsi,[rel mode]%3$c%4$cxor eax,eax%3$c%4$ccall fopen wrt ..plt%3$c%4$ctest rax,rax%3$c%4$cjz error%3$c%3$c%4$cmov [rbp-8],rax%3$c%3$c%4$cmov rdi,rax%3$c%3$c%4$csub rsp,16%3$c%4$cmov eax,[rel i]%3$c%4$cmov [rsp],rax%3$c%4$clea rsi,[rel src]%3$c%4$clea rdx,[rel src]%3$c%4$cmov rcx,34%3$c%4$cmov r8,10%3$c%4$cmov r9,9%3$c%4$cxor eax,eax%3$c%4$ccall fprintf wrt ..plt%3$c%4$cadd rsp,16%3$c%3$c%4$cmov rdi,[rbp-8]%3$c%4$ccall fclose wrt ..plt%3$c%3$c%4$clea rdi,[rel command]%3$c%4$clea rsi,[rel command_fmt]%3$c%4$clea rdx,[rel file]%3$c%4$cxor eax,eax%3$c%4$ccall sprintf wrt ..plt%3$c%3$c%4$cmov rdi,STDOUT%3$c%4$clea rsi,[rel command]%3$c%4$cxor eax,eax%3$c%4$ccall dprintf wrt ..plt%3$c%3$c%4$clea rdi,[rel command]%3$c%4$ccall system wrt ..plt%3$c%4$ctest rax,rax%3$c%4$cjnz error%3$c%3$c%4$cadd rsp,16%3$c%4$cjmp done%3$c%3$cerror:%3$c%4$cadd rsp,16%3$c%4$cmov eax,1%3$c%4$cleave%3$c%4$cret%3$c%3$cdone:%3$c%4$cxor eax,eax%3$c%4$cleave%3$c%4$cret%3$c%%endmacro%3$c%3$c_macro%3$c"

%define FILENAME "Sully_%d.s"
%define STDOUT 1
%define COMPILE "nasm -f elf64 %s -o Sully.o && gcc Sully.o -o Sully && ./Sully"

%macro _macro 0
extern fopen
extern fprintf
extern fclose
extern dprintf
extern sprintf
extern system

section .data
	filename_fmt db FILENAME,0
	command_fmt db COMPILE,10,0
	mode db "w",0
	i dd 5
	SOURCE

section .bss
	file resb 100
	command resb 100

section .text
	global main

main:
	push rbp
	mov rbp,rsp
	sub rsp,16

	dec dword [rel i]
	cmp dword [rel i],0
	jl done

	lea rdi,[rel file]
	lea rsi,[rel filename_fmt]
	mov edx,[rel i]
	xor eax,eax
	call sprintf wrt ..plt

	lea rdi,[rel file]
	lea rsi,[rel mode]
	xor eax,eax
	call fopen wrt ..plt
	test rax,rax
	jz error

	mov [rbp-8],rax

	mov rdi,rax

	sub rsp,16
	mov eax,[rel i]
	mov [rsp],rax
	lea rsi,[rel src]
	lea rdx,[rel src]
	mov rcx,34
	mov r8,10
	mov r9,9
	xor eax,eax
	call fprintf wrt ..plt
	add rsp,16

	mov rdi,[rbp-8]
	call fclose wrt ..plt

	lea rdi,[rel command]
	lea rsi,[rel command_fmt]
	lea rdx,[rel file]
	xor eax,eax
	call sprintf wrt ..plt

	mov rdi,STDOUT
	lea rsi,[rel command]
	xor eax,eax
	call dprintf wrt ..plt

	lea rdi,[rel command]
	call system wrt ..plt
	test rax,rax
	jnz error

	add rsp,16
	jmp done

error:
	add rsp,16
	mov eax,1
	leave
	ret

done:
	xor eax,eax
	leave
	ret
%endmacro

_macro
