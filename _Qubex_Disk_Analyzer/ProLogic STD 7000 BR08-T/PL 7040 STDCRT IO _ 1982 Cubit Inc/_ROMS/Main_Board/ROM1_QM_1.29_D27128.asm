lbl_jmp0031 EQU 97E4H
lbl_jmp0062 EQU 97F3H
lbl_jmp0099 EQU 97C9H
lbl_jmp0106 EQU 97C6H
lbl_jmp0123 EQU 97E7H
lbl_sub0047 EQU 7B47H

ORG 0000
lbl_jmp0030: DI
             LXI SP, B000H
             MVI A, D0H
             SIM
             MVI A, 00H
             STA E801H
             MVI A, 27H
             STA E800H
             MVI A, D1H
             STA E800H
             MVI A, AAH
             STA E800H
             MVI A, 94H
             STA E800H
             JMP lbl_jmp0000
             DB  00H    ; ASCII: .
             JMP lbl_jmp0007
             DB  47H    ; ASCII: G
             SHLD A022H
             NOP
             JMP lbl_jmp0010
             DB  C3H    ; ASCII: .
             MOV H,B
             RAR
             NOP
             NOP
             JMP lbl_jmp0017
             DB  00H    ; ASCII: .
             JMP lbl_jmp0028
             DB  00H    ; ASCII: .
             JMP lbl_jmp0025
             DB  00H    ; ASCII: .
             JMP lbl_jmp0030
             DB  00H, C3H, 00H, 00H, 00H, C3H, 81H, 00H, 00H, C3H, 7EH, 00H, 00H, C3H, 00H, 00H, 00H, C3H, 00H, 00H, 00H, C3H, 00H, 00H, 00H, C3H, 49H, 01H, 00H, C3H, C0H, 97H, C3H, C3H, 97H    ; ASCII: ..........~...............I........
lbl_sub0029: JMP lbl_jmp0106
lbl_jmp0067: JMP lbl_jmp0099
             DB  C3H, CCH, 97H, C3H, CFH, 97H, C3H, D2H, 97H, C3H, D5H, 97H, C3H, D8H, 97H, C3H, 00H, C0H, C3H, 03H, C0H, C3H, 06H, C0H    ; ASCII: ........................
lbl_sub0000: JMP lbl_jmp0031
lbl_sub0034: JMP lbl_jmp0123
             DB  C3H, EAH, 97H, C3H, EDH, 97H, C3H, F0H, 97H    ; ASCII: .........
lbl_sub0012: JMP lbl_jmp0062
             DB  C3H, F6H, 97H, C3H, F9H, 97H    ; ASCII: ......
lbl_jmp0007: PUSH PSW
             PUSH H
             PUSH D
             LXI H, 0000H
             DAD SP
             XCHG
             LHLD A414H
             SPHL
             INX H
             INX H
             SHLD A414H
             POP H
             SPHL
             MVI A, 40H
             SIM
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             POP H
             MVI A, C0H
             SIM
             XCHG
             SPHL
             MVI A, 0EH
             STA F003H
             RIM
             MOV E,A
             ANI 40H
             JZ lbl_jmp0008
             LDA E801H
             LXI H, A3F0H
             SHLD A414H
lbl_jmp0008: MOV A,E
             ANI 08H
             JZ lbl_jmp0009
             EI
lbl_jmp0009: POP D
             POP H
             POP PSW
             RET
lbl_jmp0025: PUSH PSW
             PUSH H
             LDA E801H
             LXI H, A3F0H
             SHLD A414H
             LDA A425H
             INR A
             STA A425H
             CPI 3CH
             JNZ lbl_jmp0026
             MVI A, 00H
             STA A425H
             LDA A426H
             INR A
             STA A426H
             CPI 3CH
             JNZ lbl_jmp0026
             MVI A, 00H
             STA A426H
             LDA A427H
             INR A
             STA A427H
             CPI 3CH
             JNZ lbl_jmp0027
             MVI A, 00H
             STA A427H
             LDA A428H
             INR A
             STA A428H
             CPI 0DH
             JNZ lbl_jmp0027
             MVI A, 81H
             STA A428H
lbl_jmp0027: CALL lbl_sub0012
lbl_jmp0026: POP H
             POP PSW
             EI
             RET
lbl_jmp0028: PUSH PSW
             PUSH B
             PUSH D
             PUSH H
             LDA F002H
             MOV B,A
             ANI 08H
             JZ lbl_jmp0029
             CALL lbl_sub0013
lbl_jmp0029: CALL lbl_sub0014
             POP H
             POP D
             POP B
             POP PSW
             EI
             RET
lbl_sub0013: PUSH PSW
             PUSH B
             LDA F000H
             ANI 7FH
             CPI 01H
             JZ lbl_jmp0063
             CPI 13H
             JZ lbl_jmp0063
             CPI 1AH
             JZ lbl_jmp0063
             CPI 18H
             JZ lbl_jmp0063
             CPI 10H
             JNZ lbl_jmp0064
             LXI H, A359H
             LDA A422H
             XRI 01H
             STA A422H
             CPI 00H
             JNZ lbl_jmp0065
             MVI A, 4EH
             MOV M,A
             INX H
             MVI A, 20H
             MOV M,A
             JMP lbl_jmp0066
lbl_jmp0065: MVI A, 46H
             MOV M,A
             INX H
             MOV M,A
             JMP lbl_jmp0066
lbl_jmp0064: LHLD A47DH
             MOV M,A
             INX H
             SHLD A47DH
             LXI D, A4A9H
             MOV A,H
             CMP D
             JNZ lbl_jmp0066
             MOV A,L
             CMP E
             JNZ lbl_jmp0066
             MVI A, 08H
             STA F003H
lbl_jmp0066: POP B
             POP PSW
             RET
lbl_jmp0063: POP B
             RET
lbl_sub0014: LDA A429H
             ANI 01H
             JZ lbl_jmp0067
             MOV A,B
             ANI 01H
             RZ
             LDA A422H
             ORA A
             JZ lbl_jmp0068
             LDA A4AFH
             ORI 04H
             STA A4AFH
             LXI H, B000H
             SHLD A639H
             SHLD A63BH
             LDA A423H
             ANI FDH
             STA A423H
             SIM
             JMP lbl_jmp0069
lbl_jmp0068: LHLD A47BH
             MOV B,M
             LXI D, A47BH
             MOV A,D
             CMP H
             JNZ lbl_jmp0100
             MOV A,E
             CMP L
             JNZ lbl_jmp0100
             MVI B, 0DH
lbl_jmp0100: MOV A,B
             STA F001H
             MVI A, 0CH
             STA F003H
             MVI A, 0DH
             STA F003H
             INX H
             SHLD A47BH
             MOV A,B
             CPI 0DH
             RNZ
             LXI H, A42AH
             SHLD A47BH
             LHLD A63DH
             XCHG
             LHLD A63FH
             MOV A,H
             CMP D
             JNZ lbl_jmp0101
             MOV A,L
             CMP E
             JNZ lbl_jmp0101
lbl_jmp0069: LXI H, B400H
             SHLD A63DH
             SHLD A63FH
             LDA A429H
             ANI FEH
             STA A429H
             RET
lbl_jmp0101: PUSH H
             LXI H, A42AH
             SHLD A47BH
             XCHG
             POP H
             MVI B, 50H
lbl_jmp0126: MOV A,M
             STAX D
             INX H
             INX D
             CPI 0DH
             JZ lbl_jmp0125
             DCR B
             JNZ lbl_jmp0126
             MVI M, 0DH
             INX H
lbl_jmp0125: SHLD A63FH
             RET
             DB  00H, 00H    ; ASCII: ..
lbl_jmp0017: PUSH PSW
             PUSH B
             PUSH D
             PUSH H
             LDA E801H
             LDA A423H
             ORI 02H
             STA A423H
             SIM
             RIM
             RLC
             JNC lbl_jmp0018
             LDA F800H
             MOV B,A
             ANI 1EH
             STA A4B5H
             MOV A,B
             RLC
             RLC
             RLC
             ANI F3H
             STA A4AAH
             ANI 03H
             ORI 80H
             MOV B,A
             LDA A4AFH
             ANI 04H
             JZ lbl_jmp0019
             LDA A422H
             ORA A
             JNZ lbl_jmp0019
             LXI H, B000H
             SHLD A639H
             SHLD A63BH
lbl_jmp0019: LDA A4B5H
             CPI 0CH
             JZ lbl_jmp0020
             CPI 0EH
             JZ lbl_jmp0020
             CPI 10H
             JNZ lbl_jmp0021
lbl_jmp0020: MVI A, 08H
             ORA B
             JMP lbl_jmp0022
lbl_jmp0021: MOV A,B
lbl_jmp0022: STA A4AFH
             LDA A422H
             ORA A
             JZ lbl_jmp0023
             LDA A4AFH
             ORI 04H
             STA A4AFH
             JMP lbl_jmp0024
lbl_jmp0018: LDA F800H
             STA A4AAH
             LDA A4AFH
             MOV B,A
             RLC
             JNC lbl_jmp0056
             RLC
             JC lbl_jmp0057
             RLC
             JC lbl_jmp0058
             MOV A,B
             ORI 20H
             STA A4AFH
             LDA A4AAH
             STA A4B1H
             JMP lbl_jmp0023
lbl_jmp0058: MOV A,B
             ORI 40H
             STA A4AFH
             XRA A
             STA A4BDH
             LDA A4AAH
             STA A4B2H
             JMP lbl_jmp0023
lbl_jmp0057: MOV A,B
             RLC
             RLC
             RLC
             JNC lbl_jmp0056
             LDA A4BDH
             INR A
             STA A4BDH
             LHLD A4B1H
             DCX H
             SHLD A4B1H
             MOV A,H
             ORA L
             JNZ lbl_jmp0098
             LDA A4AFH
             ANI 5FH
             STA A4AFH
lbl_jmp0098: LDA A4B5H
             MOV E,A
             MVI D, 00H
             LXI H, 0341H
             DAD D
             MOV E,M
             INX H
             MOV D,M
             XCHG
             PCHL
             DB  B8H, 03H, C7H, 03H, B8H, 03H, 42H, 05H, B8H, 03H, B8H, 03H, 61H, 03H, 61H, 03H, 61H, 03H, B8H, 03H, B8H, 03H, B8H, 03H, B8H, 03H, B8H, 03H, B8H, 03H, B8H, 03H    ; ASCII: ......B.....a.a.a...............
lbl_jmp0023: LDA E801H
             LDA A4AFH
             MOV B,A
             ANI 04H
             JNZ lbl_jmp0024
             MOV A,B
             ANI 08H
             JZ lbl_jmp0024
             LHLD A639H
             LDA A4AAH
             MOV M,A
             INX H
             XCHG
             LXI H, B400H
             MOV A,H
             CMP D
             JNZ lbl_jmp0059
             MOV A,L
             CMP E
             JNZ lbl_jmp0059
             LXI D, B000H
lbl_jmp0059: LDA A4AFH
             ANI 40H
             JZ lbl_jmp0060
             LHLD A4B1H
             MOV A,H
             ORA L
             JNZ lbl_jmp0060
             MVI A, 05H
             STA F003H
lbl_jmp0060: LHLD A63BH
             XCHG
             SHLD A639H
             MOV A,H
             CMP D
             JNZ lbl_jmp0024
             MOV A,L
             CMP E
             JNZ lbl_jmp0024
             JMP lbl_jmp0061
lbl_jmp0056: LDA F800H
lbl_jmp0024: LDA A423H
             ANI FDH
             STA A423H
             SIM
lbl_jmp0061: POP H
             POP D
             POP B
             POP PSW
             EI
             RET
             DB  3AH, 01H, E8H, 3AH, BDH, A4H, FEH, 01H, CAH, DAH, 04H, FEH, 02H, CAH, EEH, 03H, FEH, 03H, CAH, 7AH, 04H, FEH, 04H, CAH, 83H, 04H, FEH, 05H, CAH, BCH, 04H, FEH, 06H, CAH, CBH, 04H, C3H, B8H, 03H, 21H, 90H, 05H, CDH, 94H, 06H, CDH, A2H, 06H, 3AH, 32H, A5H, 1FH, D2H, 61H, 03H, 3AH, AAH, A4H, CDH, AEH, 06H, 77H, 2BH, 3AH, AAH, A4H, 07H, 07H, 07H, 07H, CDH, AEH, 06H, 77H, 3AH, AAH, A4H, 07H, DAH, 51H, 04H, 07H, DAH, 4BH, 04H, 07H, DAH, 45H, 04H, 07H, DAH, 3FH, 04H, 07H, 07H, DAH, 39H, 04H, 07H, DAH, 33H, 04H, 21H, B8H, 06H, C3H, 54H, 04H, 21H, CEH, 06H, C3H, 54H, 04H, 21H, E3H, 06H, C3H, 54H, 04H, 21H, F8H, 06H, C3H, 54H, 04H, 21H, 0DH, 07H, C3H, 54H, 04H, 21H, 22H, 07H, C3H, 54H, 04H, 21H, 37H, 07H, 11H, C9H, A4H, 01H, 15H, 00H, CDH, 84H, 00H, 3AH, 01H, E8H, 3AH, AFH, A4H, E6H, 03H, 3CH, F6H, 30H, 32H, CAH, A4H, 21H, C9H, A4H, 11H, 80H, A3H, 01H, 14H, 00H, CDH, 84H, 00H, C3H, 61H, 03H, 3AH, AAH, A4H, 32H, BBH, A4H, C3H, 61H, 03H, 3AH, AAH, A4H, E6H, 07H, 32H, BCH, A4H, CDH, 88H, 06H, 21H, 78H, 05H, CDH, 94H, 06H, CDH, A2H, 06H, E5H, 2AH, BBH, A4H, 44H, 4DH, E1H, CDH, 70H, 7CH, 21H, 80H, 05H, CDH, 94H, 06H, CDH, A2H, 06H, 22H, 34H, A0H, 21H, 88H, 05H, CDH, 94H, 06H, CDH, A2H, 06H, 22H, 36H, A0H, C3H, 61H, 03H, 2AH, 34H, A0H, 3AH, AAH, A4H, CDH, 60H, 00H, 71H, 2BH, 70H, C3H, 61H, 03H, 2AH, 36H, A0H, 3AH, AAH, A4H, CDH, 60H, 00H, 71H, 2BH, 70H, C3H, 61H, 03H, CDH, 88H, 06H, 21H, A0H, 05H, CDH, 94H, 06H, 3AH, 01H, E8H, 3AH, AAH, A4H, 07H, D2H, F2H, 04H, 36H, 01H, C3H, F4H, 04H, 36H, 02H, 21H, 98H, 05H, CDH, 94H, 06H, 3AH, AAH, A4H, 07H, 07H, D2H, 07H, 05H, 36H, 01H, C3H, 09H, 05H, 36H, 02H, 21H, B0H, 05H, CDH, 94H, 06H, 3AH, 01H, E8H, 3AH, AAH, A4H, 07H, 07H, 07H, D2H, 20H, 05H, 36H, 01H, C3H, 22H, 05H, 36H, 02H, 21H, A8H, 05H, CDH, 94H, 06H, 3AH, AAH, A4H, 07H, 07H, 07H, 07H, D2H, 37H, 05H, 36H, 02H, C3H, 39H, 05H, 36H, 01H, 3AH, AAH, A4H, 32H, 32H, A5H, C3H, 61H, 03H, 3AH, AAH, A4H, 2AH, 16H, A4H, 77H, 23H, 22H, 16H, A4H, 11H, E1H, A3H, 7CH, BAH, C2H, B8H, 03H, 7DH, BBH, C2H, B8H, 03H, 21H, B9H, A3H, 22H, 16H, A4H, 11H, 81H, A3H, 01H, 28H, 00H, CDH, 84H, 00H, 21H, 64H, 18H, 01H, 28H, 00H, 11H, B9H, A3H, CDH, 84H, 00H, C3H, B8H, 03H, 89H, A0H, 8EH, A0H, 93H, A0H, 98H, A0H, C1H, A0H, C6H, A0H, CBH, A0H, D0H, A0H, F9H, A0H, FEH, A0H, 03H, A1H, 08H, A1H, 31H, A1H, 36H, A1H, 3BH, A1H, 40H, A1H, 78H, A0H, 7AH, A0H, 7CH, A0H, 7EH, A0H, B0H, A0H, B2H, A0H, B4H, A0H, B6H, A0H, E8H, A0H, EAH, A0H, ECH, A0H, EEH, A0H, 20H, A1H, 22H, A1H, 24H, A1H, 26H, A1H, 22H, A0H    ; ASCII: :..:...............z...................!........:2...a.:.....w+:.........w:....Q...K...E...?....9...3.!...T.!...T.!...T.!...T.!...T.!"..T.!7..........:..:....<.02..!............a.:..2...a.:....2.....!x........*..DM..p|!........"4.!........"6..a.*4.:...`.q+p.a.*6.:...`.q+p.a....!.....:..:......6....6.!.....:.......6....6.!.....:..:........6..".6.!.....:.......7.6..9.6.:..22..a.:..*..w#".....|....}....!.."......(....!d..(..................................1.6.;.@.x.z.|.~...................".$.&.".
lbl_jmp0010: PUSH PSW
             PUSH B
             PUSH D
             PUSH H
             LHLD A641H
             XCHG
             LHLD A643H
             MOV A,H
             CMP D
             JNZ lbl_jmp0011
             MOV A,L
             CMP E
             JZ lbl_jmp0012
lbl_jmp0011: LDA A4B0H
             RLC
             JC lbl_jmp0013
             RLC
             JC lbl_jmp0014
             RLC
             JC lbl_jmp0014
             LDA A4B0H
             ORI 80H
             STA A4B0H
             LXI H, F801H
             SHLD A4ADH
             JMP lbl_jmp0015
lbl_jmp0013: RLC
             JC lbl_jmp0052
             RLC
             JC lbl_jmp0053
             LHLD A641H
             MOV A,M
             STA A4B3H
             LDA A4B0H
             ORI 20H
             STA A4B0H
             LXI H, F800H
             SHLD A4ADH
             JMP lbl_jmp0054
lbl_jmp0015: LHLD A641H
             MOV A,M
             CPI FFH
             JNZ lbl_jmp0016
             LXI H, B980H
             SHLD A641H
             JMP lbl_jmp0015
lbl_jmp0016: ANI 7EH
             JMP lbl_jmp0055
lbl_jmp0054: LHLD A641H
             MOV A,M
lbl_jmp0055: LHLD A4ADH
             MOV M,A
             LHLD A641H
             INX H
             SHLD A641H
             JMP lbl_jmp0014
lbl_jmp0052: RLC
             JNC lbl_jmp0014
             MOV B,A
             LHLD A4B3H
             DCX H
             SHLD A4B3H
             MOV A,H
             ORA L
             JNZ lbl_jmp0054
             LDA A4B0H
             ANI 03H
             STA A4B0H
             JMP lbl_jmp0054
lbl_jmp0053: LHLD A641H
             MOV A,M
             STA A4B4H
             MOV B,A
             LDA A4B3H
             ORA B
             JNZ lbl_jmp0097
             LDA A4B0H
             ANI 03H
             STA A4B0H
             JMP lbl_jmp0054
lbl_jmp0097: LDA A4B0H
             ORI 40H
             STA A4B0H
             JMP lbl_jmp0054
lbl_jmp0012: LDA A423H
             ORI 09H
             STA A423H
             SIM
lbl_jmp0014: POP H
             POP D
             POP B
             POP PSW
             EI
             RET
             DB  F5H, 3AH, AFH, A4H, E6H, 03H, 07H, 32H, ABH, A4H, F1H, C9H, D5H, 3AH, ABH, A4H, 5FH, 16H, 00H, 19H, 5EH, 23H, 56H, EBH, D1H, C9H, 36H, 20H, 23H, 36H, 20H, 23H, 36H, 20H, 23H, 36H, 20H, C9H, E6H, 0FH, F6H, 30H, FEH, 3AH, D8H, C6H, 07H, C9H, 23H, 30H, 2FH, 45H, 52H, 52H, 20H, 30H, 31H, 2DH, 44H, 41H, 4DH, 20H, 4DH, 49H, 53H, 53H, 49H, 4EH, 47H, F1H, 23H, 30H, 2FH, 45H, 52H, 52H, 20H, 30H, 32H, 2DH, 54H, 52H, 41H, 43H, 4BH, 30H, 30H, 20H, 45H, 52H, F1H, 23H, 30H, 2FH, 45H, 52H, 52H, 20H, 30H, 34H, 2DH, 41H, 42H, 4FH, 52H, 54H, 20H, 43H, 4DH, 4EH, 44H, F1H, 23H, 30H, 2FH, 45H, 52H, 52H, 20H, 31H, 30H, 2DH, 49H, 44H, 20H, 4DH, 49H, 53H, 53H, 49H, 4EH, 47H, F1H, 23H, 30H, 2FH, 45H, 52H, 52H, 20H, 32H, 30H, 2DH, 49H, 44H, 20H, 43H, 52H, 43H, 20H, 20H, 20H, 20H, F1H, 23H, 30H, 2FH, 45H, 52H, 52H, 20H, 34H, 30H, 2DH, 44H, 41H, 54H, 41H, 20H, 43H, 52H, 43H, 20H, 20H, F1H, 23H, 30H, 2FH, 45H, 52H, 52H, 20H, 38H, 30H, 2DH, 42H, 41H, 44H, 20H, 42H, 4CH, 4FH, 43H, 4BH, 20H, F1H    ; ASCII: .:.....2.....:.._...^#V...6.#6.#6.#6.....0.:....#0/ERR.01-DAM.MISSING.#0/ERR.02-TRACK00.ER.#0/ERR.04-ABORT.CMND.#0/ERR.10-ID.MISSING.#0/ERR.20-ID.CRC.....#0/ERR.40-DATA.CRC...#0/ERR.80-BAD.BLOCK..
