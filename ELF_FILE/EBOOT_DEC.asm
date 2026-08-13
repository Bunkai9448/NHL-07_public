; PSP UMD ELF - Reverse-engineered information,
; rewritten as code ready to be assembled with armips

; This should create an exact copy of the Decrypted Eboot. Providing a clean base for further game modifications
; For modifications and other tests, please make a copy of this file and keep the original untouched as a clean backup.

; psp elfs are always loaded to 8804000
; so when you write your armips file, you open the elf with that in mind

.psp
.open "EBOOT.BIN", 0x8804000 ; as such it excludes header

; It follows the standard ELF format with PSP-specific modifications.

; Header Breakdown:

; ELF Identification (Magic Bytes) `First Bytes of the elf which consist in the base of the main executable`
    .byte 0x7F
    .ascii "ELF" ; signature
    .byte 0x01   ; ELF32 (32-bit format)
    .byte 0x01   ; Little-endian byte order
    .byte 0x01   ; ELF version 1
    .byte 0x00   ; System V ABI (no platform-specific extensions)

    ; Remaining zeros  Padding/reserved

.org 0x10 ; Key Header Fields (Little-endian)
    .word 0x08FFA0 ; e_type PSP-specific PRX module (not standard ELF type)
    .word 0x0001 ; e_machine MIPS R3000 (PSP's MIPS R4000-compatible CPU)
    .word 0x00365120 ; e_entry Entry point address
    .word 0x00000034 ; e_phoff Program header table offset (52)
    .word 0x0064891C ; e_shoff Section header table offset
    .word 0x10A23001 ; e_flags MIPS/PSP-specific flags
    .half 0x0034 ; e_ehsize ELF header size
    .half 0x0020 ; e_phentsize Program header entry size
    .half 0x0002 ; e_phnum Number of program segments
    .half 0x0028 ; e_shentsize Section header entry size
    .half 0x0041 ; e_shnum Number of sections
    .half 0x0040 ; e_shstrndx Section name string table index
