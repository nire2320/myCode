; ex5.asm

global _start
section .data
	addr db "yellow"	; this 'label' is a pointer to a memory address with string "yellow"
section .text
_start:
	mov eax, 4 		; sys_write
	mov ebx, 1 		; stdout
	mov ecx, addr 	; bytes to write
	mov edx, 6 		; number of bytes to write
	int 0x80
	mov eax, 1		; sys_exit
	mov ebx, 0		; exit status 0
	int 0x80

$ nasm -f elf32 ex5.asm -o ex5.o
$ ld -m elf_i386 ex5.o -o ex5
$ ./ex5
$ echo $?
yellow




global _start
section .data
	addr db "yellow"	; this 'label' is a pointer to a memory address with string "yellow"
section .text
_start:
	mov [addr], byte 'H'	; byte representation of 'H' is being moved into address
	mov [addr+5], byte '!'	; if our memory is where 'y' is, this puts us at address of 'w'
	mov eax, 4 				; sys_write
	mov ebx, 1 				; stdout
	mov ecx, addr 			; bytes to write
	mov edx, 6 				; number of bytes to write
	int 0x80
	mov eax, 1				; sys_exit
	mov ebx, 0				; exit status 0
	int 0x80

$ nasm -f elf32 ex5.asm -o ex5.o
$ ld -m elf_i386 ex5.o -o ex5
$ ./ex5
$ echo $?
Hello!


; db, dw, dd are bytes from 1, 2, and 4

section .data
	; db is 1 byte
	name1 db "string"
	name2 db 0xff
	name3 db 100
	; dw is 2 bytes
	name4 dw 0x1234
	name5 dw 1000
	; dd is 4 bytes
	name6 dd 0x12345678
	name7 dd 100000


; push 1234		; causes the Stack to move by 4 upwards (from say byte 28 to byte 24)

push 1234
push 8765
push 246

sub esp, 4
mov [esp], dword 357	; exact same as push 357

pop eax 	; caues Stack to move by 4 downwards

move eax, dword [esp]
add esp, 4				; exact same as pop eax




