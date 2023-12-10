#!/bin/bash

generate_random_numbers() {
    local N=${1:-5}  # Alapértelmezett érték: 5
    local x=${2:-1}   # Alapértelmezett érték: 1
    local y=${3:-90}  # Alapértelmezett érték: 90

    for ((i=0; i<N; i++)); do
        random_number=$((RANDOM % (y - x + 1) + x))
        echo $random_number
    done
}

# Függvény hívása 10 véletlen számmal 800 és 900 között
echo "Véletlen számok 800 és 900 között:"
generate_random_numbers 10 800 900

# Függvény hívása 15 véletlen számmal -10 és 10 között
echo "Véletlen számok -10 és 10 között:"
generate_random_numbers 15 -10 10
