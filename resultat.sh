#!/bin/bash

anni=("$jour" "$mois" "$annee") 
dialog 	--backtitle "Résultat" \
       	--title "Résultat de votre test" \
       	--clear  \
  	--yesno	" Voici vos résultats, $nom. Nous sommes le $today. Vous avez effectué le test à $time.
		Pour rappel, le signe astrologique s'adapte au 13e signe astrologique.
		Le résultat du test est à prendre en considération votre année de naissance est après 2016.		
		Vous êtes née le ${anni[*]}
		Votre signe est ${signe[*]} 
		Votre signe astrologique chinois est ${chinois[*]}" 50 50
