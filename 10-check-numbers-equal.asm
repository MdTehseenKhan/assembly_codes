; Assembly Code to Input a number and check whether it
; is equal to '3' or not and use the jump statement.
; B21110106058 - Muhammad Tehseen Khan
.model small
.stack 100h
.data
  msg1 db 'Numbers are equal$'
  msg2 db 'Numbers are not equal$'
.code
main proc
       mov ax,@data
       mov ds,ax

       mov dl, '3'

  ; Input Number
       mov ah, 1
       int 21h

  ;  Compare Numbers
       cmp al, dl
       je  L1

  ; Line break
       mov dx, 10
       mov ah, 2
       int 21h

       mov dx, 13
       mov ah,2
       int 21h

  ; Print not equal
       mov dx, offset msg2
       mov ah, 9
       int 21h
         
  ;  End Program
       mov ah, 4ch
       int 21h

  L1:  
  ; Line break
       mov dx,10
       mov ah, 2
       int 21h

       mov dx,13
       mov ah,2
       int 21h
         
  ; Print equal
       mov dx, offset msg1
       mov ah, 9
       int 21h

       mov ah,4ch
       int 21h
main endp
end main