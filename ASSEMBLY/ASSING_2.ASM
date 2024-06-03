code segment
        assume cs:code,ds:code
main: mov ax,code
      	mov ds,ax
;------------------------------
		mov di , 200h
		mov ax , 0
		mov byte ptr [di], 1 ;first element in series
		inc di
		mov byte ptr [di], 1 ;second element in series
fibo:	mov ax , [di] ; copy element a[n] to register ax
		add ax , [di-1] ;add a[n-1] to a[n] 
		inc di 
		mov [di] , ax ;copy element a[n+1] to next address in series
		mov ax , 0 ;reset register ax to 0
		loop fibo ;fibonatchi series loop
;------------------------------
		mov ah , 4ch
		int 21h
	code ends
end main
