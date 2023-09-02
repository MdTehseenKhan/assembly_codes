; Assembly Code to input and print string
; B21110106058 - Muhammad Tehseen Khan

.model small
.stack 100h
.data
  input_msg   db 'Input Your Name: $'
  welcome_msg db 'Welcome, $'
  username    db 100 dup('$')
.code
main proc
             mov ax,@data
             mov ds,ax

             mov dx, offset input_msg
             mov ah, 9
             int 21h

             mov si, offset username

  L1:        
             mov ah, 1
             int 21h

             cmp al, 13
             je  EndProgram

             mov [si], al
             inc si
             jmp L1
        
    
  EndProgram:
  ; Line break
             mov dx, 10
             mov ah, 2
             int 21h

             mov dx, 13
             mov ah,2
             int 21h

  ; Print welcome msg and username
             mov dx, offset welcome_msg
             mov ah, 9
             int 21h

             mov dx, offset username
             mov ah, 9
             int 21h
  
             mov ah, 4ch
             int 21h
main endp
end main