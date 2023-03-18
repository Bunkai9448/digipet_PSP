:: Author: Bunkai

:: Based on the post by akadewboy on Fri Apr 01, 2011 9:11 pm
:: in https://forum.xentax.com/viewtopic.php?t=6313
:: With snipped code to add -digi option in GimConv.cfg file, by "ethanol"

:: "input.GIM" == "output.GIM" sanity check:
:: gimconv "input.GIM" -o "output.GIM" -digi 

::1. Convert it to PNG using GimConv
gimconv "GIM_000000bd.GIM" -o "GIM_000000bd.PNG" -digi
pause

:: 2. Edit GIM_000000bd.PNG with whatever graphic program you want.
:: 	option A/ Work with PNG in 32bit PNG and save it in 8bit+Alpha
::  option B/ Work with PNG in 32bit PNG, save it as Indexed and run it through https://tinypng.com/

:: 3. Use GimConv to convert GIM_000000bd.PNG into a GIM
gimconv "GIM_000000bd.PNG" -o "GIM_000000bd1.GIM" -digi
pause
