#!/bin/bash

# Ellenőrzi, hogy a bemeneti paraméter meg van-e adva
if [ -z "$1" ]; then
    echo "Hiba: Adj meg egy pozitív számot bemeneti paraméterként."
    exit 1
fi

# Ellenőrzi, hogy a bemeneti paraméter pozitív egész szám-e
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]]; then
    echo "Hiba: A bemeneti paraméternek pozitív egész számnak kell lennie."
    exit 1
fi

# A prímszám-ellenőrzés függvénye
is_prime() {
    num=$1
    if [ $num -lt 2 ]; then
        return 1 # Nem prím
    fi

    for ((i=2; i*i<=$num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1 # Nem prím
        fi
    done

    return 0 # Prím
}

is_prime "$1"

if [ $? -eq 0 ]; then
    echo "$1 prím szám."
else
    echo "$1 nem prím szám."
fi
