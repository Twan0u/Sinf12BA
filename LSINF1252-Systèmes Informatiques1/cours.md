# Systèmes Informatiques 1

Points  :

* Inginious  (2 pts)
* Travail de groupe (4 pts)
* Review (2 pts)
* Interro (12 pts)



-------------------


## Cours S4

Dram : condensateur - gourmand en énergie,  50ns
Sram  : consomation en continue => production de chaleur , 1ns
Dram : GB
Sram : MB
Posibilité d'avoir les deux avantages ?
on doit mettre dans la sram les données en cours d'utilisation ( aussi appelé Cache )

### Mémoire
*Code*-*Données*-*Heap*-*Stack*

**Principe de localité** :
- spatiale : si on edite un élément, il est courrant d'accéder à une variable proche en mémoire
- Si on a accédé à l'adresse X à l'instant t, il est commun d'accéder à la même adresse X à l'instant t+1

En pratique, on a une hierarchie de mémoire caches. on sépare la cache insruction de la cache données.

il existe une cache dans le processeur.



## Cours S5
## Cours S6
livelock = le processeur tourne mais rien n'est exécuté

## Cours S7
voir slide

## Cours S8

ar -> archive

2 formes de lib
-stat
	on incl les librairies manuellement dans le makefile
-dynamiques
	il est inutile de sauvegarder des librairies dans chaque exécutable si la librairie est présente dans tous les fichiers
	référence vers une librairie en mémoire
	+efficace : mémoire
	Attentoion que elle soit bien présente sur le système

* Matériel
* Kernel(drivers[abstraction du matériel], interruptions, ...)
* processus système
* Applications


Image sur les slides

appels systèmes : abstraction pour intéragir avec le noyau
dnas la section 2 du manuel
 * getpid : n° du processus système
 * read : lire des fichiers
 * kill : tuer le processus
 * brk : mémoire ( utilisé par malloc)

appel système :
1. Appeler le kernel
2. Quel appel système ?
3. Passer les arguments
4. Exécuter appel système
5. Retourner le résultat
6. Retour au processus

fork : copie presque identique en mémoire (pid !=) copie ses data (contexte != stack et heap ...)


père waitpid()
execve("hello"): remplace le programme par un exécutable . suicide par execve (pid = )
ensuite il fait appel à exit
préviens le  père qu'il a fini****
