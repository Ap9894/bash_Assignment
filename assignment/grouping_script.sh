#!/bin/bash
# script to group photos by date
#grouped the images at the link "https://github.com/interviewbit-academy/segregate_photos"  according to year sub foldered into month 

#DIR=/Users/ayush/Downloads/photos/assignment/segregate_photos⁩
#segregate_photos=$DIR

cd "/Users/ayush/Downloads/photos/assignment/segregate_photos"

#extract the year and month using the sub string expansion

for file in *; do
	name="$file"
	year=${name:0:4}
	month=${name:5:1}

#if the year directory is not present then make one
	if [ ! -d "/Users/ayush/Downloads/photos/assignment/segregate_photos/$year" ]; then
		mkdir "/Users/ayush/Downloads/photos/assignment/segregate_photos/$year"
	fi

#if the month directory is not present then make one
	if [ ! -d "/Users/ayush/Downloads/photos/assignment/segregate_photos/$year/$month" ]; then
		mkdir "/Users/ayush/Downloads/photos/assignment/segregate_photos/$year/$month"
	fi

#move the file into the required directory
	mv "$file" "/Users/ayush/Downloads/photos/assignment/segregate_photos/$year/$month"
done
