#!/bin/bash
#=========================================================================
#### Weekopdracht 2 ####
#=========================================================================
# 2 parameteres (1- Foto's directory  2- Month/Week indication)
# copy to a newly created directory (cp command)
# Use For-loop
# Verify if successfully copied
#  - compare MD5sum of both pictures
# Remove pictures from their original location
#==========================================================================

# Variables
photo_dir=(~/Pictures/*)	# Parameter 1: Photo directory
dest_dir=(~/Documents/'Month')	# Parameter 2: Folder indication (Month | Week)

#countPics=(ls ~/Pictures | wc)	# Extra: counter for the amount of pictures

if ["$1"];
then
  for item in $1;
     #cp $1 $2
    echo $1[item]
    item++
else
  echo "Missing argument"



fi # ends if-statement
