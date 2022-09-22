all:
    yasm -f elf64 -o assignment0_2021244.o assignment0_2021244.asm 
    gcc -o assignment0_2021244 assignment0_2021244.o -no-pie
    
