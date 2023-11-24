#!/bin/bash
input_file="$1"
output_file="out.txt"

sed 's/happy/nem gondoltam a vizsgaidőszakra/g' "$input_file" > "$output_file"

printf "Az input fájl tartalma: %s\n" "$(cat "$input_file")"
printf "Az output fájl tartalma: %s\n" "$(cat "$output_file")"
