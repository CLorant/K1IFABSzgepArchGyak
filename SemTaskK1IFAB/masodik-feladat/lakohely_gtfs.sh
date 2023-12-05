#!/bin/bash

if [ -e gtfs.zip ]; then
        rm gtfs.zip
fi

if [ -d gtfs ]; then
        rm -r gtfs
fi

wget "https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip"
unzip gtfs.zip -d gtfs

lakohely=$1
indulo=$(cat gtfs/routes.txt | cut -d ',' -f 3,4 | grep -E "[0-9A-Z],$lakohely")
erkezo=$(cat gtfs/routes.txt | cut -d ',' -f 3,4 | grep -E "$lakohely$")

echo "-----------------------------------------------------------"
if [ -n "$indulo" ]; then
    echo -e "$lakohely helyről induló járatok:\n$indulo"
else
    indulo=$(cat gtfs/routes.txt | cut -d ',' -f 3,4 | tail -n +2)
    echo -e "Miskolc helyről induló járatok:\n$indulo"
fi

if [ -n "$erkezo" ]; then
    echo -e "\n\n$lakohely helyre érkező járatok:\n$erkezo"
else
    erkezo=$(cat gtfs/routes.txt | cut -d ',' -f 3,4 | tail -n +2)
    echo -e "Miskolc helyre érkező járatok:\n$erkezo"
fi
echo "-----------------------------------------------------------"
