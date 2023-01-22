# Python script to convert GIM files to PNG

import os
import sys

# folder path
dir_path = "./"

# creates folder to save new files
# os.system("mkdir GIM \n")

# loop through files
for i in os.listdir(dir_path):
	if os.path.isfile(i) and not i.endswith('.GIM') and not i.endswith('.PNG') and not i.endswith('.exe') and not i.endswith('.bms') and not i.endswith('.pbi') and not i.endswith('.py'):
		input = str(i)
		output = input + ".GIM"
		os.system("rename " + input + " "+ output + "\n")
#		os.system("move " + output + " \"./GIM/\" " + "\n")

print("files converted")