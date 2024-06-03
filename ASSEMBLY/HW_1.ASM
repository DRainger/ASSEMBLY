code segment
        assume cs:code,ds:code
main: mov ax,code
      	mov ds,ax
;************give address***************;
	mov bx,200h
	mov si,150h
	mov di,300h
;************initialization***************;
	mov byte ptr [bx],15h 
	mov byte ptr [si],35h
;*************add***********************;
	mov cl,[bx] ;**moving 15 in to c low
	mov ch,[si] ;**moving 35 in to c high
	mov [di],cl ;**moving 15 in to address 300h
	add [di],ch ;**adding 35 to 15
;****************************************;
	mov ax,[di]
	add ax,ax ; **using add to multiply by 2**


code ends
end main