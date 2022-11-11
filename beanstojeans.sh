
#! /bin/bash

# Cavan Fowler
## Oops, you miss spelled jeans as beans in all of the text files in a directory, this is the fix!

for file in *.txt; do

	i=$((i+1))

	sed 's/beans/jeans/g' "$file" > new_file$i.txt

done

echo "Thank you!"
