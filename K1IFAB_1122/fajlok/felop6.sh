#!/bin/bash

file=$1

if [ ! -f "$file" ]; then
    echo "Hiba: $file fájl nem található."
    exit 1
fi

read -p "Adja meg a nevet: " input_name

talalat=$(grep -E "^$input_name:" $file)

if [ -n "$talalat" ]; then
    id=$(echo "$talalat" | cut -d ':' -f 2)
    echo "Az id a megadott névhez: $id"
else
    echo "Hiba: A megadott név nem található a fájlban."
fi
