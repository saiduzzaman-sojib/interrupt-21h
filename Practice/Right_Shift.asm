;Right Shift : 2
.model small
.stack 100h
.data
right db "Right Shift : $"
.code

main proc 
     mov ax,@data
     mov ds,ax
     
     lea dx,right
     mov ah,9
     int 21h

     mov al,8
     shr al,2
     mov dl,al
     add dl,'0'
     mov ah,2
     int 21h

exit:
    mov ah,4ch
    int 21h
    main endp
end main 