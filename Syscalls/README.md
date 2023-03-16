https://imgur.com/ASJZPU5.png

## Explanations

For System Messages like https://imgur.com/7jnmTTi.png  
You usually are expected to track down the sce functions in your game and edit them, but there is an obscure way to work with them in 
a simpler and more generic manner, thanks to this: https://wololo.net/talk/viewtopic.php?f=28&t=42910&p=389277 from 
https://github.com/kokibits/LangSwapper
It's time to make this method more known/used. Besides, it solves many headaches for future translation projects.

- For those who haven't used a plugin for PSP before, here's how you make it work:
Explanations are for PS Vita's Adrenaline, but for a normal PSP just do the same in your PSP root folder (ms0:)[/i]
https://gbatemp.net/threads/adrenaline-how-to-used-plugins.449509/#post-6855326

Text is copied and pasted here for quick use:
```
Put the plugin in 'ux0:/pspemu/seplugins/'
Create a 'game.txt' file and write in it
'ms0:/seplugins/plugin_name.prx 1' (Without ')
And put the game.txt inside the 'ux0:/pspemu/seplugins/' folder
```
In our case, the folder would end like this:
```
ux0:/pspemu/seplugins/
 game.txt
 LangSwapper.prx
```
If you need visual aid, check the image below:
[img]https://imgur.com/qghE3ip.png[/img]

- Don't forget to write this in your "game.txt". You can copy paste.
```
ms0:/seplugins/LangSwapper.prx 1
```

- With that we have taken care of all the syscalls required for our translation: 
sceImposeSetLanguageMode(), sceUtilityDialogInitStart() and sceUtilitySavedataInitStart()

## The easy way

Download the zip from this folder, unzip it and put it in the root of your PSP (or psemu/ if you are using 
adrenaline).
