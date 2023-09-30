; Assembly Code to Print a shape within a shape
; B21110106058 - Muhammad Tehseen Khan

dosseg
.model small
.stack 100h
.data
.code
main proc
     
    ;  Outer shape
       mov ah, 6
       mov al, 10
       mov bh, 01100000B
       mov ch, 0
       mov cl, 0
       mov dh, 25
       mov dl, 25
       int 10h
     
    ;  Inner shape
       mov ah, 6
       mov al, 5
       mov bh, 01110000B
       mov ch, 0
       mov cl, 0
       mov dh, 20
       mov dl, 20
       int 10h

       mov ah, 4ch
       int 21h

main endp
end main