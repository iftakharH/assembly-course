org 100h

.DATA
A DB ?
B DB ?
C DB ?


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
           
    MOV AH, 1
    INT 21H
    MOV A, AL
    INT 21H
    MOV B, AL
    INT 21H
    MOV C, AL
           
           
    MOV BL, A
    ADD BL, A
    SUB BL, 48
    
    MOV CL, B
    ADD CL, B
    SUB CL, 48
    
    ADD BL, CL
    SUB BL, C
   
    
    MOV AH, 2
    MOV DL, BL
    INT 21H


ret




