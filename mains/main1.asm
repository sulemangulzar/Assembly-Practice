INCLUDE Irvine32.inc

.data   
    num1 dd ?
    num2 dd ?
    msg1 BYTE "Sum: ", 0
    msg2 BYTE "Enter First Num: ", 0
    msg3 BYTE "Enter Second Num: ", 0

.code
main PROC
    mov edx, OFFSET msg2
    call WriteString
    call ReadInt
    mov num1, eax
    
    mov edx, OFFSET msg3
    call WriteString
    call ReadInt
    mov num2, eax

    mov edx, OFFSET msg1
    call WriteString

    mov eax, num1
    add eax, num2
    call WriteInt

    exit

main ENDP
END main