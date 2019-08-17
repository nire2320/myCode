; ex8.asm

global _start

_start:
	call func
	mov eax, 1
	mov ebx, 0
	int 0x80

func:
	mov ebp, esp
	sub esp, 2
	mov [esp], byte 'H'
	mov [esp+1], byte 'i'
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 2
	int 0x80
	mov esp, ebp 			; effectively deallocates space we just allocated
	ret

$ nasm -f elf32 ex8.asm -o ex8.o
$ ld -m elf_i386 ex8.o -o ex8
$ ./ex8
$ echo $?
Hi


; If function calls another function that stores ebp, it will alter ebp before returning
; pushing and popping ebp can allow nested functions now!

func:
	push ebp 				; preserves old ebp value
	mov ebp, esp
	sub esp, 2
	mov [esp], byte 'H'
	mov [esp+1], byte 'i'
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 2
	int 0x80
	mov esp, ebp 			; effectively deallocates space we just allocated
	pop ebp					; restoring old ebp value
	ret