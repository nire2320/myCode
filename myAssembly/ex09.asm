_start:									
	push 21				; ESP=28, EBP=123, EAX=0
	call times2			
	mov ebx, eax		; ESP=28, EBP=123, EAX=1, EBX=42
	mov eax, 1			
	int 0x80			

times2:									
	push ebp			; ESP=20, EBP=123, EAX=0
	mov ebp, esp		; ESP=20, EBP=20, EAX=0 ;; preserves top of stack
	mov eax, [ebp+8]	; ESP=20, EBP=20, EAX=21
	add eax, eax		; ESP=20, EBP=20, EAX=42
	mov esp, ebp		; ESP=20, EBP=20, EAX=21 ;; kind of unnecessary because we don't use stack, but good if we were using stack
	pop ebp				; ESP=28, EBP=123, EAX=42
	ret									
									



$ nasm -f elf32 ex9.asm -o ex9.o
$ ld -m elf_i386 ex9.o -o ex9
$ ./ex9
$ echo $?
42

