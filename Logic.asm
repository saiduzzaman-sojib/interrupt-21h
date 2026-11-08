;Logical task (AND,OR,XOR,NOT)
;101b
;111b
;AND Result : '5'
;OR Result : '7'
;XOR Result : '2'
;Not Result : '2'

.model small 
.stack 100h
.data
and_msg db "AND Result : $"
or_msg db 13,10, "OR Result : $"
xor_msg db 13,10, " XOR Result : $"
not_msg db 13,10, "Not Result : $"
.code

main proc 
    mov ax,@data
    mov ds,ax

    ;AND message print 
    lea dx,and_msg
    mov ah,9
    int 21h
    ;AND Operation 
    mov bl,101b
    and bl,111b
    mov dl,bl
    add dl,48
    mov ah ,2
    int 21h


    ;OR message print 
    lea dx,or_msg
    mov ah,9
    int 21h
    ;OR Operation 
    mov bl,101b
    or bl,111b
    mov dl,bl
    add dl,48
    mov ah ,2
    int 21h


    ;XOR message print 
    lea dx,xor_msg
    mov ah,9
    int 21h
    ;OR Operation 
    mov bl,101b
    xor bl,111b
    mov dl,bl
    add dl,48
    mov ah ,2
    int 21h


    ;NOT message print
    lea dx,not_msg
    mov ah,9
    int 21h
    ;NOT Operation
    mov bl,101b
    xor bl,111b
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h


     exit:
     mov ah,4ch
     int 21h
     main endp
end main