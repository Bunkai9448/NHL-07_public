PSP UMD ELF Header Analysis
Overview

This is a 32-bit ELF executable designed for the PlayStation Portable (PSP) platform, extracted from a UMD disc. It follows the standard ELF format with PSP-specific modifications.
Header Breakdown
ELF Identification (Magic Bytes)

```
7F 45 4C 46 01 01 01 00 00 00 00 00 00 00 00 00 
A0 FF 08 00 01 00 00 00 20 51 36 00 34 00 00 00 
1C 89 64 00 01 30 A2 10 34 00 20 00 02 00 28 00 
41 00 40 00 01 00 00 00 00 01 00 00 00 00 00 00 
10 96 57 00 40 C4 63 00 40 C4 63 00 05 00 00 00 
00 01 00 00 01 00 00 00 40 C5 63 00 40 C4 63 00 
00 00 00 00 0C BF 00 00 60 14 04 00 06 00 00 00
```

    7F 45 4C 46 → \x7fELF → Standard ELF magic number
    01 → ELF32 (32-bit format)
    01 → Little-endian byte order
    01 → ELF version 1
    00 → System V ABI (no platform-specific extensions)
    Remaining zeros → Padding/reserved

Key Header Fields (Little-endian)
Field 	Hex Value 	Decimal/Meaning
e_type 	A0 FF 08 00 	0x08FFA0 → PSP-specific PRX module (not standard ELF type)
e_machine 	01 00 00 00 	0x0001 → MIPS R3000 (PSP’s MIPS R4000-compatible CPU)
e_entry 	20 51 36 00 	0x00365120 → Entry point address
e_phoff 	34 00 00 00 	0x34 (52) → Program header table offset
e_shoff 	1C 89 64 00 	0x0064891C → Section header table offset
e_flags 	01 30 A2 10 	0x10A23001 → MIPS/PSP-specific flags
e_ehsize 	34 00 	52 bytes → ELF header size
e_phentsize 	20 00 	32 bytes → Program header entry size
e_phnum 	02 00 	2 → Number of program segments
e_shentsize 	28 00 	40 bytes → Section header entry size
e_shnum 	41 00 	65 → Number of sections
e_shstrndx 	40 00 	64 → Section name string table index
Program Segments

The header defines 2 loadable segments (PT_LOAD):

    Segment 1: Starts at file offset 0x00010000
    Additional segment definitions follow in the program header table

Technical Significance
PSP-Specific Format

    Uses PSP ELF variant (often called “PSP PRX” format)
    The unusual e_type value (0x08FFA0) indicates this is a relocatable module rather than a standard executable
    Entry point at 0x00365120 suggests this is a kernel module or system library that will be loaded into memory at runtime

Architecture

    MIPS R3000 instruction set (compatible with PSP’s Allegrex CPU)
    32-bit addressing
    Little-endian byte order

Usage

This file would be loaded by the PSP’s OS from the UMD disc, either as:

    A game executable
    A system library/plugin (PRX module)
    Part of the game’s data files

The structure confirms this is a legitimate PSP homebrew or commercial game binary, properly formatted for the PSP’s custom ELF implementation.
