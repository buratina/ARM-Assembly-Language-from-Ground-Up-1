;Example 1. P = Q + R + S
;let Q = 2, R = 4, S = 5 and assume r1 = Q, r2 = R, r3 = S. 
;we will put the data in memory in
;the form of constants before the program runs.

;Here we use the instruction MOV that copies a value into a register. The value may be the contents of another register or
;a literal. The literal is denoted by the # symbol. We can write, for example, MOV r7,r0, MOV r1,#25 or
;MOV r5,#Time

;@note: Tick "Us MicroLIB" in terget options to enable a more
;intrusive debuggging
;Explain from ARM_PPT4

Q		EQU		2
R		EQU		4
S		EQU		5

	
		AREA	SimpleAdd, CODE, READONLY
		EXPORT  __main


__main		
		MOV		R1,#Q
		MOV     R2,#R
		MOV     R3,#S
		ADD     R0,R1,R2
		ADD     R0,R0,R3
Stop    B	    Stop
		END

