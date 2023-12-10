#!/bin/bash

# Véletlen szám generálása 1 és 100 között
random_number=$((RANDOM % 100 + 1))

echo "Véletlen szám: $random_number"
echo "Nála kisebb négyzetszámok:"

for (( i=1; i<$random_number; i++ )); do
    square=$((i * i))
    if (( square < random_number )); then
        echo $square
    fi
done
