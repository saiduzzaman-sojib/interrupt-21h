
.model small
.stack 100h 
.data
.code

main proc
     mov ax, @data
     mov ds, ax
     
     mov cx,9 ;global condition
     outer_loop: ;line create 
     mov bx,cx
     
     
     inner_loop: ;charecter print   
     mov dl,'$'   
     mov ah,2
     int 21h
     loop inner_loop ;cx!=0 loop continue
     
     mov ah,2 ;print new line
     ;mov dl,13  ;carraige Return
     ;int 21h
     mov dl,10   ;Line Feed
     int 21h
     mov cx,bx  
     loop outer_loop ;cx!=0 loop continue
     jmp exit
     exit :
     mov ah, 4ch
     int 21h
     main endp

end main