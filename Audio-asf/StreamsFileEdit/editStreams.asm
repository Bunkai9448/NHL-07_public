; Author: Bunkai
; following code uses data from vanilla, if you updated any audio from this file before
; you need to update that info in this asm file too.

; example to (re)instert the audiofile "AllStarIntroNHL07_1.asf"
; is recommended to use files that are shorter or equal size, but you can insert bigger files

fileOffset equ 0x09910EC0	; in little endian is (0xC00E9109)

.psp
.open "streams.viv" , 0x0
.org fileOffset
.import "AllStarIntroNHL07_1.asf" ; write here your 'output.asf' from the 'EA_sx2' command in your makeEdits.bat
.close

; After inserting the audio file, it's turn to edit the offsets if they have changed
; if they were shorter or equal you can leave them as they were.

.psp
.open "streams.viv" , 0x0

; header

.ascii "BIGF"		; Format
.word 0x9AA3AD4		; file size (Lacks method to automate yet), in little endian hex 
.word 0x30000000	; number of asf files, in little endian hex (48 in dec)
.halfword 0			; delimiter
.halfword 0xD604	;

; audio files, with 0x0000 (.halfword 0) as delimiter after each section

.word 0xC00E9109	; asf audio file offset, in little endian, (0x 09 91 0E C0)
.word 0x142C1900	; asf audio file size, in little endian, (0x 00 19 2C 14)
.ASCIIZ "AllStarIntroNHL07_1.asf" ; asf file name + delimiter (0x0)

.word 0x00311900	; asf audio file offset, in little endian, (0x 00 19 31 00)
.word 0x142C1900	; asf audio file size, in little endian, (0x 00 19 2C 14)
.ASCIIZ "AllStarIntroNHL07_2.asf" ; asf file name + delimiter (0x0)

; same format for all the remaining files

; if you want to update a file long below without adding all the in-between, you can just 
.org 0x02E7			; go to the address where it is used, like in this example:
.word 0x20C0EA03	; asf audio file offset, in little endian, (0x 03 EA C0 20)
.word 0x8CA18700 		; asf audio file size, in little endian, (0x 00 87 A1 8C)
.ASCIIZ "WinGame_NHL_07.asf" ; asf file name + delimiter (0x0)

.close