global main
extern printf
extern scanf

section .text
main :
    push rbp
    mov rbp,rsp
    sub rsp,16

    xor rax,rax
    lea rdi, [mess]
    call printf

    mov eax, 0
    lea rdi, [format]
    lea rsi, [number]
    call scanf

    lea rdi, [printout]
    xor rax, rax
    call printf

    lea rdi, [format2]
    mov rsi, [number]
    xor rax,rax
    call printf

    lea rdi, [stringin]
    xor rax,rax
    call printf
    
    lea rdi, [formatin]
    lea rsi, [string]
    xor rax,rax
    call scanf

    lea rdi, [pout]
    xor rax,rax
    call printf

    lea rdi, [formatout]
    lea rsi, [string]
    xor rax, rax
    call printf

    add rsp,16
    leave
    ret

section .data
mess: db "Enter the number : ",0
format: db "%d",0
printout: db "The number is : ",0
format2: db "%d", 10, 0
stringin: db "Enter the string : ",0
formatin: db "%s",0
pout: db "The string is :", 0
formatout: db "%s", 10,0

section .bss
number: resb 4
string: resb 100
