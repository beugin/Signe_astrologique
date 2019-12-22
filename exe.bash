#!/bin/bash
Jimp="31"
Jfev="28"
Jpair="30"



select i in Homme Femme Bonhomme_de_neige; do
        if [ "$i" = "Homme" ]; then
                echo "Bonjour Monsieur"
                break
        elif [ "$i" = "Femme" ]; then
                echo "Bonjour Madame"
                break
        elif [ "$i" = "Bonhomme_de_neige" ]; then
		echo "Bonjour Roi de glace"
		break

	else
                echo "mauvaise reponse"
        fi
done

nom= read -p 'Veuillez entrer votre prénom : ' nom
echo "Vous venez d'entrer dans l'interface des astres $nom"
echo "Cette application prend en compte le triezième signe du zodiac"
echo ""
Now=$(date)
echo "Nous sommes le $Now" 

echo ''


read -p 'Entrez votre jour de naissance :' jour
read -p 'Entrez votre mois de naissance :'  mois
read -p 'Entrez votre année de naissance :' annee


