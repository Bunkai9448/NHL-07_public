# Working with the SaveData

## The bin files are encrypted,

You will use the tool from:
https://wololo.net/talk/viewtopic.php?p=332315&sid=ee68f593ed4ccb6b7b6c96d4e7b80c5a#p332315

Credits and How To are copied down to overview.
```
Description:
A GUI tool to decrypt\encrypt PSP Savedata files on PC.

How to use:
Just Drag'n'Drop required Savedata files on it's field, or Press Open to add it.
Then Press Encrypt or Decrypt button.

hgoel0974, libkirk team, ppsspp team, xian nox, codestation.
```

Don't forget to use the proper game key: (an alfanumeric string inside the file:) ULUS10131.bin

## Our current theory

DATA.bin is an encrypted. exh file, which is created in game by saving (akin to the PC version)
![Image Proof](https://github.com/Bunkai9448/NHL-07_public/blob/main/SaveData/Info_Display.png)

## You can edit your savedata rosters

To do that, use the method explained in [Roster](https://github.com/Bunkai9448/NHL-07_public/tree/main/Roster). But first, you need to do a few extra steps:

**Editing roster game saves** By Lorak

We start assuming that your game save is already decrypted and that you know how to decrypt and encrypt PSP game saves.

**1.** Open your decrypted game save in an hex-editor. Delete four bytes, from offset 0x4 to 0x8, this block of data is just four bytes of zeros. Save it with any name, make sure `exh` is the extension. 

**2.** Open NHLView and choose "Pick manually" and select the attached file,`db.viv`, as "Static database".  Select your .exh file from step 1 as "Exhibition roster database".
 
**3.** Make your edits in NHLView and save the file.
**4.** Open again your .exh file in an hex-editor, go to offset 0x4 and insert 4 bytes of zeroes.

**5.** Encrypt your game save and check your changes in your device: PSP, PS Vita or any other running PPSSPP.

## Fixing loading error 80110306 for Roster use in PS Vita (and some PSPs by extension) 

- You need the PPSSPP emulator for this.

PPSSPP's console version is 6.60 and adrenaline is 6.61, you need to change PPSSPP version to be the same of your console. 
To do that, go to:
`\ppsspp_win\memstick\PSP\SYSTEM\ppsspp.ini`
The line you want to edit should be this:
`PSPFirmwareVersion = 661`

Once you have done the change, reload the game and savedata, do the save again and transfer the new savedata to your console. Your save should work in the console now.
