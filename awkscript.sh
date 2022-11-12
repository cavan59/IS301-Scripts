#! /bin/bash



echo -n "Enter specific list you want (names, classes, grades): "
read answer


#names
if [[ $answer == 'names' ]] ; then
	awk -F ":" '{print $2}' awkscript.txt
fi

#classes
if [[ $answer == 'classes' ]] ; then
        awk -F ":" '{print $3}' awkscript.txt
fi

#grades
if [[ $answer == 'grades' ]] ; then
        awk -F ":" '{print $4}' awkscript.txt
fi



# -F to focus out : as a delimitter
awk -F ":" '{print $0}' awkscript.txt
