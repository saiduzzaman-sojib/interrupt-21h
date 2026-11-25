;Left Shift : 2
.model small
.stack 100h
.data
left db "Left Shift : $"
.code

main proc 
     mov ax,@data
     mov ds,ax
     
     lea dx,left
     mov ah,9
     int 21h

     mov al,4
     shl al,1
     mov dl,al
     add dl,'0'
     mov ah,2
     int 21h

exit:
    mov ah,4ch
    int 21h
    main endp
end main 