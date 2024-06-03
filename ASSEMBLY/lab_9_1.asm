data segment
	ar1 dw 15h,16h,17h,18h,19h
	n	db 5
deta ends

stack segment stack
	db 20 dup(?)
stack ends

code segment
        assume cs:code,ds:data,cs:stack
main: mov ax,data
      	mov ds,ax
		mov bx , offset ar1
		push bx
		push n
		
		call rev
		mov ah, 4Ch
		int 21h
		
	rev proc
		mov bp , sp
		mov cx , [bp+2]
		
		mov si , [bp+4]
		
		
   
code ends
end main