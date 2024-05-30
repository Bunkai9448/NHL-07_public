; Author: Bunkai

.psp
.open "PARAM.SFO" , 0x0

; header
.byte 0
.ascii "PSF"	; Format
.word 0x0101	
.word 0x94		; first string item address
.word 0x0108

.word 0x08
.word 0x02040000
.word 0x03
.word 0x04

.word 0x00
.word 0x04040009
.word 0x04
.word 0x04

; ...
.org 0x60	; offset for the roster in Data_decrypted.bin
.word 0x0448

; ...
.org 0x94
.asciiz "CATEGORY"
.asciiz "PARENTAL_LEVEL"
.asciiz "SAVEDATA_DETAIL"
.asciiz "SAVEDATA_DIRECTORY"
.asciiz "SAVEDATA_FILE_LIST"
.asciiz "SAVEDATA_PARAMS"
.asciiz "SAVEDATA_TITLE"
.asciiz "TITLE"
.byte 0 ; for aligment
.asciiz "MS"
.byte 0 ; for aligment
.word 0x04
.asciiz "Roster and Settings 1.0"

;...
.org 0x510
.ascii "ULUS10131002"
;...
.org 0x550
.ascii "DATA.BIN"

;...
.org 0x11B0
.byte 0x41

;...
.org 0x1230
.ascii "ROSTER"

;...
.org 0x12B0
.ascii "NHL"
.byte 0xAE
.ascii "07"

.close