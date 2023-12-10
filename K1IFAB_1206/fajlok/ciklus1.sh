#!/bin/bash

echo "1-10-ig számok kiírása"
echo "For ciklussal: "
for ((i=1;i<11;i++)); do
	echo -n "$i "
done

echo -e "\nWhile ciklussal: "
i=1
while [[ $i -le 10 ]]; do
	echo -n "$i "
	((i++))
done

echo -e "\nUntil ciklussal: "
i=1
until [[ $i -gt 10 ]]; do
	echo -n "$i "
	((i++))
done

echo -e "\n"
