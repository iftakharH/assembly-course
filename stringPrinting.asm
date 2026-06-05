           
           
           
; Write an assembly language to print a string.

org 100h
.DATA
MSG DB 'PRINTING A STRING$'
       
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9 
    
    LEA DX, MSG
    INT 21H


ret




