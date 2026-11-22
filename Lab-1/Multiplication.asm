;Multiplicand 4
;Multiplier 2
;Product 8

.model small 
.stack 100h 
.data

multiplicand db "Enter Multiplicand : $"
multiplier db 13,10, "Enter Multiplier : $"
product db 13,10, "Your Product is : $"

.code

main proc
    mov ax,@data
    mov ds,ax

    ;multiplicand user input 
    mov ah,9
    lea dx,multiplicand
    int 21h
    
    mov ah,1 
    int 21h
    sub al,30h ;convert ASCII to numeric decimal value
    mov bl,al ;Multiplicand saved in BL

    ;multiplier user input 
    mov ah,9
    lea dx,multiplier
    int 21h
    
    mov ah,1 
    int 21h
    sub al,30h ;convert ASCII to numeric decimal value
    mov bh,al ;Multiplier saved in BH

    ;Multiplication 
    mov al,bl
    mul bh ;Multiplies AL (Multiplicand) by BH (Multiplier), result stored in AX
    mov bl,al ;Store low-byte product in BL

    ;Print Product
    lea dx,product
    mov ah,9
    int 21h
   
    mov dl,bl
    add dl,'0' ;convert numeric back to ASCII character
    mov ah,2
    int 21h

    ;Exit Program
    mov ah,4ch
    int 21h
main endp
end main