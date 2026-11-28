.model small
.stack 100h 
.data
multiplicand db "Enter Multuplicand : $"
multiplier db 10,13, "Enter Multiplier : $"
result db 10,13, "Result : $"
.code

main proc
     mov ax, @data
     mov ds, ax

     lea dx,multiplicand
     mov ah,9
     int 21h

     mov ah,1
     int 21h
     mov bl,al

     lea dx,multiplier
     mov ah,9
     int 21h

     mov ah,1
     int 21h
     mov bh,al

     sub bh,'0'
     sub bl,'0'

    lea dx,result
    mov ah,9
    int 21h
    mov al,bl
    mul bh
    mov dl,al
    add dl,'0'
    mov ah,2
    int 21h
    
     

exit:
     mov ah, 4ch
     int 21h
     main endp

end main