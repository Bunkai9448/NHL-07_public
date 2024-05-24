; Author: Bunkai

.psp
.open "trackinfo" , 0x0

; header

    ; String blocks offsets
    ; .word 0x0084, 
    
; string data
.org 0x0133

    .loadtable "Font_NHL.tbl"


    song_001:
    .string "BloodPit"	; audio's file name for the track
	.byte 0
    .string "Bloodpit" 	; artist name
	.byte 0
    .string "Platitude"	; song name	
	.byte 0
    .string "Mental.Circus"	; album's name 
	.byte 0
	
	.halfword 0
	
    song_002:
    .string "GoodNightNurse"	; artist name
	.byte 0
	.string "Goodnight.Nurse" 	; artist name
	.byte 0
    .string "My.Only"	; song name	
	.byte 0
    .string "Always.And.Never"	; album's name 
	.byte 0

	.halfword 0
	



; test to add more songs Currently not working
;.org 0x092D
;    song_00X:
;    .string "BloodPia"	; audio's file name for the track
;	.byte 0
;    .string "Bloodpit" 	; artist name
;	.byte 0
;    .string "Platitude"	; song name	
;	.byte 0
;    .string "Mental.Circus"	; 
;	.byte 0
;	.halfword 0
	
.close