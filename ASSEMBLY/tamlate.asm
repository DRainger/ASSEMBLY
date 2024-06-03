data segment

deta ends

stack segment stack

stack ends

code segment
        assume cs:code,ds:data,cs:stack
main: mov ax,data
      	mov ds,ax
		
		
   mov ah, 4Ch
   int 21h
code ends
end main