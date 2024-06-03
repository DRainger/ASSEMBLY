data segment
	a	dw	8h
	b	dw	2h
	d	dw	?
deta ends

stack segment stack
	db	100	dup(?)
stack ends

code segment
        assume cs:code,ds:data,cs:stack
main: mov ax,data
      	mov ds,ax
		mov bx , offset a
		push bx
		mov bx , offset b
		push bx
		mov bx , offset d
		push bx
		call Divide
		mov ah, 4Ch
		int 21h
		
Divide proc
	mov bp , sp
	mov ax , [bp +4]
t:	sub ax , [bp +6]
	jnz t
	mov [bp +2] , 

code ends
end main