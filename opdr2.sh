#!/bin/bash

#### Weekopdracht 2 ####
echo "=================================================="
# 2 parameteres (1- Foto's directory  2- Month/Week indication)
# copy to a newly created directory (cp command)
# Use For-loop
# Verify if successfully copied
#  - compare MD5sum of both pictures
# Remove pictures from their original location

# Initialize variables
photo_dir=(~/Pictures)		# Parameter 1: Photo directory
indi_dir="Month"		# Parameter 2: Folder indication

countPics=(ls ~/Pictures | wc)	# Extra: counter for the amount of pictures


# Move to Month directory ('cp' is being used)
for i in ~/Pictures
do
# cp ~/Pictures/* ~/Documents/Month

 echo 'You have successfully moved "$countPics" files.'
done





echo "=================================================="
