;ascii Pattern Print 
.model small
.stack 100h 
.data
.code

main proc
     
     mov ax, @data
     mov ds, ax 
     
     mov cx,7 ;global condition 
     
     mid:      ;outer loop line counter
     mov bx,cx 
     
     mov cx,5
     final:     ;inner loop  charecter counter
     ;bl =ascii input
     mov dl,bl
     mov ah,2
     int 21h
     inc bl
     
     cmp bl,255 ;original value hold by bl not dl 
     je left 
     ;else
     loop final  
     
     mov ah,2
     mov dl,13
     int 21h
     mov dl,10
     int 21h
     
     mov cx,bx ; return to the original register
     loop mid
     
     left: 
     mov ah, 4ch
     int 21h
     main endp

end main