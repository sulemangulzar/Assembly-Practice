INCLUDE Irvine32.inc

.data
    a  dd ?
    b  dd ?
    c1 dd ?
    d  dd ?

    message1 BYTE "Enter First Number: ", 0
    message2 BYTE "Enter Second Number: ", 0
    message3 BYTE "Enter Third Number: ", 0
    message4 BYTE "Enter Fourth Number: ", 0
    message5 BYTE "Your Answer is: ", 0

.code
main PROC

    mov edx, OFFSET message1
    call WriteString
    call ReadInt
    mov a, eax

    mov edx, OFFSET message2
    call WriteString
    call ReadInt
    mov b, eax

    mov edx, OFFSET message3
    call WriteString
    call ReadInt
    mov c1, eax

    mov edx, OFFSET message4
    call WriteString
    call ReadInt
    mov d, eax


    mov eax, a
    add eax, b


    mov ecx, c1
    sub ecx, d


    mul ecx

    mov ecx, c1


    div ecx

    mov eax, edx

    mov ebx, 100
    mul ebx


    mov edx, OFFSET message5
    call WriteString

    call WriteDec
    call CrLf

    exit

main ENDP

END main