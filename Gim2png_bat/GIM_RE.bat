:: Script to get a 1:1 size from a full process 
:: of image conversion GIM to PNG to GIM
:: (It will use the GIS format as a bridge).


:: First sanity check
:: GIM to GIS
::		gimconv A_input.gim -o A_outputGIM.gis -digi
:: and GIS to GIM
::		gimconv A_outputGIM.gis -o A_output.gim -digi
:: Then compare both GIM files to see if they are the same
::		pause
:: Our first sanity checked concluded happyly, we can now start our work now:


:: Second sanity check
:: GIM to PNG
::		gimconv A_input.gim -o A_outputGIM.png -digi
:: GIM to GIS to PNG
::		gimconv A_input.gim -o A_outputGIM.gis -digi
::		gimconv A_outputGIM.gis -o A_outputGIS.png -digi
:: Then compare both GIM files to see if they are the same
::		pause
:: Our second sanity checked concluded happyly, we can now start our work now:


:: Let's see what are the differences between 
:: PNG to GIS output
gimconv A_outputGIM.png -o A_outputGIM.gis -digi
:: and the original GIM to GIS ouput
gimconv A_input.gim -o A_outputGIM.gis -digi
pause
::Now with those differences is time to make an edit to A_outputGIM.gis
:: to be equal to A_outputGIM.gis

:: To do, if it's worth it,
:: Script to automatize the edit for several images:

