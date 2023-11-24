#!/bin/bash

declare -i a b area

read -p "Adja meg az a oldalt: " a
read -p "Adja meg a b oldalt: " b

if [[ ! "$a" || ! "$b" ]]; then
  echo "Hiba: Az oldalak csak egész számok lehetnek."
  exit 1
fi

area=$a*$b
echo "A téglalap területe: $area"
