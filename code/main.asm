; Lawn Mower Drone Assembly Program
; Author: Henry J Schmale
; Date: June 1, 2015

LMOTOR1	EQU	P3.5
LMOTOR2	EQU	P3.7		; Makes Left Motor go in reverse
RMOTOR1	EQU	P1.2
RMOTOR2	EQU	P1.3		; Makes Right Motor go in reverse
BLADEON	EQU	P1.4		; If Set the blades are spinning
TRIGPIN	EQU	P1.0		; Trigger Range Finder

main:	ORG	0000H		; Program Entry Point
	JMP	setup		; Interupt Overwriting Protection

setup:	ORG	002CH		; executes exactly once
	SETB	EA
	SETB	PX1
	JMP	evntlp		; Go straight to the event loop
; Define Subroutines below

; Wait for timer0 to overflow R0 times
; R0 is set to 0 at the end of this sub
wait:	SETB	TR0
	CLR	TF0
	JNB	TF0,$		; Busy Loop until timer0 overflows
	DJNZ	R0,wait		; if my waiting thingy is not 0 repeat
	CLR	TR0
	CLR	TF0
myret:	RET

revrnd:				; Reverse and turn around
	CLR	LMOTOR1
	CLR	RMOTOR1
	SETB	LMOTOR2
	SETB	RMOTOR2
	MOV	R0, #0FH
	LCALL	wait
	CLR	LMOTOR2
	CLR	RMOTOR2
	SETB	LMOTOR1
	SETB	RMOTOR1
	RET

; Range Finds using external interupt 1
; Requires access to timer1.
; Returns results via R1 in meters
rngfnd:
	MOV	TH1,#0h		; Zero Timer1
	MOV	TL1,#0h
	SETB	TRIGPIN		; Trigger the range finder
	SETB	TR1
	JNB	TF1,$
	RET

evntlp:				; Program Event Loop
	CALL	rngfnd
	CALL	revrnd
	JMP	evntlp
	END

; Interupts are defined below
ext0:	ORG	0003H		; External Interupt 0
	RETI

ext1:	ORG	0013H		; External Interupt 1
	CLR	TR1
	RETI

time0:	ORG	000BH		; Timer Interupt 0
	RETI

time1:	ORG	001BH		; Timer Interupt 1
	CLR	TR1
	SETB	TF1
	RETI