IF NOT EXIST "streams.viv_BackUp" (
	copy streams.viv streams.viv_BackUp
)
armips editStreams.asm

PAUSE