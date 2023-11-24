#!/bin/bash
read -p "Írja be a nevét: " name
read -p "Írja be a telefonszámát: " phone_num

echo "{" > k1ifab.json
echo -n '	"name" : "' >> k1ifab.json
echo -n "$name" >> k1ifab.json
echo '",' >> k1ifab.json
echo -n '	"phone" : "' >> k1ifab.json
echo -n "$phone_num" >> k1ifab.json
echo '"' >> k1ifab.json
echo "}" >> k1ifab.json
