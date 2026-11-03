INCLUDE Irvine32.inc 

.data
    a dd 20
    b dd 40
    msg BYTE "Greater value is: ", 0

.code
main Proc
    mov eax, a
    mov ebx, b

    cmp eax, ebx
    jg First

    mov eax, ebx
    jmp DISPLAY

    First:
        mov eax, a


    DISPLAY:
        mov edx, OFFSET msg
        call WriteString
        call WriteInt

    exit

main ENDP

END main

