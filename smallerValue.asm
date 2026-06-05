  
  
; Write an assembly language to print 
; the smaller value between two numbers.

org 100h
.CODE
MAIN PROC
    
    MOV AH, 1       ; first input from user
    INT 21H
    MOV BL, AL      ; Store first number in BL
    
    
    INT 21H         ; second input from user
    MOV CL, AL      ; Store second number in CL
    
    
    CMP BL, CL     
    JL BL_IS_SMALLER ; Jump if BL < CL
    
                    
    MOV DL, CL      ; else, CL smaller/equal print CL
    JMP PRINT       
    
BL_IS_SMALLER:
    MOV DL, BL      ; Move BL to DL for printing
    
PRINT:
    MOV AH, 2
    INT 21H
    
ret

