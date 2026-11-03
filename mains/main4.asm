INCLUDE Irvine32.inc

.data
    a dd 20
    msg1 BYTE "Value is: Positive", 0
    msg2 BYTE "Value is: Zero", 0
    msg3 BYTE "Value is: Negative", 0

.code
main PROC

    mov eax, a
    cmp eax, 0

    jg FIRST
    je SECOND
    jl THIRD

FIRST:
    mov edx, OFFSET msg1
    call WriteString
    jmp FINISH

SECOND:
    mov edx, OFFSET msg2
    call WriteString
    jmp FINISH

THIRD:
    mov edx, OFFSET msg3
    call WriteString

FINISH:
    exit

main ENDP
END main