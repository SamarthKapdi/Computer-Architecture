; 8085 Program 10
; WAP to add 10 bytes stored at memory locations starting from 3000H.
; Store the (16-bit) result starting at 300AH:
;   (300AH) = LSB, (300BH) = MSB

        LXI H, 3000H   ; pointer to data
        MVI C, 0AH     ; 10 bytes
        LXI D, 0000H   ; DE = 16-bit accumulator (D=MSB, E=LSB)

LOOP:   MOV A, E
        ADD M          ; add current byte to low byte
        MOV E, A
        JNC NOCY
        INR D          ; carry into high byte
NOCY:   INX H
        DCR C
        JNZ LOOP

        MOV A, E
        STA 300AH      ; store LSB
        MOV A, D
        STA 300BH      ; store MSB
        HLT
