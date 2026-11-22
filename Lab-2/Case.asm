;Enter Higher Case : S
;This is Your Loewr case  : r
;Higher-> Lower

.model small
.stack 100h
.data  
higher db 13,10, "Enter Higher Case : $"
lower db 13,10,"This is your Lower case : $ "
.code

main proc
    mov ax,@data
    mov ds ,ax  

    ;higher string print 
    lea dx,higher
    mov ah,9h
    int 21h

    ;higher user input
    mov ah,1
    int 21h
    mov bl ,al 
    mov ah,2;print ascii command   

    lea dx,lower
    mov ah,9h
    int 21h

    ;LOWER CASE convert
    add bl,32   ;bl is r
    mov dl ,bl ; dl=r
    mov ah,2
    int 21h  
    jmp exit

    exit : ;like loop
    mov ah ,4ch 
    int 21h

    main endp
end main