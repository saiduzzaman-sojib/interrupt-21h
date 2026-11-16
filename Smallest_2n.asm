;Enter two number : 1 3
;smallest 3

.model small
.stack 100h
.data
num db 13,10,"Input two numbers :$"
print db 13,10, "Smallest Number : $"
.code

main proc
     mov ax,@data
     mov ds,ax

     ;input msg print
     lea dx,num
     mov ah,9
     int 21h

     ;user input
     mov ah,1
     int 21h
     mov bl,al ;bl=1st num
     int 21h
     mov bh,al ;bh=2nd

     ;comparison 1st 2nd
     cmp bl,bh
     jle small1

     ;print lowest value
     lea dx,print
     mov ah,9
     int 21h

     mov dl,bh
     mov ah,2
     int 21h
     jmp exit

     small1:
     lea dx,print
     mov ah,9
     int 21h

     ;print lowest value
     mov dl,bl
     mov ah,2
     int 21h

     exit :
     mov ah,4ch
     int 21h

     main endp
end main