IF NOT EXIST "PARAM.SFO_BackUp" (
	copy PARAM.SFO PARAM.SFO_BackUp
)
armips PARAM.asm

PAUSE