# Texture Editing

## Tools 

- UMDgen to open the ISO, https://www.romhacking.net/utilities/1218/

- BigGUI, https://dl.fifa-infinity.com/fifa-09/biggui-tool/

- Console texture Explorer, https://forum.xentax.com/viewtopic.php?p=131457&sid=ee0d41dbcfa766b583d1192fb65c1b52#p131457

- Game Graphic Studio, https://www.romhacking.net/utilities/660/

- ImpBIG, tool is inside nhl-psp_CTE_ini_files.zip

## General steps to edit game textures and logos (Textures)

* By Lorak *

There are two places to look at, PSP_GAME-USDIR-fe and PSP_GAME-USDIR-gamedata. From now on, we call it fe and gamedata respectively. Get the tools from github or the links below.

1) Select the assets -mainly .viv and .big files- to edit from fe and gamedata. An advice is to work on the files from one location to then go on to the next one. For example, work on the files from fe and then gamedata. 

Typically, you get jerapt.viv, tlogoap.viv from fe and arenaXXX.big -here, XXX is a placeholder for a team-, IceTxtrs.big and jerseys.viv from gamedata. Of course, there are more files to work on.

2) Extract the contents of the files chosen in 1 via big gui. Almost all textures in this game are in .msh files.

3) Get the .ini files from github and open your .msh file in Console Texture Explorer, export it as .tm2 files. 

4) Open those. tm2 files in Game Graphic Studio (GGS). Edit it there. This could be very annoying -a pain in the ass, I would say laughing -. Save the file. Not recommended.

As an alternative, edit the .tm2 files in Rainbow https://github.com/marco-calautti/Rainbow. First, open a .tm2 file and export it. You get a .png and a .xml file. Just edit the .png in your favorite software. GIMP, Photoshop or any other. Save your changes without changing the file name. Go back to Rainbow and import the .xml file. It will load the edited .png too.  Rainbow seems to be really user friendly.

5) Import the updated .tm2 file from 4 to Console Texture Explorer to actually edit the .msh file. Save the updated .msh file.

6) Import the .msh file in big gui and rebuild - to save it- your .viv or .big file. Run BHImport from USRDIR to fix the headers of the edited files. Finally, rebuild your iso in UMDGen.

 Always have a backup of the stock files.

If you have problems, ask for help in the discord server.
Start editing and have fun!





