# How to:

- Download this folder and add the files from the [Files for this process](#Files-for-this-process) section

- Go to your [editStreams.asm](https://github.com/Bunkai9448/NHL-07_public/blob/main/Audio-asf/StreamsFileEdit/editStreams.asm) and 
write the info on files you want to change there, follow the comments to see where/how. 

- After that, just run the [makeEdits.bat](https://github.com/Bunkai9448/NHL-07_public/blob/main/Audio-asf/StreamsFileEdit/makeEdits.bat) file.

## Files for this process

Folder Screenshot: \
[Folder Screenshot](https://github.com/Bunkai9448/NHL-07_public/blob/main/Audio-asf/StreamsFileEdit/StreamsFileEdit_folder.png)

- [armips](https://github.com/Kingcom/armips/releases)
- [editStreams.asm](https://github.com/Bunkai9448/NHL-07_public/blob/main/Audio-asf/StreamsFileEdit/editStreams.asm)
- [makeEdits.bat](https://github.com/Bunkai9448/NHL-07_public/blob/main/Audio-asf/StreamsFileEdit/makeEdits.bat)
- [Electronic Arts Sound eXchange 2 (EA_sx2.EXE)](https://wiki.multimedia.cx/index.php/Electronic_Arts_Sound_eXchange), 
- Your `.asf` file or `source.wav` for the new audio, in the code sample we use the original `AllStarIntroNHL07_1.asf`
- Your `streams.viv`, you can find it in `PSP_GAME\USRDIR\audio\streams`

## FAQ

- The [makeEdits.bat](https://github.com/Bunkai9448/NHL-07_public/blob/main/Audio-asf/StreamsFileEdit/makeEdits.bat) file 
is coded to use [Electronic Arts Sound eXchange 2](https://wiki.multimedia.cx/index.php/Electronic_Arts_Sound_eXchange) with 
the usual asf format for files in streams.viv, if you find one that uses a different one, that's the code you want to edit.

- You can use [vgmstream-web](https://katiefrogs.github.io/vgmstream-web/) to hear the ASF audio in order to double-check, and get the info for editing.
