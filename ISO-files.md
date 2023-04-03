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
    |   +---UPDATE
    |           PARAM.SFO
    |           EBOOT.BIN
    |           DATA.BIN
    |
    +---USRDIR
    |   |   pad0.pad
    |   |   pad1.pad
    |   |   disc.ini
    |   |
    |   +---PocketDJ
    |   |   |	trackinfo 
    |   |   |	antiflag.aud
    |   |   |	. . . up to 17 songs in .aud file  
    |   |	
    |   +---audio	
    |   |   |	.
    |   |
    |   +---data
    |   |   |
    |   |   +---icon
    |   |   |   +---savegame	
    |   |   |   |   .    
    |   +---db
    |   |   |	.
    |   |
    |   +---fe
    |   |   |	.
    |   |	
    |   +---fonts
    |   |   |	FontTable.txt
    |   |   |	NHL07_sxbMenu10.mfn
    |   |   |	NHL07_sxbMenu12.mfn
    |   |   |	NHL07_sxbMenu16.mfn
    |   |   |	nhl07_ticker12.mfn
    |   |   \	RealFonts.txt
    |   |
    |   +---gamedata
    |   |   |	.
    |   |	
    |   +---locale
    |   |   |	chinese_traditional.loc
    |   |   |	dutch.loc
    |   |   |	english.loc
    |   |   |	french.loc
    |   |   |	german.loc
    |   |   |	italian.loc
    |   |   |	japanese.loc
    |   |   |	korean.loc
    |   |   |	spanish.loc
    |   |   \	string.idx
    |   |	
    |   +---module
    |   |   |	libadler.prx
    |   |   |	libbase64.prx
    |   |   |	libccc.prx
    |   |   |	libdeflt.prx
    |   |   |	libfont.prx
    |   |   |	libfpu.prx
    |   |   |	libheap.prx
    |   |   |	libmd5.prx
    |   |   |	libmt19937.prx
    |   |   |	libpsmfplayer.prx
    |   |   |	libqpcode.prx
    |   |   |	libsha1.prx
    |   |   |	libsha224.prx
    |   |   |	libsha256.prx
    |   |   |	libsha384.prx
    |   |   |	libsha512.prx
    |   |   |	psmf.prx
    |   |   |	pspnet_ap_dialog_dummy.prx
    |   |   |	scan.prx
    |   |   \	show_macaddr.prx
    |   |	
    |   +---movies
    |   |   |	demo.pmf
    |   |   |	eaeng.pmf   
    |   |   |	eafre.pmf  
    |   |   |	madden06.pmf
    |   |   |	nascar06.pmf  
    |   |   \	nba06.pmf  
    |   |
    |   +---netcore
    |   |   |	netcore.viv
    |   |   +---netcore
    |   |   |	globe.viv
    |   |   |	netcoreadhocboot.viv
    |   |   |	netcoreinetboot.viv
    |   |   |   +---apt  
    |   |   |   +---bootimages
    |   |   |   +---fonts
    |   |   |   +---globe
    |   |   |   +---locale 
    |   |	
    |   \---preload
    |   |   |	czone.viv
    |   |   |	fapt.viv
    |   |   |	faudio.viv
    |   |   |	fboot.viv
    |   |   |	fmisc.viv
    |   |   |	gaudio.viv
    |   |   |	gaudiofa.viv
    |   |   |	gloadscr.viv
    |   |   |	gmisc.viv
    |       \	gscene.viv
    \
	
````
## Data Location Summary

| File (route) | Data in File | Comments
|:---:|:---:|:---:|
| Sample File/folder | Summary of file/folder | Comments for this file |
| PocketDJ folder  | full soundtrack + trackinfo | songs in .aud ; trackinfo plain in hex editor |
| preload folder  | various files | check this for default language and loading until the main menu screen | 
| fmisc.viv inside (preload folder) | various files packaged | use bigGui to open, local.bh seems to work with game langs |
