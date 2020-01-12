#!/bin/bash
anni=("$jour" "$mois" "$annee") 
echo "$bj" >conclu.txt
echo "Vous êtes née le ${anni[*]}" >>conclu.txt
echo "Votre signe est ${signe[*]}" >>conclu.txt
echo "votre signe astrologique chinois est ${chinois[*]}" >>conclu.txt
