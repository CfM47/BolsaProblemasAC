%include "io.inc"


section .data
x dd 209
n dd 2
array dd 1, 4


section .text
global main
main:
    mov ebp, esp; for correct debugging
    mov ecx, [n]
    mov esi, array
    mov edx, 0
    for1:
        mov eax, 1
        mov ebx, [esi]
        for2:
            shl eax, 1
            dec ebx
            cmp ebx, 0
            jg for2
        add edx, eax
        add esi, 4
        loop for1
    
    mov eax, [x]
    xor eax, edx
    
    PRINT_DEC 4, eax    
    
    xor eax, eax
    ret