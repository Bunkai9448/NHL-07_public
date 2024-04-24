# For PMF videos like the game intro

## Tested Method to create a pmf file 
https://projectdiva.net/community/threads/2020-create-pmf-videos-for-psp-games.2348/ and https://ffmpeg.org/

1st) Get the video. (nhl.mp4 in the example)

2nd) Video encoding is:
ffmpeg -i nhl.mp4 -map 0:0 -vf scale=480:272:flags=lanczos -vb 4M nhl.avi

3rd) Audio encoding is:
ffmpeg -i nhl.mp4 -ar 44100 nhl.wav

4th) Go to UMD Stream Composer and use files from 1&2. ![Run > Encode + Multiplex](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/UMDStreamComposer.png) It will result in an mps file (If you want to change the video size, repeat this process with a different video enc. average bitrate https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/UMDStreamComposer_Bitrate.png).

5th) Open pmfcreater and use the mps file.

6th) With UMDgen, go to the movies/ folder in the iso and swap demo.pmf to see it.

## Tested method to obtain an mp4 file from a pmf file

1t) get the file. (demo.pmf file in the example)

2nd) In VGMToolbox, go to "Misc. tools -> Stream tools -> Video demultiplexer"
And, in Format select PMF (PSP Movie Format). 

3rd) Choose "Extract Audio and video", and let the tool do the extraction.
You'll get two files (demo.oma and demo.264)

4th) New video encoding is:
ffmpeg -i demo.264 -i demo.oma -map 0 -map 1 -s 1440x816 demo.mp4


## Or you can use the tools from

https://github.com/TeamPBCN/pmftools

