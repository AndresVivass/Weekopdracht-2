#! /bin/bash
#==================================================
# testing a text interface for Linux - Week 2
#
#
#==================================================
echo "============================="
echo " Rodriguez's Backup Tool"
echo "============================="
echo -e "Please specify the folder to copy pictures to (Month|Week): \c"
read word
echo ""
echo "---------------------------------------"
echo "The chosen directory was: $word"
echo "---------------------------------------"
echo -e "Is this correct?[y/n]: \c"
read answer
echo ""
echo "Progress:"
echo "--------------"

if( {$answer} == 'y' ); then
  echo "process 1................"
  echo "process 2................"
elif( {$answer} = 'n' ); then
  echo "process Terminated.............."
else
  echo "!Error!: Invalid option, $answer"
fi



