:: Based on the post by akadewboy on Fri Apr 01, 2011 9:11 pm
:: in https://forum.xentax.com/viewtopic.php?t=6313
:: With snipped code to add -qbb option in GimConv.cfg file, by "mono21400" also known as "ethanol"

::1. Convert it to PNG using GimConv

gimconv "GIM_000000bd.GIM" -o "GIM_000000bd.PNG" --index 4 -qbb
pause
:: 2. 3. & 4. Edit s_ui_mp_01.png with whatever graphic program you want.
:: 	Work with PNG in 32bit PNG
::  Save it in 8bit+Alpha PNG

:: 5. Use GimConv to convert s_ui_mp_01(32bit)-nq8.png into a GIM

gimconv "GIM_000000bd.PNG" -o "GIM_000000bd1.GIM" --index 4 -qbb
pause
