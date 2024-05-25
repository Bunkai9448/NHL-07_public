# Soundtrack info

You can listen the playlist:

- in Spotify
https://open.spotify.com/playlist/5nR8cvUicjrPjjWkr4CJ9N?si=qRT_RpqERDyzuPtdAY5z3A&utm_source=copy-link&dd=1

- in Youtube https://youtube.com/playlist?list=PLlx6KpLdGdPkyE-zHqZg4-GSR1rNxRVQZ&si=U7iLlliA-qhLCE8V


## To convert the aud songs into mp3

See the [aud.to.mp3.bat](https://github.com/Bunkai9448/NHL-07_public/blob/main/Soundtrack-info/aud.to.mp3.bat) file of this folder for a Proof of Concept. \
\
In addition to the bat file, you'll need the following:

- at3tool.exe from https://www.pspunk.com/psp-atrac3/
- [converter.bms](https://github.com/Bunkai9448/NHL-07_public/blob/main/Soundtrack-info/converter.bms) (this file was taken from the now closed forum Xentax)
- ffmpeg.exe from https://www.ffmpeg.org/download.html
- [msvcr71.dll](https://es.dll-files.com/msvcr71.dll.html)
- quickbms.exe from https://aluigi.altervista.org/quickbms.htm

And your folder tree should look like this:
```
aud.to.mp3/
|   aud.to.mp3.bat
|   yourFile.aud
|
\---tools.required/
    |   at3tool.exe
    |   converter.bms
    |   ffmpeg.exe
    |   msvcr71.dll
    |   quickbms.exe
    \
```

## To convert back the mp3 into aud

See the [mp3.to.aud.bat](https://github.com/Bunkai9448/NHL-07_public/blob/main/Soundtrack-info/mp3.to.aud.bat) file of this folder for a Proof of Concept. \
\
In addition to the bat file, you'll need the following:

- at3tool.exe from https://www.pspunk.com/psp-atrac3/
- [converter.bms](https://github.com/Bunkai9448/NHL-07_public/blob/main/Soundtrack-info/converter.bms) (this file was taken from the now closed forum Xentax)
- ffmpeg.exe from https://www.ffmpeg.org/download.html
- [msvcr71.dll](https://es.dll-files.com/msvcr71.dll.html)
- quickbms.exe from https://aluigi.altervista.org/quickbms.htm

And your folder tree should look like this:
```
aud.to.mp3/
|   mp3.to.aud.bat
|   yourFile.mp3
|
\---tools.required/
    |   at3tool.exe
    |   converter.bms
    |   ffmpeg.exe
    |   msvcr71.dll
    |   quickbms.exe
    \
```

**Keep in mind that, your resulted aud file MUST be of size under or equal than the original aud you want to swap.**
