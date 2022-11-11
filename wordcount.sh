#! /bin/bash	

## needs user to supply argument to script before executing

if [[ $# < 1 ]] ; then 
	echo 'provide a file' 
	exit -1
fi

file=$1
running=true

while $running ; do
	echo -n '$ ' ## -n to not make a new line
	read line ##wanted to get input from user
	if [ "$line" == 'q' ] ; then
		break

	fi
	for word in $line ; do
		count=$(grep -wo $word $file | wc -l) ## -wo options so we match only whole words
		quotedWord="\"$word\""
		printf "%-12s occurs %5d times in file %s\n" $quotedWord $count $file 
		##^^ regex as placeholders then variables represent order
	done
done

echo "Thank you."
