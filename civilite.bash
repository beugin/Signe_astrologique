#!/bin/bash

DIALOG=${DIALOG=dialog}

dialog --backtitle "Welcom dans l'interface du zodiac" \
       --clear  \
       --menu "Veuillez sélectioner votre civilité" 16 51 2\
	"Femme" ""\
	"Homme" "" \
	"Bonne_Homme_de_Neige" "" 2> text.txt

civilite=`cat text.txt`

bj=`cat text.txt`

case $bj in
	Femme) bj="Bonjour Madame";;
	Homme) bj="Bonjour Monsieur,";;
	Bonne_Homme_de_Neige) bj="Bonjour, Roi des Glaces";;

esac