lbl_jmp0000: XRA A
             STA A000H
             STA B000H
             LXI SP, C000H
             LXI H, A000H
             LXI D, A001H
             LXI B, 0FFFH
             CALL lbl_sub0000
             LXI SP, B000H
             LXI H, B000H
             LXI D, B001H
             LXI B, 0FFFH
             CALL lbl_sub0000
             MVI A, 08H
             STA A423H
             ORI D0H
             SIM
             LXI H, A3F0H
             SHLD A414H
             MVI A, 12H
             STA A41EH
             LXI H, A000H
             LXI D, 0038H
             LXI B, A3F0H
lbl_jmp0001: MOV A,L
             STAX B
             INX B
             MOV A,H
             STAX B
             INX B
             MVI M, 80H
             DAD D
             LDA A41EH
             DCR A
             STA A41EH
             JNZ lbl_jmp0001
             LXI H, A3B9H
             SHLD A416H
             MVI M, 80H
             MVI A, 00H
             STA A41BH
             MVI A, 36H
             STA A41AH
             MVI A, 80H
             STA E801H
             LDA A41AH
             STA E800H
             LDA A41BH
             STA E800H
             MVI A, E0H
             STA E801H
             MVI A, 20H
             STA E801H
             MVI A, 0CH
             STA A428H
             LXI H, A42AH
             SHLD A47BH
             LXI H, A481H
             SHLD A47FH
             SHLD A47DH
             LXI H, B980H
             SHLD A643H
             SHLD A641H
             LXI H, BDD0H
             SHLD A647H
             LXI H, BFFFH
             SHLD A649H
             MVI A, 03H
             STA A5E6H
             LXI H, B000H
             SHLD A63BH
             SHLD A639H
             LXI H, B400H
             SHLD A63DH
             SHLD A63FH
             MVI A, B4H
             STA F003H
             MVI A, 0DH
             STA F003H
             MVI A, 0EH
             STA F003H
             MVI A, 09H
             STA F003H
             MVI A, 5FH
             STA E600H
             MVI A, 00H
             STA E601H
             MVI A, 02H
             STA E601H
             MVI A, 7FH
             STA E601H
             STA A534H
             XRA A
             STA F001H
             MVI A, 0CH
             STA F003H
             MVI A, 0DH
             STA F003H
             EI
             LXI D, 0007H
             LXI B, 0000H
             CALL lbl_sub0001
             SHLD A545H
             LXI H, A5D2H
             MVI B, 14H
             CALL lbl_sub0002
             LXI H, A57EH
             MVI B, 50H
             CALL lbl_sub0002
             MVI A, 01H
             STA A5CFH
             MVI A, 21H
             STA A4ACH
             LXI H, 16D2H
             CALL lbl_sub0003
lbl_jmp0006: LXI H, 188EH
             CALL lbl_sub0004
             LXI H, 1CDDH
             CALL lbl_sub0005
lbl_jmp0005: LXI H, 188EH
             CALL lbl_sub0003
             CALL lbl_sub0006
             JNZ lbl_jmp0002
             LXI H, 18F2H
             CALL lbl_sub0003
             CALL lbl_sub0007
             CALL lbl_sub0008
             CALL lbl_sub0009
             LDA A547H
             CPI 0DH
             JNZ lbl_jmp0003
             MVI A, 30H
             STA A283H
lbl_jmp0003: CALL lbl_sub0010
             JZ lbl_jmp0004
             INR A
             JZ lbl_jmp0005
             JMP lbl_jmp0002
