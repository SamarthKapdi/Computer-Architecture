; 8085 Program 04
; WAP to add two 8-bit numbers and store the result at memory location 2000H.
; Assumption: (2000H) and (2001H) contain the two 8-bit numbers.
; Result: (2000H) = sum

        LDA 2000H      ; A = (2000H)
        MOV B, A       ; B = first number
        LDA 2001H      ; A = (2001H)
        ADD B          ; A = A + B
        STA 2000H      ; (2000H) = sum
        HLT
