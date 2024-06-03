code segment
	assume cs: code , ds: code 

	main: mov ax,code
      	  mov ds,ax

			mov bx,0
			mov bx,200h
			mov byte ptr [bx] , 1h ;inserting the walu
			mov byte ptr [bx+1], -4h
			mov byte ptr [bx+2], 8h
			mov byte ptr [bx+3], 2h
			mov byte ptr [bx+4], -6h
			mov byte ptr [bx+5], 9h
			mov byte ptr [bx+6], -7h
			mov byte ptr [bx+7], 4h
			mov byte ptr [bx+8], 3h
			mov byte ptr [bx+9], -9h

			mov cx ,10
			mov si ,300h
			mov di , 400h
			mov byte ptr [di],0
			mov byte ptr [di+1],0
			mov ax,0

unsigned: 	mov ah,[bx]
			add ax,0
			js sign
			inc byte ptr [di+1]
			mov ax ,0
			inc bx
			jmp continue 

sign:		mov [si] ,ax
			inc byte ptr [di]
			mov ax ,0
			inc byte ptr [bx]
			loop unsigned
continue: 	loop unsigned

		mov ah , 4ch
		int 21h

code ends
end main
