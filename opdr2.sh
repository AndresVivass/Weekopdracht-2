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

# Initialize variables
photo_dir=(~/Pictures/*)	# Parameter 1: Photo directory
dest_dir=(~/Documents/'Month')	# Parameter 2: Folder indication (Month | Week)

countPics=(ls ~/Pictures | wc)	# Extra: counter for the amount of pictures

# Move pictures to $indi_dir
for i in ~/Pictures;
do
  cp $photo_dir $dest_dir
done

if (..............);  # Confirm if files have been copied
then
  echo "You have successfully moved '${countPics}' files."

else
  echo "Copying Failed"



#rm ~/Pictures/*






echo ""




echo -e "Please specify the folder to copy pictures to (Month|Week): \c"
read word
echo "======================================="
echo "The chosen directory was: $word"
echo "======================================="
echo -e "Is this correct?[y/n]: \c"
read answer

echo "$answer"


echo "=================================================="
