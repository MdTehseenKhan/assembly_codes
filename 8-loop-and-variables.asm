; Assembly Code to Print two variables data inside loop
; B21110106058 - Muhammad Tehseen Khan
dosseg
.model small
.stack 100h
.data
  var1 db 'Pakistan $'
  var2 db 'Zindabad$'
.code
main proc
       mov  ax, @data
       mov  ds, ax

       mov  cx, 10
  L1:  
       mov  dx, offset var1
       mov  ah, 9
       int  21h

       mov  dx, offset var2
       mov  ah, 9
       int  21h

  ; Carriage Return
       mov  dx, 10
       mov  ah, 2
       int  21h

       mov  dx, 13
       mov  ah, 2
       int  21h
  
       loop L1

       mov  ah, 4ch
       int  21h
main endp
end main