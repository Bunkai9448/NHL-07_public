; Author: Bunkai
; The following code uses data from vanilla, and Difficult.ubc
; However, offsets (and code) are the same for the 4 difficulty files of the game
; (Beginner.ubc, Easy.ubc, Medium.ubc, Difficult.ubc)

.psp
.open "Difficult.ubc" , 0x0

; header

.ascii "UBIREG"		; Format
