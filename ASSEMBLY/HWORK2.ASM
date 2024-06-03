code segment
    assume cs: code ,ds: code 

main: 

mov si ,200h 
mov cx ,8 ; seting counter to 
mov ax ,0 

mov byte ptr [si], 1 
inc si 
mov byte ptr [si], 1
    pib: mov ax , [si]
         add ax, [si-1]
         inc si
         mov [si],ax
         mov ax , 0
         loop pib 


code ends
end main
