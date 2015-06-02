; Lawn Mower Drone Assembly Program
; Author: Henry J Schmale
; Date: June 1, 2015

MAIN_DRIVE	EQU	P3.7	; Pin Goes High to reverse Motor

main:	ORG	0000H		; Program Entry Point
	JMP	setup		; Interupt Overwriting Protection

setup:	ORG	002CH
	SETB	EA
	SETB	IE.0		; Enable Extern0 Interupt

evntlp:				; Event Loop
	JMP	evntlp
	END

ext0in:	ORG	0003H		; External Interupt 0
	RETI

ext0in:	ORG	0013H		; External Interupt 1
	RETI

tim0in:	ORG	000BH		; Timer 0 Interupt
	RETI

tim1in:	ORG	001Bh		; Timer 1 Interupt
	RETI
