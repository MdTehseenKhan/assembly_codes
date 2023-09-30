; Assembly Code to Print a Square
; B21110106058 - Muhammad Tehseen Khan

dosseg
.model small
.stack 100h
.data
.code
main proc

  mov ah, 6
  mov al, 10

  mov bh, 01110000B

  mov ch, 0
  mov cl, 0
  
  mov dh, 25
  mov dl, 25
  
  int 10h

  mov ah, 4ch
  int 21h

main endp
end main