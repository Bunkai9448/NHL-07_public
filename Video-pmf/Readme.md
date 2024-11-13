# For PMF videos like the game intro

## Tested Method to create a pmf file 
https://projectdiva.net/community/threads/2020-create-pmf-videos-for-psp-games.2348/ and https://ffmpeg.org/

1st) Get the video. (nhl.mp4 in the example)

2nd) Video encoding is:\
[ffmpeg -i nhl.mp4 -filter:v "setsar=1","fps=30" -qscale:v 1 -c:v libxvid nhl2.mp4]\
ffmpeg -i nhl.mp4 -map 0:0 -vf scale=480:272:flags=lanczos -vb 4M nhl.avi

3rd) Audio encoding is:
ffmpeg -i nhl.mp4 -ar 44100 nhl.wav

4th) Go to UMD Stream Composer and use files from 2&3. ![Run > Encode + Multiplex](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/UMDStreamComposer.png) It will result in an mps file.  
* The MPS will be in a route like this: `UmdStreamComposer\MuxWork\projectName\00001`

If you want to change the video size, repeat this process with a different video enc. Average bitrate ![UMD composer bitrate](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/UMDStreamComposer_Bitrate2.png) Bitrate and quality relation ![Bitrate_ImageQuality](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/Bitrate_ImageQuality.png).

5th) Open pmfcreater and use the mps file. ![pmfcreater](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/PMF%20creater.png)


6th) With UMDgen, go to the movies/ folder in the iso and swap demo.pmf to see it.

## Tested method to obtain an mp4 file from a pmf file

1t) get the file. (demo.pmf file in the example)

2nd) In VGMToolbox, go to "Misc. tools -> Stream tools -> Video demultiplexer"
And, in Format select PMF (PSP Movie Format). ![Misc. tools -> Stream tools -> Video demultiplexer](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/VGMtoolBox.png)

3rd) Choose "Extract Audio and video", and let the tool do the extraction.
You'll get two files (demo.oma and demo.264)

4th) New video encoding is:
ffmpeg -i demo.264 -i demo.oma -map 0 -map 1 -s 1440x816 demo.mp4


## Or you can use the tools from

https://github.com/TeamPBCN/pmftools

