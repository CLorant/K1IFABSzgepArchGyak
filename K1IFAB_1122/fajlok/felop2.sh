#!/bin/bash

read -p "Adja meg a nevet: " nev

talalat=$(grep -E "^$nev:" nev_id_parok.txt)

if [ -n "$talalat" ]; then
    id=$(echo "$talalat" | cut -d ':' -f 2)
    echo "Az id a megadott névhez: $id"
else
    echo "Hiba: A megadott név nem található a fájlban."
fi
