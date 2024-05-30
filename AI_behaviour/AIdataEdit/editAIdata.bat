:: Make a back up copy from streams.viv, in case something goes wrong
IF NOT EXIST "Difficlt.ubc_BackUp" (
	copy Difficlt.ubc Difficlt.ubc_BackUp
)

:: Insert the new AI values
armips Difficult.asm

PAUSE