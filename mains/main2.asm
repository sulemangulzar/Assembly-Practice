INCLUDE Irvine32.inc

.data
    var1 dd ?
    var2 dd ?
    quotient dd ?
    remainder dd ?
    msg1 BYTE "Quotient: ", 0
    msg2 BYTE "Remainder: ", 0
    msg3 BYTE "Enter 1st Number: ", 0
    msg4 BYTE "Enter 2nd Number: ", 0

.code
main PROC
    mov edx, OFFSET msg3
    call WriteString
    call ReadInt
    mov var1, eax
    
    mov edx, OFFSET msg4
    call WriteString
    call ReadInt
    mov var2, eax

    mov eax, var1
    mov ebx, var2
    mov edx, 0
    div EBX

    mov quotient, eax
    mov remainder, edx

    mov edx, OFFSET msg1
    call WriteString
    mov eax, quotient
    call WriteInt

    mov edx, OFFSET msg2
    call WriteString
    mov eax, remainder
    call WriteInt

    exit

main ENDP
END main


    

