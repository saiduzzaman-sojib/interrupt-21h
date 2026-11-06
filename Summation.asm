;4+4=8,5+3=8,0+1=1
.model small
.stack 100h
.data
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0
    mov bx,1
    add bx,ax
    mov dx,bx
    add dx,48
    mov ah,2
    int 21h

    exit:
    mov ah,4ch
    int 21h
    main endp
end main 

    