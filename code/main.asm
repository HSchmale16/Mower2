; Lawn Mower Drone Assembly Program
; Author: Henry J Schmale
; Date: June 1, 2015

main:	ORG	0000H		; Program Entry Point
	JMP	setup		; Interupt Overwriting Protection

setup:	ORG	002CH
	SETB	EA
	SETB	IE.0		; Enable Extern0 Interupt
	CLR	P3.5
	CLR	P3.7
	JMP	evntlp		; Go straight to the event loop
; Define Subroutines here


evntlp:				; Event Loop
	JMP	evntlp
	END

ext0in:	ORG	0003H		; External Interupt 0
	JB	P3.5,flip0
	SETB	P3.5
	SETB	P3.7
	JMP	RETIJ
flip0:	CLR	P3.5
	CLR	P3.7
retij:	RETI

ext1in:	ORG	0013H		; External Interupt 1
	RETI

tim0in:	ORG	000BH		; Timer 0 Interupt
	RETI

tim1in:	ORG	001Bh		; Timer 1 Interupt
	RETI
