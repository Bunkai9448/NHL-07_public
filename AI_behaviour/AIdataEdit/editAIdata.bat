:: Make a back up copy from streams.viv, in case something goes wrong
IF NOT EXIST "Difficlt.ubc_BackUp" (
	copy Difficlt.ubc Difficlt.ubc_BackUp
)

:: Put the new AI values in the .ubc file
armips Difficult.asm

PAUSE

:: Insert back the edited .ubc file
::genbhnhl gamedata\aidata.viv
::ImpBIG /i aidata.viv gamedata\aidata.viv