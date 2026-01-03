; 8085 Program 06
; WAP to add two 16-bit numbers. Store the result at memory address starting from 2000H.
; Assumption (little-endian):
;   First number at 2000H-2001H (LSB at 2000H)
;   Second number at 2002H-2003H (LSB at 2002H)
; Result stored at 2000H-2001H

        LHLD 2000H     ; HL = first number
        XCHG           ; DE = first number
        LHLD 2002H     ; HL = second number
        DAD D          ; HL = HL + DE
        SHLD 2000H     ; store result at 2000H-2001H
        HLT
