# Creating a cheatcode for our game

As a bonus for this project, I wanted to create a Quality of Life improvement for this game.

- We will cheat at the steps required to clean the area. 

## Game ID: 

Just google for it, in our case is:
```
Digivice Ver. Portable (Japan) PSP ISO. ID: NPJH-00126
```

## How to make it

- The idea is to study how RAM values are passed and changed during executions.

- First you need to go to the screen where those values appear (they don't need to be displayed, as long as the game
is using them, but knowing the actual value will help to find them).

- Once you have the values located in-game, you want their RAM location, hence the next step is making a RAM Dump. 

- In PPSSPP, go to Debug > Dissassembly. See image below:  
![Debug](https://imgur.com/kyTlsNK.png)

- And right-click in the "Memory" pannel down below, then click on Dump.
![RAM Dump](https://imgur.com/uVAGKl6.png)


- There are a few ways to look at the dump, you can even do it by hex editor. However, to make your work easier, 
you're going to use a tool created for that purpose. Download and install/open ArtMoney from the following link 
https://www.artmoney.ru/e_download_se.htm you can study how the parameters for steps change.  
*Another popular tool to make this is https://www.cheatengine.org/*

- Open ArtMoney (or your selected tool), and load your RAM.dump. 
![ArtMoney](https://imgur.com/WBxYpW2.png)

- It's time to look for that number in the tool (ArtMoney or Cheatengine). Don't worry when you encounter many
candidates for the digits you typed, your next step will be reduce it. Use the 'Search' button, and write the digits
you want to find.  
![Search for the value](https://imgur.com/gdIAaki.png)


- To decrease the matches you want to keep the tool (ArtMoney or Cheatengine) open, play to change the in-game 
value and then dump the RAM again. This way you're going to track down the values in the RAM, using the filter button.
![Filter the candidates](https://imgur.com/08k8B8c.png)

- After you have done the previous steps a few times and only one candidate, it's time to double-check your results.
When you double click over the address obtained in the left pannel (red arrow in the image below), A new information
will show in the right pannel (blue arrow in the image below). This left pannel shows (theoretically) the value digits
in the RAM (and the dump file).
![Results](https://imgur.com/pzPAedX.png)


- The next step is double-check that with your game. Copy your address from the left pannel (the red arrow above). 
Open your emulator's memory viewer, and go to that address to change its digits. If everything went well, you're going
to see your parameters change in game. *The addresses on this game steps are: 0959724 for remainings steps, and 
0959728 for walked steps.*

- Tip: for some reason PPSSPP not always shows RAM values because you have to set something properly in 
it. Don't worry, you won't get a sanity-check but, you can keep going with the process and the results won't change.

## How to use it

As a way to test it, a cheat code for PPSSPP was created following the guide from:  
https://www.almarsguides.com/retro/walkthroughs/PSP/HowToUsePSPCodes/

Here's the text you need to put in your ~\ppsspp\memstick\PSP\Cheatscheat.db file:
```
_S NPJH-00126
_G Digivice Ver. Portable (Japan) PSP ISO
_C0 Edit Remaining Steps
_L 0x000000959724 0x00000000    
_C0 Edit Walked Steps
_L 0x000000959728 0x00000000
```
*To test this in hardware use the cwcheat plugin. https://www.cfwaifu.com/cwcheat-adrenaline/*


## FAQ

- This cheat was made quickly, and due to the nature of the routines for steps in this digivice game, the 
result of the cheat is buggy. However it works as a Proof Of Concept to learn and make more, in fact you can use 
it for its original purpose with little effort.

- Code was tested and working both in PPSSPP and PS Vita's adrenaline, which means also works on PSP.
