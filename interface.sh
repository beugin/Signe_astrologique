#!/bin/bash
today=$(date +"%A %d %B %Y")
time=$(date +"%T")

dialog --backtitle "Welcom dans l'interface du zodiac" \
       --title "Accueil" \
       --clear  \
       --inputbox "Entrer votre nom" 16 51 2> text.txt
nom=`cat text.txt`
. civilite.bash
dialog --backtitle "Welcom dans l'interface du zodiac" \
       --title "Bienvenu dans le monde du Zodiac. " \
       --clear  \
       -- yesno " $bj" 10 30
dialog --backtitle "Welcom dans l'interface du zodiac" \
       --title "Jour " \
       --clear  \
       --inputbox "Entrer votre jour de naissance" 16 51 2> text.txt
jour=`cat text.txt`
dialog --backtitle "Welcom dans l'interface du zodiac" \
       --title "Mois" \
       --clear  \
       --inputbox "Entrer votre mois de naissance" 16 51 2> text.txt
mois=`cat text.txt`
dialog --backtitle "Welcom dans l'interface du zodiac" \
       --title "Année" \
       --clear  \
       --inputbox "Entrer votre année de naissance XXXX" 16 51 2> text.txt
annee=`cat text.txt`

. conv_mois.bash 
. conv_jours.bash 
. conv_signe.bash 
. signe_chinois 
. resultat.sh 



/usr/bin/mysql -uXXXXX -pXXXX -P3306 -h127.0.0.1 -e "INSERT INTO \`Signe_zozo\`.\`Identite\` (\`nom\`,\`civilite\`, \`jour\`, \`mois\`, \`annee\`,\`signe\`,\`chinois\`, \`date\`, \`heure\`) VALUES (\"$nom\", \"$civilite\", \"$jour\", \"$mois\", \"$annee\", \"$signe\",\"$chinois\",\"$today\",\"$time\") ;"
