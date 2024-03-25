%include "io.inc"



section .data
n dd 6
array dd 0, 2, -1, 1, -2, 3


section .text
global main

main:
    mov ebp, esp; for correct debugging
    ;write your code here
    ;mov ecx, [n]
    ;mov esi, array
    ;mov eax, 0x80000000
    ;FindMax:
    ;    cmp [esi], eax        
    ;    jle notNewMax
    ;    mov eax, [esi]
    ;    notNewMax:
    ;    add esi, 4
    ;    loop FindMax
            
    mov ecx, [n]
    mov esi, array
    mov ebx, 0x7FFFFFFF
    FindMin:
        cmp [esi], ebx
        jge notNewMin
        mov ebx, [esi]
        notNewMin:
        add esi, 4
        loop FindMin
        
    printArray:    
        ; print(array)
        mov ecx , [n] ; ecx = n
        mov esi , ebx ; esi = index = 0 
        PRINT_STRING "[ "
        while:
            PRINT_DEC 4 , esi ; print(array[index])
            PRINT_STRING " "
            inc esi
            dec ecx ; 
            cmp ecx , 0
            jne while ; if index < n then jump while else end
        PRINT_STRING "]"
        
    
    xor eax, eax
    xor ebx, ebx
    ret