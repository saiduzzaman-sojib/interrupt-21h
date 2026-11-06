.model small 
.stack 100h 
.data

divident db "Enter Divident : $"
divisor db 13,10, "Enter Divisor : $"
quotient db 13,10, "Your Quotient is : $"
remainder db 13,10, "Your Reminder is : $"
error db 13,10, "Undefine ! $"

.code

main proc
    mov ax,@data
    mov ds,ax

    ;divident user input 
    mov ah,9
    lea dx,divident
    int 21h
    
    mov ah,1 
    int 21h
    sub al,30h ;conver to decimal(By default user input in hex )
    mov bl,al ;Divident saved in BL

    ;divisor user input 
    mov ah,9
    lea dx,divisor
    int 21h
    
    mov ah,1 
    int 21h
    sub al,30h ;conver to decimal
    mov bh,al ;Divisor saved in BH (BL already used)

   ;corner case check 
   cmp bh ,0
   je undefine ; jump if divisor is 0

   ;Division 
   mov al,bl
   mov ah,0
   div bh
   mov bl,al
   mov ch ,ah

   ;Print Quotient
   lea dx,quotient
   mov ah,9
   int 21h
   
   mov dl,bl
   add dl,'0'
   mov ah,2
   int 21h

   ;Print Reminder
   lea dx ,remainder
   mov ah,9
   int 21h

   mov dl,ch
   add dl,'0'
   mov ah,2
   int 21h

   jmp exit 

undefine :
   lea dx,error
   mov ah,9
   int 21h
exit:
   mov ah,4ch
   int 21h
main endp
end main      
