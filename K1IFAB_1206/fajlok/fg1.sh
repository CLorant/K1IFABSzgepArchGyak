#!/bin/bash

sum_numbers() {
    local sum=0

    if [ "$#" -eq 0 ]; then
        echo 0
        return
    fi

    for arg in "$@"; do
        sum=$((sum + arg))
    done

    echo $sum
}

result=$(sum_numbers 3 5 7)
echo "Eredmény: $result"

# Függvény hívása argumentumok nélkül
result=$(sum_numbers)
echo "Eredmény: $result"
