; Assembly Code to add two numbers using macros
; B21110106058 - Muhammad Tehseen Khan

addnum macro p1, p2
         mov dx, p1
         add dx, p2
         add dx, 48

         mov ah,2
         int 21h
endm

.model small
.stack 100h
.data

.code
main proc
       addnum 4, 2

       mov    ah,4ch
       int    21h
main endp
end main

