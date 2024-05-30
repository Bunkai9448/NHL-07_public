; Author: Bunkai
; Use this with After decrypting your DATA.BIN with PSP.SaveData.Encrypter.Decrypter.GUI-LMAN

.psp
.open "DATA_decrypted.BIN" , 0x0

; header
.word 0x022AE2E2
.word 0
.ascii "SPBT.BD"

.close