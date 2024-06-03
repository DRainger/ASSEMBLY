code segment
        assume cs:code,ds:code
main: mov ax,code
      mov ds,ax
      mov dx,offset mess
      


code ends
end main