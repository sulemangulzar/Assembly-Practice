
INCLUDE Irvine32.inc

.data
    str1 BYTE "*", 0
    msg1 BYTE "Enter a number: ", 0
    msg2 BYTE "Number is zero", 0
    num  SDWORD ?

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt

    mov num, eax

    cmp eax, 0
    jl Negative
    jg Positive

    mov edx, OFFSET msg2
    call WriteString
    call Crlf
    jmp Finish

Negative:
    mov ecx, 6
    mov ebx, 1

OuterLoop1:
    push ecx
    mov ecx, ebx

InnerLoop1:
    mov edx, OFFSET str1
    call WriteString
    loop InnerLoop1

    call Crlf
    inc ebx
    pop ecx
    loop OuterLoop1
    jmp Finish

Positive:
    mov ecx, 6
    mov ebx, 6

OuterLoop2:
    push ecx

    mov ecx, 6
    sub ecx, ebx

SpaceLoop:
    cmp ecx, 0
    je StarStart
    mov al, ' '
    call WriteChar
    loop SpaceLoop

StarStart:
    mov ecx, ebx

InnerLoop2:
    mov edx, OFFSET str1
    call WriteString
    loop InnerLoop2

    call Crlf
    dec ebx
    pop ecx
    loop OuterLoop2

Finish:
    exit
main ENDP
END main
