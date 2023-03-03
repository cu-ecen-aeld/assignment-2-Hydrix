#!/bin/bash

# 0. Args asign
writefile=$1
writestr=$2


# 1. Errors trap
if ! [ $# -eq 2 ]; then
	echo "Two args required"
	exit 1
fi

# 2. Write action
mkdir -p "$(dirname ${writefile})" && echo "$writestr" >> "$writefile"

# 3. Error handling
if [ $? -ne 0 ]; then
    echo "Files couldn't created"
    exit 1
fi

