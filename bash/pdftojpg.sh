# Goal: Convert file PDF to JPG
#
echo " "
echo "Amb aquest script podràs convertir un arxiu \e[1;96mPDF\e[0m:en un gràfic \e[1;96mJPG\e[0m:"
echo " "
echo "Introdueix l'arxiu què vols generar: "
echo " "
echo "--------------------------"
read PDF
echo "--------------------------"
echo " "
gm convert -density 150 -resize 600 $PDF +adjoin %02d.jpg
echo "Recorda que el nou arxiu s'anomenarà: \e[1;33m00.jpg\e[0m:"
echo " "
echo " "
