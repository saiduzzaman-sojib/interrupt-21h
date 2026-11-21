
;Input Four Numbers : 3 4 1 5
;Smallest Number : 1

.model small
.stack 100h
.data
num db 13,10,"Input Four Numbers : $"
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
     mov bh,al ;bh=2nd num
     int 21h
     mov cl,al ;cl=3rd num
     int 21h
     mov ch,al ;ch=4th num

     ;comparison 1st and 2nd
     cmp bl,bh
     jle small1

     ;else
     cmp bh,cl
     jle small2

     ;else
     cmp cl,ch
     jle small3

     ;print 4th number
     lea dx,print
     mov ah,9
     int 21h

     mov dl,ch
     mov ah,2
     int 21h
     jmp exit

     small1:
     cmp bl,cl
     jle small4

     ;else
     cmp cl,ch
     jle small3

     ;print 4th number
     lea dx,print
     mov ah,9
     int 21h

     mov dl,ch
     mov ah,2
     int 21h
     jmp exit

     small2:
     cmp bh,ch
     jle small5

     ;print 4th number
     lea dx,print
     mov ah,9
     int 21h

     mov dl,ch
     mov ah,2
     int 21h
     jmp exit

     small3:
     lea dx,print
     mov ah,9
     int 21h

     mov dl,cl
     mov ah,2
     int 21h
     jmp exit

     small4:
     lea dx,print
     mov ah,9
     int 21h

     mov dl,bl
     mov ah,2
     int 21h
     jmp exit

     small5:
     lea dx,print
     mov ah,9
     int 21h

     mov dl,bh
     mov ah,2
     int 21h

     exit:
     mov ah,4ch
     int 21h

     main endp
end main

