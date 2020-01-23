# Signe_astrologique

## Objectif : définir le signe du Zodiac des personnes nées après 2016. (Rajout du signe du serpentaire suite au changement d'inclinéson des astres et de la Terre.)

## Près requis : 
- Console pour lancer le programme
- Une base de données est à prévoir. Dans le projet, la base de donnée est une base comportant une interface graphique : Mysql - PhpMyAdmin.
- Un framwork à installer : Dialogue, possibilité de mettre Xdialogue. Il suffit de remplacer le Dialog par Xdialog dans le code. 
DIALOG=${DIALOG=Xdialog}
Vous avez la possibilité de mettre une commande permettant que l'ordinateur de choisir Dialog ou Xdialog en fonction de ce qui est intaller sur votre ordinateur. 
 
  if [ -z $DISPLAY ]
  then
	DIALOG=dialog
  else
	DIALOG=Xdialog
  fi
 
 
## La construction de la base de données : 
Une base de donnée en ligne de commande est possible. Ici dans le programme, l'interface graphique est un choix personnel. A noté toute fois, quelque soit le type de Base de donnée fonctionne avec le programme. 
Si besoin, je vous joins l'un des tutos suivits pour l'installation de phpmyadmin sous linux https://doc.ubuntu-fr.org/phpmyadmin
Installation de MySql sous linux : sudo apt-get install mysql-server mysql-client

## conception de la table du programme
La base de Donnée de ce programme est une seul table. Il y a au total 9 colones.
Les noms sont :: nom de la variable dans le code
- Nom         :: $nom
- civilite    :: $civilite
- jour        :: $jour
- mois        :: $mois
- annee       :: $annee
- signe       :: $signe
- chinois     :: $chinois
- date        :: $today
- heure       :: $time


Attention le mot "date" est une fonction dans le bash pouvant rentrer en conflit dans le programme d'ou le nom différent. 

## La commande permettant d'envoyer les variables dans la base est la dernière ligne du fichier interface.sh
/usr/bin/mysql -uIdentifiant_Utilisateur -pMot_de_passe_BDD -PNumero_port -hAdresse_IP -e "INSERT INTO \`Signe_zozo\`.\`Identite\` (\`nom\`,\`civilite\`, \`jour\`, \`mois\`, \`annee\`,\`signe\`,\`chinois\`, \`date\`, \`heure\`) VALUES (\"$nom\", \"$civilite\", \"$jour\", \"$mois\", \"$annee\", \"$signe\",\"$chinois\",\"$today\",\"$time\") ;"

