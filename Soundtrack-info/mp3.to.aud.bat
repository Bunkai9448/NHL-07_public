:: Proof of concept with USRDIR/PocketDJ/antiflag.aud
echo "Moves the file we want to convert to the working directory"
MOVE antiflag.mp3 tools.required/
cd tools.required/

echo "File.aud to file.aa3"


ffmpeg -y -i antiflag.mp3 -ac 1 -ab 64k antiflag2.mp3
ffmpeg -i antiflag2.mp3 -c:a pcm_s16le -ar 44100 antiflag.wav
at3tool -e antiflag.wav -br 52kbps antiflag.at3 1> at3tool.Error.log
Ren antiflag.at3 antiflag.aud

echo "Conversion completed!"

echo "Clean temp files, erasing .wav file"
DEL antiflag2.mp3
DEL antiflag.wav


echo "Returns source and converted file to main directory:"
MOVE antiflag.aud ../
MOVE antiflag.mp3 ../

pause

:: Files in tools.required/
:: at3tool.exe, converter.bms, ffmpeg.exe, msvcr71.dll, quickbms.exe, reimport.bat
:: * converter is the "at3 to aa3 converter for PSP and PS3" bms script from 
:: https://forum.xentax.com/viewtopic.php?f=13&p=42443#p42443