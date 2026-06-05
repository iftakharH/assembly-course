  
  

; Write an assembly language to compare two numbers
; and check whether they are equal, greater or less than one another.


org 100h
.CODE
MAIN PROC
    
    MOV AH, 1       ; first input
    INT 21H
    MOV BL, AL
    
    INT 21H         ; second input
    MOV CL, AL
    
    CMP BL, CL
    
    JE EQUAL        ; Jump if Equal
    JG GREATER      ; Jump if BL > CL
    
                  
    MOV DL, 'L'     ; print L, if not equal or greater
    JMP PRINT
    
EQUAL:
    MOV DL, 'E'     ; print E
    JMP PRINT
    
GREATER:
    MOV DL, 'G'     ; print G
    
PRINT:
    MOV AH, 2
    INT 21H
    

ret