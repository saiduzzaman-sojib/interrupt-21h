.model small
.stack 100h
.data
.code

main proc
    mov ax, @data
    mov ds, ax

    mov ax, 45678
    mov cx, 0

division:
    xor dx, dx
    mov bx, 10
    div bx
    push dx
    inc cx
    cmp ax, 0
    jne division

print:
    pop dx
    add dl, '0'
    mov ah, 2
    int 21h
    loop print

exit:
    mov ah, 4ch
    int 21h
    main endp

end main