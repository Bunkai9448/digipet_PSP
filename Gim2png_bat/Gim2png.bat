:: This script automates the process 
:: of converting the GIM files to PNG

:: Code adapted (copied into a bat file) from akadewboy 
:: https://forum.xentax.com/viewtopic.php?t=6313

start "%~dp0" gimconv "test.gim" -o "out_test.png"
