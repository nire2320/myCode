; call pushes EIP onto Stack
; then performs a jump to location specified


global _start

_start:
	call func
	mov eax, 1
	int 0x80

func:
	mov ebx, 42
	pop eax
	jmp eax


$ nasm -f elf32 ex7.asm -o ex7.o
$ ld -m elf_i386 ex7.o -o ex7
$ ./ex7
$ echo $?
42


; simpler way with ret
global _start

_start:
	call func
	mov eax, 1
	int 0x80

func:
	mov ebx, 42
	ret

	