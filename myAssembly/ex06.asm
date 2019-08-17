; ex6.asm
; allocate string to stack, write to stdout

global _start

_start:
	sub esp, 4
	mov [esp], byte 'H'
	mov [esp+1], byte 'e'
	mov [esp+2], byte 'y'
	mov [esp+3], byte '!'
	mov eax, 4
	mov ebx, 1
	mov ecx, esp	; pointer to bytes to write
	mov edx, 4
	int 0x80
	mov eax, 1
	mov ebx, 0
	int 0x80


$ nasm -f elf32 ex6.asm -o ex6.o
$ ld -m elf_i386 ex6.o -o ex6
$ ./ex6
$ echo $?
Hey!
