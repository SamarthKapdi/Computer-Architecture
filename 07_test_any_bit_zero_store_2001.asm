; 8085 Program 07
; WAP which tests if any bit is '0' in a data byte specified at address 2000H.
; If any bit is 0, store 00H at 2001H; otherwise store FFH at 2001H.
; Logic: only when byte == FFH are all bits 1.

        LDA 2000H      ; A = (2000H)
        CPI FFH
        JZ  ALL1

        MVI A, 00H
        STA 2001H
        HLT

ALL1:   MVI A, FFH
        STA 2001H
        HLT
