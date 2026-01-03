; 8085 Program 05
; WAP to multiply two 8-bit numbers stored at memory location 2000H and 2001H
; and store the 16-bit result at memory location 2000H (LSB) and 2001H (MSB).
; Assumption: (2000H)=multiplicand, (2001H)=multiplier.
; Result: (2000H)=LSB, (2001H)=MSB

        LDA 2000H      ; A = multiplicand
        MOV B, A       ; B = multiplicand
        LDA 2001H      ; A = multiplier
        MOV C, A       ; C = multiplier (loop counter)

        LXI H, 0000H   ; HL = 0000H (result)

LOOP:   MOV A, C
        CPI 00H
        JZ  DONE       ; if multiplier == 0, stop

        MOV A, L
        ADD B          ; L = L + multiplicand
        MOV L, A
        JNC NOCY
        INR H          ; carry into high byte
NOCY:   DCR C
        JMP LOOP

DONE:   SHLD 2000H     ; store L at 2000H, H at 2001H
        HLT
