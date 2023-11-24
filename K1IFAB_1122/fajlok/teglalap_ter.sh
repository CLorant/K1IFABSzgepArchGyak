#!/bin/bash

declare -i x1 y1 x2 y2 width height area

read -p "Adja meg az első pont x koordinátáját: " x1
read -p "Adja meg az első pont y koordinátáját: " y1
read -p "Adja meg a második pont x koordinátáját: " x2
read -p "Adja meg a második pont y koordinátáját: " y2

if [[ ! "$x1" || ! "$y1" || ! "$x2" || ! "$y2" ]]; then
  echo "Hiba: A koordináták csak egész számok lehetnek."
  exit 1
fi

width=x2-x1
height=y2-y1
area=width*height

echo "A téglalap területe: $area."
