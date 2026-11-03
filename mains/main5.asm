INCLUDE Irvine32.inc 

.data
    a dd 1
    b dd 10
    sum dd 0

.code
main Proc
    mov ecx, b
    L1:
        mov eax, sum
        add eax, a
        mov sum, EAX
        add a, 1

        loop L1
        mov eax, sum
        call WriteDec


        exit

main ENDP

END main

