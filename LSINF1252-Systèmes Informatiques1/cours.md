# Systèmes Informatiques 1

## Chapitre 1 : Introduction
### Section 1.1 : Introduction
#### Composition d'un système informatique
Le système informatique le plus simple est **un processeur** (*cpu*) et **une mémoire**. Ce prosesseur est capable de : *lire et écrire* de l'information en mémoire et de *réaliser des calculs*. 

L'architecture des ordinateurs est basée sur le modèle Von Neumann.
![](images/Von_Neumann_architecture.png) 

#### Systèmes Unix
Unix est un nom générique donné à une famille de systèmes d'exploitations. On y retrouve MacOS, FreeBSD et Linux qui sont les plus utilisés.

Un système unix est composé de trois grands types de logiciels: 
1. **Le noyau du système d'exploitation** : chargé au démarage de la machine, il se charge de toutes les interactions entre les logiciels et le matériel.
2. **Les librairies** :Nombreuses, elles facilitent l'écriture et le développement d'applications
3. **Les programmes utilitaires** : utilisés pour résoudre une série de problèmes

> *API* signifie *Application Programming Interface* 

> Sous unix, les processus qui se terminent correctement retourne 0 et une valeur différente sinon
ntes physiques de la machine et les applications.

##### Commandes de base 
**ls** : affiche la liste des fichiers et dossiers du répertoire spécifié.  
**mv** : utilitaire pour renommer ou déplacer un fichier ou dossier.  
**cp** : copie un fichier ou dossier (-r pour les dossiers).   
**rm** : efface un fichier ou dossier.  
**mkdir** : crée un répertoire.  
**rmdir** : efface un répertoire vide.  
**cd** : change le répertoire courant.  
**pwd** : affiche le répertoire courant.  
**grep** : permet de faire des recherches sur le contenu des fichiers.  
**./prog** : est utilisé pour lancer le programme prog.  
**grep** : utilitaire permettant d'extraire d'un fichier les lignes qui contiennent ou non une chaine de caractèrepassée en argument.   
**echo "Blabla" >> file.txt** copie le texte Blabla dans le fichier file.txt.  
**man** :lire les pages de manuel d’un système Unix.  
##### Compilateur
``` 
gcc -Werror code.c -o prog 
```
>gcc : compilateur  
>-Werror : affiche les erreurs  
>code.c : fichier qui contient le code en c à compiler  
>prog : nom du programme de sortie  


##### Shell 
Le shell (Terminal/console) est un programme qui à été concu pour l'utilisation d'un système Unix via le clavier. 

Le shell permets d'écrire des scripts(ensemble de commandes shell écrites dans un fichier) qui peuvent être lancées.

On y retrouve nottament 
``` Shell
THING = 12 // int variable
OTHERTHNG = "string" //string variable
$THING // récupère les infos dans la variable 
$# // retourne le nombre d'arguments
$1 // retourne l'argument 1
$2 // retourne l'argument 2 
$@ // liste des arguments 
if [ ]; then
	// something 
fi
``` 
## Chapitre 2 : Langage C
### Section 2.1 : Le langage C
Le langage machine  : langage binaire pour le processeur.
Le langage assembleur est converti en langage machine grâce à un assebleur. Ce langage est le plus proche du processeur.
Au moment de la compilation, le compilateur va exécuter les directives préprocesseur.
```C
#define <stdio.h> //ajoute les librairies au moment de la compilation
#define <stdlib.h>
```

###### Manuel
accessible via la commande man 
1. Utilitaire disponible pour tous les utilisateurs
2. Appels systèmes en C
3. Fonctions de la librairie
4. Fichiers spéciaux
5. Formats de fichiers et conventions pour certains types de fichiers
6. Jeux
7. Utilitaires de manipulation de fichiers textes
8. Commandes et procédure de gestion du système

> ``` & ``` signifie : et logique  
> ``` | ``` signifie : ou logique  
> ``` ^ ``` signifie : ou logique  

```c
#include<stdio.h>
#define NAME " World "

int main ( intarg c , char ∗ argv [ ] ){//la fonction main est appelée pré-processeur, elle est exécutée en premier et tout programme en c doit la contenir. 
    printf ( "Hello , %s!\n" , NAME) ;// affiche sur la sortie standard le \n c'est pour le retour à la ligne le %s c'est pour la variable 
    return 0;//Un programme retourne toujours une valeur (en C : return ou exit ).
}
```



### Section 2.2 : Types de données
Les types de données et leur représentation en mémoire
>decimal : 123  
>Binaire : **0b**1111011  
>Octal : **0**173   
>Hexadécimal :**0x**7B  

#### Nombre entiers
##### Unsigned
en C on a des nombres non signés,  
- unsigned short minimum 16 bits  
- unsigned int minimum 16 bits  
- unsigned long minimum 32 bits  
- unsigned long long minimum 64 bits  
- sizeof(...) permet de connaitre la taille d’un type en nombre d’octets (8 bits).   

Par exemple : 
``` c
sizeof( unsigned int ) = 4 
sizeof ( unsigned short ) = 2    
```
**Attention** pas de Tab.length en C  il faut donc prévoir de garder la taille du tableau en mémoire si on veut l'utiliser par la suite

##### Signed
Les bits signés sont représentés sous la forme : Signe (négatif si = 1) - Nombre 
- short minimum 16 bits  
- int minimum 16 bits  
- long minimum 32 bits  
- long long minimum 64 bits  

