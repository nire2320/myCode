; ex4.asm

global _start

section .text
_start:
	mov ebx, 1 		; start ebx at 1
	mov ecx, 4		; number of iterations
label:
	add ebx, ebx	; ebx += ebx
	dec ecx 		; decrement, ecx -= 1
					; inc = increment, ecx += 1
	cmp ecx, 0		; compare ecx with 0
	jg label 		; jump to label if greater
	mov eax, 1		; sys_exit call
	int 0x80

$ nasm -f elf32 ex4.asm -o ex4.o
$ ld -m elf_i386 ex4.o -o ex4
$ ./ex4
$ echo $?
16
