
org 100h


MAIN PROC
    MOV AH, 1 ;input command
    INT 21H
    MOV BL, AL
    INT 21H
    MOV CL, AL
    
    ADD BL, 32  ;upper to lower
    SUB CL, 32  ;lower to upper                                                                                                                        
    
    MOV AH, 2   ;print
    MOV DL, BL
    INT 21H
    MOV DL, CL
    INT 21H


ret




