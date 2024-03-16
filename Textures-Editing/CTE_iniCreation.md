(INCOMPLETE - ON BUILDING)

GUIDE ON HOW TO CREATE THE INI FILES FOR CONSOLE TEXTURE EXPLORER
By Bunkai (with Lorak's help)

> Your going to need your .msh file and a hex editor.\
> I'm going to use the LOGO_LRG_SJ.msh for this example, because we can double check with an already made Logos_Teams-FE-TLOGOAPT.ini

- Create a new config.ini file, don't be scare, this is a normal text file with a fancy name.
- Now we want to fill the config.ini with the data on how to read the msh here. This is done by writing the number of texture blocks on the msh file and the specs of each one. You can start writing this, since it will be common for any of the files.
```
[items_count]
count=
[item_0]
name=TextureOrImageName
platform=PSP
offset=
width=
height=
BPP=
mipmaps=
palette_offset=
```
* Note here, the `count=` line is not finished because each msh will have a different number. 
This 'count' represents the number of different textures on your msh file.
* Each item will be detailed in its own block `[item_X]`. The number 'X' will addup accordingly.

- Once you have our 'config.ini' file created. Open your .msh file in your hex editor.
The first lines will always be something like: 
```
53 48 50 4D 60 14 00 00 01 00 00 00 47 33 35 39
31 20 20 20 20 00 00 00 42 75 79 20 45 52 54 53
5D 10 10 00 40 00 40 00 00 00 00 00 00 20 00 00
```
Which in ASCII text is:
```
SHPM`.......G359
1    ...BuyERTS
].
```
* This is the header, and among other things, it indicates the file format.
These files also have footer. Go to the last lines of the file.
You'll see something like this:
```
7C 10 00 00 01 00 00 00 40 00 00 00 40 00 00 00
70 00 00 00 31 00 00 00 00 00 00 00 00 00 00 00
```
* This is the footer, which contains more info about the data contained in the file.

However, for our goal we don't need that. Most of the ini parameters are NOT in the msh file.
You have to write them accordingly to where the data is in the msh.Here's how you do it:

To find the offset where the palette of a texture starts, look for a semicolon (;). 
The palette always comes after the texture. It starts 16 bytes after the semicolon symbol.
