SECTION .data
msg     db      'Hello, brave new world!', 0Ah
 
SECTION .text
global  _start
 
_start:
 
    mov     eax, msg        ; move the address of our message string into EAX
    call    strlen          ; call our function to calculate the length of the string
 
    mov     edx, eax        ; our function leaves the result in EAX
    mov     ecx, msg        ; this is all the same as before
    mov     ebx, 1
    mov     eax, 4
    int     80h
 
    mov     ebx, 0
    mov     eax, 1
    int     80h
 
strlen:                     ; this is our first function declaration
    push    edx             ; push the value in EDX onto the stack to preserve it while we use EDX in this function
    mov     edx, eax        ; move the address in EDX into EDx (Both point to the same segment in memory)
 
nextchar:                   ; this is the same as lesson3
    cmp     byte [eax], 0
    jz      finished
    inc     eax
    jmp     nextchar
 
finished:
    sub     eax, edx
    pop     edx             ; pop the value on the stack back into EDX
    ret                     ; return to where the function was called