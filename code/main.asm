; Lawn Mower Drone Assembly Program
; Author: Henry J Schmale
; Date: June 1, 2015

LMOTOR1	EQU	P3.5
LMOTOR2 EQU	P3.7		; Makes Left Motor go in reverse
RMOTOR1 EQU	P1.2
RMOTOR2 EQU	P1.3		; Makes Right Motor go in reverse
BLADEON EQU	P1.4

main:	ORG	0000H		; Program Entry Point
	JMP	setup		; Interupt Overwriting Protection

setup:	ORG	002CH		; executes exactly once
	SETB	EA
	JMP	evntlp		; Go straight to the event loop
; Define Subroutines below
swait:				; A very short wait ~5secs
	SETB	00h
	CLR	TR0		; Shutoff the timer
	MOV	TL0,#00h	; Reset Timer0
	MOV	TH0,#00h
	SETB	ET0
	SETB	TR0
lswait:	JB	00h,lswait	; loop in swait
	CLR	ET0
	CLR	TR0
	RET
wait:				; Waits at least 5 seconds
	PUSH	ACC
	MOV	ACC,#255
lwait:	CALL	swait
	DJNZ	ACC,lwait
	POP	ACC
	RET
revrnd:				; Reverse and turn around
	CLR	LMOTOR1
	CLR	RMOTOR1
	SETB	LMOTOR2
	SETB	RMOTOR2
	CALL	wait
	CLR	LMOTOR2
	CALL	swait
	CLR	RMOTOR2
	SETB	LMOTOR1
	SETB	RMOTOR1
	RET
evntlp:				; Program Event Loop
	CALL	revrnd
	JMP	evntlp
	END

ext0:	ORG	0003H		; External Interupt 0
	RETI
time0:	ORG	000BH		; Timer Interupt 0
	CLR	00h
	RETI