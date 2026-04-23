org 100h

.DATA
A DB 1
B DB 2
C DB 3



.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV BL, A
    ADD BL, A
    ADD BL, B
    ADD BL, B
    SUB BL, C
    
    ADD BL, 48
    
    MOV AH, 2
    MOV DL, BL
    INT 21H


ret




