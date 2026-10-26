INCLUDE Irvine32.inc

.data
    prompt db "Enter 3 numbers: ", 0
    result db "Even numbers are: ", 0

.code
main PROC
    ; Display input prompt
    mov edx, OFFSET prompt
    call WriteString
    call CrLf

    ; 1. Input Phase: Read 3 integers from the user
    call ReadInt       ; Reads 1st number into EAX
    mov ebx, eax       ; Save 1st number in EBX

    call ReadInt       ; Reads 2nd number into EAX
    mov ecx, eax       ; Save 2nd number in ECX

    call ReadInt       ; Reads 3rd number into EAX
    mov edx, eax       ; Save 3rd number in EDX (Overwrite prompt pointer)

    ; Print result label
    mov edx, OFFSET result
    call WriteString

    ; 2. Check 1st number (EBX)
    test ebx, 1        ; Check if least significant bit is 1 (odd)
    jnz check2         ; If odd, jump to check2
    mov eax, ebx       ; If even, move to EAX
    call WriteInt      ; Print the number
    mov al, ' '        ; Load a space character
    call WriteChar     ; Print space

check2:
    ; 3. Check 2nd number (ECX)
    test ecx, 1
    jnz check3
    mov eax, ecx
    call WriteInt
    mov al, ' '
    call WriteChar

check3:
    ; 4. Check 3rd number (EDX)
    test edx, 1
    jnz finished
    mov eax, edx
    call WriteInt

finished:
    call CrLf          ; Print a new line
    exit               ; Exit program cleanly
main ENDP
END main
