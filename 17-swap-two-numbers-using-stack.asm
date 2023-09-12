; Assembly Code swap two numbers using stack
; B21110106058 - Muhammad Tehseen Khan

.model small
.stack 100h
.data
  msg  db ' --> $'
.code
main proc
       mov  ax, @data
       mov  ds, ax

       mov  ax, '4'
       mov  bx, '5'

       push ax
       push bx

       mov  dx, ax
       mov  ah, 2
       int  21h

       mov  dx, bx
       mov  ah, 2
       int  21h

       mov  dx, offset msg
       mov  ah, 9
       int  21h

       pop  ax
       pop  bx

       mov  dx, ax
       mov  ah,2
       int  21h

       mov  dx, bx
       mov  ah,2
       int  21h

       mov  ah, 4ch
       int  21h

main endp
end main