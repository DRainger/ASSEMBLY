data segment 
		adder dw 300h
		natun db 25h
data ends

code segment
        assume cs:code,ds:data
main: mov ax , code
	  mov ds , ax
	
	mov bx , adder
	mov ax , 0
	mov al , natun
	mov cx , 20h
L:	mov [bx] , al
	inc bx
	loop L
	
mov ah,4Ch
int 21h

code ends
end main
