:: Convert the WAV file to ASF
EA_sx2 -pspstream -eaxa_blk -rs44100 source.wav -=output.asf

PAUSE

:: Make a back up copy from streams.viv, in case something goes wrong
IF NOT EXIST "streams.viv_BackUp" (
	copy streams.viv streams.viv_BackUp
) ELSE ( 
REM If there was a backup it means we have to use that instead
    copy streams.viv_BackUp streams.viv
)

:: Insert the new audio and fix the offsets if needed
armips editStreams.asm

PAUSE
