code segment
        assume cs:code,ds:code
main:   mov ax,code
      	mov ds,ax
;------------------------------ initiate values for tasting 
		mov bx , 200h
		mov byte ptr [bx] , 7h
		mov byte ptr [bx+1] , -1h
		mov byte ptr [bx+2] , 8h
		mov byte ptr [bx+3] , 6h
		mov byte ptr [bx+4] , -3h
		mov byte ptr [bx+5] , 4h
		mov byte ptr [bx+6] , -5h
		mov byte ptr [bx+7] , -7h
		mov byte ptr [bx+8] , 2h
		mov byte ptr [bx+9] , -9h
;------------------------------
		mov bx , 0
		mov bx , 400h
		mov byte ptr [bx] , 0 ;negetive counter
		mov byte ptr [bx+1] , 0 ;posetive counter
		mov di , 300h
		mov si , 200h
		mov ax , 0
		mov cx , 10 ;run loop 10 times
count:	mov ax , [si] ;count loop
		add ax , 0
		js nege ;negetive
		inc byte ptr [bx+1]
		inc si
		jmp conti ;continue loop if value is posetive
nege:	inc byte ptr [bx] ;negetive
		mov [di] , ax
		mov ax , 0
		inc si
		loop count ;
conti:	loop count ;count loop
;------------------------------
		mov ah , 4ch
		int 21h
	code ends
end main
