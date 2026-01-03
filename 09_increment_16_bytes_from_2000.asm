; 8085 Program 09
; Sixteen bytes of data are specified at consecutive data-memory locations
; starting at 2000H. Increment the value of all 16 bytes by 01H.

        LXI H, 2000H   ; pointer to first byte
        MVI C, 10H     ; count = 16

LOOP:   INR M          ; (HL) = (HL) + 1
        INX H
        DCR C
        JNZ LOOP
        HLT
