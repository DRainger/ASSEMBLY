code segment
        assume cs:code,ds:code
main: mov ax,code
      	mov ds,ax
;********************************;
	mov [bx],150h ;**buffer
;************initialization***************;
	mov cx,6h
	mov dx,4h
	sub ax,ax
;*************add***********************;
	mov [bx],cl
	mov ax,[bx] ;**input 6 by buffer
;*************add first part***********************;
	add ax,dx
	add ax,ax ;**using add to multiply by 2**
;*************add second part***********************;
	mov [bx],dl ;**inserting 6 to buffer
	add dl,dl ;**using add to multiply by 2**
	add dl,[bx] ;**using add and buffer to multiply by 3**
	add ax,dx

   ; mov ah, 4Ch
   ; int 21h
code ends
end main