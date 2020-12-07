#!/bin/bash

######################################
#  Program: Secret Santa Randomizer  #
#  Author:  Joshua Brand             #
#  Date:    12/6/2020                #
######################################

year=$(date '+%Y')

echo -e "\n*** $year Secret Santa Randomizer ***\n"

# Filename as a parameter
list="$1"

# Verify that the list exists
while [ ! -e "$list" ]; do
    echo -n "Enter the list's filename: "
    read list

    # Check if the list is empty
    if [ ! -s $list ]; then
        echo -e "\n*** '$list' is empty ***\n"
        continue
    else
        echo -e "$(break)"
    fi
done

# Recipients Directory
mkdir -p ~/SecretSanta/$year
dir=~/SecretSanta/$year

# Remove preexisting data
if [ ! -z "$(ls -A "$dir")" ]; then
    rm -rf $dir/*
fi

# Shuffle list of names to new file
shuf $list > $dir/shuffled_$year.txt

# Read shuffled list into memory
readarray shuffledlist < $dir/shuffled_$year.txt

# Head of Shuffled List
first="${shuffledlist[0]}"

# Counter
count=0

# Iterate the Shuffled List
for i in ${shuffledlist[@]}; do

    # Print Secret Santa Recipients
    if [ "$count" -gt 0 ]; then
        printf "%-12s %s\n" "$i" "$previous" | tee -a $dir/recipients_$year.txt
    fi

    # Previous element in the Shuffled List
    previous="$i"

    # Increment Counter
    count+=1
done

# Remove Shuffled List
rm -rf $dir/shuffled_$year.txt

# Remove trailing newline
first=$(echo $first | tr -d '\n')

# Print Secret Santa Recipients
printf "%-12s %s\n" "$first" "$i" | tee -a $dir/recipients_$year.txt; echo
