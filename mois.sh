
#Traitement de la variable chiffre tampon pour transcription en chiffre romain

case $mois in
	1) mois=$mois"janvier" ;;
	2) mois=$mois"février" ;;
	3) mois=$mois"mars" ;;
	4) mois=$mois"avril" ;;
	5) mois=$mois"mai" ;;
	6) mois=$mois"juin" ;;
	7) mois=$mois"juillet" ;;
	8) mois=$mois"août" ;;	
	9) mois=$mois"septembre" ;;
	10) mois=$mois"octobre" ;;
	11) mois=$mois"novembre" ;;
	12) mois=$mois"décembre" ;;
esac

case $signes in 
	if [$mois=="avril" -o $mois=="mars"]
	then signes="bélier"
	fi
esac

