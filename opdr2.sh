#!/bin/bash

#### Weekopdracht 2 ####
echo "=================================================="
# Create: Month & Week folders on ~/Documents
# ~/Documents/Month
# ~/Documents/Week
# The ~/Pictures directory should contain the 10 fotos 

countPics=(ls ~/Pictures | wc)	# a counter for the amount of pics in ~/Pictures


# Move to Month directory ('cp' is being used)
for i in ~/Pictures
do
# cp ~/Pictures/* ~/Documents/Month

 echo 'You have successfully moved "$countPics" files.'
done





echo "=================================================="
