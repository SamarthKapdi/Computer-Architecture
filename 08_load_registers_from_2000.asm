; 8085 Program 08
; Assume 3 bytes of data are stored at consecutive memory addresses
; starting at 2000H.
; Load:
;   C with (2000H)
;   D with (2001H)
;   E with (2002H)
;   A with (2001H)

        LXI H, 2000H
        MOV C, M       ; C = (2000H)

        INX H
        MOV D, M       ; D = (2001H)
        MOV A, M       ; A = (2001H)

        INX H
        MOV E, M       ; E = (2002H)
        HLT
