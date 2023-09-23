; Assembly Code to demonstrate procedure
; B21110106058 - Muhammad Tehseen Khan

dosseg
.model small
.stack 100h
.data
  msg1 db 'Press any key to end program: $'
.code
main proc
               mov  ax, @data
               mov  ds, ax

               call printMessage
               mov  ah, 1
               int  21h

               mov  ah, 4ch
               int  21h
main endp

printMessage proc
               mov  dx, offset msg1
               mov  ah, 9
               int  21h
               ret
printMessage endp

end main