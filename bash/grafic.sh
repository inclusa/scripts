#!/usr/bin/env bash
#
# Goal: Convert file PDF to JPG
#

VALUE=$(zenity --entry --title="PDF to JPG" --text="Selecciona l'arxiu que vols passar a PDF")

$(gm convert -density 150 -resize 600 $VALUE +adjoin %02d.jpg)


# Barra de progr'es en dos passos (50)
#
i=0
p=0
(while [ $i -lt 100 ]
do
    i=$[$i + 50]
    echo $i ; sleep 1
    echo "#  now i is $i and p=$p"
    p=$[$p + 1]
done) | zenity --progress --title="test" --text="test"
echo "i: $i p: $p"

# Informen del resultat
#

$(zenity --info --title="Resultat" --text="L'arxiu que busques s'anomena: \n\n 00.jpg \n\n El voràs ara mateix.")

# Mostrem la imatge
#

$(eog 00.jpg)
