; ex10.asm
; interact with c in assembly

global main
extern printf

section .data
	msg db "Testing %i...", 0x0a, 0x00		; denote hex 10, makes sure a newline happens on next line ;; 0x00 tells C where end of string is

main:
	push ebp			
	mov ebp, esp		; prologue
	push 123			
	push msg			
	call printf			
	mov eax, 0			
	mov esp, ebp		; epilogue
	pop ebp				
	ret					


$ nasm -f elf32 ex10.asm -o ex10.o
$ gcc -m32 ex10.o -o ex10
$ ./ex10
$ echo $?
Testing 123...

