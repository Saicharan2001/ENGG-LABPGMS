	AREA PROG5,CODE,READONLY
ENTRY
	MOV R0,#0
	MOV R1,#0
	LDR R2,=0xFD	;MOV R2,#0xFD
	MOV R5,#0x40000000
LOOP
	LSRS R2,#1
	ADDCS R1,R1,#1
	ADDCC R0,R0,#1
	BNE LOOP
	STR R1,[R5]
	STR R0,[R5,#4]
GO  B GO
	END