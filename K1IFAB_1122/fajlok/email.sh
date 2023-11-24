#!/bin/bash

link=https://raw.githubusercontent.com/bbalage/BashExamples/master/assets/file1.txt

wget -O file1.txt $link

grep -E -o "[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}+([.][a-zA-Z]{2,3})" file1.txt > emails.txt

rm file1.txt
