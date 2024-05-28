; Author: Bunkai

.psp
.open "streams.viv" , 0x0

; header

.ascii "BIGF" ; Format
.word 0x9AA3AD4 ; file size (Lacks method to automate yet), in little endian hex 
.word 0x30000000 ; number of asf files, in little endian hex (48 in dec)
.halfword 0 ; delimiter

; audio files, with 0x0000 (.halfword 0) as delimiter after each section


.close