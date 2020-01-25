# Signe_astrologique

## Objectif : Définir le signe du Zodiac des personnes nées après 2016. (Rajout du signe du serpentaire suite au changement d'inclinaison des astres et de la Terre.)

## Près requis : 

- Console pour lancer le programme
- Une base de données est à prévoir. Dans le projet, la base de données est une base comportend une interface graphique : Mysql - PhpMyAdmin.
- Un framwork est à installer : Dialogue, possibilité de mettre Xdialogue. Il suffit de remplacer le Dialog par Xdialog dans le code. 
DIALOG=${DIALOG=Xdialog}
Vous avez la possibilité de mettre une commande permettant à l'ordinateur de choisir Dialog ou Xdialog en fonction de ce qui est installer sur votre ordinateur. 
 
  if [ -z $DISPLAY ]
  then
	DIALOG=dialog
  else
	DIALOG=Xdialog
  fi
 
 
## La construction de la base de données : 

Une base de données en ligne de commande est possible. Ici dans le programme, l'interface graphique est un choix personnel. A noter toute fois, quelque soit le type de base de données fonctionne avec le programme. 
Si besoin, je vous joins l'un des tutos suivits pour l'installation de phpmyadmin sous linux https://doc.ubuntu-fr.org/phpmyadmin
Installation de MySql sous linux : sudo apt-get install mysql-server mysql-client

## conception de la table du programme

La base de données de ce programme est une seul table. Il y a au total 9 colones.


Nom dans la Base de données /	Nom de la variable dans le code /		Type de variable

	Nom			$nom					text
	civilite  		$civilite				varchar(8)
 	jour    		$jour					decimal(2.0)
  	mois    		$mois					varchar(8)
	annee   		$annee					decimal(4.0)
	signe    		$signe					text
	chinois   		$chinois				text 	
	date     		$today					date
	heure    		$time					time

 

Attention le mot "date" est une fonction dans le bash pouvant rentrer en conflit dans le programme d'ou le nom différent. 

## La commande permettant d'envoyer les variables dans la base est la dernière ligne du fichier interface.sh
/usr/bin/mysql -uIdentifiant_Utilisateur -pMot_de_passe_BDD -PNumero_port -hAdresse_IP -e "INSERT INTO \`Signe_zozo\`.\`Identite\` (\`nom\`,\`civilite\`, \`jour\`, \`mois\`, \`annee\`,\`signe\`,\`chinois\`, \`date\`, \`heure\`) VALUES (\"$nom\", \"$civilite\", \"$jour\", \"$mois\", \"$annee\", \"$signe\",\"$chinois\",\"$today\",\"$time\") ;"

---on se connecte à la base en mettant les identifiants de connexion et les informations permettant la connexion (ip et port). ISERT INTO permet d'insérer dans les colonnes les valeurs enregistrées dans les variables. 

## Evolutions possibles

- Effectuer des statistiques sociologiques
- Développer l'interface pour mettre des couleurs
- Rajouter le signe Amérindien 

