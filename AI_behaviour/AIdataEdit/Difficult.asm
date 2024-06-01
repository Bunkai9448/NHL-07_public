; Author: Bunkai
; The following code uses data from vanilla, and Difficult.ubc
; However, offsets (and code) are the same for the 4 difficulty files of the game
; (Beginner.ubc, Easy.ubc, Medium.ubc, Difficult.ubc)

.psp
.open "Difficlt.ubc" , 0x0

; header

.ascii "UBIREG"			; Format
.word 0x00C90000	;
.word 0x0B9C0000	;

.org 0x30
.word 0x01
; Following word changes for each difficulty,
; Beginner = 0x0C74, Easy = 0x0B74, Medium = 0x0B74, Diffclt = 0x0B74
.word 0x0B74
.ascii "AI"

; Actual Data ?

.org 0x58
.word 0x0C		;
.word 0x0D4		;
.ascii "Puck Control"	; Parameter

.org 0x80
.word 0x01		;
.word 0xAC		;
.ascii "Events"			; Parameter

.org 0xA8
.word 0x00030000		;
.word 0x2C		;
.ascii "Manual Deke"	; Parameter

.org 0xD0
.word 0x04F4B17B		;
.word 0x3DCCCCCD		;
.word 0x2C		;
.ascii "Tap Deke"		; Parameter

.org 0xFC
.word 0x04F4B17B	;
.word 0x3E8F5C29	;
.word 0x2C			;
.ascii "Spin Deke"		; Parameter

.org 0x128
.word 0x04F4B17B	;
.word 0x3F266666	;
.word 0x7C			;
.ascii "Coaches"		; Parameter

.org 0x158
.word 0x54			;
.ascii "Momentum"		; Parameter

.org 0x17C
.word 0x00010000	;
.word 0x0000002C		;
.ascii "Level Mod"		; Parameter

.org 0x1A4
.word 0x04F4B810	;
.word 0
.word 0x00000054		;
.ascii "Faceoffs"		; Parameter

.close