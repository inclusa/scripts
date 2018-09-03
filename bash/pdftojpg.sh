#!/usr/bin/env bash
#
# Goal: Convert file PDF to JPG
#
echo " "
echo "Amb aquest script podràs convertir un arxiu PDF en un gràfic JPG."
echo " "
echo "Introdueix l'arxiu què vols generar: "
echo " "
echo "--------------------------"
read PDF
echo "--------------------------"
echo " "
gm convert -density 150 -resize 600 $PDF +adjoin %02d.jpg
echo "Recorda que el nou arxiu s'anomenarà: 00.jpg"
echo " "
echo " "
