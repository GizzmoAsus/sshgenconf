#!/bin/bash

# define script variables
mainconfig="${PWD}/config"
format=config.*

# counters
configcounter=0
totalhosts=0

# if config file exists, clean it up
if [[ -f $mainconfig ]]; then
    echo "" > $mainconfig
fi

# loop through all config files and add to main file
echo "Processing config files in ${PWD}"
for file in $format; do
    numhosts=`cat $file | grep 'Host' | wc -l`
    cat $file >> $mainconfig
    echo "" >> $mainconfig

    filelist[configcounter]="$file ($numhosts)"
    let totalhosts=totalhosts+numhosts
    let configcounter=configcounter+1
done

# output info
echo "Processed $configcounter config files and produced $totalhosts entries"
echo "Configs processed:"
for el in "${filelist[@]}"; do
    echo $'\t'$el
done
echo "\n"