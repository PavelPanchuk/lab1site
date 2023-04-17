.MODEL SMALL

.STACK 100h

.DATA

.CODE

START:

	mov ah, 80h			;инициализация COM-порт	mov dx, 3FBh

	out dx, al

	mov ax, 0Ch

	mov dx, 3f8h

	out dx, al

	mov ah, 0

	mov dx, 3f9h

	out dx, al

	mov al, 3bh

	mov dx, 3fbh

	out dx,al

read:

	xor al, al

	mov dx, 3fdh

	in al, dx

	and al, 1

	cmp al, 1

	jne read

	xor al, al

	mov dx, 3f8h

	in al, dx

	mov ah, 2

	mov dl, al

	int 21h

	jmp read 	

END START
