# This section is still in a very early state

Use UMDGen.exe to extract the files of your ISO

open gamedata/aidata.viv with bigGUI and extract the files: Beginner.ubc Easy.ubc Medium.ubc Difficlt.ubc

Those are the files that control AI behaviour. You can edit them with your hex editor of choice.

For now we know you can edit these addresses
```
000000D4: CD 00
000000D5: CC 00
000000D6: CC 80
000000D7: 3D 3F
000004C8: 9A 00
000004C9: 99 00
000004CA: 99 C8
000004CB: 3E 42
0000076C: 5C 00
0000076D: 8F 00
0000076E: 42 88
0000076F: 3E 41
```

(In windows) You can see if you have made your changes comparing the original and the edited file with:
fc /b "aidata viv"\Difficlt.ubc "aidata_Edited viv"\Difficlt.ubc

## Using Total Control Editor NHL08

Thanks to Lorak, we know that, 
Total Control Editor NHL08
from https://wasserlasser.com/filebase/index.php?file/2354-total-control-editor/
also works for NHL 07 but you need to adjust the offsets in the xml file (like we have done in ![aidata.xml](). Of course, some fields do not appear in NHL 07


![TCE08.png](https://github.com/Bunkai9448/NHL-07_public/blob/main/AI_behaviour/TCE08.png)
