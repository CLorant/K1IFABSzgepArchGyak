#!/bin/bash

# $1 = people1.csv
input_file=$1

# $2 = k1ifab_people.csv
output_file=$2

sed 's/gmail.com/citromail.hu/g' "$input_file" > "$output_file"

echo "$input_file gmailes email címei cserélve citromailes email címekre a $output_file fájlban!"
