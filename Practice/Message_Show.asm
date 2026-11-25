.model small
.stack 100h
.data
Message db "Saiduzzaman$"
.code

main proc
     mov ax,@data
     mov ds,ax
     
     lea dx,Message
     mov ah,9
     int 21h
     
     mov ah,4ch
     int 21h
     main endp
end main 