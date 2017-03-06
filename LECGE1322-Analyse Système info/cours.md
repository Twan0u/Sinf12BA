# Analyse
##Cours S4 : notes 
### une phase 
- traitement 
- unité de temps
- unité de lieu
- unité de ressources 

pour diférencier une phase d'une non phase on va utiliser des critères
**Lieu**
- changement de lieu
**Temps**
- Interruption
- point d'attente de type 
	- décision (humaine / a / t)
	- accumulation 

voir Slides pour les différents trucs

--permanence de l'unité d'exécution -- trop rare que pour être 
-changement de ressources
	- personne 
	- logiciel / matériel
	- information : nouveau / important **Attention, ne pas oublier**

### Examen ecge Question 4 . mai 2013

OuvrirMission = verbe d'action concret + objet

###Phases

- automatique : nécésite des ressources de type système 
- Interactive : nécésite des ressources de type système + Humaine
- Manuelle    :	nécésite des ressources de type Humaine
- Mécanique   :	Humaine et machine (ex : mise sous pli)

## Cours S5 : Notes
| N° | Nom | Préd | Justification | Nature |
|:--:|:---:|:----:|:-------------:|:------:| 
|  1   | PréparerBon  | / | / | Manuelle |  
|  2   | EnregistrerCde | 1 | chg lieu : lieu(prépa) -> lieu(opérateurs) | Interactive |
|  2   | // | // | chg ress pers : +opérateur | // |
|  2   | // | // | chg ress l/m : +SI + terminaux | // |
|  2   | // | // | chg ress info : + commande correcte | // |
|  2   | // | // | pt att déc : si complète | // |
|  2   | // | // | deff périod : f(P2) /= f(P1) | // |
|  3   | Préparer Requis | 2 | chg ress l/m : -terminaux | Automatique |
|  3   | // | // | chg ress pers : -opérateurs | // |
|  3   | // | // | chg ress l/m	: +SI +	terminaux | // |
|  3   | // | // | pt att déc :	si correcte | // |
|  3   | // | // | deff	périod : f(P3) /= f(P2) | // |
|  4   | PréparerSérie | 3 | chg ress info : +série | Automatique |
|  4   | // | // | pt att accumulation : "n bons" | // |
|  4   | // | // | deff	périod : f(P4) /= f(P1)	| // |






 
