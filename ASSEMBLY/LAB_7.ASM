data segment

		MSG1 db 'enter number: $'
		MSG2 db 'enter char: &'

data ends

code segment
        assume cs:code,ds:data
main: mov ax,data
      	mov ds,ax
		
	;--------print instaction------------
		mov dx , offset MSG2       ;
		mov ah , 9                 ;
		int 21h                    ;
	;--------gatchar---------------------
		mov ah , 1                 ;
		int 21h                    ;
	;--------move number to buffer-------
		mov bl , al                ;
	;--------print instaction------------
		mov dx , offset MSG1       ;
		mov ah , 9                 ;
		int 21h                    ;
	;--------gatchar---------------------
		mov ah , 1                 ;
		int 21h                    ;
	;--------move number to buffer-------
		sub al , '0'
		mov cl , al                ;
	;--------print new line \n----------
print:	mov dl , 10                ;
		mov ah , 2                 ;
		int 21h                    ;
	;--------print number----------------
		mov dl , bl                ; 
		mov ah , 2                 ;
		int 21h                    ;
		
		loop print
		
   mov ah, 4Ch
   int 21h
code ends
end main
