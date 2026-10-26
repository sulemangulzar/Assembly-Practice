INCLUDE Irvine32.inc

.data
    str1 BYTE "*", 0

.code
main PROC
    mov ecx, 3              
    mov ebx, 1              

OuterLoop:
    push ecx              
    mov ecx, ebx    

InnerLoop:
    mov edx, OFFSET str1       
    call WriteString 
    loop InnerLoop      

    call Crlf               
    add ebx, 2              
    pop ecx               
    loop OuterLoop     

    exit
main ENDP
END main
