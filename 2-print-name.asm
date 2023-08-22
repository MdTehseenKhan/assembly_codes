; Assembly Code to Print a Name with characters
; B21110106058 - Md Tehseen Khan
.model small
.stack 100h
.data
.code

main proc
mov dl, 'T'
mov ah, 2
int 21h

mov dl, 'E'
mov ah, 2
int 21h

mov dl, 'H'
mov ah, 2
int 21h

mov dl, 'S'
mov ah, 2
int 21h

mov dl, 'E'
mov ah, 2
int 21h

mov dl, 'E'
mov ah, 2
int 21h

mov dl, 'N'
mov ah, 2
int 21h

mov ah, 4ch
int 21h
main endp

end main