;an assembly language to multiply the value of BL by 4.

org 100h

MAIN PROC
    MOV AL, 4 ;AL=4
    MOV BL, 2 ;BL=2
    MUL BL    ;AX=BL*AL
    
    ADD AX, 48
    
    MOV AH, 2
    MOV DX, AX
    INT 21H
    
        

;using shift
MAIN PROC
    MOV BL,1 ; BL=1
    SHL BL,2 ; BL=BL*2^2=4BL
    
    ADD BL, 48
    
    MOV AH,2
    MOV DL, BL
    INT 21H        
    
         
         
;an assembly language to 5A+7B-3C where A=2, B=1, C=3.

.data
A DB 2
B DB 1
C DB 3

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;5A
    MOV AL, 5  ;AL=5
    MUL A      ;AX=AL*A=5A
    MOV BX, AX ;BX=AX=5A
    
    ;7B
    MOV AL, 7  ;AL=7
    MUL B      ;AX=AL*B=7B
    MOV CX, AX ;CX=AX=7B
    
    ;3C
    MOV AL, 3  ;AL=3
    MUL C      ;AX=AL*C=3C
    
    ADD BX, CX ;BX=BX+CX=5A+7B
    SUB BX, AX ;BX=BX-AX=5A+7B-3C
    
    ADD BX, 48
    
    
    MOV AH, 2
    MOV DX, BX
    INT 21H
          
          
          
;using shifting
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;5A
    MOV BL, A  ;BL=A
    SHL A, 2   ;A=A*2^2=4A
    ADD BL, A  ;BL=BL+A=A+4A=5A
    
    ;7B
    MOV CL, B  ;CL=B
    SHL B, 3   ;B=B*2^3=8B
    SUB B, CL  ;B=B-CL=8B-B=7B
    
    ;3C
    MOV CL, C  ;CL=C
    SHL CL, 2  ;CL=CL*2^2=4CL=4C
    SUB CL, C  ;CL=CL-C=4C-C=3C
    
    ADD BL, B ;BL=BL+B=5A+7B
    SUB BL, CL ;BL=BL-CL=5A+7B-3C
    
    ADD BL, 48
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
ret