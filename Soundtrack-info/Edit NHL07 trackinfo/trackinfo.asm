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
    .string "Mental_Circus"	; album's name 
	.byte 0
	
	.halfword 0
	
    song_002:
    .string "GoodNightNurse"	; audio's file name for the track
	.byte 0
	.string "Goodnight_Nurse" 	; artist name
	.byte 0
    .string "My_Only"	; song name	
	.byte 0
    .string "Always_And_Never"	; album's name 
	.byte 0

	.halfword 0
	
    song_003:
    .string "GoodRiddance"	; audio's file name for the track
	.byte 0
	.string "Good_Riddance" 	; artist name
	.byte 0
    .string "Darkest_Days"	; song name	
	.byte 0
    .string "My_Republic"	; album's name 
	.byte 0

	.halfword 0
	
    song_004:
    .string "Priestess"	; audio's file name for the track
	.byte 0
	.string "Priestess" 	; artist name
	.byte 0
    .string "Talk_to_Her"	; song name	
	.byte 0
    .string "Hello_Master"	; album's name 
	.byte 0

	.halfword 0
	
    song_005:
    .string "Mobile"	; audio's file name for the track
	.byte 0
	.string "Mobile" 	; artist name
	.byte 0
    .string "Montreal_Calling"	; song name	
	.byte 0
    .string "Tomorrow_Starts_Today"	; album's name 
	.byte 0
	
	.halfword 0
	
    song_006:
    .string "Hellacopters"	; audio's file name for the track
	.byte 0
	.string "The_Hellacopters" 	; artist name
	.byte 0
    .string "Bring_it_on_Home"	; song name	
	.byte 0
    .string "Rock_n_Roll_Is_Dead"	; album's name 
	.byte 0

	.halfword 0
	
    song_007:
    .string "Mashlin"	; audio's file name for the track
	.byte 0
	.string "Mashlin" 	; artist name
	.byte 0
    .string "The_Shore"	; song name	
	.byte 0
    .string "Pushing_Through_The_Seasons"	; album's name 
	.byte 0

	.halfword 0
	
    song_008:
    .string "AntiFlag"	; audio's file name for the track
	.byte 0
	.string "Anti-Flag" 	; artist name
	.byte 0
    .string "This_is_the_End_(For_You_My_Friend)"	; song name	
	.byte 0
    .string "For_Blood_And_Empire"	; album's name 
	.byte 0

	.halfword 0
	
    song_009:
    .string "CuteIWWAF"	; audio's file name for the track
	.byte 0
	.string "Cute_Is_What_We_Aim_For" 	; artist name
	.byte 0
    .string "There's_a_Class_for_this"	; song name	
	.byte 0
    .string "The_Same_Old_Blood_Rush_With_A_New_Touch"	; album's name 
	.byte 0

	.halfword 0
	
    song_010:
    .string "Gatsby"	; audio's file name for the track
	.byte 0
	.string "Gatsbys_American_Dream" 	; artist name
	.byte 0
    .string "Theatre"	; song name	
	.byte 0
    .string "Volcano"	; album's name 
	.byte 0

	.halfword 0
	
    song_011:
    .string "Hurt"	; audio's file name for the track
	.byte 0
	.string "Hurt" 	; artist name
	.byte 0
    .string "Unkind"	; song name	
	.byte 0
    .string "Vol.1"	; album's name 
	.byte 0

	.halfword 0
	
    song_012:
    .string "InkWell"	; audio's file name for the track
	.byte 0
	.string "Inkwell" 	; artist name
	.byte 0
    .string "Equador_is_Lovely_This_Time_of_Year"	; song name	
	.byte 0
    .string "These_Stars_Are_Monsters"	; album's name 
	.byte 0

	.halfword 0
	
	
; To add more songs, needs improvements
.org 0x092D
    song_00X:
    .string "BloodPit"	; audio's file name for the track
	.byte 0
    .string "Bloodpit" 	; artist name
	.byte 0
    .string "Platitude"	; song name	
	.byte 0
    .string "Mental_Circus"	; 
	.byte 0
	.halfword 0
	
.close