# Texture Editing

There are currently 2 ways to work with the textures.
- Through PPSSPP's texture swap (editing your config.ini, explanations at the end of this readme)
- ISO files' replacement (the video and most tools are for this one)

- A nice tool to rule them all (WIP): [EA-Graphics-Manager](https://github.com/bartlomiejduda/EA-Graphics-Manager/releases/)

## Video guide

[https://youtu.be/l1-nQgmIKks](https://youtu.be/l1-nQgmIKks)

## Tools 

- UMDgen to open the ISO, https://www.romhacking.net/utilities/1218/

- BigGUI (and ImpBIG), https://dl.fifa-infinity.com/fifa-09/biggui-tool/

- Console texture Explorer, https://reshax.com/topic/170-graphicstexture-finders-and-viewers/

- Game Graphic Studio, https://www.romhacking.net/utilities/660/

- Rainbow, https://github.com/marco-calautti/Rainbow

- BHimport, https://forums.operationsports.com/forums/ea-sports-nhl/932763-ea-sports-nhl-07-psp-quest-update-8.html

- [nhl-psp_CTE_ini_files.zip](https://github.com/Bunkai9448/NHL-07_public/blob/main/Textures-Editing/nhl-psp_CTE_ini_files.zip)

## General steps to edit game textures and logos (Textures)

* By Lorak *

There are two places to look at, PSP_GAME-USDIR-fe and PSP_GAME-USDIR-gamedata. From now on, we call it fe and gamedata respectively. Get the tools from github or the links below.

1) Select the assets -mainly .viv and .big files- to edit from fe and gamedata. An advice is to work on the files from one location to then go on to the next one. For example, work on the files from fe and then gamedata. 

Typically, you get jerapt.viv, tlogoap.viv from fe and arenaXXX.big -here, XXX is a placeholder for a team-, IceTxtrs.big and jerseys.viv from gamedata. Of course, there are more files to work on.

2) Extract the contents of the files chosen in 1 via big gui. Almost all textures in this game are in .msh files.

3) Get the .ini files from github and open your .msh file in Console Texture Explorer, export it as .tm2 files. (If your file doesn't have one ini for it, basic guide on how to create those ini files is in ![CTE_iniCreation.pdf](https://github.com/Bunkai9448/NHL-07_public/blob/main/Textures-Editing/CTE_iniCreation.pdf))

4) Open those. tm2 files in Game Graphic Studio (GGS). Edit it there. This could be very annoying -a pain in the ass, I would say laughing -. Save the file. Not recommended.

As an alternative, edit the .tm2 files in Rainbow https://github.com/marco-calautti/Rainbow. First, open a .tm2 file and export it. You get a .png and a .xml file. Just edit the .png in your favorite software. GIMP, Photoshop or any other ( 
Preserve the size and format. The png is in RGB mode and for textures with transparency, the alpha channel (transparency) is enabled. Save in RGB mode, your edited png with the same name you got from Rainbow. Save the same file with another name as indexed png. We are going to use the latter in Game Graphic Studio.
Save your changes without changing the file name. Go back to Rainbow and import the .xml file. It will load the edited .png too.  Rainbow seems to be really user friendly.)

5) Import the updated .tm2 file from 4 to Console Texture Explorer to actually edit the .msh file. Save the updated .msh file.

6) Import the .msh file in big gui and rebuild - to save it- your .viv or .big file. **Run BHImport from USRDIR to fix the headers of the edited files** (must follow the vanilla game's folder structure `NHL07_PSP\PSP_GAME\USRDIR\`).

7) Finally, rebuild your iso in UMDGen.

 Always have a backup of the stock files.

If you have problems, ask for help in the discord server.
Start editing and have fun!

## torf jersey template tutorial
https://www.tapatalk.com/groups/nhl04rebuilt/realistic-torf-template-t4353.html

## Notes to reliable edit uniform/jersey numbers and letters, updated in Oct 2024 by lorak :

I just deleted the old notes to edit jersey numbers as it was not really useful. In this guide we are going to work in two parts with two .ini files for Console Texture Explorer (CTE) and Rainbow.

I will take the numbers for the Anaheim home jersey, (inside USRDIR/gamedata/jerseys.viv) `num000_1.msh` as example.

> First Part
1) Make a copy of  `num000_1.msh`, I like to call it `num000_1-Aux.msh`, any name is good. Now you have `num000_1.msh` and `num000_1-Aux.msh`.
2) Open `num000_1-Aux.msh` in CTE. `Load the first .ini file.` Export all textures as tm2 files. `We are going to edit each number and its two mipmaps in one file. This avoids bad edits that frequently happened following the old notes.`
3) Open Rainbow to load each of the the tm2 files from step 3 and export each texture.
My advice is to first work on the  jersey numbers from zero to nine (NMA0 to NMA9) as well as the CAPN and ASSN textures to then finish with the arm numbers. In my opinion, you save a bit of time if you follow my advice. See Step 4) on the attached image.
4) In your favorite image editor edit each png file you got from Rainbow with the new number textures. Save your changes as png. Make sure it is in RGB mode. 
5) Import the edited textures in Rainbow and save it. I prefer to save it with a new name.
6) Go back to CTE an import the all the updated tm2 textures. We are still working with the first .ini file. Save the msh file, in this case `num000_1-Aux.msh`. Close the file.

> Second Part  
7) Open `num000_1-Aux.msh` (already updated) in CTE. `Load the second .ini file.` Export all the textures as tm2. Close the file.
8) Open `num000_1.msh` in CTE. Note that this file has not been touched just yet. `Load the second .ini file.` Import all tm2 textures you got from step 6) above and save.

Still, this is a time consuming task but at least you will get good and reliable results.

![jersey numbers editing](https://github.com/Bunkai9448/NHL-07_public/blob/main/Textures-Editing/guide_images/Jersey_numbers_editing.png)

## Notes on Player headshots
(by kinglalu)

For anyone else, what i did was cross reference and see what photo id is for each player in nhlview. For example, Patrick Kane in our mod here has a photo id of 8610. Going into the viv file in fe/portapt.viv, each player has their own big file, and in it, contains the msh image of that player. 


Patrick Kane has a photo id that doesn't exist in the game, so all I simply did was export a existing big file, rename all its components inside it (they also have a .o file, a .apt file, etc), as well as the big file itself to the photo id of that player, (in this case 8610).

 I then went in and imported the image in CTE for that msh file (had to use Rainbow for handling the tm2 files since it has transparency in the image) and simply just added in that new big file, then did the usual rebuild for the rom and it worked, image below of it in action: ![Patrick Kane player image headshot replacement](https://github.com/Bunkai9448/NHL-07_public/blob/main/Textures-Editing/guide_images/player_headshot_image.png)


## PPSSPP Dumping textures and editing your config.ini
(Path for the config file: `PSP\TEXTURES\ULUS10131\config.ini`)\
(Path for the new textures `PSP\TEXTURES\ULUS10131\` + the one in the ini file)

Guide by Tricolore

(You must allow the creation of textures/ini folder for the game.  You can then save the textures for modification)

To work with the textures for the mod, first you need to extract them:
`PSP settings > tools> developer tools > save new textures`
It will make a new folder with the dumped textures

Once the textures dump, you will see files of numbers. 

Let's say you want to replace a Jersey file , but you need to use ini so that the jerseys works each time.

So what you do is take the jerseys file name. Let's say it's 099336b0617a524bff70fd4f

And let's say that file is a Philadelphia Flyers jersey from 2007, but we want to update it to 2024

You keep the last 8 digits ( can be numbers or letters) of the file name, and replace the first 16 with zeros. 

Inside the ini you would write 0000000000000000ff70fd4f

Because the first 16 are zeros and the last 8 you keep

After doing that, you will write "=insertname.png" (an equal sign and whatever the name of the new file is that is replacing the old one)

So let's say the new file is called "2024flyers.png"
So you would write in the ini, 0000000000000000ff70fd4f=2024flyers.png

If you want to add more entries after that, (0000000000000000ff70fd4f=2024flyers.png) , you should double enter, to add a new line entry

And that's it
