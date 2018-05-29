#!/bin/bash
#=========================================================================
#=== Weekopdracht 2 ===
#=========================================================================
# 2 parameteres (1- Foto's directory  2- Month/Week indication)			- Done
# copy to a newly created directory (cp command)				- Done
# Use For-loop									- Done
# Verify if successfully copied							- Done
#  - compare pictures (MD5)
# Remove pictures from their original location					- Done
#==========================================================================

cd $1
dir_1="$1"

shopt -s nullglob
shopt -s nocaseglob
num=0
for i in *.jpeg; do
	i2=${i##*/}
	if [[ $2 = "Month" ]]		# Directory: Month
	then
		date1=$(date -r $i +%B) # Creates sub dir. based on current month
		mkdir -p Month
	elif [[ $2 = "Week" ]]		# Directory: Week
	then
		date1=$(date -r $i +%W)	# creates sub dir. bases on current week
		mkdir -p Week
	else
		echo "!ERROR!: Second variable must be Month or Week"
	fi

md5_check1=($(md5sum $i2))			# MD5 creation
mkdir -p ./$2/$date1
cp $i ./$2/$date1
md5_check2=($(md5sum ./$2/$date1/$i2))

	if [ "$md5_check1" == "$md5_check2" ]	# Verify files (MD5)
	then
		echo "hashes are correct"
		rm -f $i
	else
		echo "$1 is not the same"
	fi
	((num++))
done

if [[ $num < 1 ]]		# Checks if directory is empty
then
	echo "================================="
	echo " There were no files to sort"
	echo "================================="
else
	echo "================================="
	echo " $num files were sorted"
	echo "================================="
fi

shopt -u nocaseglob
shopt -u nullglob
