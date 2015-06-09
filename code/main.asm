; Lawn Mower Drone Assembly Program
; Author: Henry J Schmale
; Date: June 1, 2015

LMOTOR1	EQU	P3.5
LMOTOR2	EQU	P3.7		; Makes Left Motor go in reverse
RMOTOR1	EQU	P1.2
RMOTOR2	EQU	P1.3		; Makes Right Motor go in reverse
BLADEON	EQU	P1.4		; If Set the blades are spinning

main:	ORG	0000H		; Program Entry Point
	JMP	setup		; Interupt Overwriting Protection

setup:	ORG	002CH		; executes exactly once
	SETB	EA		; Enable Interupts at a global level
	MOV	P1, #00000000B	; Set Port1 as Output
	MOV	P3, #00000000B	; Set Port3 as output
	CLR	P3.0		; Set P3.0 as output for sending trigger
	SETB	P3.1		; Set P3.1 to input for recieving echo
	MOV	TMOD, #00100000B	; Set timer1 to mode 2 auto reload timer
	JMP	evntlp		; Go straight to the event loop
; Define Subroutines below

; Wait for timer0 to overflow R0 times
; R0 is set to 0 at the end of this sub
wait:	SETB	TR0
	CLR	TF0
	JNB	TF0, $		; Busy Loop until timer0 overflows
	DJNZ	R0, wait	; if my waiting thingy is not 0 repeat
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

DELAY1:	MOV	R6, #2D		; 10uS delay
LABEL1:	DJNZ	R6, LABEL1
	RET

; Returns Distance In Centimeters in R4
; Requires HC-SR04 ultrasonic module
; http://www.circuitstoday.com/ultrasonic-range-finder-using-8051
rngfnd:
	MOV	TL1, #207D	; Init Val to start counting from
	MOV	TH1, #207D	; load Reload Value
	CLR	A
	SETB	P3.0		; Start trigger pulse
	ACALL	DELAY1		; 10 uS width pulse for trigger
	CLR	P3.0		; End pulse
HERE:	JNB	P3.1, $
BACK:	SETB	TR1
HERE1:	JNB	TF1, HERE1
	CLR	TR1
	CLR	TF1
	INC	A
	JB	P3.1, BACK	; If Echo still available
	MOV	R4, A		; Save A to R4
	RET

evntlp:				; Program Event Loop
	CALL	rngfnd
	SJMP	evntlp
	END

; Interupts are defined below
ext0:	ORG	0003H		; External Interupt 0
	CALL	revrnd
	RETI

ext1:	ORG	0013H		; External Interupt 1
	CLR	TR1
	SETB	TF1
	RETI

time0:	ORG	000BH		; Timer Interupt 0
	RETI

time1:	ORG	001BH		; Timer Interupt 1
	CLR	TR1
	SETB	TF1
	RETI