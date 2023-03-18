# Disclaimer

- I reuploaded this since the original binaries might get lost and are needed for this project to be fully completed.
The original and only author of this plugin is kokibits ( https://github.com/kokibits/ ).

- kokibits, you stated in your readme that this plugin was to help this kind of projects and you didn't add any kind 
of requirement or license, I hope this is OK with you. However if you want me to take your files out of this repo, 
please submit a github issue and I will gladly abide by your decission. Thanks.

- This method/plugin was buried and almost forgotten, It's time to make it spread, because it solves many headaches 
for this and future translation projects and it deserves the attention. You can learn more about the plugin in:  
https://wololo.net/talk/viewtopic.php?f=28&t=42910&p=389277  
https://github.com/kokibits/LangSwapper

## How To Use

For System Messages like this ![System Message Picture](https://imgur.com/7jnmTTi.png )

- You are usually expected to track down the sce functions in your game and edit them, but there is way to work with
them in a simpler and more generic manner, thanks to the use of a PSP plugin.

- For those who haven't used a plugin for PSP before, here's how you make it work:  
https://gbatemp.net/threads/adrenaline-how-to-used-plugins.449509/#post-6855326  
*Explanations are for PS Vita's Adrenaline, but for a normal PSP just do the same in your PSP root folder (ms0:)*

- The text will now be copied and pasted here for quick use:  


```
Put the plugin in 'ux0:/pspemu/seplugins/'

Create a 'game.txt' file and write in it 'ms0:/seplugins/plugin_name.prx 1'

And put the game.txt inside the 'ux0:/pspemu/seplugins/' folder.
```
In our case, the folder would end like this:
```
ux0:/pspemu/seplugins/
 game.txt
 LangSwapper.prx
```
If you need visual aid, check the image below:
![Visual Aid Image](https://imgur.com/pxDgjyB.png)

- Don't forget to write this in your "game.txt", you can copy paste.
```
ms0:/seplugins/LangSwapper.prx 1
```

- With that we have taken care of all the syscalls required for our translation: 
sceImposeSetLanguageMode(), sceUtilityDialogInitStart() and sceUtilitySavedataInitStart()

## The easy way, for end users

Download the Plugin.zip from this folder, unzip it and put it in the root of your PSP (or psemu/ if you are using 
adrenaline). Enjoy:
![Proof](https://imgur.com/ASJZPU5.png)
