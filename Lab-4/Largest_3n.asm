;Largest
;Input Three Numbers : 3 4 5
;Largest Number : 5

.model small
.stack 100h
.data
num db 13,10, "Input Three Numbers : $"
print db 13,10, "Largets Number : $"
.code

main proc 
     mov ax,@data
     mov ds,ax

     ;input message print 
     lea dx,num
     mov ah,9
     int 21h
     ;user input
     mov ah,1
     int 21h
     mov bl,al ;bl=1st number
     int 21h
     mov bh,al;bh=2nd number
     int 21h
     mov cl,al;cl=3rd number 

     ;Comparison 1st and 2nd
     cmp bl,bh
     jge large1;jump if greater ir equal 
     ;else emp between 2nd and 3rd
     large2:
     cmp bh,cl
     jge large3
     ;else 
     lea dx,print
     mov ah,9
     int 21h
     ;print largest value
     mov dl,cl
     mov ah,2
     int 21h
     jmp exit

     ;Lifo
     large3:
     lea dx,print
     mov ah,9
     int 21h
     ;print largest value
     mov dl,bh
     mov ah,2
     int 21h
     jmp exit

     large1:
     cmp bl,cl;compare between 1st and 3rd
     jge large4

     lea dx,print
     mov ah,9
     int 21h
     ;print largest value
     mov dl,cl
     mov ah,2
     int 21h
     jmp exit

     large4:
     lea dx,print
     mov ah,9
     int 21h
     ;print largest value
     mov dl,bl
     mov ah,2
     int 21h
     jmp exit

     ;else
     exit:
     mov ah,4ch
     int 21h

     main endp
end main 



