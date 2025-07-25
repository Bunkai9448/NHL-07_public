# NameChange-Guide

This is for the names in the game's general roster database, for more info about this, read below in [To share your Roster](#To-share-your-Roster). If you want to edit the rosters from your Save File, go to: [SaveData Readme](https://github.com/Bunkai9448/NHL-07_public/blob/main/SaveData/Readme.md#you-can-edit-your-savedata-rosters).


To know if any of these guys is still active in the league, head over to Elite Prospects https://www.eliteprospects.com/league/nhl 
and enter their names in the search bar. 

## Video guide

https://youtu.be/ZgubcqfkTLM

## Tools

- UMDgen https://www.romhacking.net/utilities/1218/ 

- BigGUI https://dl.fifa-infinity.com/fifa-09/biggui-tool/

- NHLView http://www.artemkh.com/nhl/nhlview/

## NHL-view-name-change-guide by Krossbar Kenny

First, if you don't have it, download NHL View
http://www.artemkh.com/files/nhlview/nhlview.zip

Then, get the latest version of the .tdb file 

*Reminder: original tdb is in the ISO at db folder/ db.viv)*

Rename "nhl2007.tdb" to "nhl2007PC.tdb" using BigGUI https://dl.fifa-infinity.com/fifa-09/biggui-tool/
and edit db.viv in NHLView


Next, click Open and this window comes up

![image 01](https://i.imgur.com/uYR2d56.png)
 

make sure the top dropdown menu says Pick Manually 
Click on the button shown with the arrow, and select the tdb file you downloaded
Click Open

The top part of the screen should look like this

![image 02](https://i.imgur.com/st1JVQ6.png)

click the L. Name tab to sort in alphabetical order
Next, click the Teams tab (in red)

When you click on a team name, you get this screen

![image 03](https://i.imgur.com/LQjvkQy.png) 

Next, click on the Lines tab (in red)

![image 04](https://i.imgur.com/NHCZSXx.png) 

This glorious mess of a screen should appear:

![image 05](https://i.imgur.com/xPRm04A.png) 

Now, from here, your method may differ, but this is what I do:
First, I click on each player in black and click Scratch to remove everyone from the lineup.
Then, I click Overall to sort by overall rating

![image 06](https://i.imgur.com/2LL4svt.png) 

Now, I want to know if any of these guys is still active in the league, so I head over to Elite Prospects and enter their names in the search bar.
For example, Jarome Iginla

I can see from this page that he's retired, so he's safe to change or move
(actually, I'm going to move him to another team in case I want to make a superstar old-timers team)
Next on the list is Dion Phaneuf
https://www.eliteprospects.com/player/8564/dion-phaneuf

Now, he's on the LA Kings now, so I'm going to put him there.

Click the Transactions tab (in red)

![image 07](https://i.imgur.com/NprnvYs.png) 

1. Choose the two teams from the dropdown menus
2. Choose the player to move
Click the Move button
Click the Teams tab to return to the line-up screen
Repeat the process to see if any of the other players are still active in the game

![image 08](https://i.imgur.com/qMcvjFZ.png) 

(time passes)
Next, I want to see if there are any guys on the Calgary roster that are in the game ON OTHER TEAMS
So, I head over to their roster on Elite
https://www.eliteprospects.com/team/54/calgary-flames

Then click on the Players tab to view the players in the game

![image 09](https://i.imgur.com/GQGMAJv.png) 

remember when we sorted the players alphabetically?
That comes in handy now
We have to check the names on the roster to see if they're in the game by scrolling through the list
Now there is one thing to our advantage here.

The youngest player in the original game was born in 1989, so anyone born after 1990 (1990-20whatever) IS NOT IN THE GAME
So you only have to check players born before 1990
(a little more time passes)
On the team page on Elite, there is also a LINES tab you can click to see that teams current lines (fairly accurate)
https://www.dailyfaceoff.com/teams/calgary-flames/line-combinations/

In NHL View, I go back to the Team screen

![image 10](https://i.imgur.com/vB4JXkF.png) 

Next, let's start adding and editing players IN EARNEST
(finally, you might be saying :D)

1. Click on the position you wish to fill
2. DOUBLE-CLICK on the player you wish to fill it.
3. Click the Players tab to switch to the player edit screen

You should get this:

![image 11](https://i.imgur.com/Bg9BZyZ.png) 

You can edit a lot of stuff here, but I'm only going to change the name for now

![image 12](https://i.imgur.com/Gmc6NrN.png) 

before and after
Click on the Teams tab to go back to the line-up screen
If you don't see the change, don't worry. Click on another team, then back to the team you're working on, and it will show up
Do this for the rest of the players.


## To rebuild the iso with your new table 

Follow 01_NHL_07_PSP_Roster_Editing_and_Importation_Guide_v1.pdf

## Adapt the current salaries to nhl07
by rangers99111  

Here is the Salary Cap Calculator modified to fit NHL 07's cap.  

[salary cap calculator excel sheet](https://github.com/Bunkai9448/NHL-07_public/blob/main/Roster/Cap_Calculator_NHL07.xlsx)  

There are 4 columns in the excel file:
1. Player contract amount (AAV)
2. Current NHL 24-25 Season Cap
3. NHL07 Cap: Min of $28,000,000.00 ; Max of $44,000,000.00
4. What a player's current contract amount comes to if it were the NHL07 season today

You can add any salary amount for the first column. Just remember to carry the formulas from the other columns and everything will calculate automatically. Using NHLView, I believe based on the salary, you'll need to round aav amounts up or down based on your roster needs. I'll gladly help if there are any questions. I do have a Twitter account that I'm starting to use now: https://x.com/rangers99111

## To share your Roster

- The previous edit is for the full roster used in the iso.

However the roster update it's easier to share in the form of a savedata, keep reading for that.

- Once you've rebuilt the iso, go save in-game and your roster update will be now in the newly created savedata file.

For more info about the savedata,
see [SaveData](https://github.com/Bunkai9448/NHL-07_public/tree/main/SaveData) for more info about that.


## Additional info

Images in batch https://imgur.com/a/o814V1s

Use Madden Xtreme DB Editor to export and import tables across nhlbioatt.tdb, nhlplayers.tdb, and nhlrost.tdb
