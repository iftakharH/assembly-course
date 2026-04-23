
org 100h
.DATA
    A DB ?
    B DB ?
    C DB ?
.CODE
MAIN PROC   
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,1
    INT 21H 
    MOV A, AL
    INT 21H
    MOV B, AL   
    INT 21H
    MOV C, AL
    
    ;calculate 3A + B - C
    MOV BL, A
    ADD BL, A
    ADD BL, A
    
    ADD BL, B
    SUB BL, C

    ;convert to ASCII
    SUB BL, 96
    
    ;NEW LINE
    MOV AH, 2
    MOV DL, 10
    INT 21H
    ;CRET
    MOV DL, 13
    INT 21H
    
    ;print result
    MOV AH,2
    MOV DL,BL
    INT 21H

ret


