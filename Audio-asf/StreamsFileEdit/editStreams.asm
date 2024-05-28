; Author: Bunkai

.psp
.open "streams.viv" , 0x0

; header

.ascii "BIGF"		; Format
.word 0x9AA3AD4		; file size (Lacks method to automate yet), in little endian hex 
.word 0x30000000	; number of asf files, in little endian hex (48 in dec)
.halfword 0			; delimiter
.halfword 0xD604	;

; audio files, with 0x0000 (.halfword 0) as delimiter after each section

.word 0xC00E9109	; asf audio file offset, in little endian (0x 09 91 0E C0)
.word 0x142C1900	; asf audio file size, in little endian (0x 00 19 2C 14)
.ASCIIZ "AllStarIntroNHL07_1.asf" ; asf file name + delimiter (0x0)

.word 0x00311900	; asf audio file offset, in little endian (0x 00 19 31 00)
.word 0x142C1900	; asf audio file size, in little endian (0x 00 19 2C 14)
.ASCIIZ "AllStarIntroNHL07_2.asf" ; asf file name + delimiter (0x0)

; same format for all the remaining files

; if you want to reinsert an asf file in a section:

; remember to change the offsets for the files that come after this one,
; or make sure your inserted file is shorter or equal size than the original

.close