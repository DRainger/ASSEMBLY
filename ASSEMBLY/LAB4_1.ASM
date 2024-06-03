code segment
        assume cs:code,ds:code
main: mov ax,code
      mov ds,ax

mov ah,4Ch
int 21h

code ends
end main