#!/bin/bash
#
# Description:
#	Generate a list of my music albums.
#

# Check we are running from the correct location.
DIRS=$(ls -1 . | egrep "(T|[A-Z]+-[A-Z]+)" | sort)
if [ "x$DIRS" = "x" ]
then
	echo "Error: This script must be run from the directory containing the music subdirs!"
	exit 1
fi

# Create a txt version.
find . -type d -print | sed -n 's#\./[A-Z]-*[A-Z]*/\(.*/.*\)#\1#p' | sort > music.txt

# Create a pdf version.
_date=$(date)
cat music.txt | a2ps --center-title="Music: $_date" -1 -o - | ps2pdf - music.pdf

(cp -f music.txt music.pdf git/Files/ && cd git/Files && git commit -m"Updated $_date" . && git push -u origin master)
