.model small
.stack 100h 
.data
.code

main proc
     ; Initialize the data segment
     mov ax, @data
     mov ds, ax

exit:
     ; Exit the program gracefully
     mov ah, 4ch
     int 21h
main endp

end main