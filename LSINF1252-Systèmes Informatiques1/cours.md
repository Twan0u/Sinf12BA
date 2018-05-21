# Systèmes Informatiques 1

Points  :

* Inginious  (2 pts)
* Travail de groupe (4 pts)
* Review (2 pts)
* Interro (12 pts)



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
