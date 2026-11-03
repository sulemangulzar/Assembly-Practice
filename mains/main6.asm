INCLUDE Irvine32.inc

.data
    a DWORD 10
    b DWORD 6
    c1 DWORD 8
    d DWORD 3
    e DWORD 17
    f DWORD 5
    g DWORD 2

    temp1 DWORD ?
    temp2 DWORD ?
    temp3 DWORD ?

.code
main PROC

    mov eax, a 
    add eax, b 
    mov temp1, EAX

    mov eax, c1
    sub eax, d 
    mov temp2, eax

    mov eax, temp1
    mov ebx, temp2
    mov edx, 0
    imul ebx
    mov temp1, eax

    mov eax, e 
    mov ebx, f
    mov edx, 0
    idiv ebx
    mov temp2, EAX
    mov temp3, EAX

    mov eax, temp1
    add eax, temp2
    mov temp1, eax

    mov eax, temp1
    mov ebx, g
    mov edx, 0
    idiv ebx

    call WriteInt
    exit

main ENDP
END main