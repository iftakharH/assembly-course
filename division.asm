

;Write an assembly language to divide the value of BL by 4

org 100h
.CODE
MAIN PROC
    
    MOV AH, 1       ; user input
    INT 21H         
    
    SUB AL, 48      ; ASCII to actual number
    MOV BL, AL      ; input to BL
    
    MOV AL, BL      ; Move number to AL
    MOV AH, 0       ; Clears AH
    
    MOV CL, 4       ; divisor = 4
    DIV CL          ; Quotient in AL
    
    MOV BL, AL      ; BL holds result
    ADD BL, 48      ; ASCII conversion
    
    MOV AH, 2       ; printing
    MOV DL, BL
    INT 21H
    
ret