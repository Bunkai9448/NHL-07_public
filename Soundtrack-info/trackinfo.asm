; Author: Bunkai

.psp
.open "trackinfo" , 0x0

; header
	
.org 0x05D ; number of tracks in the list (currently not shows the extra songs ingame, but reproduces them)
	.byte 0x14 ; originally 0x13
	
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
    .string "GoodNightNurse"	; audio's file name for the track
	.byte 0
	.string "Goodnight.Nurse" 	; artist name
	.byte 0
    .string "My.Only"	; song name	
	.byte 0
    .string "Always.And.Never"	; album's name 
	.byte 0

	.halfword 0
	
    song_003:
    .string "GoodRiddance"	; audio's file name for the track
	.byte 0
	.string "Good.Riddance" 	; artist name
	.byte 0
    .string "Darkest.Days"	; song name	
	.byte 0
    .string "My.Republic"	; album's name 
	.byte 0

	.halfword 0
	
    song_004:
    .string "Priestess"	; audio's file name for the track
	.byte 0
	.string "Priestess" 	; artist name
	.byte 0
    .string "Talk.to.Her"	; song name	
	.byte 0
    .string "Hello.Master"	; album's name 
	.byte 0

	.halfword 0
	
    song_005:
    .string "Mobile"	; audio's file name for the track
	.byte 0
	.string "Mobile" 	; artist name
	.byte 0
    .string "Montreal.Calling"	; song name	
	.byte 0
    .string "Tomorrow.Starts.Today"	; album's name 
	.byte 0
	
	.halfword 0
	
    song_006:
    .string "Hellacopters"	; audio's file name for the track
	.byte 0
	.string "The.Hellacopters" 	; artist name
	.byte 0
    .string "Bring.it.on.Home"	; song name	
	.byte 0
    .string "Rock.n.Roll.Is.Dead"	; album's name 
	.byte 0

	.halfword 0
	
    song_007:
    .string "Mashlin"	; audio's file name for the track
	.byte 0
	.string "Mashlin" 	; artist name
	.byte 0
    .string "The.Shore"	; song name	
	.byte 0
    .string "Pushing.Through.The.Seasons"	; album's name 
	.byte 0

	.halfword 0
	
    song_008:
    .string "Antiflag"	; audio's file name for the track
	.byte 0
	.string "Anti-Flag" 	; artist name
	.byte 0
    .string "This.is.the.end.(For.You.My.Friend)"	; song name	
	.byte 0
    .string "For.Blood.And.Empire"	; album's name 
	.byte 0

	.halfword 0
	
    song_009:
    .string "CuteIWWAF"	; audio's file name for the track
	.byte 0
	.string "Cute.Is.What.We.Aim.For" 	; artist name
	.byte 0
    .string "There's.a.Class.for.this"	; song name	
	.byte 0
    .string "For.Blood.And.Empire"	; album's name 
	.byte 0

; To add more songs, needs improvements
.org 0x092D
    song_00X:
    .string "BloodPit"	; audio's file name for the track
	.byte 0
    .string "Bloodpit" 	; artist name
	.byte 0
    .string "Platitude"	; song name	
	.byte 0
    .string "Mental.Circus"	; 
	.byte 0
	.halfword 0
	
.close