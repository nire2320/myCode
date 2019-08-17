; EIP 		; internal pointer in instruction for execution
			; not a register, can't modify it
			; can jump it (jmp)

; ex3.asm

global _start

section .text
_start:
	mov ebx, 42		; exit status 42
	mov eax, 1		; sys_exit system call
	jmp skip		; jump to "skip" label
	mov ebx, 13 	; exit status is 13
skip:
	int 0x80		; interupt, sys_call EXIT program

$ nasm -f elf32 ex3.asm -o ex3.o
$ ld -m elf_i386 ex3.o -o ex3
$ ./ex3
$ echo $?
42


global _start

section .text
_start:
	mov ecx, 99
	mov ebx, 42		; exit status 42
	mov eax, 1		; sys_exit system call
	cmp ecx, 100 	; compare ecx to 100
	jl skip			; jump, if less than is true, to "skip" label
	mov ebx, 13 	; exit status is 13
skip:
	int 0x80		; interupt, sys_call EXIT program

$ nasm -f elf32 ex3.asm -o ex3.o
$ ld -m elf_i386 ex3.o -o ex3
$ ./ex3
$ echo $?
42


global _start

section .text
_start:
	mov ecx, 101
	mov ebx, 42		; exit status 42
	mov eax, 1		; sys_exit system call
	cmp ecx, 100 	; compare ecx to 100
	jl skip			; jump, if less than is true, to "skip" label
	mov ebx, 13 	; exit status is 13
skip:
	int 0x80		; interupt, sys_call EXIT program

$ nasm -f elf32 ex3.asm -o ex3.o
$ ld -m elf_i386 ex3.o -o ex3
$ ./ex3
$ echo $?
13



je 	A, B	; Jump if Equal	
jne A, B	; Jump if Not Equal
jg	A, B	; Jump if Greater
jge A, B	; Jump if Greater or Equal
jl	A, B	; Jump if Less
jle A, B	; Jump if Less or Equal


