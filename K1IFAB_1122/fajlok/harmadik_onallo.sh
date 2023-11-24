#!/bin/bash

calculate_age() {
    IFS='.' read -r by bm bd <<< "$1"
    IFS='.' read -r cy cm cd <<< "$(date +'%Y.%m.%d')"

    # Átváltás 10-es számrendszerbe
    by=$((10#$by))
    bm=$((10#$bm))
    bd=$((10#$bd))
    cy=$((10#$cy))
    cm=$((10#$cm))
    cd=$((10#$cd))

    age=$((cy - by - (cm < bm || (cm == bm && cd < bd))))
    echo "$age"
}

# $1 = keresett név
nev=$1

# $2 = people.csv
file=$2

szuletesi_datum=$(grep "^$nev" "$file" | awk -F';' '{print $2}')

if [ -z "$szuletesi_datum" ]; then
  echo "Hiba: A megadott név nem található a fájlban."
  exit 1
fi

eletkor=$(calculate_age "$szuletesi_datum")

echo "$nev életkora: $eletkor év."
