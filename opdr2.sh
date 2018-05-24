#!/bin/bash
#=========================================================================
#### Weekopdracht 2 ####
#=========================================================================
# 2 parameteres (1- Foto's directory  2- Month/Week indication)			- Done
# copy to a newly created directory (cp command)				- Done
# Use For-loop									- Done
# Verify if successfully copied							- Progress
#  - compare both pictures
# Remove pictures from their original location					- Progress
#==========================================================================

# Parameter(s)
#-------------------
# $1: Photo directory
# $2: Folder indication (Month | Week)

# Copy & Move photos to newly created directory ($2)
if [[ -f "$1" || -d "$1" ]]; then
  for pic in "$1"/.; do
    cp -r $1 $2
  done
fi

# Verify if successful then delete original picture location
if [[ "$1" == "$2" ]]; then
  echo "match!"
fi
