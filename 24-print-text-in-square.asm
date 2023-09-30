; Assembly Code to Print text in a Box
; B21110106058 - Muhammad Tehseen Khan

dosseg
.model small
.stack 100h
.data
  username db 'Tehseen$'
.code
main proc
       mov ax, @data
       mov ds, ax

       mov ah, 6
       mov al, 10

       mov bh, 11100000B

       mov ch, 0
       mov cl, 0
  
       mov dh, 25
       mov dl, 25
  
       int 10h

       mov dx, offset username
       mov ah, 9
       int 21h

       mov ah, 4ch
       int 21h

main endp
end main