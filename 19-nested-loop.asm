; Assembly Code to demonstrate nested loop
; B21110106058 - Muhammad Tehseen Khan

dosseg
.model small
.stack 100h
.data
.code
main proc
    mov bx, 1
    mov cx, 5

    L1:
        push cx
        mov cx, bx
        L2:
            mov dx, bx
            add dx, 48
            mov ah, 2
            int 21h
        loop L2

        ; Enter
        mov dx, 10
        mov ah,2
        int 21h
        mov dx, 13
        mov ah,2
        int 21h
        
        inc bx
        pop cx
    loop L1

    mov ah,4ch
    int 21h
main endp
end main
