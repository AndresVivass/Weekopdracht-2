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

# Parameter(s)
#-------------------
# $1: Photo directory
# $2: Folder indication (Month | Week)

# Variable(s)
#-------------------
#countPics=(ls ~/Pictures | wc)	# Extra: counter for the amount of pictures


if [[ -f "$1" || -d "$1" ]]; then
  for item in $1; do
     #cp $1 $2
    echo *
    
    done

else
  echo "Missing argument"



fi					 # ends if-statement
