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

    lea rdi, [format2]
    lea rsi, [number]
    xor rax,rax
    call printf

    lea rdi, [formatin]
    lea rsi, [string]
    xor rax,rax
    call scanf

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
format2: db "The number is : %d", 10,0
formatin: db"Enter the string : %s",0
formatout: db "The string is : %s", 10,0
