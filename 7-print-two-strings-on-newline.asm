dosseg
.model small
.stack 100h
.data
  goodname db 'Tehseen$'
  course   db 'BSSE$'
.code
main proc
       mov ax, @data
       mov ds, ax

  ; Print goodname
       mov dx, offset goodname
       mov ah, 9
       int 21h

  ; Carriage Return
       mov dx, 10
       mov ah, 2
       int 21h

       mov dx, 13
       mov ah, 2
       int 21h

  ; Print course
       mov dx, offset course
       mov ah, 9
       int 21h


       mov ah, 4ch
       int 21h
main endp
end main