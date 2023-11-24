#!/bin/bash
read -p "Írja be az elso szamot: " n1
read -p "Írja be a masodik szamot: " n2
echo "A számok összege: $((n1 + n2)) "
echo "A számok különbsége: $((n1 - n2)) "
echo "A számok szorzata: $((n1 * n2)) "
echo "A számok hányadosa: $((n1 / n2)) "
echo "A számok osztási maradéka: $((n1 % n2)) "
