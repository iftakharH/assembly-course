
;Write an assembly language to calculate 5A+4B-7C where A = 2, B = 2, C=2.

org 100h
.DATA
A DB 2
B DB 2
C DB 2 

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, 5  ; calc 5A
    MUL A
    MOV BL, AL
    
    MOV AL, 4  ; calc 4B
    MUL B
    
    ADD BL, AL ; add 5A+4A
    
    MOV AL, 7  ; calc 7C
    MUL C
    
    SUB BL, AL ; sub 7C from 5A+4A
    
    ADD BL, 48 ; ASCII adjustment
    
    MOV AH, 2  ; print
    MOV DL, BL
    INT 21H


ret




