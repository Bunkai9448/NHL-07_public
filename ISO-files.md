# How-Where are the files in the iso

## ROM (ISO) Structure (needs update)
````
D:.
|   UMD_DATA.BIN
|
\---PSP_GAME
    |   PARAM.SFO
    |   ICON1.PMF
    |   ICON0.PNG
    |   PIC1.PNG
    |   
    +---SYSDIR
    |   |   EBOOT.BIN
    |   |   BOOT.BIN
    |   |
    |   \---UPDATE
    |           PARAM.SFO
    |           EBOOT.BIN
    |           DATA.BIN
    |
    +---USRDIR
    |   |   pad0.pad
    |   |   pad1.pad
    |   |   disc.ini
    |   |
    |   \---PocketDJ
    |   |   |	trackinfo 
    |   |   |	antiflag.aud
    |   |   |	. . . up to 17 songs in .aud file  
    |   |	
    |   +---audio	
    |   |   |	.
    |   |
    |   +---data
    |   |   |
    |   |   \---icon
    |   |   |   \---savegame	
    |   |   |   |   .    
    |   +---db
    |   |   |	.
    |   |
    |   +---fe
    |   |   |	.
    |   |	
    |   +---fonts
    |   |   |	.
    |   |
    |   +---gamedata
    |   |   |	.
    |   |	
    |   +---locale
    |   |   |	.
    |   |	
    |   +---module
    |   |   |	.
    |   |	
    |   +---movies
    |   |   |	.
    |   |
    |   +---netcore
    |   |   |	.
    |   |	
    |   +---preload
    |   |   |	.
	
````
## Data Location Summary

| File (route) | Data in File | Comments
|:---:|:---:|:---:|
| Sample File/folder | Summary of file/folder | Comments for this file |
| PocketDJ folder  | full soundtrack + trackinfo | songs in .aud ; trackinfo plain in hex editor |
| preload folder  | various files | check this for default language and loading until the main menu screen | 
| fmisc.viv inside (preload folder) | various files packaged | use bigGui to open, local.bh seems to work with game langs |
