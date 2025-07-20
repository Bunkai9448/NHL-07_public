; Author: Bunkai
; following code uses data from vanilla, if you updated any audio from this file before
; you need to update that info in this asm file too.

; example to (re)instert the audiofile "AllStarIntroNHL07_1.asf"
; is recommended to use files that are shorter or equal size, but you can insert bigger files

fileOffset equ 0x04D93E80	; in little endian is (0x803ED904)

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
.word 0x09ECC248		; file size (Lacks method to automate yet), in little endian hex 
;filesize(file) ;
.word 0x30000000	; number of asf files, in little endian hex (48 in dec)
.halfword 0			; delimiter
.halfword 0xD304	;

; audio files, with 0x0000 (.halfword 0) as delimiter after each section

.word 0x050000 	; asf audio file offset, in little endian, (0x )
.word 0x10DF6B00	; asf audio file size, in little endian, (0x )
.ASCIIZ "EOP_NHL_07.asf" ; asf file name + delimiter (0x0)

.word 0x40E46B00 	; asf audio file offset, in little endian, (0x 03 EA C0 20)
.word 0x8CA18700 		; asf audio file size, in little endian, (0x 00 87 A1 8C)
.ASCIIZ "WinGame_NHL_07.asf" ; asf file name + delimiter (0x0)

.word 0x0086F300	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "loseGame_NHL_07.asf" ; asf file name + delimiter (0x0)

.org 0X5E ; Since loseGame_NHL_07 has some kind of problem this bypass that entry
.word 0x00374A01	; asf audio file offset, in little endian, (0x )
.word 0xD8F95300	; asf audio file size, in little endian, (0x )
.ASCIIZ "Photo_NHL_07.asf" ; asf file name + delimiter (0x0)

.word 0x00319E01	; asf audio file offset, in little endian, (0x )
.word 0x68E30900	; asf audio file size, in little endian, (0x )
.ASCIIZ "FFA_SO_Intro_NHL07.asf" ; asf file name + delimiter (0x0)

.word 0x8014A801	; asf audio file offset, in little endian, (0x )
.word 0xD0311000	; asf audio file size, in little endian, (0x )
.ASCIIZ "G_AntiFlag.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "G_CuteIsWhatWeAimFor.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "G_GoodnightNurse.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "G_GoodRiddance.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "G_Hellacopters.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "G_Priestess.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "G_ProtestTheHero.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "ConferenceLose_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "ConferenceWin_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "Gatsby_Final.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "IntroSetup_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "RoundLose_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

.org 0X212 ; Since RoundLose_NHL_07_PSP.asf has some kind of problem this bypass that entry
.word 0x80397703	; asf audio file offset, in little endian, (0x )
.word 0xC8C72600	; asf audio file size, in little endian, (0x )
.ASCIIZ "RoundWin_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "StanleyLose_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "StanleyWin_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x 		; asf audio file size, in little endian, (0x )
;.ASCIIZ "worldCupLose_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x 		; asf audio file size, in little endian, (0x )
;.ASCIIZ "worldCupWin_NHL_07_PSP.asf" ; asf file name + delimiter (0x0)

.org 0X2BE
.word 0x803ED904	; asf audio file offset, in little endian, (0x80 3E D9 04)
.word 0x142C1900	; asf audio file size, in little endian, (0x 00 19 2C 14)
.ASCIIZ "AllStarIntroNHL07_1.asf" ; asf file name + delimiter (0x0)

.word 0xC06AF204	; asf audio file offset, in little endian, (0x )
.word 0x142C1900	; asf audio file size, in little endian, (0x 00 19 2C 14)
.ASCIIZ "AllStarIntroNHL07_2.asf" ; asf file name + delimiter (0x0)

.word 0x00970B05	; asf audio file offset, in little endian, (0x )
.word 0x142C1900	; asf audio file size, in little endian, (0x 00 19 2C 14)
.ASCIIZ "AllStarIntroNHL07_3.asf" ; asf file name + delimiter (0x0)

.word 0x40C32405	; asf audio file offset, in little endian, (0x )
.word 0x78FD3C00  ; asf audio file size, in little endian, (0x )
.ASCIIZ "VAustria.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VDenmark.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VFrance.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VGermany.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VCzech.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VItaly.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VLatvia.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VKazak.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VFinland.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VPoland.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VCanada.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VNorway.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VSweden.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VUkraine.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VRussia.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VBelarus.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VSlovakia.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VUK.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VSwiss.asf" ; asf file name + delimiter (0x0)

;.word 0x	; asf audio file offset, in little endian, (0x )
;.word 0x	; asf audio file size, in little endian, (0x )
;.ASCIIZ "VUSA.asf" ; asf file name + delimiter (0x0)

; if you want to update a file long below without adding all the in-between, you can just 
.org 0x04AB			; go to the address where it is used, like in this example:

.word 0xC0097A09	; asf audio file offset, in little endian, (0x )
.word 0x50A23800		; asf audio file size, in little endian, (0x )
.ASCIIZ "VJapan.asf" ; asf file name + delimiter (0x0)

.word 0X40ACB209	; asf audio file offset, in little endian, (0x )
.word 0x08163A00 		; asf audio file size, in little endian, (0x )
.ASCIIZ "VBelgium.asf" ; asf file name + delimiter (0x0)

.close
