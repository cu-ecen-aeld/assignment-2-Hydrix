#!/bin/sh
# 0. Args name asignation
filesdir=$1
searchstr=$2

echo "finder"
# 1. Errors trap
# 1.1. Verify if first arg is valid dir
if ! [ -d $filesdir ]
then
	echo "$filesdir isn't a valid directory path"
	exit 1 
fi

# 1.2. Verify second arg is valid string (non-zero) 
if ! [ $searchstr: ]
then
	echo "$searchstr isn't a valid string"
	exit 1
fi

# 1.3. Verify if two arguments were entered
if ! [ $# -eq 2 ]
then
	echo "You dont entered two args"
	exit 1
fi

# 2. Search
filesnumber=$(find $filesdir/*.* | wc -l)
matchinglines=$(grep $searchstr $filesdir/* | wc -l)

# 3. Print search results
echo "The number of files are $filesnumber and the number of matching lines are $matchinglines "
