# Creating and Converting PMF Videos for NHL 07 PSP

This guide details methods for working with `.pmf` video files, such as the game intro, in *NHL 07* PSP.

---
## Tested Method to create a pmf File

Follow these steps to create a `.pmf` file, based on resources from [Project DIVA](https://projectdiva.net/community/threads/2020-create-pmf-videos-for-psp-games.2348/) and [FFmpeg](https://ffmpeg.org/).

1. **Obtain the Source Video**  
   Start with a video file, such as `nhl.mp4` in the example.

2. **Encode the Video**  
   Use FFmpeg to process the video into a PSP-compatible format:  
```
ffmpeg -i nhl.mp4 -filter:v "setsar=1","fps=30" -qscale:v 1 -c:v libxvid input.mp4
ffmpeg -i input.mp4 -map 0:0 -vf scale=480:272:flags=lanczos -vb 4M output.avi
```

3. **Encode the Audio**  
Extract and convert the audio to a compatible format:  
```
ffmpeg -i input.mp4 -ar 44100 output.wav
```

4. **Mux with UMD Stream Composer**  
Open UMD Stream Composer, import the `output.avi` and `output.wav` files from steps 2 and 3, and select **Run > Encode + Multiplex**.  
![Run > Encode + Multiplex](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/UMDStreamComposer.png)  
- This generates an `.mps` file, typically saved to:  
`UmdStreamComposer\MuxWork\projectName\00001` (check your 'my documents' folder)

- To adjust video size, repeat with a different bitrate. See:  
![Average Bitrate](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/UMDStreamComposer_Bitrate2.png)  
![Bitrate vs. Quality](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/Bitrate_ImageQuality.png)

5. **Convert to .pmf with PMF Creator**  
Launch PMF Creator, load the `.mps` file, and export it as a `.pmf`.  
![PMF Creator](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/PMF%20creater.png)

6. **Insert into ISO with UMDGen**  
Open UMDGen, navigate to the `movies/` folder in the ISO, and replace `demo.pmf` with your new file to test it.

## Tested Method to Convert a .pmf 

Extract and convert a `.pmf` file, such as `demo.pmf`, into an `.mp4` format with these steps.

1. **Obtain the .pmf File**  
   Use a file like `demo.pmf` as the source.

2. **Demultiplex with VGMToolbox**  
   In VGMToolbox, go to **Misc. Tools > Stream Tools > Video Demultiplexer**, and set the format to `PMF (PSP Movie Format)`.  
   ![Video Demultiplexer](https://github.com/Bunkai9448/NHL-07_public/blob/main/Video-pmf/VGMtoolBox.png)

3. **Extract Audio and Video**  
   Select **Extract Audio and Video** to split the file into `demo.oma` (audio) and `demo.264` (video).

4. **Combine into MP4 with FFmpeg**  
   Merge the extracted files into an `.mp4`:  
```
ffmpeg -i demo.264 -i demo.oma -map 0 -map 1 -s 1440x816 demo.mp4`
```

## Or you can use the tools from

https://github.com/TeamPBCN/pmftools

