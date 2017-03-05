#Pour aller plus loin
## Redefinition
Pour augmenter la lisibilité, on peut demander au compilateur de remplacer certaines valeurs par d'autres.   
```c
commande_super_longue_a_recopier_et_a_utiliser(1);
commande_super_longue_a_recopier_et_a_utiliser(4);
```
Ceci peut être simplifié avec : 
```c
#define csl commande_super_longue_a_recopier_et_a_utiliser
cls(1);
cls(4);
```

##Compatibilit inter OS
Si vous souhaitez permettre la compilation de votre code par d'autres systèmes d'exploitations, vous pouvez faire la chose suivante 
```c
//exemple : cette commande ne fonctionne que sous Windows
System("PAUSE"); // on peut remplaçer pause par n'importe quelle commande système  
```
Pour éviter de devoir changer son code pour chaque os, il est possible de définir des parties de codes pour chaque os
```c
#if defined(_WIN32) || defined(_WIN64) 
	//code windows
#endif
``` 


