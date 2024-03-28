# Guide on editing the game soundtrack list
By Lorak

1) Convert the new sound file to asf via sx with the same format s the stock file you want to replace. For files in streams.viv. Usually you convert it with these commands `sx -pspstream -eaxa_blk -rs44100 source.wav -=output.asf`. Here source.wav and output.asf are placeholders for the input or source wav file and output
 asf file.
2) Open streams.viv and output.asf in an hex editor. Look for the file name you want to replace, in this case EOP_NHL_07.asf (red rectangle). Now move 8 bytes to the left to get the offset (blue rectangle) in streams.viv where this file is located.

![Hex Editor Image]()
