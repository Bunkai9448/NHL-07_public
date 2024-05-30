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
.ascii "Events Deke"	; Parameter

.close