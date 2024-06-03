data segment

deta ends

code segment
        assume cs:code,ds:data
main: mov ax,data
      	mov ds,ax
		
		
   mov ah, 4Ch
   int 21h
code ends
end main