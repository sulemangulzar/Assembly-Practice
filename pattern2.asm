INCLUDE Irvine32.inc

.code
main PROC
    mov ecx, 4
    mov ebx, 1

OuterLoop:
    push ecx
    mov ecx, ebx

InnerLoop:
    mov eax, ebx
    call WriteDec
    loop InnerLoop

    call Crlf
    inc ebx
    pop ecx
    loop OuterLoop

    exit
main ENDP
END main
