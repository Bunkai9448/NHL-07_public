# For PMF videos like the game intro

## Tested Method to create a pmf file 
https://projectdiva.net/community/threads/2020-create-pmf-videos-for-psp-games.2348/

1st) get the video.

2nd) Video encoding is:
ffmpeg -i nhl.mp4 -map 0:0 -vf scale=480:272:flags=lanczos -vb 4M nhl.avi

3rd) Audio encoding is:
ffmpeg -i nhl.mp4 -ar 44100 nhl.wav

4th)go to UMD Stream Composer and use files from 1&2. It will result in an mps file.

5th) open pmfcreater and use the mps file.

6th) With UMDgen, go to the movies/ folder in the iso and swap demo.pmf to see it.


## Or you can use the tools from

https://github.com/TeamPBCN/pmftools