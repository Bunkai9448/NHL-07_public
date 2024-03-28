# Guide on editing the game audio streams
By Lorak

1) Convert the new sound file to asf via sx [EA sound exchange](https://wiki.multimedia.cx/index.php/Electronic_Arts_Sound_eXchange) with the same format s the stock file you want to replace. For files in streams.viv. Usually you convert it with these commands `sx -pspstream -eaxa_blk -rs44100 source.wav -=output.asf`. Here source.wav and output.asf are placeholders for the input or source wav file and output
 asf file.
2) Open streams.viv and output.asf in an hex editor. Look for the file name you want to replace, in this case EOP_NHL_07.asf (red rectangle). Now move 8 bytes to the left to get the offset (blue rectangle) in streams.viv where this file is located.

![Hex Editor Image](https://github.com/Bunkai9448/NHL-07_public/blob/main/Audio-asf/hex_streams.viv.png)

3) In the hex editor go to output.asf and copy the whole file. Plave the cursor at the hex numbers section.
4) Now go to offset 00000500 in streams.viv (green rectangle) in the hex editor and paste (ctrl+B) the data from step 3). Save the file streams.viv.
You are done!!

![Hex Editor Image 2](https://github.com/Bunkai9448/NHL-07_public/blob/main/Audio-asf/hex2_streams.viv.png)
