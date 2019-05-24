#!/bin/bash

#
# Description:
#	Generate a list of my music albums.
#

_date=$(date)

# Check we are running from the correct location.
DIRS=$(ls -1 . | egrep "(T|[A-Z]+-[A-Z]+)" | sort)
if [ "x$DIRS" = "x" ]
then
	echo "Error: This script must be run from the directory containing the music subdirs!"
	exit 1
fi
 
# Generate a "recent additions/updates" albums list.
echo 1111111111
./recent_music.sh > music.txt.utf-8
echo 2222222222

# Followed by a full albums list.
find . -type d -print | sed -n 's#\./[A-Z]-*[A-Z]*/\(.*/.*\)#\1#p' | sort >> music.txt.utf-8

# Create a pdf version.
#
# a2ps: http://linux.math.tifr.res.in/manuals/html/a2ps.html
#
# NOTE: ps2pdf does not like utf-8. For this reason, if you want your German umlauts
#       to look correct, we first need to convert our utf-8 text file to ISO-8859-1.
#
cat music.txt.utf-8 | iconv -c -f utf-8 -t ISO-8859-1 > music.txt.iso88591
cat music.txt.iso88591 | a2ps --medium=A4 --margin=5 --font-size=10 --center-title="Music" --left-title="$_date" --header="" --left-footer="" --right-footer="" --footer="" --columns=1 --rows=1 -o - | ps2pdf - music.pdf
mv music.txt.iso88591 music.txt
rm music.txt.utf-8

(cp -f music.txt music.pdf git/FilesPublic/ && cd git/FilesPublic && git commit -m"Updated $_date" . && git push -u origin master)