lbl_jmp0004: CALL lbl_sub0028
lbl_jmp0002: CALL lbl_sub0011
             JMP lbl_jmp0006
             DB  21H, 82H, 19H, CDH, 91H, 13H, 21H, E7H, 1CH, CDH, F4H, 0FH, 21H, 82H, 19H, CDH, 4EH, 13H, 21H, F2H, 18H, CDH, 44H, 13H, 21H, 49H, 19H, CDH, 44H, 13H, CDH, 2BH, 11H, CDH, F7H, 11H, CDH, 3DH, 12H, CAH, EEH, 08H, 3CH, CAH, C9H, 08H, C3H, F1H, 08H, CDH, 91H, 1DH, CDH, 8CH, 10H, C3H, BDH, 08H, 21H, CFH, 19H, CDH, 91H, 13H, 21H, F1H, 1CH, CDH, F4H, 0FH, 3EH, 20H, 32H, 70H, A5H, 01H, 08H, 00H, 21H, 70H, A5H, 11H, 71H, A5H, CDH, 84H, 00H, 21H, CFH, 19H, CDH, 4EH, 13H, 21H, 49H, 19H, CDH, 44H, 13H, 21H, EDH, 19H, CDH, 26H, 11H, CDH, 30H, 13H, 3EH, 03H, CDH, 04H, 14H, 3AH, 47H, A5H, FEH, 0DH, CAH, 47H, 09H, FEH, 0AH, CAH, 03H, 09H, 01H, 03H, 00H, 11H, 70H, A5H, 21H, 47H, A5H, CDH, 84H, 00H, 16H, 0DH, 1EH, 08H, CDH, CBH, 14H, 36H, 90H, 21H, 03H, 1AH, CDH, 26H, 11H, CDH, 30H, 13H, 3EH, 02H, CDH, 09H, 14H, 3AH, 47H, A5H, FEH, 0DH, CAH, 77H, 09H, FEH, 0AH, CAH, 03H, 09H, 01H, 02H, 00H, 21H, 47H, A5H, 11H, 73H, A5H, CDH, 84H, 00H, 16H, 07H, 1EH, 09H, CDH, CBH, 14H, 36H, 90H, 21H, 12H, 1AH, CDH, 26H, 11H, CDH, 30H, 13H, 3EH, 02H, CDH, 09H, 14H, 3AH, 47H, A5H, FEH, 0DH, CAH, A7H, 09H, FEH, 0AH, CAH, 03H, 09H, 01H, 02H, 00H, 21H, 47H, A5H, 11H, 75H, A5H, CDH, 84H, 00H, 16H, 0EH, 1EH, 0AH, CDH, CBH, 14H, 36H, 90H, 21H, 28H, 1AH, CDH, 26H, 11H, CDH, 30H, 13H, 3EH, 02H, CDH, 09H, 14H, 3AH, 47H, A5H, FEH, 0DH, CAH, D7H, 09H, FEH, 0AH, CAH, 03H, 09H, 01H, 02H, 00H, 21H, 47H, A5H, 11H, 77H, A5H, CDH, 84H, 00H, 16H, 06H, 1EH, 0BH, CDH, CBH, 14H, 36H, 90H, CDH, 26H, 11H, CDH, 3DH, 12H, CAH, F0H, 09H, 3CH, CAH, 03H, 09H, C3H, 28H, 0AH, 21H, 70H, A5H, 06H, 09H, CDH, 7DH, 10H, 21H, 70H, A5H, 11H, 14H, A0H, 01H, 03H, 00H, CDH, 84H, 00H, 21H, 73H, A5H, 11H, 18H, A0H, 01H, 02H, 00H, CDH, 84H, 00H, 21H, 75H, A5H, 11H, 1BH, A0H, 01H, 02H, 00H, CDH, 84H, 00H, 21H, 77H, A5H, 11H, 1EH, A0H, 01H, 02H, 00H, CDH, 84H, 00H, CDH, 8CH, 10H, C3H, F7H, 08H, 21H, 37H, 1AH, CDH, 91H, 13H, 21H, FBH, 1CH, CDH, F4H, 0FH, 3EH, 20H, 32H, 79H, A5H, 21H, 79H, A5H, 11H, 7AH, A5H, 01H, 04H, 00H, CDH, 84H, 00H, 21H, 37H, 1AH, CDH, 4EH, 13H, 21H, 49H, 19H, CDH, 44H, 13H, 21H, 54H, 1AH, CDH, 26H, 11H, CDH, 30H, 13H, 3EH, 02H, CDH, 09H, 14H, 3AH, 47H, A5H, FEH, 0DH, CAH, 96H, 0AH, FEH, 0AH, CAH, 3AH, 0AH, CDH, 9FH, 16H, FEH, FFH, CAH, 3AH, 0AH, 3AH, 47H, A5H, 47H, 3AH, 48H, A5H, 4FH, CDH, ADH, 16H, FEH, 0DH, D2H, 57H, 0AH, 21H, 47H, A5H, 11H, 79H, A5H, 01H, 02H, 00H, CDH, 84H, 00H, 16H, 0DH, 1EH, 08H, CDH, CBH, 14H, 36H, 90H, 21H, 69H, 1AH, CDH, 26H, 11H, CDH, 30H, 13H, 3EH, 02H, CDH, 09H, 14H, 3AH, 47H, A5H, FEH, 0DH, CAH, DEH, 0AH, FEH, 0AH, CAH, 3AH, 0AH, CDH, 9FH, 16H, FEH, FFH, CAH, 3AH, 0AH, 3AH, 47H, A5H, 47H, 3AH, 48H, A5H, 4FH, CDH, ADH, 16H, FEH, 3DH, D2H, 9FH, 0AH, 21H, 47H, A5H, 11H, 7BH, A5H, 01H, 02H, 00H, CDH, 84H, 00H, 16H, 08H, 1EH, 09H, CDH, CBH, 14H, 36H, 90H, 21H, 79H, 1AH, CDH, 26H, 11H, CDH, 30H, 13H, 3EH, 01H, CDH, 04H, 14H, 3AH, 47H, A5H, FEH, 0DH, CAH, 0AH, 0BH, FEH, 41H, CAH, 07H, 0BH, FEH, 50H, C2H, 0AH, 0BH, 32H, 29H, A0H, 16H, 11H, 1EH, 0AH, CDH, CBH, 14H, 36H, 90H, CDH, 3DH, 12H, CAH, 20H, 0BH, 3CH, CAH, 3AH, 0AH, C3H, 5CH, 0BH, 21H, 79H, A5H, 06H, 05H, CDH, 7DH, 10H, 3AH, 79H, A5H, 47H, 3AH, 7AH, A5H, 4FH, CDH, ADH, 16H, 32H, 28H, A4H, 21H, 79H, A5H, 11H, 22H, A0H, 01H, 02H, 00H, CDH, 84H, 00H, 3AH, 7BH, A5H, 47H, 3AH, 7CH, A5H, 4FH, CDH, ADH, 16H, 32H, 27H, A4H, 21H, 7BH, A5H, 11H, 27H, A0H, 01H, 02H, 00H, CDH, 84H, 00H, CDH, 8CH, 10H, C3H, 2EH, 0AH, 21H, 92H, 1AH, CDH, 91H, 13H, 21H, 05H, 1DH, CDH, F4H, 0FH, 21H, 92H, 1AH, CDH, 4EH, 13H, 21H, ACH, 18H, CDH, 4EH, 13H, CDH, C9H, 15H, C2H, 89H, 0BH, 21H, 78H, 19H, CDH, 4EH, 13H, CDH, 79H, 14H, CDH, 8CH, 10H, C3H, 62H, 0BH, 21H, BBH, 1AH, CDH, 91H, 13H, 21H, 0FH, 1DH, CDH, F4H, 0FH, 21H, BBH, 1AH, CDH, 4EH, 13H, 21H, ACH, 18H, CDH, 4EH, 13H, CDH, C9H, 15H, C2H, D0H, 0BH, 21H, 49H, 19H, CDH, 44H, 13H, CDH, 96H, 10H, CDH, 3DH, 12H, CAH, C3H, 0BH, 3CH, CAH, B3H, 0BH, C3H, D0H, 0BH, CDH, 9DH, 15H, 2AH, 45H, A6H, 7EH, E6H, 7FH, 77H, CDH, DEH, 7BH, CDH, 8CH, 10H, C3H, 8FH, 0BH, 21H, DAH, 1AH, CDH, 91H, 13H, 21H, 19H, 1DH, CDH, F4H, 0FH, 21H, DAH, 1AH, CDH, 4EH, 13H, 21H, ACH, 18H, CDH, 4EH, 13H, CDH, C9H, 15H, C2H, 0DH, 0CH, 21H, 49H, 19H, CDH, 44H, 13H, CDH, 96H, 10H, CDH, 3DH, 12H, CAH, 0AH, 0CH, 3CH, CAH, FAH, 0BH, C3H, 0DH, 0CH, CDH, DBH, 7BH, CDH, 8CH, 10H, C3H, D6H, 0BH, 21H, 20H, 1BH, CDH, 91H, 13H, 21H, 23H, 1DH, CDH, F4H, 0FH, 21H, 20H, 1BH, CDH, 4EH, 13H, 21H, 49H, 19H, CDH, 44H, 13H, 21H, 44H, 1BH, E5H, CDH, 30H, 13H, 21H, D2H, A5H, CDH, 4EH, 13H, E1H, E5H, CDH, 30H, 13H, 3EH, 14H, CDH, 04H, 14H, E1H, CDH, 5BH, 0FH, 21H, 47H, A5H, 7EH, FEH, 0DH, CAH, 5AH, 0CH, 21H, 44H, 1BH, CDH, 5BH, 0FH, 06H, 14H, CDH, 3BH, 0FH, CDH, 3DH, 12H, CAH, 67H, 0CH, 3CH, CAH, 1FH, 0CH, C3H, 79H, 0CH, 21H, 47H, A5H, 7EH, FEH, 0DH, CAH, 79H, 0CH, 11H, D2H, A5H, 01H, 14H, 00H, CDH, 84H, 00H, CDH, 8CH, 10H, C3H, 13H, 0CH, 21H, 69H, 1BH, CDH, 91H, 13H, 21H, 2DH, 1DH, CDH, F4H, 0FH, 21H, 69H, 1BH, CDH, 4EH, 13H, 21H, ACH, 18H, CDH, 4EH, 13H, CDH, C9H, 15H, C2H, B6H, 0CH, 21H, 49H, 19H, CDH, 44H, 13H, CDH, 96H, 10H, CDH, 3DH, 12H, CAH, B3H, 0CH, 3CH, CAH, A3H, 0CH, C3H, B6H, 0CH, CDH, E1H, 14H, CDH, 8CH, 10H, C3H, 7FH, 0CH, 21H, 8DH, 1BH, CDH, 91H, 13H, 21H, 37H, 1DH, CDH, F4H, 0FH, 21H, 8DH, 1BH, CDH, 4EH, 13H, 21H, F2H, 18H, CDH, 44H, 13H, 21H, 49H, 19H, CDH, 44H, 13H, CDH, 2BH, 11H, CDH, 30H, 12H, CDH, 3DH, 12H, CAH, EDH, 0CH, 3CH, CAH, C8H, 0CH, C3H, F0H, 0CH, CDH, D0H, 1DH, CDH, 8CH, 10H, C3H, BCH, 0CH, 21H, CFH, 1BH, CDH, 91H, 13H, 21H, 41H, 1DH, CDH, F4H, 0FH, 21H, CFH, 1BH, CDH, 4EH, 13H, 21H, F2H, 18H, CDH, 44H, 13H, 21H, 49H, 19H, CDH, 44H, 13H, CDH, 2BH, 11H, CDH, 3DH, 12H, CAH, 24H, 0DH, 3CH, CAH, 02H, 0DH, C3H, 27H, 0DH, CDH, 04H, 1EH, CDH, 8CH, 10H, C3H, F6H, 0CH, 21H, F2H, 1BH, CDH, 91H, 13H, 21H, 4BH, 1DH, CDH, F4H, 0FH, 11H, 47H, A5H, 21H, 65H, 18H, 01H, 28H, 00H, CDH, 84H, 00H, CDH, 25H, 16H, CAH, 5BH, 0DH, 3CH, C2H, 5BH, 0DH, 21H, 78H, 19H, CDH, 4EH, 13H, CDH, 79H, 14H, C3H, D4H, 0DH, 21H, F2H, 1BH, CDH, 4EH, 13H, 21H, 02H, 1BH, CDH, 44H, 13H, 21H, 49H, 19H, CDH, 44H, 13H, 21H, 02H, 1BH, E5H, CDH, 30H, 13H, 3EH, 08H, CDH, 04H, 14H, E1H, CDH, 5BH, 0FH, 06H, 07H, CDH, 3BH, 0FH, CDH, 25H, 16H, CAH, 93H, 0DH, 3CH, 3CH, C2H, 93H, 0DH, CDH, 79H, 14H, C3H, 6DH, 0DH, 21H, 64H, 18H, 11H, F8H, A1H, 01H, 2AH, 00H, CDH, 84H, 00H, CDH, 3DH, 12H, CAH, ACH, 0DH, 3CH, CAH, 6DH, 0DH, C3H, D4H, 0DH, 21H, 02H, 1BH, CDH, 5BH, 0FH, 2AH, 45H, A5H, 7EH, FEH, 0DH, CAH, D4H, 0DH, EBH, 2AH, 45H, A6H, 23H, EBH, 01H, 07H, 00H, CDH, 84H, 00H, CDH, E1H, 7BH, 7DH, B4H, CAH, D4H, 0DH, 2AH, 45H, A6H, 36H, 40H, CDH, 8CH, 10H, C3H, 2DH, 0DH, 21H, 18H, 1CH, CDH, 91H, 13H, 21H, 55H, 1DH, CDH, F4H, 0FH, 21H, 66H, 0FH, CDH, 4EH, 13H, 21H, 49H, 19H, CDH, 44H, 13H, 21H, 87H, 0FH, CDH, 30H, 0FH, 21H, 7EH, A5H, CDH, 29H, 0FH, 21H, 96H, 0FH, CDH, 30H, 0FH, 21H, 92H, A5H, CDH, 29H, 0FH, 21H, A5H, 0FH, CDH, 30H, 0FH, 21H, A6H, A5H, CDH, 29H, 0FH, 21H, B4H, 0FH, CDH, 30H, 0FH, 21H, BAH, A5H, CDH, 29H, 0FH, CDH, B1H, 0EH, FEH, 0CH, C2H, 50H, 0EH, 2AH, E7H, A5H, CDH, 5DH, 13H, CDH, 5BH, 0FH, CDH, 30H, 13H, 3EH, 14H, CDH, 04H, 14H, 2AH, E7H, A5H, CDH, 5DH, 13H, CDH, 44H, 13H, 21H, 47H, A5H, 7EH, FEH, 0DH, C4H, 9FH, 0EH, C3H, 22H, 0EH, CDH, 3DH, 12H, CAH, 5DH, 0EH, 3CH, CAH, 22H, 0EH, C3H, 99H, 0EH, 21H, 87H, 0FH, CDH, 1CH, 0FH, CAH, 6CH, 0EH, 11H, 7EH, A5H, CDH, 29H, 0FH, 21H, 96H, 0FH, CDH, 1CH, 0FH, CAH, 7BH, 0EH, 11H, 92H, A5H, CDH, 29H, 0FH, 21H, A5H, 0FH, CDH, 1CH, 0FH, CAH, 8AH, 0EH, 11H, A6H, A5H, CDH, 29H, 0FH, 21H, B4H, 0FH, CDH, 1CH, 0FH, CAH, 99H, 0EH, 11H, BAH, A5H, CDH, 29H, 0FH, CDH, 8CH, 10H, C3H, DAH, 0DH, 2AH, E7H, A5H, CDH, 5DH, 13H, CDH, 5BH, 0FH, CDH, 5BH, 0FH, 06H, 14H, CDH, 3BH, 0FH, C9H, 11H, 00H, 00H, 3AH, E9H, A5H, 07H, 07H, 07H, 5FH, 21H, C0H, 0EH, 19H, E9H, 21H, C4H, 0FH, 3EH, 00H, C3H, DDH, 0EH, 21H, CAH, 0FH, 3EH, 01H, C3H, DDH, 0EH, 21H, D0H, 0FH, 3EH, 02H, C3H, DDH, 0EH, 21H, D6H, 0FH, 3EH, 03H, 32H, E9H, A5H, 22H, E7H, A5H, CDH, 5DH, 13H, CDH, 77H, 13H, CDH, 79H, 14H, F5H, 2AH, E7H, A5H, CDH, 5DH, 13H, CDH, 44H, 13H, F1H, FEH, 0BH, CAH, 10H, 0FH, FEH, 0AH, CAH, 0AH, 0FH, FEH, 0CH, C8H, FEH, 0DH, C8H, C3H, B1H, 0EH, 11H, 04H, 00H, C3H, 13H, 0FH, 11H, 02H, 00H, 2AH, E7H, A5H, 19H, CDH, 5DH, 13H, E9H, C9H, CDH, 5BH, 0FH, CDH, 5BH, 0FH, 2AH, 45H, A5H, 7EH, FEH, 0DH, C9H, 01H, 14H, 00H, CDH, 84H, 00H, C9H, CDH, 5BH, 0FH, CDH, 5BH, 0FH, 2AH, 45H, A5H, EBH, C9H, 21H, 47H, A5H, 7EH, FEH, 0DH, CAH, 4CH, 0FH, CDH, 8AH, 12H, 23H, 05H, C3H, 3EH, 0FH, AFH, B0H, C8H, 3EH, 20H, 77H, CDH, 8AH, 12H, 23H, 05H, C2H, 51H, 0FH, C9H    ; ASCII: !.....!.....!...N.!...D.!I..D..+.....=....<...............!.....!.....>.2p....!p..q....!...N.!I..D.!...&..0.>....:G....G..........p.!G...........6.!...&..0.>....:G....w.........!G..s...........6.!...&..0.>....:G..............!G..u...........6.!(..&..0.>....:G..............!G..w...........6..&..=....<....(.!p....}.!p..........!s..........!u..........!w................!7....!.....>.2y.!y..z.......!7..N.!I..D.!T..&..0.>....:G.........:.......:.:G.G:H.O......W.!G..y..............6.!i..&..0.>....:G.........:.......:.:G.G:H.O....=...!G..{..............6.!y..&..0.>....:G.......A....P...2)........6..=....<.:..\.!y....}.:y.G:z.O...2(.!y..".......:{.G:|.O...2'.!{..'.............!.....!.....!...N.!...N.......!x..N..y.....b.!.....!.....!...N.!...N.......!I..D.....=....<.........*E.~.w..{......!.....!.....!...N.!...N.......!I..D.....=....<........{......!.....!#....!...N.!I..D.!D...0.!...N....0.>......[.!G.~...Z.!D..[....;..=..g.<....y.!G.~...y................!i....!-....!i..N.!...N.......!I..D.....=....<..............!.....!7....!...N.!...D.!I..D..+..0..=....<...............!.....!A....!...N.!...D.!I..D..+..=..$.<....'..........!.....!K.....G.!e..(.....%..[.<.[.!x..N..y....!...N.!...D.!I..D.!....0.>......[....;..%....<<....y..m.!d.....*.....=....<.m....!...[.*E.~......*E.#.........{}....*E.6@....-.!.....!U....!f..N.!I..D.!...0.!~..).!...0.!...).!...0.!...).!...0.!...).......P.*...]..[..0.>....*...]..D.!G.~......"..=..].<."....!......l..~..).!......{.....).!............).!............).......*...]..[..[....;.....:....._!....!..>....!..>....!..>....!..>.2.."...]..w..y..*...]..D..............................*....]....[..[.*E.~...........[..[.*E...!G.~...L....#..>....>.w...#..Q..
lbl_sub0027: MOV A,M
             CALL lbl_sub0016
             INX H
             CPI 90H
             JNZ lbl_sub0027
             RET
             DB  1BH, 29H, 2CH, 54H, 45H, 53H, 54H, 20H, 50H, 4FH, 52H, 54H, 20H, 23H, 1BH, 29H, 3FH, 49H, 44H, 45H, 4EH, 54H, 49H, 46H, 49H, 43H, 41H, 54H, 49H, 4FH, 4EH, F1H, 00H, 1BH, 2AH, 30H, 90H, 31H, 80H, 1BH, 2AH, 3FH, 90H, 1BH, 2AH, 54H, F1H, 00H, 1BH, 2BH, 30H, 90H, 32H, 80H, 1BH, 2BH, 3FH, 90H, 1BH, 2BH, 54H, F1H, 00H, 1BH, 2CH, 30H, 90H, 33H, 80H, 1BH, 2CH, 3FH, 90H, 1BH, 2CH, 54H, F1H, 00H, 1BH, 2DH, 30H, 90H, 34H, 80H, 1BH, 2DH, 3FH, 90H, 1BH, 2DH, 54H, F1H, 00H, 03H, 87H, 0FH, D8H, 0EH, C8H, 0EH, 96H, 0FH, C0H, 0EH, D0H, 0EH, A5H, 0FH, C8H, 0EH, D8H, 0EH, B4H, 0FH, D0H, 0EH, C0H, 0EH, 21H, A5H, 1CH, CDH, 91H, 13H, 21H, 5FH, 1DH, CDH, F4H, 0FH, 21H, CAH, 17H, CDH, 4EH, 13H, CDH, A2H, 1EH, C3H, DCH, 0FH    ; ASCII: .),TEST.PORT.#.)?IDENTIFICATION...*0.1..*?..*T...+0.2..+?..+T...,0.3..,?..,T...-0.4..-?..-T...........................!.....!_....!...N.......
lbl_sub0005: SHLD A539H
             PUSH H
             MVI A, 00H
             STA A4A9H
             CALL lbl_sub0015
             CALL lbl_sub0018
             LXI H, 1CD4H
             CALL lbl_sub0017
lbl_jmp0036: CALL lbl_sub0019
             CPI 20H
             JNC lbl_jmp0036
             POP H
             PUSH H
             PUSH PSW
             CALL lbl_sub0015
             CALL lbl_sub0017
             POP PSW
             POP H
             CPI 0CH
             JZ lbl_jmp0037
             CPI 08H
             JZ lbl_jmp0038
             CPI 0BH
             JZ lbl_jmp0039
             CPI 0AH
             JZ lbl_jmp0040
             CPI 0DH
             JNZ lbl_jmp0041
             CALL lbl_sub0020
             RET
lbl_jmp0041: LHLD A539H
             JMP lbl_sub0005
lbl_jmp0037: MVI A, 02H
             JMP lbl_jmp0079
lbl_jmp0038: MVI A, 04H
             JMP lbl_jmp0079
lbl_jmp0039: MVI A, 06H
             JMP lbl_jmp0079
lbl_jmp0040: MVI A, 08H
lbl_jmp0079: ADD L
             MOV L,A
             JNC lbl_jmp0080
             INR H
lbl_jmp0080: CALL lbl_sub0015
             POP D
             MVI A, 01H
             STA A4A9H
             PCHL
             DB  E5H, C5H, 11H, 30H, A2H, 21H, 68H, A2H, 01H, 18H, 01H, CDH, 84H, 00H, 21H, 10H, A3H, CDH, 25H, 22H, C1H, E1H, 11H, 10H, A3H, CDH, 84H, 00H, C9H    ; ASCII: ...0.!h.......!...%".........
lbl_sub0002: MOV A,M
             CPI 20H
             JNC lbl_jmp0032
             MVI A, 20H
             MOV M,A
lbl_jmp0032: INX H
             DCR B
             JNZ lbl_sub0002
             RET
lbl_sub0011: CALL lbl_sub0020
             LXI H, 17CAH
             CALL lbl_sub0003
             RET
lbl_sub0007: LXI D, 0000H
             LXI H, 10A6H
             LDA A5CFH
             DCR A
             RLC
             RLC
             RLC
             MOV E,A
             DAD D
             PCHL
             DB  21H, 69H, 1DH, 3EH, 01H, C3H, CBH, 10H, 21H, 6FH, 1DH, 3EH, 02H, C3H, CBH, 10H, 21H, 75H, 1DH, 3EH, 03H, C3H, CBH, 10H, 21H, 7BH, 1DH, 3EH, 04H, C3H, CBH, 10H, 21H, 81H, 1DH, 3EH, 05H, 32H, CFH, A5H, 32H, CEH, A5H, 22H, 3BH, A5H, CDH, 5DH, 13H, CDH, 77H, 13H, CDH, 79H, 14H, FEH, 20H, D2H, DAH, 10H, FEH, 0DH, C2H, F7H, 10H, CDH, 9DH, 15H, C2H, F7H, 10H, 2AH, 3BH, A5H, CDH, 5DH, 13H, CDH, 62H, 13H, C9H, F5H, 2AH, 3BH, A5H, CDH, 5DH, 13H, CDH, 44H, 13H, CDH, C9H, 15H, F1H, 2AH, 3BH, A5H, FEH, 0CH, CAH, 15H, 11H, FEH, 08H, CAH, 1AH, 11H, C3H, 96H, 10H, 3EH, 02H, C3H, 1CH, 11H, 3EH, 04H, 85H, 6FH, D2H, 22H, 11H, 24H, CDH, 5DH, 13H, E9H    ; ASCII: !i.>....!o.>....!u.>....!{.>....!..>.2..2..";..]..w..y.................*;..]..b...*;..]..D.....*;..............>....>..o.".$.]..
lbl_sub0022: XRA A
             STA A541H
             RET
lbl_sub0008: XRA A
             STA A5D0H
             CALL lbl_sub0022
             LXI H, 18F2H
             PUSH H
             CALL lbl_sub0023
             CALL lbl_sub0024
             CPI 0DH
             JNZ lbl_jmp0046
             MVI A, 0FH
             STA A5D0H
             MVI A, 31H
             STA A218H
             INR A
             STA A21CH
             INR A
             STA A220H
             INR A
             STA A224H
             JMP lbl_jmp0047
lbl_jmp0046: POP H
             PUSH H
             CALL lbl_sub0025
             CALL lbl_sub0023
             CALL lbl_sub0024
             CPI 0DH
             JZ lbl_jmp0047
             POP H
             PUSH H
             CALL lbl_sub0025
             CALL lbl_sub0025
             CALL lbl_sub0023
             CALL lbl_sub0024
             CPI 0DH
             JZ lbl_jmp0047
             POP H
             PUSH H
             CALL lbl_sub0025
             CALL lbl_sub0025
             CALL lbl_sub0025
             CALL lbl_sub0023
             CALL lbl_sub0024
lbl_jmp0047: POP H
             CALL lbl_sub0025
             CALL lbl_sub0025
             CALL lbl_sub0025
             CALL lbl_sub0025
             RET
lbl_sub0025: CALL lbl_sub0027
             INX H
             PUSH H
             LHLD A545H
             MOV A,M
             CALL lbl_sub0016
             POP H
             RET
lbl_sub0024: CALL lbl_sub0019
             CPI 31H
             JZ lbl_jmp0085
             CPI 32H
             JZ lbl_jmp0085
             CPI 33H
             JZ lbl_jmp0085
             CPI 34H
             JZ lbl_jmp0085
             CPI 0DH
             RZ
             JMP lbl_sub0024
lbl_jmp0085: CALL lbl_sub0016
             PUSH PSW
             ANI 0FH
             MOV B,A
             XRA A
             STC
lbl_jmp0117: RAL
             DCR B
             JNZ lbl_jmp0117
             MOV B,A
             LDA A5D0H
             ORA B
             STA A5D0H
             INX H
             XRA A
             MOV B,A
             POP PSW
             ORA A
             RET
lbl_sub0009: CALL lbl_sub0022
             LXI H, 1924H
             PUSH H
             CALL lbl_sub0023
             MVI A, 05H
             CALL lbl_sub0026
             POP H
             CALL lbl_sub0027
             RET
             DB  AFH, 32H, D1H, A5H, CDH, 26H, 11H, 21H, 9FH, 19H, E5H, CDH, 30H, 13H, CDH, 79H, 14H, E6H, 5FH, FEH, 59H, CAH, 28H, 12H, FEH, 0DH, CAH, 1CH, 12H, FEH, 4EH, CAH, 21H, 12H, C3H, 05H, 12H, 3EH, 59H, C3H, 28H, 12H, 57H, AFH, 2FH, 32H, D1H, A5H, 7AH, CDH, 8AH, 12H, E1H, CDH, 5BH, 0FH, C9H, CDH, 26H, 11H, 21H, ADH, 1BH, E5H, CDH, 30H, 13H, C3H, 05H, 12H    ; ASCII: .2...&.!....0..y.._.Y.(.......N.!....>Y.(.W./2..z.....[...&.!....0....
lbl_sub0010: CALL lbl_sub0022
             LXI H, 1949H
             PUSH H
             CALL lbl_sub0017
             POP H
             CALL lbl_sub0023
lbl_jmp0049: CALL lbl_sub0019
             CPI 0BH
             JZ lbl_jmp0048
             CPI 0DH
             RZ
             CPI 0CH
             JNZ lbl_jmp0049
             LXI H, 1949H
             PUSH H
             CALL lbl_sub0017
             POP H
             CALL lbl_sub0027
             CALL lbl_sub0023
lbl_jmp0051: CALL lbl_sub0019
             CPI 0BH
             JZ lbl_jmp0048
             CPI 0DH
             JZ lbl_jmp0050
             CPI 08H
             JNZ lbl_jmp0051
             JMP lbl_sub0010
lbl_jmp0048: LXI H, 1949H
             CALL lbl_sub0003
             XRA A
             DCR A
             RET
lbl_jmp0050: XRA A
             INR A
             RET
lbl_sub0016: PUSH PSW
             PUSH B
             PUSH D
             PUSH H
             MOV B,A
             LDA A541H
             CPI 00H
             JZ lbl_jmp0070
             CPI 01H
             JZ lbl_jmp0071
             CPI 02H
             JZ lbl_jmp0072
             JMP lbl_jmp0073
lbl_jmp0070: MOV A,B
             CPI 1BH
             JZ lbl_jmp0102
             CALL lbl_sub0036
             JMP lbl_jmp0103
lbl_jmp0102: MVI A, 01H
lbl_jmp0104: STA A541H
             JMP lbl_jmp0103
             DB  F5H, 3AH, ACH, A4H, FEH, FFH, CAH, CFH, 12H, F1H, F5H, FEH, 80H, C2H, CFH, 12H, F1H, CDH, 07H, 13H, C3H, FEH, 12H, F1H, CDH, 07H, 13H, C3H, FEH, 12H    ; ASCII: .:............................
lbl_jmp0071: MOV A,B
             STA A543H
             MVI A, 02H
             JMP lbl_jmp0104
lbl_jmp0072: MOV A,B
             SUI 2AH
             STA A4ACH
             JNC lbl_jmp0105
             MVI A, FFH
             STA A4ACH
             XRA A
lbl_jmp0105: MOV D,A
             LDA A543H
             SUI 21H
             MOV E,A
             LXI B, 0000H
             CALL lbl_sub0001
             SHLD A545H
lbl_jmp0073: XRA A
             STA A541H
lbl_jmp0103: POP H
             POP D
             POP B
             POP PSW
             RET
lbl_sub0036: PUSH H
             LHLD A545H
             CPI 08H
             JZ lbl_jmp0127
             MOV M,A
             INX H
             JMP lbl_jmp0128
lbl_jmp0127: DCX H
             MVI M, 20H
lbl_jmp0128: SHLD A545H
             LDA A4ACH
             ADI 01H
             STA A4ACH
             POP H
             RET
             DB  3EH, 0DH, CDH, 8AH, 12H, 3EH, 0AH, CDH, 8AH, 12H, C9H    ; ASCII: >....>.....
lbl_sub0023: MOV A,M
             CPI 90H
             JNZ lbl_jmp0084
             MVI A, 91H
             CALL lbl_sub0016
             INX H
             RET
lbl_jmp0084: INX H
             CALL lbl_sub0016
             JMP lbl_sub0023
lbl_sub0017: MOV A,M
             ORA A
             RZ
             CALL lbl_sub0016
             INX H
             JMP lbl_sub0017
lbl_sub0003: MOV A,M
             ORA A
             JZ lbl_jmp0033
             CPI 03H
             RZ
             CALL lbl_sub0016
lbl_jmp0033: INX H
             JMP lbl_sub0003
lbl_sub0015: MOV E,M
             INX H
             MOV D,M
             XCHG
             RET
             DB  7EH, B7H, C8H, FEH, 80H, C2H, 70H, 13H, 3EH, 90H, CDH, 8AH, 12H, C9H, CDH, 8AH, 12H, 23H, C3H, 62H, 13H    ; ASCII: ~.....p.>........#.b.
lbl_sub0018: MOV A,M
             ORA A
             RZ
             CPI 80H
             JZ lbl_jmp0074
             CPI 90H
             JNZ lbl_jmp0075
lbl_jmp0074: MVI A, 91H
             CALL lbl_sub0016
             RET
lbl_jmp0075: CALL lbl_sub0016
             INX H
             JMP lbl_sub0018
lbl_sub0004: PUSH H
             XRA A
             STA A541H
             MVI B, 37H
             MVI C, 20H
             MVI A, 3EH
             LXI H, A187H
lbl_jmp0035: CMP M
             JZ lbl_jmp0034
             MOV M,C
             DCX H
             DCR B
             JNZ lbl_jmp0035
             NOP
             NOP
             NOP
lbl_jmp0034: POP H
             CALL lbl_sub0017
             RET
lbl_sub0020: PUSH PSW
             PUSH B
             PUSH D
             PUSH H
             MVI A, 08H
             STA A4C7H
             LXI H, A188H
             SHLD A4C5H
lbl_jmp0082: MVI A, 80H
             MOV M,A
             INX H
             MVI A, 20H
             MOV M,A
             MOV D,H
             MOV E,L
             INX D
             LXI B, 0036H
             CALL lbl_sub0000
             LDA A4C7H
             DCR A
             STA A4C7H
             JZ lbl_jmp0081
             LHLD A4C5H
             LXI D, 0038H
             DAD D
             SHLD A4C5H
             JMP lbl_jmp0082
lbl_jmp0081: LXI H, 1864H
             LXI D, A380H
             LXI B, 002AH
             CALL lbl_sub0000
             LXI H, 1864H
             LXI D, A3B8H
             LXI B, 002AH
             CALL lbl_sub0000
             POP H
             POP D
             POP B
             POP PSW
             RET
lbl_sub0038: MVI C, 01H
             JMP lbl_jmp0086
lbl_sub0026: MVI C, 00H
             JMP lbl_jmp0086
lbl_jmp0086: PUSH PSW
             ADD L
             MOV L,A
             JNC lbl_jmp0087
             INR H
lbl_jmp0087: POP PSW
             PUSH H
             LXI H, A547H
             ADD L
             MOV L,A
             JNC lbl_jmp0088
             INR H
lbl_jmp0088: SHLD A53FH
             LXI H, A547H
lbl_jmp0092: CALL lbl_sub0019
             CPI 08H
             JZ lbl_jmp0089
             CPI 7FH
             JZ lbl_jmp0089
             CPI 0DH
             JZ lbl_jmp0090
             CPI 20H
             JC lbl_jmp0091
             MOV B,A
             PUSH H
             LHLD A53FH
             XCHG
             POP H
             MOV A,L
             SUB E
             MOV A,H
             SBB D
             JNC lbl_jmp0091
             PUSH H
             LHLD A545H
             MOV A,M
             POP H
             CPI F1H
             JZ lbl_jmp0092
             MOV A,B
             MOV M,A
             CALL lbl_sub0016
             INX H
             JMP lbl_jmp0092
lbl_jmp0091: JMP lbl_jmp0092
lbl_jmp0089: LXI D, A547H
             MOV A,L
             SUB E
             JZ lbl_jmp0091
             DCX H
             MVI A, 08H
             CALL lbl_sub0036
             JMP lbl_jmp0092
lbl_jmp0090: MOV M,A
             SHLD A53DH
             POP H
             RET
lbl_sub0019: PUSH B
             PUSH D
             PUSH H
lbl_jmp0076: CALL lbl_sub0029
             CPI FFH
             JZ lbl_jmp0076
             ANI 7FH
             CPI 04H
             JNZ lbl_jmp0077
             PUSH PSW
             CALL lbl_sub0030
             POP PSW
             JMP lbl_jmp0078
lbl_jmp0077: CPI 7FH
             JZ lbl_jmp0078
             CPI 60H
             JC lbl_jmp0107
             SUI 20H
lbl_jmp0107: CPI 5CH
             JZ lbl_jmp0108
             CPI 5DH
             JZ lbl_jmp0109
             CPI 5BH
             JZ lbl_jmp0110
             CPI 5FH
             JZ lbl_jmp0111
lbl_jmp0078: POP H
             POP D
             POP B
             RET
lbl_jmp0108: MVI A, 0BH
             JMP lbl_jmp0078
lbl_jmp0109: MVI A, 0AH
             JMP lbl_jmp0078
lbl_jmp0110: MVI A, 08H
             JMP lbl_jmp0078
lbl_jmp0111: MVI A, 0CH
             JMP lbl_jmp0078
lbl_sub0001: PUSH PSW
             PUSH B
             LXI H, A3F0H
             MOV B,D
             MVI D, 00H
             MOV A,E
             RLC
             MOV E,A
             DAD D
             CALL lbl_sub0015
             MOV E,B
             MVI D, 00H
             DAD D
             POP B
             POP PSW
             RET
             DB  C5H, D5H, E5H, 3AH, CEH, A5H, 47H, 21H, 80H, BDH, 7EH, 07H, 07H, D2H, FFH, 14H, 05H, C2H, FFH, 14H, 3EH, 00H, 77H, CDH, 05H, 15H, AFH, C3H, CEH, 16H, CDH, 75H, 16H, C2H, EBH, 14H, 11H, 08H, 00H, 19H, E5H, CDH, B4H, 7AH, D1H, 22H, 45H, A6H, EBH, 23H, 23H, CDH, B4H, 7AH, EBH, CDH, 47H, 7BH, E5H, D5H, 21H, FFH, BFH, EBH, CDH, 47H, 7BH, 4DH, 44H, 2AH, 45H, A6H, EBH, E1H, CDH, 84H, 00H, 21H, D0H, BDH, 22H, 47H, A6H, 21H, 80H, BDH, 7EH, 07H, 07H, D2H, 70H, 15H, E5H, CDH, 85H, 15H, E1H, E5H, 11H, 08H, 00H, 19H, CDH, B4H, 7AH, EBH, 2AH, 45H, A6H, EBH, CDH, 13H, 7BH, 7CH, B5H, C2H, 5BH, 15H, E1H, C3H, 70H, 15H, E1H, C1H, C5H, E5H, 11H, 08H, 00H, 19H, 50H, 59H, CDH, 78H, 15H, 13H, EBH, 50H, 59H, CDH, 78H, 15H, E1H, CDH, 75H, 16H, C2H, 37H, 15H, C1H, C9H, E5H, CDH, B4H, 7AH, EBH, CDH, 47H, 7BH, D1H, CDH, BCH, 7AH, C9H, 01H, 0AH, 00H, 09H, EBH, 2AH, 47H, A6H, EBH, CDH, B4H, 7AH, E5H, CDH, 0DH, 7BH, 7CH, B5H, E1H, C0H, 22H, 47H, A6H, C9H, C5H, D5H, E5H, 3AH, CEH, A5H, 47H, 21H, 80H, BDH, E5H, 7EH, 07H, 07H, D2H, B2H, 15H, 05H, CAH, C1H, 15H, E1H, CDH, 75H, 16H, C2H, A7H, 15H, 3EH, 01H, 32H, CFH, A5H, C3H, CCH, 16H, E1H, 22H, 45H, A6H, AFH, C3H, CEH, 16H    ; ASCII: ...:..G!..~.........>.w........u...........z."E..##..z..G{..!....G{MD*E......!.."G.!..~...p.............z.*E....{|..[...p.........PY.x...PY.x...u..7......z..G{...z......*G....z...{|..."G.....:..G!...~...........u....>.2......"E.....
lbl_sub0006: PUSH B
             PUSH D
             PUSH H
             XRA A
             STA A4C1H
             STA A4C3H
             LXI H, BD80H
lbl_jmp0043: PUSH H
             MOV A,M
             RLC
             RLC
             JNC lbl_jmp0042
             INX H
             PUSH H
             LDA A4C3H
             MOV E,A
             INR A
             INR A
             STA A4C3H
             MVI D, 00H
             LXI H, 1D87H
             DAD D
             MOV E,M
             INX H
             MOV D,M
             CALL lbl_sub0001
             XCHG
             POP H
             LXI B, 0007H
             CALL lbl_sub0000
             MVI A, 01H
             STA A4C1H
lbl_jmp0042: POP H
             CALL lbl_sub0021
             JNZ lbl_jmp0043
             LDA A4C1H
             ORA A
             JNZ lbl_jmp0044
             LXI H, 1C37H
             CALL lbl_sub0003
             LXI H, 1978H
             CALL lbl_sub0003
             CALL lbl_sub0019
             JMP lbl_jmp0045
lbl_jmp0044: XRA A
             JMP lbl_jmp0083
             DB  C5H, D5H, E5H, AFH, 32H, C1H, A4H, 21H, 80H, BDH, E5H, 7EH, 07H, 07H, D2H, 55H, 16H, 23H, 11H, 47H, A5H, 01H, 07H, 00H, CDH, 82H, 16H, CAH, 5FH, 16H, E1H, CDH, 75H, 16H, C2H, 2FH, 16H, 3AH, C1H, A4H, B7H, CAH, 6CH, 16H, AFH, C3H, CEH, 16H, 22H, 45H, A6H, 21H, C1H, A4H, 34H, C3H, 43H, 16H, 21H, 7CH, 1CH, CDH, 4EH, 13H, E1H, AFH, 3DH, 3DH, C3H, CEH, 16H, 21H, 59H, 1CH, CDH, 4EH, 13H, C3H, CCH, 16H    ; ASCII: ....2..!...~...U.#.G........_...u../.:....l....."E.!..4.C.!|..N...==...!Y..N....
lbl_sub0021: LXI D, 0010H
             DAD D
             LXI D, BDD0H
             MOV A,H
             CMP D
             RNZ
             MOV A,L
             CMP E
             RET
             DB  1AH, 96H, C2H, 91H, 16H, 23H, 13H, 0BH, 78H, B1H, C2H, 82H, 16H, AFH, C9H, AFH, 3DH, C9H, FEH, 30H, FAH, 9CH, 16H, FEH, 3AH, F8H, AFH, 3DH, C9H, 3AH, 47H, A5H, CDH, 94H, 16H, C0H, 3AH, 48H, A5H, CDH, 94H, 16H, C9H, 3EH, 20H, B8H, C2H, B6H, 16H, 3EH, FFH, C9H, B9H, C2H, BEH, 16H, 78H, E6H, 0FH, C9H, 78H, E6H, 0FH, 07H, 47H, 07H, 07H, 80H, 47H, 79H, E6H, 0FH, 80H, C9H    ; ASCII: .....#..x.......=..0....:..=.:G.....:H.....>.....>......x...x...G...Gy....
lbl_jmp0045: XRA A
             DCR A
lbl_jmp0083: POP H
             POP D
             POP B
             RET
             DB  1BH, 21H, 2AH, 80H, 51H, 55H, 42H, 45H, 58H, 20H, 51H, 41H, 32H, 30H, 30H, 30H, 20H, 56H, 31H, 2EH, 32H, 67H, 20H, 23H, 23H, 23H, 20H, 23H, 23H, 2FH, 23H, 23H, 2FH, 23H, 23H, 20H, 20H, 31H, 32H, 82H, 3AH, 80H, 30H, 30H, 50H, 4DH, 1BH, 22H, 2AH, 90H, 53H, 54H, 41H, 54H, 20H, 90H, 20H, 31H, 20H, 32H, 20H, 33H, 20H, 34H, 80H, 20H, 20H, 53H, 54H, 41H, 54H, 20H, 20H, 90H, 20H, 20H, 20H, 31H, 20H, 20H, 20H, 20H, 32H, 20H, 20H, 20H, 20H, 33H, 20H, 20H, 20H, 20H, 34H, 1BH, 23H, 2AH, 90H, 52H, 45H, 41H, 44H, 59H, 80H, 20H, 02H, 20H, 02H, 20H, 02H, 20H, 02H, 90H, 43H, 59H, 4CH, 49H, 4EH, 44H, 45H, 52H, 80H, 1BH, 24H, 2AH, 90H, 42H, 55H, 53H, 59H, 20H, 80H, 20H, 02H, 20H, 02H, 20H, 02H, 20H, 02H, 90H, 48H, 45H, 41H, 44H, 20H, 23H, 20H, 20H, 80H, 1BH, 25H, 2AH, 90H, 53H, 45H, 45H, 4BH, 20H, 80H, 20H, 02H, 20H, 02H, 20H, 02H, 20H, 02H, 90H, 53H, 45H, 43H, 54H, 4FH, 52H, 20H, 23H, 80H, 1BH, 26H, 2AH, 90H, 57H, 52H, 54H, 20H, 46H, 80H, 20H, 02H, 20H, 02H, 20H, 02H, 20H, 02H, 90H, 45H, 52H, 52H, 4FH, 52H, 20H, 23H, 20H, 80H, 1BH, 30H, 2AH, 90H, 05H, 90H, 0CH, 0CH, 0CH, 0CH, 0CH, 0CH, 0CH, 90H, 07H, 20H, 50H, 52H, 3DH, 4FH, 4EH, 20H, 20H, 20H, 20H, 23H, 90H, 31H, 90H, 20H, 23H, 90H, 32H, 90H, 20H, 23H, 90H, 33H, 90H, 20H, 23H, 90H, 34H, 1BH, 28H, 2AH, 80H, 52H, 55H, 4EH, 20H, 80H, 20H, 00H, 1BH, 28H, 31H, 80H, 53H, 54H, 4FH, 50H, 80H, 20H, 00H, 1BH, 28H, 38H, 80H, 44H, 52H, 49H, 44H, 80H, 20H, 00H, 1BH, 28H, 3FH, 80H, 44H, 41H, 54H, 45H, 80H, 20H, 00H, 1BH, 28H, 46H, 80H, 44H, 49H, 52H, 20H, 80H, 20H, 00H, 1BH, 28H, 4DH, 80H, 50H, 52H, 4FH, 47H, 80H, 20H, 00H, 1BH, 28H, 54H, 80H, 44H, 45H, 4CH, 20H, F1H, 00H, 1BH, 29H, 2AH, 80H, 50H, 41H, 55H, 53H, 80H, 20H, 00H, 1BH, 29H, 31H, 80H, 52H, 45H, 53H, 4DH, 80H, 20H, 00H, 1BH, 29H, 38H, 80H, 4FH, 50H, 49H, 44H, 80H, 20H, 00H, 1BH, 29H, 3FH, 80H, 54H, 49H, 4DH, 45H, 80H, 20H, 00H, 1BH, 29H, 46H, 80H, 4CH, 49H, 53H, 54H, 80H, 20H, 00H, 1BH, 29H, 4DH, 80H, 45H, 44H, 49H, 54H, 80H, 20H, 00H, 1BH, 29H, 54H, 80H, 57H, 4CH, 43H, 4DH, F1H, 00H, 03H, 2AH, 80H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, F1H, 1BH, 27H, 2AH, 90H, 3CH, 52H, 55H, 4EH, 3EH, 20H, 53H, 54H, 41H, 52H, 54H, 20H, 44H, 52H, 49H, 56H, 45H, 20H, 54H, 45H, 53H, 54H, 49H, 4EH, 47H, 00H, 1BH, 28H, 2AH, 80H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 80H, 20H, 00H, 1BH, 28H, 34H, 80H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 80H, 20H, 00H, 1BH, 28H, 3EH, 80H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 80H, 20H, 00H, 1BH, 28H, 48H, 80H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 80H, 20H, 00H, 1BH, 28H, 52H, 80H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, F1H, 00H, 03H, 1BH, 2AH, 2AH, 80H, 44H, 52H, 49H, 56H, 45H, 20H, 4EH, 4FH, 2EH, 28H, 31H, 2CH, 32H, 2CH, 33H, 2CH, 34H, 2CH, 52H, 45H, 54H, 55H, 52H, 4EH, 3DH, 41H, 4CH, 4CH, 29H, 20H, 90H, 20H, 80H, 20H, 90H, 20H, 80H, 20H, 90H, 20H, 80H, 20H, 90H, 20H, F1H, 00H, 1BH, 2CH, 2AH, 80H, 49H, 54H, 45H, 52H, 41H, 54H, 49H, 4FH, 4EH, 20H, 43H, 4FH, 55H, 4EH, 54H, 28H, 31H, 2DH, 36H, 35H, 35H, 33H, 35H, 29H, 20H, 90H, 20H, 20H, 20H, 20H, 20H, F1H, 00H, 1BH, 2FH, 2AH, 90H, 45H, 58H, 45H, 43H, 55H, 54H, 45H, 80H, 20H, 90H, 45H, 58H, 49H, 54H, 80H, 20H, 28H, 74H, 6FH, 20H, 72H, 65H, 64H, 6FH, 20H, 64H, 61H, 74H, 61H, 2CH, 20H, 74H, 79H, 70H, 65H, 20H, 22H, 5EH, 22H, 29H, F1H, 00H, 03H, 1BH, 2FH, 2AH, 91H, 45H, 58H, 49H, 54H, F1H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 53H, 54H, 4FH, 50H, 3EH, 20H, 45H, 4EH, 44H, 20H, 44H, 52H, 49H, 56H, 45H, 20H, 54H, 45H, 53H, 54H, 49H, 4EH, 47H, 00H, 1BH, 2CH, 2AH, 80H, 53H, 54H, 4FH, 50H, 20H, 54H, 45H, 53H, 54H, 20H, 45H, 58H, 45H, 43H, 55H, 54H, 49H, 4FH, 4EH, 20H, 49H, 4DH, 4DH, 45H, 44H, 49H, 41H, 54H, 45H, 4CH, 59H, 20H, 28H, 59H, 2FH, 4EH, 29H, 3FH, 20H, 90H, 20H, F1H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 44H, 41H, 54H, 45H, 3EH, 20H, 45H, 4EH, 54H, 45H, 52H, 20H, 54H, 4FH, 44H, 41H, 59H, 27H, 53H, 20H, 44H, 41H, 54H, 45H, 00H, 1BH, 29H, 2AH, 80H, 44H, 41H, 59H, 2DH, 4FH, 46H, 2DH, 57H, 45H, 45H, 4BH, 20H, 90H, 20H, 20H, 20H, F1H, 00H, 1BH, 2AH, 2AH, 80H, 4DH, 4FH, 4EH, 54H, 48H, 20H, 90H, 20H, 20H, 80H, 20H, 1BH, 2BH, 2AH, 80H, 44H, 41H, 59H, 2DH, 4FH, 46H, 2DH, 4DH, 4FH, 4EH, 54H, 48H, 20H, 90H, 20H, 20H, F1H, 00H, 1BH, 2CH, 2AH, 80H, 59H, 45H, 41H, 52H, 20H, 90H, 20H, 20H, F1H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 54H, 49H, 4DH, 45H, 3EH, 20H, 45H, 4EH, 54H, 45H, 52H, 20H, 54H, 49H, 4DH, 45H, 2DH, 4FH, 46H, 2DH, 44H, 41H, 59H, 00H, 1BH, 29H, 2AH, 80H, 48H, 4FH, 55H, 52H, 20H, 28H, 31H, 2DH, 31H, 32H, 29H, 20H, 90H, 20H, 20H, F1H, 00H, 1BH, 2AH, 2AH, 80H, 4DH, 49H, 4EH, 55H, 54H, 45H, 20H, 90H, 20H, 20H, F1H, 00H, 1BH, 2BH, 2AH, 80H, 41H, 4DH, 20H, 4FH, 52H, 20H, 50H, 4DH, 20H, 28H, 41H, 2FH, 50H, 29H, 3FH, 20H, 90H, 20H, F1H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 44H, 49H, 52H, 45H, 43H, 54H, 4FH, 52H, 59H, 3EH, 20H, 4CH, 49H, 53H, 54H, 20H, 55H, 53H, 45H, 52H, 20H, 50H, 52H, 4FH, 47H, 52H, 41H, 4DH, 20H, 4EH, 41H, 4DH, 45H, 53H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 45H, 44H, 49H, 54H, 3EH, 20H, 51H, 54H, 4CH, 20H, 43H, 4FH, 4DH, 4DH, 41H, 4EH, 44H, 20H, 45H, 44H, 49H, 54H, 4FH, 52H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 4CH, 49H, 53H, 54H, 3EH, 20H, 4CH, 49H, 53H, 54H, 49H, 4EH, 47H, 20H, 4FH, 46H, 20H, 50H, 52H, 4FH, 47H, 52H, 41H, 4DH, 20H, 43H, 4FH, 4EH, 54H, 45H, 4EH, 54H, 53H, 00H, 03H, 1BH, 29H, 2AH, 80H, 50H, 52H, 4FH, 47H, 52H, 41H, 4DH, 20H, 4EH, 41H, 4DH, 45H, 20H, 3DH, 20H, 90H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, F1H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 4FH, 50H, 45H, 52H, 41H, 54H, 4FH, 52H, 20H, 49H, 44H, 3EH, 20H, 45H, 4EH, 54H, 45H, 52H, 20H, 4FH, 50H, 45H, 52H, 41H, 54H, 4FH, 52H, 20H, 49H, 44H, 00H, 1BH, 29H, 2AH, 80H, 45H, 4EH, 54H, 45H, 52H, 20H, 49H, 44H, 20H, 90H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, F1H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 44H, 45H, 4CH, 45H, 54H, 45H, 3EH, 20H, 44H, 45H, 4CH, 45H, 54H, 45H, 20H, 41H, 20H, 55H, 53H, 45H, 52H, 20H, 50H, 52H, 4FH, 47H, 52H, 41H, 4DH, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 50H, 41H, 55H, 53H, 45H, 3EH, 20H, 50H, 41H, 55H, 53H, 45H, 20H, 44H, 52H, 49H, 56H, 45H, 20H, 54H, 45H, 53H, 54H, 49H, 4EH, 47H, 00H, 1BH, 2CH, 2AH, 80H, 50H, 41H, 55H, 53H, 45H, 20H, 49H, 4DH, 4DH, 45H, 44H, 49H, 41H, 54H, 45H, 4CH, 59H, 20H, 28H, 59H, 2FH, 4EH, 29H, 3FH, 20H, 90H, 20H, F1H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 52H, 45H, 53H, 55H, 4DH, 45H, 3EH, 20H, 52H, 45H, 53H, 55H, 4DH, 45H, 20H, 44H, 52H, 49H, 56H, 45H, 20H, 54H, 45H, 53H, 54H, 49H, 4EH, 47H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 50H, 52H, 4FH, 47H, 52H, 41H, 4DH, 3EH, 20H, 50H, 52H, 4FH, 47H, 52H, 41H, 4DH, 20H, 54H, 45H, 53H, 54H, 20H, 46H, 55H, 4EH, 43H, 54H, 49H, 4FH, 4EH, 53H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 44H, 52H, 49H, 56H, 45H, 20H, 49H, 44H, 3EH, 20H, 45H, 4EH, 54H, 45H, 52H, 20H, 44H, 52H, 49H, 56H, 45H, 20H, 49H, 44H, 00H, 03H, 1BH, 2AH, 2BH, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 83H, 2AH, 44H, 49H, 52H, 45H, 43H, 54H, 4FH, 52H, 59H, 20H, 45H, 4DH, 50H, 54H, 59H, 2AH, F1H, 00H, 03H, 1BH, 2AH, 2BH, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 83H, 2AH, 44H, 49H, 52H, 45H, 43H, 54H, 4FH, 52H, 59H, 20H, 20H, 20H, 46H, 55H, 4CH, 4CH, 2AH, F1H, 00H, 03H, 1BH, 2AH, 2BH, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H, 83H, 2AH, 44H, 55H, 50H, 4CH, 49H, 43H, 41H, 54H, 45H, 20H, 50H, 52H, 4FH, 47H, 52H, 41H, 4DH, 20H, 4EH, 41H, 4DH, 45H, 2AH, F1H, 00H, 03H, 1BH, 27H, 2AH, 90H, 3CH, 48H, 45H, 4CH, 4CH, 4FH, 3EH, 20H, 57H, 45H, 4CH, 43H, 4FH, 4DH, 45H, 20H, 54H, 4FH, 20H, 51H, 55H, 42H, 45H, 58H, 20H, 41H, 53H, 53H, 4FH, 43H, 49H, 41H, 54H, 45H, 53H, 20H, 49H, 4EH, 43H, 2EH, F1H, 00H, 03H, 1BH, 30H, 51H, 00H, 00H, 1BH, 27H, 32H, 00H, CAH, 17H, BDH, 08H, DCH, 0FH, F6H, 0CH, BCH, 0CH, D5H, 17H, DAH, 0DH, 73H, 08H, 13H, 0CH, F6H, 0CH, EBH, 17H, 62H, 0BH, DAH, 0DH, D6H, 0BH, 2EH, 0AH, 37H, 18H, D6H, 0BH, 13H, 0CH, F7H, 08H, DAH, 0DH, F6H, 17H, 2DH, 0DH, F7H, 08H, 8FH, 0BH, D6H, 0BH, 4DH, 18H, DCH, 0FH, D6H, 0BH, 2DH, 0DH, 62H, 0BH, 42H, 18H, 8FH, 0BH, 2EH, 0AH, 62H, 0BH, F7H, 08H, 2CH, 18H, 2EH, 0AH, F6H, 0CH, DAH, 0DH, BDH, 08H, 0CH, 18H, BCH, 0CH, 2DH, 0DH, BCH, 0CH, DCH, 0FH, 16H, 18H, F6H, 0CH, 7FH, 0CH, 73H, 08H, 7FH, 0CH, 21H, 18H, 13H, 0CH, BCH, 0CH, BDH, 08H, 73H, 08H, 01H, 18H, 7FH, 0CH, 62H, 0BH, DCH, 0FH, 8FH, 0BH, E0H, 17H, F7H, 08H, BDH, 08H, 2EH, 0AH, 13H, 0CH, 58H, 18H, 73H, 08H, 8FH, 0BH, 7FH, 0CH, 2DH, 0DH, ACH, 18H, AEH, 10H, A6H, 10H, BAH, 18H, B6H, 10H, A6H, 10H, C8H, 18H, BEH, 10H, AEH, 10H, D6H, 18H, C6H, 10H, B6H, 10H, E4H, 18H, C6H, 10H, BEH, 10H, 07H, 01H, 07H, 0BH, 07H, 15H, 07H, 1FH, 07H, 29H, F5H, E5H, D5H, C5H, 3AH, D0H, A5H, F5H, F6H, F0H, 3CH, C2H, A2H, 1DH, CDH, 32H, 1FH, F1H, 01H, 00H, 04H, 0FH, D2H, ADH, 1DH, CDH, B5H, 1DH, 0CH, 05H, C2H, A6H, 1DH, C3H, ACH, 1EH, F5H, C5H, CDH, 54H, 1FH, 4FH, 3AH, D1H, A5H, B7H, 3EH, 08H, CAH, C6H, 1DH, 3CH, 3CH, B1H, CDH, B5H, 1EH, CDH, 87H, 00H, C1H, F1H, C9H, F5H, E5H, D5H, C5H, 3AH, D0H, A5H, 01H, 00H, 04H, 0FH, D2H, E1H, 1DH, CDH, E9H, 1DH, 0CH, 05H, C2H, DAH, 1DH, C3H, ACH, 1EH, F5H, C5H, CDH, 54H, 1FH, 4FH, 3AH, D1H, A5H, B7H, 3EH, 0CH, CAH, FAH, 1DH, 3CH, 3CH, B1H, CDH, B5H, 1EH, CDH, 87H, 00H, C1H, F1H, C9H, F5H, E5H, D5H, C5H, 3AH, D0H, A5H, 01H, 00H, 04H, 0FH, D2H, 15H, 1EH, CDH, 1DH, 1EH, 0CH, 05H, C2H, 0EH, 1EH, C3H, ACH, 1EH, F5H, C5H, CDH, 54H, 1FH, F6H, 10H, CDH, B5H, 1EH, CDH, 87H, 00H, C1H, F1H, C9H    ; ASCII: .!*.QUBEX.QA2000.V1.2g.###.##/##/##..12.:.00PM."*.STAT...1.2.3.4...STAT......1....2....3....4.#*.READY..........CYLINDER..$*.BUSY...........HEAD.#....%*.SEEK...........SECTOR.#..&*.WRT.F..........ERROR.#...0*.............PR=ON....#.1..#.2..#.3..#.4.(*.RUN.....(1.STOP....(8.DRID....(?.DATE....(F.DIR.....(M.PROG....(T.DEL....)*.PAUS....)1.RESM....)8.OPID....)?.TIME....)F.LIST....)M.EDIT....)T.WLCM...*...........................................'*.<RUN>.START.DRIVE.TESTING..(*............(4............(>............(H............(R............**.DRIVE.NO.(1,2,3,4,RETURN=ALL)..................,*.ITERATION.COUNT(1-65535)........../*.EXECUTE...EXIT..(to.redo.data,.type."^")..../*.EXIT...'*.<STOP>.END.DRIVE.TESTING..,*.STOP.TEST.EXECUTION.IMMEDIATELY.(Y/N)?.......'*.<DATE>.ENTER.TODAY'S.DATE..)*.DAY-OF-WEEK........**.MONTH.......+*.DAY-OF-MONTH.......,*.YEAR........'*.<TIME>.ENTER.TIME-OF-DAY..)*.HOUR.(1-12).......**.MINUTE.......+*.AM.OR.PM.(A/P)?.......'*.<DIRECTORY>.LIST.USER.PROGRAM.NAMES...'*.<EDIT>.QTL.COMMAND.EDITOR...'*.<LIST>.LISTING.OF.PROGRAM.CONTENTS...)*.PROGRAM.NAME.=.............'*.<OPERATOR.ID>.ENTER.OPERATOR.ID..)*.ENTER.ID..........................'*.<DELETE>.DELETE.A.USER.PROGRAM...'*.<PAUSE>.PAUSE.DRIVE.TESTING..,*.PAUSE.IMMEDIATELY.(Y/N)?.......'*.<RESUME>.RESUME.DRIVE.TESTING...'*.<PROGRAM>.PROGRAM.TEST.FUNCTIONS...'*.<DRIVE.ID>.ENTER.DRIVE.ID...*+...........*DIRECTORY.EMPTY*....*+...........*DIRECTORY...FULL*....*+...........*DUPLICATE.PROGRAM.NAME*....'*.<HELLO>.WELCOME.TO.QUBEX.ASSOCIATES.INC.....0Q...'2...............s.......b.......7...........-.......M.....-.b.B.....b...,.............-..........s..!.......s....b...............X.s....-........................................)....:.....<....2.......................T.O:...>....<<..............:.......................T.O:...>....<<..............:.......................T............
lbl_sub0028: PUSH PSW
             PUSH H
             PUSH D
             PUSH B
             CALL lbl_sub0031
             JNZ lbl_jmp0093
             CALL lbl_sub0032
             MVI A, 04H
             CALL lbl_sub0033
             XCHG
             CALL lbl_sub0000
             XCHG
             SHLD A643H
             CALL lbl_sub0034
lbl_jmp0093: LDA A5D0H
             LXI B, 0400H
lbl_jmp0095: RRC
             JNC lbl_jmp0094
             CALL lbl_sub0035
lbl_jmp0094: INR C
             DCR B
             JNZ lbl_jmp0095
             MVI E, 0FH
             MVI D, 03H
             CALL lbl_sub0001
             XCHG
             LHLD A5EBH
             INX H
             LXI B, 0007H
             CALL lbl_sub0000
             JMP lbl_jmp0096
lbl_sub0035: PUSH PSW
             PUSH B
             CALL lbl_sub0039
             ORI 06H
             LXI B, 0002H
             CALL lbl_sub0033
             PUSH H
             LXI B, 0000H
             LXI D, A547H
             LDAX D
             CPI 0DH
             JZ lbl_jmp0124
             LHLD A53DH
             CALL lbl_sub0040
             CALL lbl_sub0041
lbl_jmp0124: POP H
             MOV M,C
             INX H
             MOV M,B
             INX H
             SHLD A643H
             CALL lbl_sub0034
             POP B
             POP PSW
             RET
             DB  F5H, E5H, D5H, C5H, CDH, FFH, 7BH, C3H, B0H, 1EH    ; ASCII: ......{...
lbl_jmp0096: XRA A
             STA A5D0H
             POP B
             POP D
             POP H
             POP PSW
             RET
             DB  01H, 00H, 00H    ; ASCII: ...
lbl_sub0033: PUSH D
             PUSH B
             PUSH PSW
             INX B
             INX B
             INX B
lbl_jmp0121: LHLD A641H
             XCHG
             LHLD A643H
             MOV A,H
             CMP D
             JNZ lbl_jmp0121
             MOV A,L
             CMP E
             JNZ lbl_jmp0121
             XCHG
             LXI H, BD7FH
             MOV A,L
             SUB E
             MOV L,A
             MOV A,H
             SBB D
             MOV H,A
             MOV A,L
             SUB C
             MOV A,H
             SBB B
             JNC lbl_jmp0122
             LHLD A643H
             MVI M, FFH
             LXI H, B980H
             SHLD A643H
lbl_jmp0122: POP PSW
             POP B
             LHLD A643H
             MOV M,A
             INX H
             MOV M,C
             INX H
             MOV M,B
             INX H
             SHLD A643H
             POP D
             RET
lbl_sub0031: PUSH B
             PUSH D
             PUSH H
             LXI H, BD80H
             LXI D, 0010H
             LDA A5CFH
             MOV B,A
             MVI C, 05H
lbl_jmp0120: MOV A,M
             ANI 40H
             JZ lbl_jmp0118
             DCR B
             SHLD A5EBH
             JZ lbl_jmp0119
lbl_jmp0118: DAD D
             DCR C
             JNZ lbl_jmp0120
             RET
lbl_jmp0119: MOV A,M
             ANI 80H
             JNZ lbl_jmp0139
             CALL lbl_sub0048
             LHLD A5EBH
             MOV A,M
             ORI 80H
             MOV M,A
             XRA A
lbl_jmp0139: POP H
             POP D
             POP B
             RET
lbl_sub0048: LXI H, BD80H
             MVI B, 05H
lbl_jmp0154: MOV A,M
             ANI 7FH
             MOV M,A
             DAD D
             DCR B
             JNZ lbl_jmp0154
             RET
lbl_sub0032: LHLD A5EBH
             LXI D, 0008H
             DAD D
             MOV E,M
             INX H
             MOV D,M
             INX H
             MOV A,M
             SUB E
             MOV C,A
             INX H
             MOV A,M
             SBB D
             MOV B,A
             RET
lbl_sub0039: MOV A,C
             RRC
             RRC
             RRC
             RET
lbl_sub0040: MOV A,L
             SUB E
             MOV C,A
             MOV A,H
             SBB D
             MOV B,A
             RET
lbl_sub0041: PUSH D
             LXI H, 0000H
             SHLD A633H
             MOV A,C
             CPI 05H
             JZ lbl_jmp0140
             CPI 04H
             JZ lbl_jmp0141
             CPI 03H
             JZ lbl_jmp0142
             CPI 02H
             JZ lbl_jmp0143
             JMP lbl_jmp0144
lbl_jmp0140: LXI H, 2710H
             SHLD A635H
             POP H
             MOV A,M
             INX H
             PUSH H
             CALL lbl_sub0052
lbl_jmp0141: LXI H, 03E8H
             SHLD A635H
             POP H
             MOV A,M
             INX H
             PUSH H
             CALL lbl_sub0052
lbl_jmp0142: LXI H, 0064H
             SHLD A635H
             POP H
             MOV A,M
             INX H
             PUSH H
             CALL lbl_sub0052
lbl_jmp0143: LXI H, 000AH
             SHLD A635H
             POP H
             MOV A,M
             INX H
             PUSH H
             CALL lbl_sub0052
lbl_jmp0144: POP H
             MOV A,M
             ANI 0FH
             LHLD A633H
             ADD L
             JNC lbl_jmp0145
             INR H
lbl_jmp0145: MOV L,A
             SHLD A633H
             PUSH H
             POP B
             RET
lbl_sub0052: CPI 30H
             RZ
             ANI 0FH
             LHLD A635H
             XCHG
             LXI H, 0000H
lbl_jmp0162: DAD D
             DCR A
             JNZ lbl_jmp0162
             XCHG
             LHLD A633H
             DAD D
             SHLD A633H
             RET
lbl_sub0030: LXI H, A380H
             CALL lbl_sub0037
             LXI H, A380H
             MVI A, 2DH
             MOV M,A
             INX H
             SHLD A545H
             MVI A, 0FH
             CALL lbl_sub0038
             LDA A547H
             CPI 44H
             JZ lbl_jmp0112
             CPI 53H
             JZ lbl_jmp0113
             CPI 4DH
             JZ lbl_jmp0114
             CPI 46H
             JZ lbl_jmp0115
             CPI 2EH
             JZ lbl_jmp0116
             JMP lbl_sub0030
lbl_jmp0138: POP H
lbl_jmp0137: POP H
lbl_jmp0129: CALL lbl_sub0020
             LXI H, A1C0H
             MVI A, 3FH
             MOV M,A
             JMP lbl_sub0030
lbl_jmp0116: CALL lbl_sub0011
             RET
lbl_sub0046: MVI C, 00H
lbl_jmp0160: MOV A,M
             CPI 30H
             JC lbl_jmp0148
             CPI 3AH
             JC lbl_jmp0149
             CPI 41H
             JC lbl_jmp0148
             CPI 47H
             JC lbl_jmp0150
lbl_jmp0148: STC
             RET
lbl_jmp0150: SUI 07H
lbl_jmp0149: SUI 30H
             MOV B,A
             MOV A,C
             CPI 00H
             JNZ lbl_jmp0159
             INR C
             MOV A,B
             RAL
             RAL
             RAL
             RAL
             ANI F0H
             MOV D,A
             INX H
             JMP lbl_jmp0160
lbl_jmp0159: MOV A,B
             ORA D
             MOV D,A
             INX H
             RET
lbl_sub0042: CALL lbl_sub0046
             RC
             PUSH D
             CALL lbl_sub0046
             JC lbl_jmp0146
             MOV A,D
lbl_jmp0146: POP D
             MOV E,A
             RET
lbl_jmp0112: LXI H, A548H
             CALL lbl_sub0042
             JC lbl_jmp0129
             XCHG
lbl_jmp0130: CALL lbl_sub0043
lbl_jmp0132: PUSH H
             LXI H, A547H
             CALL lbl_sub0029
             POP H
             CPI 5DH
             JZ lbl_jmp0130
             CPI 5CH
             JZ lbl_jmp0131
             CPI 2EH
             JZ lbl_sub0030
             JMP lbl_jmp0132
lbl_jmp0131: LXI D, 0080H
             XCHG
             CALL lbl_sub0047
             JMP lbl_jmp0130
lbl_sub0043: PUSH H
             CALL lbl_sub0020
             MVI A, 08H
             POP H
             LXI D, A188H
lbl_jmp0147: PUSH PSW
             PUSH D
             CALL lbl_sub0049
             XCHG
             POP H
             LXI B, 0038H
             DAD B
             XCHG
             POP PSW
             DCR A
             JNZ lbl_jmp0147
             RET
lbl_sub0049: CALL lbl_sub0044
             LXI B, 0000H
lbl_jmp0157: MOV A,M
             INX H
             PUSH H
             PUSH D
             PUSH PSW
             CPI 20H
             JC lbl_jmp0155
             CPI 7FH
             JC lbl_jmp0156
lbl_jmp0155: MVI A, 2EH
lbl_jmp0156: LHLD A02CH
             LXI D, 001FH
             DAD D
             DAD B
             MOV M,A
             POP PSW
             CALL lbl_sub0045
             POP D
             XCHG
             MOV A,D
             MOV M,A
             INX H
             MOV A,E
             MOV M,A
             INX H
             INX H
             XCHG
             POP H
             INX B
             MOV A,C
             CPI 08H
             JNZ lbl_jmp0157
             RET
lbl_sub0044: INX D
             PUSH H
             MOV A,H
             CALL lbl_sub0045
             XCHG
             SHLD A02CH
             MOV A,D
             MOV M,A
             INX H
             MOV A,E
             MOV M,A
             INX H
             POP D
             PUSH D
             PUSH H
             XCHG
             MOV A,L
             CALL lbl_sub0045
             XCHG
             POP H
             MOV A,D
             MOV M,A
             INX H
             MOV A,E
             MOV M,A
             INX H
             INX H
             INX H
             XCHG
             POP H
             RET
lbl_sub0045: PUSH PSW
             ANI 0FH
             CALL lbl_sub0050
             MOV L,A
             POP PSW
             ORA A
             RAL
             RAL
             RAL
             RAL
             RAL
             ANI 0FH
             CALL lbl_sub0050
             MOV H,A
             RET
lbl_sub0050: ADI 30H
             CPI 3AH
             JC lbl_jmp0158
             ADI 07H
lbl_jmp0158: RET
lbl_jmp0114: LXI H, A548H
             CALL lbl_sub0042
             JC lbl_jmp0129
             PUSH D
             MOV A,M
             CPI 2CH
             JNZ lbl_jmp0137
             INX H
             CALL lbl_sub0042
             JC lbl_jmp0137
             PUSH D
             MOV A,M
             CPI 2CH
             JNZ lbl_jmp0138
             INX H
             CALL lbl_sub0042
             JC lbl_jmp0138
             PUSH D
             POP B
             POP D
             POP H
             CALL lbl_sub0000
             JMP lbl_sub0030
lbl_jmp0115: LXI H, A548H
             CALL lbl_sub0042
             JC lbl_jmp0129
             PUSH D
             MOV A,M
             CPI 2CH
             JNZ lbl_jmp0137
             INX H
             CALL lbl_sub0042
             JC lbl_jmp0137
             MOV A,M
             CPI 2CH
             JNZ lbl_jmp0137
             INX H
             POP B
             PUSH H
             MOV H,B
             MOV L,C
             PUSH H
             CALL lbl_sub0047
             XCHG
             POP B
             POP H
             PUSH D
             PUSH B
             CALL lbl_sub0046
             JC lbl_jmp0138
             POP H
             MOV A,D
             MOV M,A
             MOV D,H
             MOV E,L
             INX D
             POP B
             CALL lbl_sub0000
             JMP lbl_sub0030
lbl_jmp0113: CALL lbl_sub0020
             LXI H, A548H
             CALL lbl_sub0042
             JC lbl_jmp0129
             XCHG
             LXI D, A188H
lbl_jmp0136: PUSH D
             CALL lbl_sub0044
             MOV A,M
             PUSH H
             CALL lbl_sub0045
             XCHG
             MOV A,D
             MOV M,A
             INX H
             MOV A,E
             MOV M,A
             INX H
             INX H
             SHLD A545H
             CALL lbl_sub0038
             LXI H, A547H
             CALL lbl_sub0046
             JC lbl_jmp0133
             POP H
             MOV A,D
             MOV M,A
lbl_jmp0161: INX H
lbl_jmp0153: POP D
             LXI B, A310H
             MOV A,B
             CMP D
             JNZ lbl_jmp0134
             MOV A,C
             CMP E
             JZ lbl_jmp0135
lbl_jmp0134: XCHG
             LXI B, 0038H
             DAD B
             XCHG
             JMP lbl_jmp0136
lbl_jmp0135: CALL lbl_sub0051
             JMP lbl_jmp0136
lbl_jmp0133: CPI 2EH
             JZ lbl_jmp0151
             CPI 0DH
             JZ lbl_jmp0152
             CPI 20H
             JNZ lbl_jmp0138
             POP H
             DCX H
             JMP lbl_jmp0153
lbl_jmp0152: POP H
             JMP lbl_jmp0161
lbl_jmp0151: POP H
             POP H
             JMP lbl_sub0030
lbl_sub0051: PUSH D
             PUSH H
             LXI D, A188H
             LXI H, A1C0H
             LXI B, 01C0H
             CALL lbl_sub0000
             LXI H, A310H
             CALL lbl_sub0037
             POP H
             POP D
             RET
lbl_sub0037: PUSH H
             MVI A, 80H
             MOV M,A
             INX H
             MVI A, 20H
             MOV M,A
             MOV D,H
             MOV E,L
             INX D
             LXI B, 0036H
             CALL lbl_sub0000
             POP H
             LXI B, 0029H
             DAD B
             MVI A, 1FH
             MOV M,A
             RET
             db  FFh, FFh, FFh, FFh, FFh, FFh, FFh, 00h, FEh, 26h, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 68h, 27h, 00h, F7h, 27h, 00h, 0Bh, 28h, 00h, 20h, 28h, 00h, 35h, 28h, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, C2h, 28h, 00h, 48h, 28h, 00h, 5Ah, 28h, 00h, 6Bh, 28h, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 7Bh, 27h, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, BDh, 27h, 02h, D0h, 27h, 18h, E5h, 27h, 60h, 7Ah, 28h, 06h, 8Dh, 28h, 08h, 9Ch, 28h, 0Ah, 30h, 27h, 64h, 97h, 27h, 9Eh, ACh, 27h, 4Ah, ADh, 28h, 18h, 53h, 27h, 68h, 02h, 27h, 98h, 14h, 27h, 6Ah, 24h, 27h, 3Ch, D7h, 28h, 72h, ECh, 28h, 72h, 40h, 29h, 06h, 55h, 29h, 08h, 68h, 29h, 28h, 35h, 2Ch, 64h, 7Ch, 29h, 60h, 8Fh, 29h, 06h, A1h, 29h, 06h, 01h, 29h, A6h, CAh, 29h, 06h, DDh, 29h, 06h, EEh, 29h, 06h, 16h, 29h, 72h, 3Fh, 27h, 44h, 2Bh, 29h, 2Ah, 17h, 2Ch, 1Ah, 26h, 2Ch, 0Ah, 03h, 2Ah, 06h, 11h, 2Ah, 06h, 26h, 2Ah, 34h, 3Bh, 2Ah, 34h, 4Fh, 2Ah, 2Ch, 60h, 2Ah, 34h, 6Ch, 2Ah, 30h, 7Dh, 2Ah, 34h, 35h, 2Ch, 00h, 8Ah, 2Ah, 34h, 9Fh, 2Ah, 34h, B4h, 2Ah, 34h, C0h, 2Ah, 34h, D2h, 2Ah, 34h, E7h, 2Ah, 34h, FCh, 2Ah, 34h, 89h, 27h, 06h, 08h, 2Bh, 06h, 18h, 2Bh, 00h, 2Ah, 2Bh, 1Eh, 39h, 2Bh, 14h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 49h, 2Bh, 98h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 5Ch, 2Bh, 06h, 6Bh, 2Bh, 06h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 80h, 2Bh, 34h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 8Dh, 2Bh, 06h, A1h, 2Bh, 36h, B4h, 2Bh, 94h, 35h, 2Ch, 00h, C9h, 2Bh, 3Ah, DEh, 2Bh, 26h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, EDh, 2Bh, 7Eh, 02h, 2Ch, 46h, 08h, 2Ch, 56h, 35h, 2Ch, 00h, 10h, 2Ch, 8Ch, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 35h, 2Ch, 00h, 12h, 12h, 11h, 12h, 11h, 41h, 42h, 22h, 11h, 01h, 12h, 21h, 11h, 21h, 11h, 12h, 22h, 11h, 12h, 12h, 10h, 11h, 11h, 11h, 13h, 43h, 02h, 60h, 00h, 00h, 00h, 00h, 33h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 03h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 34h, 12h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 17h, 03h, 02h, 02h, 04h, 01h, 14h, 01h, 02h, 02h, 04h, 01h, 03h, 01h, 0Eh, 04h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 02h, 14h, 01h, 15h, 01h, 16h, 01h, 0Bh, 02h, 0Ch, 02h, 04h, 01h, 03h, 01h, 14h, 01h, 02h, 05h, 00h, 02h, 01h, 01h, 05h, 01h, 18h, 02h, 08h, 02h, 12h, 02h, 13h, 02h, 0Ah, 02h, 04h, 01h, 03h, 04h, 11h, 01h, 0Dh, 04h, 11h, 01h, 28h, 01h, 29h, 01h, 10h, 03h, 1Ah, 00h, 00h, 02h, 2Ah, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 08h, 1Fh, 02h, 20h, 07h, 21h, 00h, 00h, 00h, 00h, 01h, 23h, 01h, 24h, 02h, 07h, 02h, 09h, 02h, 2Ah, 02h, 36h, 02h, 37h, 00h, 00h, 00h, 00h, 01h, 34h, 01h, 35h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 09h, 19h, 02h, 1Bh, 01h, 1Ch, 01h, 14h, 02h, 06h, 02h, 1Dh, 01h, 1Eh, 02h, 0Ah, 07h, 21h, 00h, 00h, 00h, 00h, 02h, 04h, 04h, 11h, 01h, 2Fh, 01h, 30h, 04h, 11h, 01h, 25h, 01h, 14h, 01h, 02h, 00h, 00h, 01h, 16h, 01h, 33h, 00h, 00h, 00h, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 43h, 4Eh, 54h, 20h, 00h, 49h, 54h, 4Ch, 56h, 00h, 48h, 45h, 41h, 44h, 00h, 43h, 59h, 4Ch, 20h, 00h, 54h, 49h, 4Dh, 45h, 01h, 52h, 41h, 54h, 45h, 12h, 53h, 54h, 50h, 57h, 12h, 56h, 41h, 4Ch, 20h, 00h, 50h, 46h, 20h, 20h, 12h, 49h, 54h, 52h, 53h, 00h, 4Fh, 4Eh, 20h, 20h, 1Bh, 4Fh, 46h, 46h, 20h, 12h, 49h, 4Eh, 43h, 52h, 00h, 53h, 45h, 43h, 54h, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 50h, 46h, 48h, 20h, 23h, 44h, 41h, 54h, 41h, 00h, 31h, 54h, 52h, 4Bh, 09h, 46h, 55h, 4Ch, 4Ch, 09h, 42h, 59h, 54h, 53h, 8Ah, 53h, 43h, 50h, 54h, 46h, 4Ch, 49h, 4Dh, 54h, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 53h, 57h, 20h, 23h, 00h, 4Eh, 41h, 4Dh, 45h, 00h, 4Ch, 41h, 42h, 4Ch, 00h, 4Dh, 58h, 43h, 59h, 00h, 4Dh, 58h, 48h, 44h, 00h, 50h, 43h, 4Dh, 50h, 00h, 53h, 49h, 5Ah, 45h, 81h, 43h, 4Fh, 4Eh, 44h, 00h, 56h, 41h, 4Ch, 20h, 00h, 47h, 4Fh, 54h, 4Fh, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 45h, 52h, 4Ch, 59h, 2Ch, 4Ch, 41h, 54h, 45h, 2Ch, 50h, 46h, 48h, 20h, 74h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 49h, 50h, 46h, 20h, 2Ch, 4Fh, 50h, 46h, 20h, 2Ch, 50h, 46h, 48h, 20h, 09h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 50h, 41h, 53h, 53h, 00h, 52h, 54h, 52h, 59h, 00h, 50h, 41h, 54h, 4Eh, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 43h, 4Fh, 44h, 45h, 00h, 45h, 58h, 50h, 4Eh, 52h, 4Dh, 41h, 4Eh, 54h, 65h, 50h, 46h, 48h, 20h, 34h, 50h, 46h, 4Ch, 20h, 34h, 00h, 28h, 78h, 2Eh, 35h, 20h, 73h, 29h, 00h, 28h, 78h, 2Eh, 31h, 20h, 6Dh, 73h, 29h, 00h, 28h, 78h, 31h, 30h, 20h, 75h, 73h, 29h, 00h, 28h, 78h, 31h, 20h, 75h, 73h, 29h, 00h, 28h, 78h, 2Eh, 31h, 20h, 75h, 73h, 29h, 00h, 28h, 78h, 31h, 20h, 6Eh, 73h, 29h, 00h, 28h, 58h, 2Eh, 31h, 20h, 72h, 70h, 6Dh, 29h, 00h, 28h, 62h, 79h, 74h, 65h, 73h, 29h, 00h, 28h, 73h, 63h, 74h, 72h, 73h, 2Fh, 74h, 72h, 6Bh, 29h, 00h, 28h, 62h, 61h, 73h, 65h, 20h, 31h, 30h, 20h, 65h, 78h, 70h, 6Fh, 6Eh, 65h, 6Eh, 74h, 29h, 00h, 28h, 6Dh, 61h, 6Eh, 74h, 69h, 73h, 73h, 61h, 20h, 30h, 2Dh, 39h, 29h, 00h, 28h, 6Dh, 69h, 73h, 6Dh, 61h, 74h, 63h, 68h, 65h, 73h, 29h, 00h, 28h, 35h, 20h, 6Fh, 72h, 20h, 38h, 29h, 00h, 28h, 31h, 3Dh, 31h, 32h, 38h, 2Ch, 32h, 3Dh, 32h, 35h, 36h, 2Ch, 33h, 3Dh, 35h, 31h, 32h, 29h, 00h, 45h, 6Eh, 64h, 00h, 53h, 75h, 72h, 66h, 61h, 63h, 65h, 20h, 53h, 63h, 61h, 6Eh, 20h, 54h, 65h, 73h, 74h, 00h, 53h, 70h, 69h, 6Eh, 20h, 53h, 70h, 65h, 65h, 64h, 20h, 54h, 65h, 73h, 74h, 00h, 4Dh, 61h, 72h, 67h, 69h, 6Eh, 20h, 54h, 65h, 73h, 74h, 00h, 53h, 74h, 65h, 70h, 20h, 52h, 61h, 74h, 65h, 20h, 54h, 65h, 73h, 74h, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 54h, 6Fh, 20h, 52h, 65h, 61h, 64h, 20h, 44h, 65h, 6Ch, 61h, 79h, 00h, 53h, 65h, 65h, 6Bh, 20h, 43h, 6Fh, 6Dh, 70h, 6Ch, 65h, 74h, 69h, 6Fh, 6Eh, 20h, 54h, 69h, 6Dh, 65h, 00h, 48h, 6Fh, 6Dh, 65h, 20h, 54h, 6Fh, 20h, 43h, 79h, 6Ch, 69h, 6Eh, 64h, 65h, 72h, 20h, 30h, 00h, 52h, 65h, 61h, 64h, 20h, 41h, 6Ch, 6Ch, 20h, 49h, 64h, 27h, 73h, 00h, 52h, 65h, 61h, 64h, 20h, 41h, 20h, 53h, 65h, 63h, 74h, 6Fh, 72h, 00h, 52h, 65h, 61h, 64h, 20h, 26h, 20h, 43h, 6Fh, 6Dh, 70h, 61h, 72h, 65h, 20h, 57h, 52h, 20h, 42h, 46h, 00h, 41h, 63h, 63h, 65h, 73h, 73h, 20h, 54h, 69h, 6Dh, 65h, 20h, 54h, 65h, 73h, 74h, 00h, 46h, 6Fh, 72h, 6Dh, 61h, 74h, 20h, 45h, 6Eh, 74h, 69h, 72h, 65h, 20h, 44h, 69h, 73h, 6Bh, 00h, 53h, 65h, 74h, 20h, 52h, 65h, 61h, 64h, 20h, 52h, 65h, 74h, 72h, 79h, 20h, 4Ch, 69h, 6Dh, 69h, 74h, 00h, 53h, 65h, 74h, 20h, 4Dh, 61h, 72h, 67h, 69h, 6Eh, 20h, 57h, 69h, 6Eh, 64h, 6Fh, 77h, 00h, 44h, 69h, 73h, 70h, 6Ch, 61h, 79h, 20h, 52h, 65h, 61h, 64h, 20h, 42h, 75h, 66h, 66h, 65h, 72h, 00h, 44h, 69h, 73h, 70h, 6Ch, 61h, 79h, 20h, 57h, 72h, 69h, 74h, 65h, 20h, 42h, 75h, 66h, 66h, 65h, 72h, 00h, 44h, 69h, 73h, 70h, 6Ch, 61h, 79h, 20h, 54h, 65h, 73h, 74h, 20h, 53h, 75h, 6Dh, 6Dh, 61h, 72h, 79h, 00h, 44h, 69h, 73h, 70h, 6Ch, 61h, 79h, 20h, 44h, 65h, 66h, 65h, 63h, 74h, 20h, 4Dh, 61h, 70h, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 61h, 6Ch, 6Ch, 20h, 53h, 65h, 63h, 74h, 6Fh, 72h, 73h, 00h, 52h, 65h, 61h, 64h, 20h, 61h, 6Ch, 6Ch, 20h, 53h, 65h, 63h, 74h, 6Fh, 72h, 73h, 00h, 48h, 61h, 72h, 64h, 77h, 61h, 72h, 65h, 20h, 52h, 65h, 63h, 61h, 6Ch, 00h, 53h, 65h, 74h, 20h, 4Dh, 69h, 6Eh, 20h, 43h, 79h, 6Ch, 69h, 6Eh, 64h, 65h, 72h, 20h, 23h, 00h, 53h, 65h, 74h, 20h, 4Dh, 69h, 6Eh, 20h, 48h, 65h, 61h, 64h, 20h, 23h, 00h, 53h, 65h, 74h, 20h, 4Dh, 69h, 6Eh, 20h, 53h, 65h, 63h, 74h, 6Fh, 72h, 20h, 23h, 00h, 53h, 65h, 74h, 20h, 53h, 65h, 65h, 6Bh, 20h, 52h, 65h, 74h, 72h, 79h, 20h, 4Ch, 69h, 6Dh, 69h, 74h, 00h, 53h, 65h, 74h, 20h, 52h, 61h, 6Eh, 64h, 6Dh, 20h, 44h, 61h, 74h, 61h, 2Fh, 57h, 52h, 20h, 42h, 46h, 00h, 53h, 65h, 74h, 20h, 53h, 65h, 65h, 6Bh, 20h, 45h, 72h, 72h, 20h, 50h, 2Fh, 46h, 20h, 4Ch, 69h, 6Dh, 00h, 53h, 65h, 74h, 20h, 53h, 6Fh, 66h, 74h, 20h, 45h, 72h, 72h, 20h, 50h, 2Fh, 46h, 20h, 4Ch, 69h, 6Dh, 00h, 53h, 65h, 74h, 20h, 4Fh, 70h, 63h, 6Fh, 64h, 65h, 20h, 52h, 65h, 74h, 72h, 79h, 20h, 4Ch, 69h, 6Dh, 00h, 53h, 65h, 74h, 20h, 48h, 61h, 72h, 64h, 20h, 45h, 72h, 72h, 20h, 50h, 2Fh, 46h, 20h, 4Ch, 69h, 6Dh, 00h, 48h, 61h, 72h, 64h, 77h, 61h, 72h, 65h, 20h, 52h, 65h, 63h, 61h, 6Ch, 69h, 62h, 72h, 61h, 74h, 65h, 00h, 53h, 65h, 74h, 20h, 4Dh, 61h, 78h, 69h, 6Dh, 75h, 6Dh, 20h, 43h, 79h, 6Ch, 69h, 6Eh, 64h, 65h, 72h, 00h, 53h, 65h, 74h, 20h, 4Dh, 61h, 78h, 69h, 6Dh, 75h, 6Dh, 20h, 48h, 65h, 61h, 64h, 20h, 23h, 00h, 53h, 65h, 74h, 20h, 41h, 62h, 6Fh, 72h, 74h, 20h, 45h, 72h, 72h, 6Fh, 72h, 20h, 43h, 6Eh, 74h, 00h, 53h, 65h, 74h, 20h, 50h, 72h, 65h, 63h, 6Fh, 6Dh, 70h, 20h, 4Fh, 66h, 66h, 73h, 65h, 74h, 00h, 53h, 65h, 74h, 20h, 52h, 57h, 43h, 20h, 53h, 74h, 61h, 72h, 74h, 20h, 43h, 79h, 6Ch, 00h, 53h, 65h, 74h, 20h, 50h, 72h, 65h, 63h, 6Dh, 70h, 20h, 53h, 74h, 61h, 72h, 74h, 20h, 63h, 79h, 6Ch, 00h, 53h, 65h, 74h, 20h, 53h, 74h, 65h, 70h, 20h, 4Dh, 6Fh, 64h, 65h, 20h, 56h, 61h, 6Ch, 75h, 65h, 00h, 53h, 65h, 65h, 6Bh, 20h, 54h, 6Fh, 20h, 41h, 20h, 43h, 79h, 6Ch, 69h, 6Eh, 64h, 65h, 72h, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 41h, 20h, 43h, 79h, 6Ch, 69h, 6Eh, 64h, 65h, 72h, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 43h, 79h, 6Ch, 2Fh, 52h, 61h, 6Eh, 64h, 6Dh, 20h, 44h, 61h, 74h, 61h, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 41h, 20h, 54h, 72h, 61h, 63h, 6Bh, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 54h, 72h, 6Bh, 2Fh, 52h, 61h, 6Eh, 64h, 6Dh, 20h, 44h, 61h, 74h, 61h, 00h, 53h, 65h, 65h, 6Bh, 20h, 49h, 6Eh, 63h, 72h, 6Dh, 74h, 20h, 41h, 6Ch, 74h, 2Fh, 5Ah, 65h, 72h, 6Fh, 00h, 53h, 65h, 65h, 6Bh, 20h, 49h, 6Eh, 63h, 72h, 6Dh, 74h, 20h, 41h, 6Ch, 74h, 2Fh, 4Dh, 61h, 78h, 00h, 53h, 65h, 74h, 20h, 53h, 77h, 69h, 74h, 63h, 68h, 20h, 56h, 61h, 6Ch, 75h, 65h, 00h, 52h, 61h, 6Eh, 64h, 6Fh, 6Dh, 20h, 52h, 65h, 61h, 64h, 00h, 53h, 65h, 65h, 6Bh, 20h, 54h, 69h, 6Dh, 69h, 6Eh, 67h, 20h, 54h, 65h, 73h, 74h, 00h, 52h, 61h, 6Eh, 64h, 6Fh, 6Dh, 20h, 57h, 72h, 69h, 74h, 65h, 00h, 53h, 65h, 65h, 6Bh, 20h, 49h, 6Eh, 63h, 72h, 6Dh, 6Eh, 74h, 20h, 46h, 6Fh, 72h, 77h, 61h, 72h, 64h, 00h, 53h, 65h, 65h, 6Bh, 20h, 49h, 6Eh, 63h, 72h, 6Dh, 6Eh, 74h, 20h, 52h, 65h, 76h, 65h, 72h, 73h, 65h, 00h, 52h, 61h, 6Eh, 64h, 6Fh, 6Dh, 20h, 53h, 65h, 65h, 6Bh, 00h, 4Dh, 61h, 78h, 69h, 6Dh, 75h, 6Dh, 20h, 53h, 65h, 65h, 6Bh, 20h, 54h, 65h, 73h, 74h, 00h, 53h, 65h, 71h, 75h, 65h, 6Eh, 74h, 69h, 61h, 6Ch, 20h, 53h, 65h, 65h, 6Bh, 20h, 54h, 65h, 73h, 74h, 00h, 4Fh, 73h, 63h, 69h, 6Ch, 6Ch, 61h, 74h, 69h, 6Eh, 67h, 20h, 53h, 65h, 65h, 6Bh, 20h, 54h, 73h, 74h, 00h, 52h, 61h, 6Eh, 64h, 6Fh, 6Dh, 20h, 52h, 65h, 61h, 64h, 00h, 52h, 65h, 61h, 64h, 20h, 41h, 20h, 43h, 79h, 6Ch, 69h, 6Eh, 64h, 65h, 72h, 00h, 46h, 6Fh, 72h, 6Dh, 61h, 74h, 20h, 41h, 20h, 43h, 79h, 6Ch, 69h, 6Eh, 64h, 65h, 72h, 00h, 46h, 6Fh, 72h, 6Dh, 61h, 74h, 20h, 41h, 20h, 54h, 72h, 61h, 63h, 6Bh, 00h, 53h, 65h, 74h, 20h, 55h, 73h, 65h, 72h, 20h, 46h, 6Fh, 72h, 6Dh, 61h, 74h, 00h, 46h, 6Fh, 72h, 6Dh, 61h, 74h, 20h, 77h, 2Fh, 62h, 61h, 64h, 20h, 62h, 6Ch, 6Fh, 63h, 6Bh, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 41h, 20h, 53h, 65h, 63h, 74h, 6Fh, 72h, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 53h, 65h, 63h, 74h, 2Fh, 52h, 6Eh, 64h, 6Dh, 20h, 44h, 61h, 74h, 61h, 00h, 52h, 65h, 61h, 64h, 20h, 41h, 20h, 54h, 72h, 61h, 63h, 6Bh, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 41h, 20h, 53h, 65h, 63h, 74h, 6Fh, 72h, 2Fh, 44h, 61h, 74h, 61h, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 41h, 20h, 54h, 72h, 61h, 63h, 6Bh, 2Fh, 44h, 61h, 74h, 61h, 00h, 57h, 72h, 69h, 74h, 65h, 20h, 41h, 20h, 43h, 79h, 6Ch, 69h, 6Eh, 64h, 72h, 2Fh, 44h, 61h, 74h, 61h, 00h, 53h, 65h, 74h, 20h, 57h, 72h, 69h, 74h, 65h, 20h, 44h, 61h, 74h, 61h, 20h, 49h, 6Eh, 20h, 57h, 42h, 00h, 53h, 65h, 74h, 20h, 44h, 65h, 66h, 65h, 63h, 74h, 20h, 4Dh, 61h, 70h, 00h, 2Ah, 2Ah, 2Ah, 2Ah, 51h, 54h, 4Ch, 20h, 50h, 72h, 6Fh, 67h, 72h, 61h, 6Dh, 2Ah, 2Ah, 2Ah, 2Ah, 2Ah, 00h, 4Ch, 61h, 62h, 65h, 6Ch, 00h, 49h, 66h, 2Fh, 47h, 6Fh, 74h, 6Fh, 00h, 52h, 65h, 70h, 65h, 61h, 74h, 00h, 53h, 65h, 74h, 20h, 53h, 74h, 65h, 70h, 20h, 50h, 75h, 6Ch, 73h, 65h, 00h, 53h, 65h, 74h, 20h, 45h, 6Eh, 64h, 20h, 53h, 65h, 63h, 74h, 6Fh, 72h, 00h, 49h, 6Eh, 76h, 61h, 6Ch, 69h, 64h, 20h, 51h, 54h, 4Ch, 20h, 4Fh, 70h, 63h, 6Fh, 64h, 65h, 00h, 3Bh, 21h, 03h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, C3h, 2Ch, C1h, CDh, 32h, 2Dh, 21h, 00h, 00h, 39h, E5h, CDh, C0h, 34h, D1h, 7Dh, 12h, 21h, 00h, 00h, 39h, CDh, AEh, 7Ah, 7Dh, FEh, 0Bh, C2h, 76h, 2Ch, CDh, 6Bh, 2Dh, C3h, BEh, 2Ch, FEh, 0Ah, C2h, 81h, 2Ch, CDh, 9Dh, 2Dh, C3h, BEh, 2Ch, FEh, 0Dh, C2h, 89h, 2Ch, C3h, C1h, 2Ch, FEh, 03h, C2h, BEh, 2Ch, 21h, 22h, A4h, 3Eh, 00h, BEh, C2h, BEh, 2Ch, 21h, 03h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, C3h, 2Ch, C1h, CDh, 32h, 2Dh, 21h, 89h, A1h, CDh, 96h, 00h, B7h, C2h, A9h, 2Ch, CDh, 9Dh, 2Dh, 7Ch, B5h, CAh, A6h, 2Ch, CDh, ECh, 34h, C3h, BEh, 2Ch, C3h, 58h, 2Ch, 33h, C9h, 21h, 02h, 00h, 39h, CDh, B4h, 7Ah, 22h, DEh, A4h, 21h, FBh, A4h, E5h, 23h, 23h, E5h, 23h, 23h, E5h, 2Ah, DEh, A4h, E5h, 21h, 08h, 00h, D1h, 19h, 22h, 25h, A5h, CDh, B4h, 7Ah, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, 22h, E0h, A4h, 2Ah, 25h, A5h, 23h, 23h, 22h, 25h, A5h, CDh, B4h, 7Ah, 22h, E2h, A4h, 21h, 00h, 00h, 7Dh, 32h, 01h, A5h, 21h, EFh, A4h, E5h, 21h, FBh, A4h, E5h, CDh, 79h, 34h, C1h, C1h, 21h, 07h, A5h, E5h, 21h, FBh, A4h, E5h, CDh, 79h, 34h, C1h, C1h, 21h, 13h, A5h, E5h, 21h, FBh, A4h, E5h, CDh, 79h, 34h, C1h, C1h, C9h, CDh, 81h, 74h, 21h, EFh, A4h, E5h, 21h, FBh, A4h, E5h, CDh, 79h, 34h, C1h, C1h, 21h, 01h, 00h, 7Dh, 32h, EEh, A4h, 3Ah, EDh, A4h, CDh, AFh, 7Ah, E5h, 21h, 07h, 00h, D1h, CDh, F7h, 7Ah, 7Ch, B5h, CAh, 6Ah, 2Dh, 3Ah, F5h, A4h, FEh, FFh, CAh, 6Ah, 2Dh, CDh, D4h, 2Eh, C3h, 49h, 2Dh, C9h, 21h, FBh, A4h, CDh, B4h, 7Ah, E5h, 2Ah, E0h, A4h, D1h, CDh, 20h, 7Bh, 7Ch, B5h, CAh, 91h, 2Dh, 3Ah, 01h, A5h, FEh, 00h, CAh, 8Bh, 2Dh, FEh, FFh, C2h, 91h, 2Dh, CDh, A1h, 7Ah, C3h, 9Ch, 2Dh, 21h, FBh, A4h, E5h, CDh, 28h, 2Eh, C1h, CDh, 32h, 2Dh, C9h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, FBh, A4h, CDh, B4h, 7Ah, D1h, CDh, D7h, 7Ah, E5h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, E5h, 21h, FBh, A4h, 23h, 23h, CDh, B4h, 7Ah, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, E5h, 3Ah, F5h, A4h, CDh, AFh, 7Ah, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, 7Ch, B5h, CAh, ECh, 2Dh, CDh, A1h, 7Ah, 21h, FFh, FFh, C3h, FAh, 2Dh, 21h, FBh, A4h, E5h, CDh, FBh, 2Dh, C1h, CDh, 32h, 2Dh, 21h, 00h, 00h, C9h, 21h, EFh, A4h, E5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, 79h, 34h, C1h, C1h, 21h, 00h, 00h, 7Dh, 32h, EEh, A4h, CDh, D4h, 2Eh, 21h, 02h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, EFh, A4h, E5h, CDh, 79h, 34h, C1h, C1h, C9h, 21h, EFh, A4h, E5h, 23h, 23h, E5h, 23h, 23h, E5h, 2Ah, E0h, A4h, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, 21h, 00h, 00h, 7Dh, 32h, F5h, A4h, 21h, 00h, 00h, 7Dh, 32h, EEh, A4h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, D1h, CDh, F7h, 7Ah, E5h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, 23h, 23h, CDh, B4h, 7Ah, D1h, CDh, F7h, 7Ah, D1h, CDh, C2h, 7Ah, E5h, 21h, EFh, A4h, E5h, 21h, 02h, 00h, 29h, D1h, 19h, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 02h, 00h, 29h, D1h, 19h, CDh, B4h, 7Ah, D1h, CDh, F7h, 7Ah, D1h, CDh, C2h, 7Ah, 7Ch, B5h, CAh, C2h, 2Eh, 21h, 13h, A5h, E5h, 21h, EFh, A4h, E5h, CDh, 79h, 34h, C1h, C1h, CDh, D4h, 2Eh, C3h, 4Fh, 2Eh, 21h, 02h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 13h, A5h, E5h, CDh, 79h, 34h, C1h, C1h, C9h, 3Ah, F5h, A4h, FEh, 00h, C2h, E6h, 2Eh, CDh, 20h, 2Fh, 7Dh, 32h, F5h, A4h, C3h, 1Fh, 2Fh, FEh, 01h, C2h, F5h, 2Eh, CDh, 82h, 2Fh, 7Dh, 32h, F5h, A4h, C3h, 1Fh, 2Fh, FEh, 02h, C2h, 04h, 2Fh, CDh, C8h, 31h, 7Dh, 32h, F5h, A4h, C3h, 1Fh, 2Fh, FEh, 03h, C2h, 13h, 2Fh, CDh, 29h, 32h, 7Dh, 32h, F5h, A4h, C3h, 1Fh, 2Fh, FEh, 04h, C2h, 1Fh, 2Fh, CDh, 6Bh, 32h, 7Dh, 32h, F5h, A4h, C9h, CDh, F4h, 32h, CDh, FBh, 33h, 2Ah, 2Dh, A5h, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 3Dh, 2Fh, 21h, 01h, 00h, CDh, 4Eh, 7Bh, C9h, 3Ah, F6h, A4h, FEh, 00h, C2h, 66h, 2Fh, 21h, EFh, A4h, 23h, 23h, E5h, 23h, 23h, E5h, 21h, EFh, A4h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, 21h, 00h, 00h, C9h, 21h, EFh, A4h, 23h, 23h, E5h, 23h, 23h, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, 21h, 01h, 00h, C9h, CDh, 54h, 33h, 3Ah, FAh, A4h, FEh, 05h, C2h, B4h, 2Fh, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, 22h, 25h, A5h, CDh, B4h, 7Ah, 7Dh, 32h, F7h, A4h, E1h, 23h, 23h, E5h, 2Ah, 25h, A5h, 23h, 23h, D1h, CDh, BCh, 7Ah, CDh, C8h, 31h, 21h, 03h, 00h, C9h, FEh, 01h, C2h, 0Dh, 30h, CDh, C2h, 2Fh, CAh, FCh, 2Fh, C3h, E6h, 2Fh, 3Ah, EEh, A4h, CDh, AFh, 7Ah, E5h, 21h, 01h, 00h, D1h, CDh, D7h, 7Ah, E5h, 3Ah, EDh, A4h, CDh, AFh, 7Ah, E5h, 21h, 07h, 00h, D1h, CDh, F7h, 7Ah, D1h, CDh, D0h, 7Ah, 7Ch, B5h, C9h, CDh, 37h, 34h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, E5h, CDh, 6Eh, 75h, C1h, CDh, 1Ah, 35h, CDh, 4Ah, 75h, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, C3h, 90h, 31h, FEh, 02h, C2h, 40h, 30h, CDh, C2h, 2Fh, CAh, 2Eh, 30h, CDh, 37h, 34h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, E5h, CDh, 86h, 75h, C1h, CDh, 1Ah, 35h, CDh, 4Ah, 75h, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, 23h, 23h, D1h, CDh, BCh, 7Ah, C3h, 90h, 31h, FEh, 03h, CAh, 4Ah, 30h, FEh, 09h, C2h, 77h, 30h, CDh, C2h, 2Fh, CAh, 63h, 30h, CDh, 37h, 34h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, E5h, CDh, 96h, 75h, C1h, CDh, 4Ah, 75h, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, 11h, 07h, 00h, 19h, D1h, CDh, BCh, 7Ah, C3h, 90h, 31h, FEh, 07h, C2h, B7h, 30h, CDh, C2h, 2Fh, CAh, A5h, 30h, CDh, 37h, 34h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, 22h, 25h, A5h, CDh, B4h, 7Ah, D1h, 19h, 23h, E5h, CDh, 96h, 75h, C1h, CDh, 4Ah, 75h, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, 23h, 23h, D1h, CDh, BCh, 7Ah, C3h, 90h, 31h, FEh, 08h, C2h, FEh, 30h, CDh, C2h, 2Fh, CAh, EDh, 30h, CDh, 37h, 34h, 21h, 02h, 00h, E5h, 3Ah, EDh, A4h, CDh, AFh, 7Ah, E5h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, E5h, 21h, FFh, 00h, D1h, CDh, D0h, 7Ah, E5h, CDh, 75h, 54h, C1h, C1h, C1h, CDh, 4Ah, 75h, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, C3h, 90h, 31h, FEh, 04h, C2h, 90h, 31h, CDh, C2h, 2Fh, CAh, 1Fh, 31h, CDh, 37h, 34h, 3Ah, EDh, A4h, CDh, AFh, 7Ah, E5h, 21h, 09h, 00h, E5h, CDh, DEh, 74h, C1h, C1h, CDh, 94h, 74h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, E5h, 21h, FFh, 00h, D1h, CDh, D0h, 7Ah, 7Dh, 32h, F7h, A4h, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, 3Ah, F7h, A4h, CDh, AFh, 7Ah, 2Bh, 7Dh, 32h, F7h, A4h, 23h, 7Ch, B5h, CAh, 87h, 31h, CDh, C2h, 2Fh, CAh, 76h, 31h, 21h, EFh, A4h, 23h, 23h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, E5h, 21h, FFh, 00h, D1h, CDh, D0h, 7Ah, E5h, CDh, 3Fh, 76h, C1h, CDh, 65h, 75h, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, C3h, 44h, 31h, CDh, C2h, 2Fh, CAh, 90h, 31h, CDh, 4Ah, 75h, 21h, EFh, A4h, 23h, 23h, E5h, CDh, B4h, 7Ah, D1h, 13h, 13h, CDh, BCh, 7Ah, 3Ah, F6h, A4h, CDh, AFh, 7Ah, 2Bh, 7Dh, 32h, F6h, A4h, 7Ch, B5h, CAh, B6h, 31h, 21h, 01h, 00h, C9h, C3h, C7h, 31h, 21h, EFh, A4h, E5h, 23h, 23h, CDh, B4h, 7Ah, D1h, CDh, BCh, 7Ah, 21h, 00h, 00h, C9h, C9h, CDh, C2h, 2Fh, CAh, 02h, 32h, CDh, D4h, 31h, C3h, E5h, 31h, 3Ah, EDh, A4h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, E5h, CDh, DEh, 74h, C1h, C1h, C9h, 21h, 70h, 35h, E5h, CDh, 21h, 75h, C1h, 21h, EFh, A4h, E5h, 21h, 02h, 00h, 29h, D1h, 19h, CDh, B4h, 7Ah, E5h, CDh, 86h, 75h, C1h, CDh, 4Ah, 75h, 21h, EFh, A4h, 11h, 04h, 00h, 19h, E5h, CDh, B4h, 7Ah, 23h, 23h, D1h, CDh, BCh, 7Ah, 3Ah, F7h, A4h, CDh, AFh, 7Ah, E5h, 21h, 02h, 00h, D1h, CDh, 47h, 7Bh, 7Dh, 32h, F7h, A4h, 21h, 03h, 00h, C9h, CDh, C2h, 2Fh, CAh, 4Ch, 32h, CDh, D4h, 31h, 21h, 7Ah, 35h, E5h, CDh, 21h, 75h, C1h, 21h, EFh, A4h, 11h, 04h, 00h, 19h, CDh, B4h, 7Ah, E5h, CDh, 6Eh, 75h, C1h, CDh, 4Ah, 75h, 21h, EFh, A4h, 11h, 04h, 00h, 19h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, 3Ah, F7h, A4h, CDh, AFh, 7Ah, 2Bh, 7Dh, 32h, F7h, A4h, 21h, 04h, 00h, C9h, CDh, C2h, 2Fh, CAh, 8Eh, 32h, CDh, D4h, 31h, 21h, 84h, 35h, E5h, CDh, 21h, 75h, C1h, 21h, EFh, A4h, 11h, 04h, 00h, 19h, CDh, B4h, 7Ah, E5h, CDh, 6Eh, 75h, C1h, CDh, 4Ah, 75h, 21h, EFh, A4h, 11h, 04h, 00h, 19h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, 3Ah, F7h, A4h, CDh, AFh, 7Ah, 2Bh, 7Dh, 32h, F7h, A4h, 7Ch, B5h, CAh, B5h, 32h, 21h, 02h, 00h, C9h, C3h, F3h, 32h, 3Ah, F6h, A4h, CDh, AFh, 7Ah, 2Bh, 7Dh, 32h, F6h, A4h, 7Ch, B5h, CAh, DBh, 32h, 21h, EFh, A4h, 23h, 23h, E5h, 23h, 23h, CDh, B4h, 7Ah, D1h, CDh, BCh, 7Ah, 21h, 01h, 00h, C9h, C3h, F3h, 32h, 21h, EFh, A4h, E5h, 23h, 23h, E5h, 23h, 23h, CDh, B4h, 7Ah, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, 21h, 00h, 00h, C9h, C9h, 21h, EFh, A4h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, E5h, 21h, FFh, 00h, D1h, CDh, D0h, 7Ah, 22h, 2Dh, A5h, 2Ah, 2Dh, A5h, E5h, CDh, 7Ah, 33h, C1h, 7Dh, 32h, F6h, A4h, 21h, 47h, 22h, E5h, 2Ah, 2Dh, A5h, E5h, 21h, 01h, 00h, D1h, CDh, 40h, 7Bh, E5h, 2Ah, 2Dh, A5h, D1h, 19h, D1h, 19h, 22h, 25h, A5h, CDh, B4h, 7Ah, 22h, EAh, A4h, 21h, 9Ah, 24h, E5h, 2Ah, 25h, A5h, 23h, 23h, 22h, 25h, A5h, 22h, 27h, A5h, CDh, AEh, 7Ah, E5h, 21h, FFh, 00h, D1h, CDh, D0h, 7Ah, D1h, 19h, 22h, F8h, A4h, C9h, 2Ah, F8h, A4h, 23h, 22h, F8h, A4h, 2Bh, CDh, AEh, 7Ah, 7Dh, 32h, FAh, A4h, 2Ah, F8h, A4h, 23h, 22h, F8h, A4h, 2Bh, CDh, AEh, 7Ah, E5h, 21h, FFh, 00h, D1h, CDh, D0h, 7Ah, 22h, 2Bh, A5h, C9h, C5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 20h, 00h, D1h, CDh, F7h, 7Ah, 7Ch, B5h, CAh, 94h, 33h, 21h, 00h, 00h, C1h, C9h, 21h, 00h, 00h, 39h, E5h, 21h, 57h, 24h, E5h, 21h, 08h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 20h, 00h, D1h, CDh, 47h, 7Bh, E5h, 21h, 01h, 00h, D1h, CDh, 32h, 7Bh, E5h, 21h, FFh, 00h, D1h, CDh, D0h, 7Ah, D1h, 19h, CDh, AEh, 7Ah, D1h, CDh, BCh, 7Ah, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 01h, 00h, D1h, CDh, D0h, 7Ah, 7Ch, B5h, CAh, EAh, 33h, 21h, 00h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 04h, 00h, D1h, CDh, 32h, 7Bh, C1h, C9h, 21h, 00h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 0Fh, 00h, D1h, CDh, D0h, 7Ah, C1h, C9h, 3Ah, EEh, A4h, CDh, AFh, 7Ah, E5h, 21h, 01h, 00h, D1h, CDh, DDh, 7Ah, E5h, 3Ah, EDh, A4h, CDh, AFh, 7Ah, E5h, 21h, 07h, 00h, D1h, CDh, F1h, 7Ah, D1h, CDh, C2h, 7Ah, 7Ch, B5h, CAh, 22h, 34h, C9h, CDh, D4h, 31h, 2Ah, EAh, A4h, E5h, CDh, 21h, 75h, C1h, CDh, 98h, 7Ah, CDh, 65h, 75h, CDh, 4Ah, 75h, C9h, 3Ah, EDh, A4h, CDh, AFh, 7Ah, E5h, 21h, 07h, 00h, D1h, CDh, F1h, 7Ah, 7Ch, B5h, CAh, 4Bh, 34h, C9h, CDh, D4h, 31h, CDh, 65h, 75h, CDh, 65h, 75h, 21h, 48h, 25h, E5h, 2Ah, 2Bh, A5h, E5h, 21h, 02h, 00h, D1h, CDh, 40h, 7Bh, E5h, 2Ah, 2Bh, A5h, D1h, 19h, D1h, 19h, E5h, CDh, D1h, 75h, C1h, 21h, 8Eh, 35h, E5h, CDh, 21h, 75h, C1h, C9h, C5h, 21h, 00h, 00h, 39h, E5h, 21h, 0Dh, 00h, D1h, CDh, BCh, 7Ah, 21h, 00h, 00h, 39h, E5h, CDh, B4h, 7Ah, 2Bh, D1h, CDh, BCh, 7Ah, 7Ch, B5h, CAh, BEh, 34h, 21h, 06h, 00h, 39h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, 2Bh, E5h, 21h, 06h, 00h, 39h, E5h, CDh, B4h, 7Ah, 23h, D1h, CDh, BCh, 7Ah, 2Bh, CDh, AEh, 7Ah, D1h, 7Dh, 12h, C3h, 86h, 34h, C1h, C9h, 21h, 07h, 00h, E5h, 21h, 09h, 00h, E5h, CDh, DEh, 74h, C1h, C1h, CDh, 73h, 7Ah, 21h, 92h, 35h, E5h, CDh, 21h, 75h, C1h, CDh, 8Fh, 7Ah, 21h, 07h, 00h, E5h, 21h, 0Ah, 00h, E5h, CDh, DEh, 74h, C1h, C1h, CDh, BEh, 76h, C9h, C5h, 21h, 00h, 00h, 39h, E5h, 21h, 05h, 00h, D1h, CDh, BCh, 7Ah, 21h, 00h, 00h, 39h, E5h, CDh, B4h, 7Ah, 2Bh, D1h, CDh, BCh, 7Ah, 7Ch, B5h, CAh, 18h, 35h, 21h, 97h, 35h, CDh, 96h, 00h, B7h, C2h, 0Eh, 35h, C3h, F9h, 34h, C1h, C9h, 21h, 48h, 25h, E5h, 2Ah, 2Bh, A5h, E5h, 21h, 02h, 00h, D1h, CDh, 40h, 7Bh, E5h, 2Ah, 2Bh, A5h, D1h, 19h, E5h, 21h, 04h, 00h, D1h, 19h, D1h, 19h, CDh, AEh, 7Ah, 7Ch, B5h, CAh, 6Fh, 35h, CDh, 65h, 75h, 21h, 60h, 26h, E5h, 21h, 48h, 25h, E5h, 2Ah, 2Bh, A5h, E5h, 21h, 02h, 00h, D1h, CDh, 40h, 7Bh, E5h, 2Ah, 2Bh, A5h, D1h, 19h, E5h, 21h, 04h, 00h, D1h, 19h, D1h, 19h, CDh, AEh, 7Ah, 26h, 00h, D1h, 19h, E5h, CDh, 21h, 75h, C1h, C9h, 20h, 20h, 43h, 59h, 4Ch, 20h, 20h, 3Dh, 20h, 00h, 20h, 20h, 48h, 45h, 41h, 44h, 20h, 3Dh, 20h, 00h, 20h, 20h, 53h, 45h, 43h, 54h, 20h, 3Dh, 20h, 00h, 20h, 3Dh, 20h, 00h, 45h, 58h, 49h, 54h, 00h, F1h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 3Bh, C5h, C5h, C5h, C5h, 21h, 01h, 00h, 7Dh, 32h, 2Fh, A5h, 21h, 0Bh, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, C3h, 2Ch, C1h, CDh, 7Ah, 3Ch, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, DFh, 35h, EBh, 21h, 09h, 00h, 39h, F9h, EBh, C9h, CDh, 32h, 2Dh, 21h, 00h, 00h, 22h, 1Fh, A5h, 22h, 21h, A5h, 21h, 00h, 00h, 22h, 23h, A5h, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, E5h, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, D7h, 7Ah, D1h, CDh, C2h, 7Ah, 7Ch, B5h, CAh, 2Eh, 36h, CDh, 7Bh, 56h, 21h, 08h, 00h, 39h, E5h, CDh, DDh, 50h, D1h, 7Dh, 12h, CDh, 94h, 56h, C3h, 76h, 38h, 2Ah, 10h, A5h, CDh, AEh, 7Ah, 7Dh, 32h, 12h, A5h, 2Ah, 10h, A5h, E5h, 21h, 01h, 00h, D1h, 19h, CDh, AEh, 7Ah, 22h, 2Bh, A5h, 3Ah, 12h, A5h, CDh, AFh, 7Ah, E5h, 21h, 04h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 45h, 37h, 21h, 04h, 00h, 39h, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, 22h, 27h, A5h, CDh, AEh, 7Ah, D1h, 19h, E5h, 21h, 01h, 00h, D1h, 19h, D1h, CDh, BCh, 7Ah, 21h, 02h, 00h, 39h, E5h, 2Ah, 47h, A6h, E5h, 21h, 08h, 00h, 39h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, D1h, CDh, BCh, 7Ah, 21h, 06h, 00h, 39h, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, AFh, 51h, C1h, C1h, D1h, CDh, BCh, 7Ah, 21h, 08h, 00h, 39h, E5h, 2Ah, 21h, A5h, E5h, 21h, 09h, 00h, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, E5h, CDh, FDh, 3Fh, C1h, C1h, C1h, D1h, 7Dh, 12h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, 22h, 27h, A5h, CDh, AEh, 7Ah, D1h, 19h, E5h, 21h, 01h, 00h, D1h, 19h, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, 50h, 52h, C1h, C1h, C1h, 21h, 00h, 00h, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, 22h, 27h, A5h, CDh, AEh, 7Ah, D1h, 19h, E5h, 21h, 01h, 00h, D1h, 19h, E5h, 21h, 08h, 00h, 39h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, E5h, CDh, FCh, 3Dh, C1h, C1h, C3h, 76h, 38h, 3Ah, 12h, A5h, CDh, AFh, 7Ah, E5h, 21h, 05h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 8Ch, 37h, 21h, 08h, 00h, 39h, E5h, 2Ah, 21h, A5h, E5h, 21h, 09h, 00h, E5h, 21h, 02h, 00h, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, E5h, 21h, 02h, 00h, D1h, 19h, E5h, 21h, 00h, 00h, E5h, CDh, 3Ah, 42h, EBh, 21h, 0Ah, 00h, 39h, F9h, EBh, D1h, 7Dh, 12h, C3h, 76h, 38h, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 02h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, D2h, 37h, 21h, 08h, 00h, 39h, E5h, 2Ah, 21h, A5h, E5h, 21h, 09h, 00h, E5h, 21h, 02h, 00h, E5h, 21h, 07h, A5h, E5h, 21h, 02h, 00h, 29h, D1h, 19h, CDh, B4h, 7Ah, E5h, 21h, 00h, 00h, E5h, CDh, 3Ah, 42h, EBh, 21h, 0Ah, 00h, 39h, F9h, EBh, D1h, 7Dh, 12h, C3h, 76h, 38h, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 03h, 00h, D1h, CDh, D7h, 7Ah, E5h, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 04h, 00h, D1h, CDh, D7h, 7Ah, D1h, CDh, C2h, 7Ah, 7Ch, B5h, CAh, 2Bh, 38h, 21h, 08h, 00h, 39h, E5h, 2Ah, 21h, A5h, E5h, 21h, 09h, 00h, E5h, 21h, 01h, 00h, E5h, 21h, 07h, A5h, E5h, 21h, 02h, 00h, 29h, D1h, 19h, CDh, B4h, 7Ah, E5h, 21h, 00h, 00h, E5h, CDh, 3Ah, 42h, EBh, 21h, 0Ah, 00h, 39h, F9h, EBh, D1h, 7Dh, 12h, C3h, 76h, 38h, 21h, 08h, 00h, 39h, E5h, 2Ah, 21h, A5h, E5h, 21h, 09h, 00h, E5h, 3Ah, 12h, A5h, CDh, AFh, 7Ah, E5h, 21h, 07h, A5h, 23h, 23h, CDh, B4h, 7Ah, E5h, 21h, 48h, 25h, E5h, 2Ah, 2Bh, A5h, E5h, 21h, 02h, 00h, D1h, CDh, 40h, 7Bh, E5h, 2Ah, 2Bh, A5h, D1h, 19h, E5h, 21h, 04h, 00h, D1h, 19h, D1h, 19h, CDh, AEh, 7Ah, E5h, CDh, 3Ah, 42h, EBh, 21h, 0Ah, 00h, 39h, F9h, EBh, D1h, 7Dh, 12h, 21h, 08h, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 0Bh, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 90h, 38h, CDh, 95h, 3Dh, C3h, 6Fh, 3Ch, 21h, 08h, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 0Ah, 00h, D1h, CDh, D7h, 7Ah, E5h, 21h, 0Ah, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 0Dh, 00h, D1h, CDh, D7h, 7Ah, D1h, CDh, C2h, 7Ah, E5h, 21h, 0Ah, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, D1h, CDh, C2h, 7Ah, 7Ch, B5h, CAh, D2h, 38h, CDh, 34h, 3Dh, C3h, 6Fh, 3Ch, 21h, 08h, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 24h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, EFh, 38h, CDh, 81h, 74h, C3h, 72h, 3Ch, C3h, 6Fh, 3Ch, 21h, 08h, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 22h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 13h, 3Ah, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, DDh, 7Ah, E5h, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, DDh, 7Ah, D1h, CDh, D0h, 7Ah, 7Ch, B5h, CAh, 32h, 39h, CDh, 34h, 3Dh, C3h, 10h, 3Ah, 21h, 07h, A5h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A0h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 50h, 39h, CDh, 34h, 3Dh, C3h, 10h, 3Ah, 21h, 02h, 00h, 39h, E5h, 2Ah, 47h, A6h, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, D1h, CDh, BCh, 7Ah, 21h, 06h, 00h, 39h, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, AFh, 51h, C1h, C1h, D1h, CDh, BCh, 7Ah, 21h, 00h, 00h, 39h, E5h, 21h, F7h, 62h, E5h, 21h, 0Ah, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 21h, 00h, 00h, E5h, CDh, B2h, 58h, EBh, 21h, 08h, 00h, 39h, F9h, EBh, D1h, CDh, BCh, 7Ah, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, D1h, 19h, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, 50h, 52h, C1h, C1h, C1h, E1h, E5h, E5h, 21h, 00h, 00h, D1h, CDh, DDh, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A1h, 00h, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, E5h, C1h, E1h, E5h, C5h, E5h, CDh, FCh, 3Dh, C1h, C1h, CDh, 32h, 2Dh, C3h, 6Fh, 3Ch, 21h, 08h, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 23h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 52h, 3Ch, 21h, 07h, A5h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 45h, 3Ah, CDh, A1h, 7Ah, C3h, 4Fh, 3Ch, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, DDh, 7Ah, 7Ch, B5h, CAh, 5Eh, 3Ah, CDh, 34h, 3Dh, C3h, 4Fh, 3Ch, 21h, 07h, A5h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A0h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 7Ch, 3Ah, CDh, 34h, 3Dh, C3h, 4Fh, 3Ch, CDh, 02h, 56h, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 4Fh, 3Ch, 21h, 07h, A5h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A1h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, E0h, 3Bh, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 21h, 01h, 00h, D1h, 19h, E5h, 21h, 00h, 00h, E5h, CDh, D7h, 4Ch, C1h, C1h, 21h, EFh, A4h, E5h, 21h, EFh, A4h, 23h, 23h, E5h, 21h, EFh, A4h, E5h, 21h, 02h, 00h, 29h, D1h, 19h, E5h, 2Ah, E0h, A4h, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, 21h, 00h, 00h, 7Dh, 32h, F5h, A4h, 21h, 00h, 00h, 7Dh, 32h, EEh, A4h, 3Ah, F5h, A4h, CDh, AFh, 7Ah, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, DDh, 7Ah, 7Ch, B5h, CAh, E0h, 3Bh, 3Ah, F5h, A4h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, DAh, 3Bh, 21h, EFh, A4h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A2h, 00h, D1h, CDh, D7h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 04h, 00h, D1h, 19h, 22h, 25h, A5h, CDh, B4h, 7Ah, D1h, 19h, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, 7Ch, B5h, CAh, 79h, 3Bh, 2Ah, 25h, A5h, E5h, 2Ah, E2h, A4h, E5h, 21h, 08h, 00h, D1h, CDh, 47h, 7Bh, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, D1h, CDh, BCh, 7Ah, C3h, DAh, 3Bh, 21h, EFh, A4h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A4h, 00h, D1h, CDh, D7h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 03h, 00h, D1h, 19h, 22h, 25h, A5h, CDh, B4h, 7Ah, D1h, 19h, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, 7Ch, B5h, CAh, DAh, 3Bh, 2Ah, 25h, A5h, E5h, 2Ah, E2h, A4h, E5h, 21h, 08h, 00h, D1h, CDh, 47h, 7Bh, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, D1h, CDh, BCh, 7Ah, CDh, D4h, 2Eh, C3h, ECh, 3Ah, 21h, 13h, A5h, E5h, 21h, 07h, A5h, E5h, CDh, 79h, 34h, C1h, C1h, 21h, 13h, A5h, E5h, CDh, FBh, 2Dh, C1h, 3Ah, 19h, A5h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 0Bh, 3Ch, C3h, 0Eh, 3Ch, C3h, EDh, 3Bh, 21h, 13h, A5h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 2Ah, 47h, A6h, E5h, 21h, 13h, A5h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, E5h, CDh, 50h, 52h, C1h, C1h, C1h, 21h, 00h, 00h, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 21h, 13h, A5h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, E5h, CDh, FCh, 3Dh, C1h, C1h, CDh, 32h, 2Dh, C3h, 6Fh, 3Ch, 21h, 08h, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 21h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 6Ch, 3Ch, CDh, 34h, 3Dh, C3h, 6Fh, 3Ch, CDh, A1h, 7Ah, C3h, F1h, 35h, EBh, 21h, 09h, 00h, 39h, F9h, EBh, C9h, 21h, FFh, BFh, 22h, 49h, A6h, 21h, 3Fh, 22h, E5h, 2Ah, E2h, A4h, E5h, 21h, 08h, 00h, D1h, CDh, 47h, 7Bh, E5h, CDh, D7h, 4Ch, C1h, C1h, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, ACh, 3Ch, 21h, 01h, 00h, CDh, 4Eh, 7Bh, C9h, 3Ah, F5h, A4h, CDh, AFh, 7Ah, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, DDh, 7Ah, 7Ch, B5h, CAh, 23h, 3Dh, 3Ah, F5h, A4h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A1h, 00h, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, 7Ch, B5h, CAh, 1Dh, 3Dh, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 01h, 00h, D1h, 19h, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, CDh, D7h, 4Ch, C1h, C1h, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 1Dh, 3Dh, 21h, 01h, 00h, CDh, 4Eh, 7Bh, C9h, CDh, D4h, 2Eh, C3h, ACh, 3Ch, 21h, EFh, A4h, E5h, 21h, FBh, A4h, E5h, CDh, 79h, 34h, C1h, C1h, 21h, 00h, 00h, C9h, 21h, 07h, A5h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 50h, 3Dh, CDh, A1h, 7Ah, C9h, 2Ah, 21h, A5h, E5h, 21h, 08h, 00h, E5h, 21h, 02h, 00h, D1h, CDh, 47h, 7Bh, D1h, CDh, F1h, 7Ah, 7Ch, B5h, CAh, 72h, 3Dh, CDh, 9Dh, 2Dh, 2Ah, 21h, A5h, 2Bh, 22h, 21h, A5h, 21h, 07h, A5h, E5h, CDh, FBh, 2Dh, C1h, 2Ah, 21h, A5h, 23h, 22h, 21h, A5h, 21h, 00h, 00h, 22h, 1Fh, A5h, 2Ah, 21h, A5h, E5h, 2Ah, 1Fh, A5h, E5h, CDh, DEh, 74h, C1h, C1h, C9h, 3Ah, 0Dh, A5h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 2Ah, E0h, A4h, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, 7Ch, B5h, CAh, BFh, 3Dh, CDh, A1h, 7Ah, C9h, 2Ah, 21h, A5h, E5h, 21h, 00h, 00h, D1h, CDh, EAh, 7Ah, 7Ch, B5h, CAh, D9h, 3Dh, CDh, 6Bh, 2Dh, 2Ah, 21h, A5h, 23h, 22h, 21h, A5h, 21h, 07h, A5h, E5h, CDh, 28h, 2Eh, C1h, 2Ah, 21h, A5h, 2Bh, 22h, 21h, A5h, 21h, 00h, 00h, 22h, 1Fh, A5h, 2Ah, 21h, A5h, E5h, 2Ah, 1Fh, A5h, E5h, CDh, DEh, 74h, C1h, C1h, C9h, 21h, 00h, 00h, 7Dh, 32h, EEh, A4h, 21h, 00h, 00h, 7Dh, 32h, F5h, A4h, 21h, EFh, A4h, E5h, 21h, EFh, A4h, 23h, 23h, E5h, 21h, EFh, A4h, E5h, 21h, 02h, 00h, 29h, D1h, 19h, E5h, 2Ah, E0h, A4h, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, D1h, CDh, BCh, 7Ah, 3Ah, F5h, A4h, CDh, AFh, 7Ah, E5h, 21h, 01h, 00h, CDh, 4Eh, 7Bh, D1h, CDh, DDh, 7Ah, 7Ch, B5h, CAh, C4h, 3Eh, 3Ah, F5h, A4h, CDh, AFh, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, BEh, 3Eh, 21h, EFh, A4h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A2h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, 8Ch, 3Eh, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 04h, 00h, D1h, 19h, E5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, DAh, 3Eh, C1h, C1h, C3h, BEh, 3Eh, 21h, EFh, A4h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, 26h, 00h, E5h, 21h, A4h, 00h, D1h, CDh, D7h, 7Ah, 7Ch, B5h, CAh, BEh, 3Eh, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 03h, 00h, D1h, 19h, E5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, DAh, 3Eh, C1h, C1h, CDh, D4h, 2Eh, C3h, 2Eh, 3Eh, 21h, 04h, 00h, 39h, CDh, AEh, 7Ah, E5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, CDh, 5Ah, 4Eh, C1h, C1h, C9h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, F1h, 7Ah, 7Ch, B5h, CAh, 77h, 3Fh, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, D1h, CDh, F7h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 0Ah, 00h, 39h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, D1h, 19h, D1h, CDh, EAh, 7Ah, D1h, CDh, D0h, 7Ah, E5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, F1h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, D1h, CDh, C2h, 7Ah, 7Ch, B5h, CAh, 74h, 3Fh, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, D1h, 19h, D1h, CDh, BCh, 7Ah, C3h, FCh, 3Fh, 21h, EFh, A4h, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, D1h, 19h, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, D1h, CDh, F7h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, D1h, CDh, F7h, 7Ah, D1h, CDh, D0h, 7Ah, E5h, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 00h, 00h, D1h, CDh, F7h, 7Ah, E5h, 21h, 07h, A5h, CDh, B4h, 7Ah, E5h, 21h, EFh, A4h, CDh, B4h, 7Ah, D1h, CDh, D7h, 7Ah, D1h, CDh, D0h, 7Ah, D1h, CDh, C2h, 7Ah, 7Ch, B5h, CAh, FCh, 3Fh, 21h, 04h, 00h, 39h, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, CDh, B4h, 7Ah, E5h, 21h, 06h, 00h, 39h, CDh, B4h, 7Ah, D1h, CDh, 47h, 7Bh, D1h, CDh, BCh, 7Ah, C9h, 3Bh, C5h, C5h    ; ASCII: .........&.5,.5,.5,.5,.5,.5,.5,.5,.h'..'..(..(.5(.5,.5,.5,.5,..(.H(.Z(.k(.5,.5,.5,.{'.5,.5,.5,.5,.5,.5,..'..'..'`z(..(..(.0'd.'..'J.(.S'h.'..'j$'<.(r.(r@).U).h)(5,d|)`.)..)..)..)..)..)..)r?'D+)*.,.&,..*..*.&*4;*4O*,`*4l*0}*45,..*4.*4.*4.*4.*4.*4.*4.'..+..+.*+.9+.5,.5,.I+.5,.5,.5,.5,.5,.5,.5,.5,.\+.k+.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,..+45,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,..+..+6.+.5,..+:.+&5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,..+~.,F.,V5,..,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,.5,......AB"...!.!.."........C.`....3...............4...................................................................................(.).......*...............!.....#.$.....*.6.7.....4.5.........................!........./.0...%.........3....****.CNT..ITLV.HEAD.CYL..TIME.RATE.STPW.VAL..PF...ITRS.ON...OFF..INCR.SECT.****.PFH.#DATA.1TRK.FULL.BYTS.SCPTFLIMT.****.SW.#.NAME.LABL.MXCY.MXHD.PCMP.SIZE.COND.VAL..GOTO.****.ERLY,LATE,PFH.t****.****.IPF.,OPF.,PFH..****.****.****.****.PASS.RTRY.PATN.****.CODE.EXPNRMANTePFH.4PFL.4.(x.5.s).(x.1.ms).(x10.us).(x1.us).(x.1.us).(x1.ns).(X.1.rpm).(bytes).(sctrs/trk).(base.10.exponent).(mantissa.0-9).(mismatches).(5.or.8).(1=128,2=256,3=512).End.Surface.Scan.Test.Spin.Speed.Test.Margin.Test.Step.Rate.Test.Write.To.Read.Delay.Seek.Completion.Time.Home.To.Cylinder.0.Read.All.Id's.Read.A.Sector.Read.&.Compare.WR.BF.Access.Time.Test.Format.Entire.Disk.Set.Read.Retry.Limit.Set.Margin.Window.Display.Read.Buffer.Display.Write.Buffer.Display.Test.Summary.Display.Defect.Map.Write.all.Sectors.Read.all.Sectors.Hardware.Recal.Set.Min.Cylinder.#.Set.Min.Head.#.Set.Min.Sector.#.Set.Seek.Retry.Limit.Set.Randm.Data/WR.BF.Set.Seek.Err.P/F.Lim.Set.Soft.Err.P/F.Lim.Set.Opcode.Retry.Lim.Set.Hard.Err.P/F.Lim.Hardware.Recalibrate.Set.Maximum.Cylinder.Set.Maximum.Head.#.Set.Abort.Error.Cnt.Set.Precomp.Offset.Set.RWC.Start.Cyl.Set.Precmp.Start.cyl.Set.Step.Mode.Value.Seek.To.A.Cylinder.Write.A.Cylinder.Write.Cyl/Randm.Data.Write.A.Track.Write.Trk/Randm.Data.Seek.Incrmt.Alt/Zero.Seek.Incrmt.Alt/Max.Set.Switch.Value.Random.Read.Seek.Timing.Test.Random.Write.Seek.Incrmnt.Forward.Seek.Incrmnt.Reverse.Random.Seek.Maximum.Seek.Test.Sequential.Seek.Test.Oscillating.Seek.Tst.Random.Read.Read.A.Cylinder.Format.A.Cylinder.Format.A.Track.Set.User.Format.Format.w/bad.block.Write.A.Sector.Write.Sect/Rndm.Data.Read.A.Track.Write.A.Sector/Data.Write.A.Track/Data.Write.A.Cylindr/Data.Set.Write.Data.In.WB.Set.Defect.Map.****QTL.Program*****.Label.If/Goto.Repeat.Set.Step.Pulse.Set.End.Sector.Invalid.QTL.Opcode.;!..9..z...,..2-!..9...4.}.!..9..z}...v,.k-..,....,..-..,....,..,....,!".>....,!..9..z...,..2-!........,..-|...,..4..,.X,3.!..9..z"..!...##.##.*...!...."%...z...z...z...z"..*%.##"%...z"..!..}2..!...!....y4..!...!....y4..!...!....y4.....t!...!....y4..!..}2..:....z.!.....z|..j-:.....j-....I-.!....z.*.....{|...-:......-....-..z..-!....(...2-.!....z.!....z...z.!..##..z.!..##..z...z...z.:....z.!...N{...z...z|...-..z!....-!.....-..2-!...!...!..9..z..y4..!..}2.....!..9..z.!....y4...!...##.##.*.....z...z...z!..}2..!..}2..!....z.!..9..z..z...z.!..##..z.!..9..z##..z...z...z.!...!..)....z.!..9..z.!..)....z...z...z|....!...!....y4......O.!..9..z.!....y4...:........./}2..../......./}2..../..../..1}2..../..../.)2}2..../..../.k2}2.....2..3*-..!.....z|..=/!...N{.:.....f/!..##.##.!.....z#...z...z...z!...!..##.##.!....z#...z...z!....T3:....../!..##...z"%...z}2...##.*%.##...z..1!.......0../../../:....z.!.....z.:....z.!.....z...z|...74!..##..z..nu...5.Ju!..##...z#...z..1...@0../..0.74!..##..z...u...5.Ju!..##...z##...z..1...J0...w0../.c0.74!..##..z...u..Ju!..##...z.......z..1....0../..0.74!....z.!..##..z"%...z..#...u..Ju!..##...z##...z..1....0../..0.74!...:....z.!..##..z..z.!.....z..uT....Ju!..##...z#...z..1....1../..1.74:....z.!.....t....t!..##..z..z.!.....z}2..!..##...z#...z:....z+}2..#|...1../.v1!..##..z..z.!.....z..?v..eu!..##...z#...z.D1../..1.Ju!..##...z.....z:....z+}2..|...1!.....1!...##..z...z!....../..2..1..1:....z.!.....t...!p5..!u.!...!..)....z...u..Ju!.........z##...z:....z.!....G{}2..!...../.L2..1!z5..!u.!........z..nu..Ju!.........z#...z:....z+}2..!...../..2..1!.5..!u.!........z..nu..Ju!.........z#...z:....z+}2..|...2!.....2:....z+}2..|...2!..##.##..z...z!.....2!...##.##..z...z...z!....!....z..z.!.....z"-.*-...z3.}2..!G".*-..!....@{.*-....."%...z"..!.$.*%.##"%."'...z.!.....z.."...*..#"..+..z}2..*..#"..+..z.!.....z"+...!..9..z.!.....z|...3!....!..9.!W$.!..9..z.!....G{.!....2{.!.....z....z...z!..9..z.!.....z|...3!..9..z.!....2{..!..9..z.!.....z..:....z.!.....z.:....z.!.....z...z|.."4...1*....!u...z.eu.Ju.:....z.!.....z|..K4...1.eu.eu!H%.*+..!....@{.*+........u.!.5..!u...!..9.!.....z!..9...z+...z|...4!..9...z#...z+.!..9...z#...z+..z.}...4..!...!.....t...sz!.5..!u...z!...!.....t....v..!..9.!.....z!..9...z+...z|...5!.5......5..4..!H%.*+..!....@{.*+....!........z|..o5.eu!`&.!H%.*+..!....@{.*+....!........z&.....!u....CYL..=....HEAD.=....SECT.=...=..EXIT......................;....!..}2/.!..9..z...,..z<.!...N{...z|...5.!..9....2-!..".."!.!.."#.:....z.!.....z.:....z.!...N{...z...z|...6.{V!..9...P.}...V.v8*....z}2..*...!......z"+.:....z.!.....z|..E7!..9.!..##..z.!..##..z"'...z...!.......z!..9.*G..!..9..z..G{...z!..9.!..9..z.!..9..z...Q.....z!..9.*!..!...!..##..z...?....}.!..9..z.!..##..z.!..##..z"'...z...!.....!..9..z..PR...!...!..##..z.!..##..z"'...z...!.....!..9..z..G{...=...v8:....z.!.....z|...7!..9.*!..!...!...!..##..z.!.....!....:B.!..9...}..v8:....z.!.....z|...7!..9.*!..!...!...!...!..)....z.!....:B.!..9...}..v8:....z.!.....z.:....z.!.....z...z|..+8!..9.*!..!...!...!...!..)....z.!....:B.!..9...}..v8!..9.*!..!...:....z.!..##..z.!H%.*+..!....@{.*+....!........z..:B.!..9...}.!..9..z.!.....z|...8..=.o<!..9..z.!.....z.!..9..z.!.....z...z.!..9..z.!.....z...z|...8.4=.o<!..9..z.!$....z|...8..t.r<.o<!..9..z.!"....z|...::....z.!.....z.:....z.!...N{...z...z|..29.4=..:!....z..z&..!.....z|..P9.4=..:!..9.*G..!....z..G{...z!..9.!....z.!..9..z...Q.....z!..9.!.b.!..9..z.!....z..G{.!....z.!.....X.!..9.....z!..9..z.!....z.!..9..z...!..9..z..PR......!.....z.!....z..z&..!.....z...z........=...2-.o<!..9..z.!#....z|..R<!....z..z&..!.....z|..E:..z.O<:....z.!.....z|..^:.4=.O<!....z..z&..!.....z|..|:.4=.O<..V.!.....z|..O<!....z..z&..!.....z|...;!....z.!.....!.....L..!...!..##.!...!..)...*.....z...z...z!..}2..!..}2..:....z.!...N{...z|...;:....z.!.....z|...;!....z..z&..!.....z.!....z.!....z.!...."%...z...!....z...z...z|..y;*%..*...!....G{.!....z..G{...z..;!....z..z&..!.....z.!....z.!....z.!...."%...z...!....z...z...z|...;*%..*...!....G{.!....z..G{...z.....:!...!....y4..!.....-.:....z.!.....z|...<..<..;!....z.!....z.*G..!....z..G{..PR...!...!....z.!....z..G{...=...2-.o<!..9..z.!!....z|..l<.4=.o<..z..5.!..9...!.."I.!?".*...!....G{...L...!...N{...z|...<!...N{.:....z.!...N{...z|..#=:....z.!.....z.!....z..z&..!.....z...z|...=!....z.!.....!....z...L...!...N{...z|...=!...N{......<!...!....y4..!...!....z..z&..!.....z|..P=..z.*!..!...!....G{...z|..r=..-*!.+"!.!.....-.*!.#"!.!.."..*!..*.....t...:....z.!.....z.!....z.*.....z...z|...=..z.*!..!.....z|...=.k-*!.#"!.!....(..*!.+"!.!.."..*!..*.....t...!..}2..!..}2..!...!..##.!...!..)...*.....z...z...z:....z.!...N{...z|...>:....z.!.....z|...>!....z..z&..!.....z|...>!....z.!.....!..9..z...>....>!....z..z&..!.....z|...>!....z.!.....!..9..z...>.......>!..9..z.!..9..z..ZN...!..9..z..z.!.....z|..w?!....z.!....z...z.!....z.!....z.!..9..z..z.....z...z.!..9..z.!.....z.!....z.!....z...z...z...z|..t?!..9..z.!..9..z..z.!..9..z.....z..?!....z.!..9..z..z...!....z...z.!....z.!....z...z...z.!..9..z.!.....z.!....z.!....z...z...z...z|...?!..9..z.!..9..z..z.!..9..z..G{...z.;..
