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
    .string "antiflag" ; track file name
    .string "see" ; artist name
    .string "changes" ; song name	
.close
