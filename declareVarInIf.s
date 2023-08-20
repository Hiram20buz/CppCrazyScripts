section .data
    hello db "Hello world", 0

section .text
    global _start

_start:
    ; Load the number 10 into eax
    mov eax, 10
    
    ; Divide eax by 2 (c % 2)
    mov ebx, 2
    xor edx, edx   ; Clear edx to store remainder
    div ebx
    
    ; Check if the remainder is zero
    cmp edx, 0
    jnz not_even
    
    ; Print "Hello world"
    mov eax, 4     ; sys_write
    mov ebx, 1     ; file descriptor (stdout)
    mov ecx, hello
    mov edx, 11    ; length of the string
    int 0x80       ; syscall
    
    ; Exit the program
    mov eax, 1     ; sys_exit
    xor ebx, ebx   ; exit code 0
    int 0x80       ; syscall
    
not_even:
    ; Exit the program
    mov eax, 1     ; sys_exit
    mov ebx, 1     ; exit code 1
    int 0x80       ; syscall

; This is an example of x86 assembly code (Intel syntax) that checks if a number is even...
