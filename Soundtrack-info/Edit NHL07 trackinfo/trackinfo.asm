; Author: Bunkai

.psp
.open "trackinfo" , 0x0

; header
	
	.byte 0x12 ; number of tracks displayed in the list, it was originally 0x11
	
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
    .string "Mental Circus"	; album's name 
	.byte 0
	
	.halfword 0
	
    song_002:
    .string "GoodNightNurse"	; audio's file name for the track
	.byte 0
	.string "Goodnight Nurse" 	; artist name
	.byte 0
    .string "My Only"	; song name	
	.byte 0
    .string "Always And Never"	; album's name 
	.byte 0

	.halfword 0
	
    song_003:
    .string "GoodRiddance"	; audio's file name for the track
	.byte 0
	.string "Good Riddance" 	; artist name
	.byte 0
    .string "Darkest Days"	; song name	
	.byte 0
    .string "My Republic"	; album's name 
	.byte 0

	.halfword 0
	
    song_004:
    .string "Priestess"	; audio's file name for the track
	.byte 0
	.string "Priestess" 	; artist name
	.byte 0
    .string "Talk to Her"	; song name	
	.byte 0
    .string "Hello Master"	; album's name 
	.byte 0

	.halfword 0
	
    song_005:
    .string "Mobile"	; audio's file name for the track
	.byte 0
	.string "Mobile" 	; artist name
	.byte 0
    .string "Montreal Calling"	; song name	
	.byte 0
    .string "Tomorrow Starts Today"	; album's name 
	.byte 0
	
	.halfword 0
	
    song_006:
    .string "Hellacopters"	; audio's file name for the track
	.byte 0
	.string "The Hellacopters" 	; artist name
	.byte 0
    .string "Bring it on Home"	; song name	
	.byte 0
    .string "Rock n Roll Is Dead"	; album's name 
	.byte 0

	.halfword 0
	
    song_007:
    .string "Mashlin"	; audio's file name for the track
	.byte 0
	.string "Mashlin" 	; artist name
	.byte 0
    .string "The Shore"	; song name	
	.byte 0
    .string "Pushing Through The Seasons"	; album's name 
	.byte 0

	.halfword 0
	
    song_008:
    .string "AntiFlag"	; audio's file name for the track
	.byte 0
	.string "Anti-Flag" 	; artist name
	.byte 0
    .string "This is the End (For You My Friend)"	; song name	
	.byte 0
    .string "For Blood And Empire"	; album's name 
	.byte 0

	.halfword 0
	
    song_009:
    .string "CuteIWWAF"	; audio's file name for the track
	.byte 0
	.string "Cute Is What We Aim For" 	; artist name
	.byte 0
    .string "There's a Class for this"	; song name	
	.byte 0
    .string "The Same Old Blood Rush With A New Touch"	; album's name 
	.byte 0

	.halfword 0
	
    song_010:
    .string "Gatsby"	; audio's file name for the track
	.byte 0
	.string "Gatsbys American Dream" 	; artist name
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
    .string "Equador is Lovely This Time of Year"	; song name	
	.byte 0
    .string "These Stars Are Monsters"	; album's name 
	.byte 0

	.halfword 0
	
    song_013:
    .string "NOFX_WOLVES"	; audio's file name for the track
	.byte 0
	.string "NOFX" 	; artist name
	.byte 0
    .string "Wolves in Wolves' Clothing"	; song name	
	.byte 0
    .string "Wolves in Wolves' Clothing"	; album's name 
	.byte 0

	.halfword 0

    song_014:
    .string "Pilate"	; audio's file name for the track
	.byte 0
	.string "Pilate" 	; artist name
	.byte 0
    .string "Barely Listening"	; song name	
	.byte 0
    .string "Sell Control For Life's Speed"	; album's name 
	.byte 0

	.halfword 0
	
    song_015:
    .string "Pistolita"	; audio's file name for the track
	.byte 0
	.string "Pistolita" 	; artist name
	.byte 0
    .string "Beni Accident"	; song name	
	.byte 0
    .string "Oliver Under The Moon"	; album's name 
	.byte 0

	.halfword 0
	
    song_016:
    .string "ProtestTheHero"	; audio's file name for the track
	.byte 0
	.string "Protest the Hero" 	; artist name
	.byte 0
    .string "Divinity Within"	; song name	
	.byte 0
    .string "Kezia"	; album's name 
	.byte 0

	.halfword 0
	
    song_017:
    .string "QuietDrive"	; audio's file name for the track
	.byte 0
	.string "Quiet Drive" 	; artist name
	.byte 0
    .string "Rise From the Ashes"	; song name	
	.byte 0
    .string "When All That's Left Is You"	; album's name 
	.byte 0
	
	.halfword 0
	
; From here on, this is to add more songs, needs improvements

    song_00X:
    .string "BloodPit"	; audio's file name for the track
	.byte 0
    .string "Bloodpit" 	; artist name
	.byte 0
    .string "Platitude"	; song name	
	.byte 0
    .string "Mental Circus"	; 
	.byte 0
	
	.halfword 0
	
.close