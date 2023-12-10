#!/bin/bash

array=()

echo "A tömb random számokkal: "
for((i=0;i<10;i++)); do
    array[i]=$((RANDOM % 100 + 1))
    echo -n "${array[i]} "
done

echo -e "\nA tömb értékei megnövelve 1-el: "

for((i=0;i<10;i++)); do
    array[i]=$((array[i] + 1))
    echo -n "${array[i]} "
done

echo -e "\n"