Réels
1 bit pour le signe  
8 (resp. 11) bits pour l’exposant  
23 (resp. 52) bits pour la fraction  

``` c
sizeof(float) 4 bytes  //32 bits  
sizeof(double) 8 bytes  //64 bits
``` 
#### Les tableaux
Dans les anciennes version du langage langage C, les tableaux étaient de taille fixe
```C
#define N 10
float matrice[N][N]
```

#### Caractères et chaines de caractères









--------












### Caractères et chaines de caractères

**ASCII** - 7 bits mais représenté sur 8 bits.   
**ISO-8859** 8bits   
**Unicode** Permet de représenter tous les caractères connus de toutes les langues. il utilise plus de 8 bits par caractères     

En C chaque chaine de caractère se termine avec '\0'  
La taille d'une chaine de caractères est donc de 'chaine' + '\0' = 'taille de la chaine' + 1   

### Variables 

```c
int x // initialise le x comme un entier
x = 2 // affecte 2 à la variable 2
printf("%p\n",&x); //afficher une variable en mémoire dans un print:
```

### Pointeurs 
En C la mémoire est gérée avec des pointeurs.  

Déclaration d’un pointeur :
```c
int i = 5;
int ∗ptr = &i ;
```
Récupérer la valeur stockée à l’adresse du pointeur :
```c
int j = ∗ ptr ;
printf ( "%d\n" , j ) ; // affichera 5
```
Modifier la valeur stockée à l’adresse du pointeur :
```c
∗ ptr = 10;
printf ( "%d == %d\n" , ∗ ptr, i ) ; // affichera 10
== 10
```



### Structures

**Definition d’une structure**  
```c
struct student {  
int matricule ;  
char prenom [ 2 0 ] ;  
char nom [ 3 0 ] ;  
} ;  
```

**Declaration + Initialization**  

```c
struct student linus = { 1 , " Linus " , " Torvalds " } ;  
struct student richard = { .matricule = 2, .prenom = " Richard " , . nom = " Stallman " } ;  
struct student evil ;  
evil . noma = 3 ;  
evil . prenom = "Bill" ;  
evil . nom = " Gates " ;  
```
>typedef //permet de redéfinir le nom des types de données.  

Les éléments d’une structure peuvent être accédés via l’opérateur ‘.’
(point)

Les éléments référencés par un pointeur vers une structure peuvent
être accédés via l’opérateur ‘−>’

### Déclaration
Indique au compilateur le type (en cas de variables) ou les
arguments et le type de la valeur de retour (en cas de
fonctions). Toutes fonctions ou variables doivent être
déclarées avant d’être utilisées.

```c
int timestwo( *n);
unsigned long my long ;
```

### Définition
Le corps de la fonction spécifié dans la déclaration, ou en
cas d’une variable son initialisation.
```c
it times two(int ∗n) {
return((∗n)+(∗n)) ;
}
my long = 5 ;

```

### Tableaux  
```c
int tab[3]; //puis allocation par la suite 
int tab2[3] = {1,2,3};
int tab[]= {1,2,3};
```
**Attention** :	on ne peut pas récuérer	la taille d'un tableau avec la variable	tab.length.        


### Pointeurs
**Attention** : quand on place un pointeur comme argument d'une fonction on ne peut la modifier.

```c 
&var // permets e récupérer la variable 
*ptr = &var // on déclare un pointeur
```


```c
int times_two ( i nt ∗n) {
return((∗n)+(∗n));
}
int timestwo (int ∗n) {
∗n=(∗n ) +(∗n ) ;
return ( ∗n ) ;
}
```

###Structures 

```c
struct student{
int matricule;
char prenom[20];
char nom[30];
}
```
```c
struct student bob ={42,"Bob","Truc"} 
```
Les éléments d'une structure de référence par un **(\*e).nom** ou **e->nom**  

### modificationdes type d'élément 
```c
typedef int entier;
```


### Manipulation des bits 
```c
~a // négation  : inverse tous les bits 
```

> Bit shift : Action de déplaçer les bits vers la gauche ou la droite.  
> plus optimisé pour "effecturer des opérations"


## Cours 3 
### Partie des variables
- Variable globales    
- Variable locales   

### Main 
```c
int main (int argc, char *argv[])
```

### Constantes et enum  
```c
const int vie = 42; //défini une variable qui ne peut changer
typedef enum {lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche};
```

### Organisation des processus en mémoire
OS - arg, envp - Stack & Heap - données non-initialisées - données initialisées - code(texte) - OS   

### Alocations dynamiques en mémoire

Stack : allouées en automatiquement en  mémoire  (functions)
Heap : alouées manuellement en mémoire (variables)
 
#### brk & sbrk 
> \#include <unistd.h>   
```c
int brk(void*addr);
void*sbrk(intptr_t incrément);
```
ces deux éléments permettent de modifier la taille du data segment size mais ils ne sont que très peu utilisées

#### Calloc

```c
void *calloc(size_t num_element, size_t size); // base
char *ptr = calloc(15,size(char));//exemple
```
la fonction calloc alloue de la mémoire préalablement initialisée à 0. 

#### Malloc
```c
void *malloc(size_t size); // base
char *ptr = malloc(15*size(char));//exemple
```
**Attention** : cette fonction ne fait que libérer de l'espace en mémoire, il ne reinitialise pas les données à 0.

#### Realloc (BONUS)
```c
...
```
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
préviens le  père qu'il a fini