ex1.asm

global _start
_start:

	mov eax, 1		//move 1 into eax
	mov ebx, 42		//move 42 into ebx, exit status (can be anything)
	int 0x80		//interupt handler for system call "0x80"


$ nasm -f elf32 ex1.asm -o ex1.o	//ELF (executeable + linking) assemble into machine code
$ ld -m elf_i386 ex1.o -o ex1		//build executeable from object file (.o)

$ ./ex1
$ echo $?
42

global _start
_start:

	mov eax, 1		//move 1 into eax
	mov ebx, 42		//move 42 into ebx, exit status (can be anything)
	sub ebx, 29 	//subtract 29 from 42, alters ebx
	int 0x80		//interupt handler for system call "0x80"

$ ./ex1
$ echo $?
13