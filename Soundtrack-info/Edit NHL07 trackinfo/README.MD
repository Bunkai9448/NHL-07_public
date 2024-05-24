# Use 

## Tools required
This uses [https://github.com/Kingcom/armips](https://github.com/Kingcom/armips) to rewrite the original `trackinfo` file,
so you can edit the tracks.

## How to use
Open the [trackinfo.asm](https://github.com/Bunkai9448/NHL-07_public/blob/main/Soundtrack-info/Edit%20NHL07%20trackinfo/trackinfo.asm) and edit your track list however you want, follow the comments

Run the [Make_Edits.bat](https://github.com/Bunkai9448/NHL-07_public/blob/main/Soundtrack-info/Edit%20NHL07%20trackinfo/Make_Edits.bat) file and reinsert the new trackinfo back into your iso

## Basic source file info
This follows the trackinfo file structure, if you add the other songs in the same way, it should work no problem (still needs a few touches but the bulk is this).
```
.org 0x0133

    .string "Bloodpit"	; track file name
    .string "Bloodpit"	; artist name
    .string "Platitude"	; song name
```
