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
