; Assembly Code to Subtract two Numbers
; B21110106058 - Md Tehseen Khan
.model small
.stack 100h
.data
.code

main proc

mov bl, 5
sub bl, 1
add bl, 48

mov dl, bl
mov ah, 2
int 21h

mov ah, 4ch
int 21h

main endp
end main
