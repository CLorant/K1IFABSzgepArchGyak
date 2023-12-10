#!/bin/bash

read -p "Adja meg a tömb méretét (pozitív egész szám): " N

# Ellenőrzés, hogy N pozitív egész szám-e
if ! [[ "$N" =~ ^[1-9][0-9]*$ ]]; then
    echo "Hiba: N-nek pozitív egész számnak kell lennie."
    exit 1
fi

# Tömb létrehozása és feltöltése véletlen számokkal
array=()
for ((i=0; i<N; i++)); do
    array[i]=$((RANDOM % 100 + 1))
done

# Minimum elem keresése
min_index=0
for ((i=1; i<N; i++)); do
    if [ "${array[i]}" -lt "${array[min_index]}" ]; then
        min_index=$i
    fi
done

# Maximum elem keresése
max_index=0
for ((i=1; i<N; i++)); do
    if [ "${array[i]}" -gt "${array[max_index]}" ]; then
        max_index=$i
    fi
done

# Elemek összege és átlaga
sum=0
for ((i=0; i<N; i++)); do
    sum=$((sum + array[i]))
done
average=$((sum / N))

echo "Tömb elemei: ${array[@]}"
echo "Minimum: $((min_index + 1)). elem, ${array[min_index]}"
echo "Maximum: $((max_index + 1)). elem, ${array[max_index]}"
echo "Elemek összege: ${sum}"
echo "Elemek átlaga: ${average}"
