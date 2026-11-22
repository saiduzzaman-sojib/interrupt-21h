;Enter Higher Case : S
;This is your Lower case : s
;Enter Lower Case : r
;This is your Higher case : R
;Higher-> Lower and Lower-> Higher

.model small
.stack 100h
.data
higher db 13,10,"Enter Higher Case : $"
lower db 13,10,"This is your Lower case : $"
lower_in db 13,10,"Enter Lower Case : $"
higher_out db 13,10,"This is your Higher case : $"
.code

main proc
    mov ax,@data
    mov ds,ax

    ;higher string print
    lea dx,higher
    mov ah,9h
    int 21h

    ;higher user input
    mov ah,1
    int 21h
    mov bl,al

    lea dx,lower
    mov ah,9h
    int 21h

    ;HIGHER -> LOWER convert
    add bl,32           ;bl is s
    mov dl,bl
    mov ah,2
    int 21h

    ;lower string print
    lea dx,lower_in
    mov ah,9h
    int 21h

    ;lower user input
    mov ah,1
    int 21h
    mov bl,al

    lea dx,higher_out
    mov ah,9h
    int 21h

    ;LOWER -> HIGHER convert
    sub bl,32           ;bl is R
    mov dl,bl
    mov ah,2
    int 21h

    exit:
    mov ah,4ch
    int 21h

    main endp
end main