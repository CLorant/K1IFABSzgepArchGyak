#!/bin/bash

declare -f a b area

read -p "Adja meg az a oldalt, lebegőpontos számmal: " a
read -p "Adja meg a b oldalt, lebegőpontos számmal: " b

if [[ ! "$a" || ! "$b" ]]; then
  echo "Hiba: Az oldalak csak lebegőpontos számok lehetnek."
  exit 1
fi

area=$(echo "$a * $b" | bc)
echo "A téglalap területe: $area"
