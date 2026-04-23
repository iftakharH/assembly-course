
org 100h
.DATA 
A DB ?
B DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV A, AL
    INT 21H
    MOV B, AL
    
    MOV BL, A ;BL = A
    XCHG BL, B ;BL = B, B = BL
    MOV A, BL ; A = BL = B
    
    MOV AH, 2
    MOV DL, A
    INT 21H
    MOV DL, B
    INT 21H


ret




