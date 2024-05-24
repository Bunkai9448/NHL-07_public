IF NOT EXIST "trackinfo_BackUp" (
	copy trackinfo trackinfo_BackUp
)
armips trackinfo.asm

PAUSE