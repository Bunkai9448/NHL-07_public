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
    |   |   |	+---speech
    |   |   |	+---streams
    |   |
    |   +---data
    |   |   |	fusion.bts
    |   |   |	
    |   |   +---icon
    |   |   |   +---savegame	
    |   |   |   |   iconempty.png
        |   |   \   iconsave.png
    |   +---db
    |   |   |	db.viv
    |   |   |	tuning.viv
    |   |
    |   +---fe
    |   |   |	bgapt.viv
    |   |   |	cafeapt.viv
    |   |   |	comapt.viv
    |   |   |	credits.viv
    |   |   |	cz.viv
    |   |   |	gameapt.viv
    |   |   |	imageapt.viv
    |   |   |	jerapt.viv
    |   |   |	loadscr.viv
    |   |   |	local.viv
    |   |   |	pnapt.viv
    |   |   |	portapt.viv
    |   |   |	seasapt.viv
    |   |   |	tlogoapt.viv
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
    |   |   |	actors.viv
    |   |   |	aidata.viv
    |   |   |	arenaANA.big
    |   |   |	arenaATL.big
    |   |   |	arenaBOS.big
    |   |   |	arenaBUF.big
    |   |   |	arenaCAR.big
    |   |   |	arenaCBJ.big
    |   |   |	arenaCGY.big
    |   |   |	arenaCHI.big
    |   |   |	arenaCOL.big
    |   |   |	arenaCZE.big
    |   |   |	arenaDAL.big
    |   |   |	arenaDEL.big
    |   |   |	arenaDET.big
    |   |   |	arenaEDM.big
    |   |   |	arenaELI.big
    |   |   |	arenaFIN.big
    |   |   |	arenaFLA.big
    |   |   |	arenaGER.big
    |   |   |	arenaINT.big
    |   |   |	arenaLA.big
    |   |   |	arenaLIG.big
    |   |   |	arenaMIN.big
    |   |   |	arenaMTL.big
    |   |   |	arenaNJD.big
    |   |   |	arenaNSH.big
    |   |   |	arenaNYI.big
    |   |   |	arenaNYR.big
    |   |   |	arenaOTT.big
    |   |   |	arenaPHI.big
    |   |   |	arenaPHX.big
    |   |   |	arenaPIT.big
    |   |   |	arenaPON.big
    |   |   |	arenaSJ.big
    |   |   |	arenaSTL.big
    |   |   |	arenaSWE.big
    |   |   |	arenaTB.big
    |   |   |	arenaTOR.big
    |   |   |	arenaVAN.big
    |   |   |	arenaWSH.big
    |   |   |	czanim.viv
    |   |   |	defaultscene.prp
    |   |   |	faces.viv
    |   |   |	geomlib.viv
    |   |   |	goalies.viv
    |   |   |	IceTxtrs.big
    |   |   |	inter.big
    |   |   |	jerseys.viv
    |   |   |	minigame.prp
    |   |   |	minigame.viv
    |   |   |	misc.viv
    |   |   |	Nhl.big
    |   |   |	nis.viv
    |   |   |	players.viv
    |   |   |	pond.big
    |   |   |	rendanim.viv
    |   |   |	scenecz.prp
    |   |   |	sceneczj.prp
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
|  ##### | ##### | ##### |
| sysdir/update folder | psp firmware update | for mods you can delete this to save space |
| boot.bin (sysdir folder) | is zeroed and unused | can be deleted |
| eboot.bin (sysdir folder) | boot elf | is encrypted, use deceboot to work with it, can be reinserted without reencrypt |
| # | # | # |
| pad0.pad & pad1.pad (usrdir folder)| zeroed files (padding?) | only take space, can be deleted |
| disc.ini (usrdir folder)| region=na productcode=ULUS10131 parentallock=4 adhocid=ULUS10131 | similar to PARAM.SFO |
| # | # | # |
| preload folder  | various files | check this for default language and loading until the main menu screen | 
| fmisc.viv inside (preload folder) | various files packaged | use bigGui to open, local.bh seems to work with game langs |
| # | # | # |
| gamedata folder | most models of the game | go here to edit the visual part of the main gameplay and the AI |
| aidata.viv inside (gamedata folder) | use this to edit the AI of the game | currently there's two working patch that swaps 07 with 09 AI, and with 07 PC AI |
| # | # | # |
| PocketDJ folder  | full soundtrack + trackinfo | songs in .aud ; trackinfo plain in hex editor |
| # | # | # |
| movies folder | videos for the load screen | some are from other ea games (madden06, nba06, and nascar06. Those are unused) can be deleted if you don't care about that |
| # | # | # |
| fe folder | various files | more loading stuff (this one for the whole game, not only in boot) |
| bgapt.viv (in fe folder) | background
| cafeapt.viv (in fe folder) | ? | - |
| comapt.viv (in fe folder) | com(puter) | - |
| credits.viv (in fe folder) | isn't it obvious? | - |
| cz.viv (in fe folder) | createface1-3.msh, createfacehair1-3.msh, czface.msh, CZInGameHead.o, FACE9999.msh, jersey_renamed.o
 | Creation Zone stuff |
| gameapt.viv (in fe folder) | some game stuff | - |
| imageapt.viv (in fe folder) | some image stuff	| - |
| jerapt.viv (in fe folder) | jerseys stuff | - |
| loadscr.viv inside (fe folder) | xxx_controller.bin, xxx_controller.msh, loadingbar0-3.msh, loadingbarblack0-3.msh, loadscreen0-7.bin,loadscreen0-7.msh | use bigGui to open |
| local.viv (in fe folder) | (general) local (language) 	| - |
| pnapt.viv (in fe folder) | play network | - |
| portapt.viv (in fe folder) | portraits | - |
| seasapt.viv (in fe folder) | season info stuff | - |
| tlogoapt.viv (in fe folder) | t(eam) logo(s) | - |
| # | # | # |
| gamedata folder | various files | (stuff for game matches) |
| aidata.viv (in gamedata folder) | AI config | - |
| arenaXXX.big (in gamedata folder) | Team's arena textures | - |
| jerseys.viv (in gamedata folder) | Team's jersey textures (includes logos) | - |
| # | # | # |
| # more # | # to be # | # added # |

