; Assembly Code to Print a Character
; B21110106058 - Md Tehseen Khan
.model small
.stack 100h
.data
.code

main proc
mov dl, 'T'
mov ah, 2
int 21h

mov ah, 4ch
int 21h
main endp

end main