:: Proof of concept with USRDIR/PocketDJ/antiflag.aud

echo "Moves the file we want to convert to the working directory"
MOVE antiflag.aud tools.required/

echo "Makes sure the aud file is an .at3/aa3 valid and changes it to .aa3"
cd tools.required/
quickbms.exe converter.bms antiflag.aud

:: echo "File.aud to file.aa3"
:: at3tool.exe

ffmpeg -i antiflag.aa3 antiflag.mp3
echo "Conversion completed!"

echo "Clean temp files, erasing .aa3 file"
DEL antiflag.aa3

echo "Returns source and converted file to main directory:"
MOVE antiflag.aud ../
MOVE antiflag.mp3 ../
pause


:: Files in tools.required/
:: at3tool.exe, converter.bms, ffmpeg.exe, msvcr71.dll, quickbms.exe, reimport.bat

