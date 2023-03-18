# Author: Bunkai 
# This method was eventually deprecated for the project but it serves as Proof of Concept and learning material

# Python script to convert GIM files to PNG

import os
import sys

# folder path
dir_path = "./"

# creates folder to save new files
os.system("mkdir PNG \n")

# loop through files
for i in os.listdir(dir_path):
	if i.endswith('.GIM') :
		input = str(i)
		output = input + ".png"
		os.system("gimconv " + input + " -o " + "./PNG/" + output + "\n")

print("files converted")
