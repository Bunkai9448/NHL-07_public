# Texture Editing

## Tools 

- Console texture Explorer, https://forum.xentax.com/viewtopic.php?p=131457&sid=ee0d41dbcfa766b583d1192fb65c1b52#p131457

- BugGUI, https://dl.fifa-infinity.com/fifa-09/biggui-tool/

- Game Graphic Studio, https://www.romhacking.net/utilities/660/

## nhl-psp_CTE_ini_files.zip, by Lorak

Load .msh files, not .viv files, in Console Texture Explorer.  
First, you need to extract the files from jerseys.viv through bigGUI.  
Then, load as ini file, either "fe-JERS_XXX_0X.ini" or "gamedata-uniXXX_X.ini".  
The first one is for the torfs and the second one for the in-game jerseys.  
There are two jerseys.viv files, one in the fe folder (torfs) and the second 
one in the gamedata folder (in-game jerseys).  

Yes, to edit .tm2 files is the annoying part.  
Now, you load the .tm2 file in Game Graphic Studio (GGS) and need to edit it there.  
Editing the palette  and the transparency is really annoying in GGS.  
As far as I know there is no other way.

## How To, by Lorak

It is not difficult but time consuming. What I used to do to edit all these textures is the following:

1) Load the exported .tm2 file in GGS.
2)  Right click on the top middle section (above the Drag & drop with right mouse button) and open the replacement or new texture. Could be a png or bmp file.
3)  Now untick RGB and Alpha and tick Data in the options for the "Drag & drop with right mouse button". Drag the image from the top to the bottom while pressing the right mouse button.
4) Fix the transparency in the color palette. Some times you even need to edit the palette.
5) The file saves automatically, Now load the updated .tm2 file in CTE. Check in particular the transparency.
6) If all is ok, you are done, otherwise need to start from step 1 above.
