; Assembly Code to print array using loop
; B21110106058 - Muhammad Tehseen Khan

.model small
.stack 100h
.data
  odds db '1','3','5','7','9'
.code
main proc
       mov  ax,@data
       mov  ds,ax

       mov  si, offset odds
       mov  cx, 5
  L1:  
       mov  dx, [si]
       mov  ah, 2
       int  21h
       inc  si
       loop L1

  ;  End Program
       mov  ah, 4ch
       int  21h
main endp
end main