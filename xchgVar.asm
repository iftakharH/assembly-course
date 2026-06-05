

;Write an assembly language to exchange the values of two variables

org 100h
.DATA 
A DB ?
B DB ?
        
.CODE                                  
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1  ;first user input
    INT 21H
    MOV A, AL
    
    INT 21H    ;second user input
    MOV B, AL
    
    MOV BL, A  ;swapping values
    XCHG BL, B
    MOV A, BL
    
    MOV AH, 2  ;printing values
    MOV DL, A
    INT 21H
    MOV DL, B
    INT 21H

ret




