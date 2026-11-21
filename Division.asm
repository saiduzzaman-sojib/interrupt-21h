.model small
.stack 100h
.data
.code

main proc
    
    mov ax,@data
    mov ds,ax
   
    mov bl,4
    mov bh,2
    div bh
    mov dl,bh
    add dl,'0'
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
    main endp
end main