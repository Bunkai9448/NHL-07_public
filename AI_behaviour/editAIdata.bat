:: Make a back up copy from streams.viv, in case something goes wrong
IF NOT EXIST "Difficlt.ubc_BackUp" (
	copy Difficlt.ubc Difficlt.ubc_BackUp
)

:: Insert the new audio and fix the offsets if needed
armips Difficult.asm

PAUSE