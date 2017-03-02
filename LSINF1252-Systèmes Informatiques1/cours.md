# Systèmes Informatiques 1

## cours 1
CPU & registres <--> cache[SRAM]/Mémoire Principale[DRAM]/Mémoire Virtuelle[Disque]
### Répertoires
Hiérarchie de répertoires :   
- **/:** racine  
-  **/bin** et **/usr/bin** : utilitaires  
-  **/var** et **/tmp** : fichiers temporaires  
-  **/etc** : fichiers de configuration  
-  **/home** : répertoires utilisateurs (~login)  

Service Unix
### Système d'exploitation
Son rôle est de coordonner les opérations des différents composantes physiques de la machine et les applications.
### Utilisateurs 
lambda  
root : Superutilisateur  
### Commandes de base 
**ls** : affiche la liste des fichiers et dossiers du répertoire spécifié  
**mv** : utilitaire pour renommer ou déplacer un fichier ou dossier  
**cp** : copie un fichier ou dossier (-r pour les dossiers)  
**rm** : efface un fichier ou dossier  
**mkdir** : crée un répertoire  
**rmdir** : efface un répertoire vide  
**cd** : change le répertoire courant  
**pwd** : affiche le répertoire courant  
**grep** : permet de faire des recherches sur le contenu des fichiers  
**./prog** : est utilisé pour lancer le programme prog  
**echo "Blabla" >> file.txt** copie le texte Blabla dans le fichier file.txt  
**man** :lire les pages de manuel d’un système Unix.  
### Compilateur
``` 
gcc -Werror code.c -o prog 
```
>gcc : compilateur  
>-Werror : affiche les erreurs  
>code.c : fichier qui contient le code en c à compiler  
>prog : nom du programme de sortie  

## cours 2
```c
#include<stdio.h>
#define NAME " World "

int main ( intarg c , char ∗ argv [ ] ){//la fonction main est appelée pré-processeur, elle est exécutée en premier et tout programme en c doit la contenir. 
    printf ( "Hello , %s!\n" , NAME) ;// affiche sur la sortie standard le \n c'est pour le retour à la ligne le %s c'est pour la variable 
    return 0;//Un programme retourne toujours une valeur (en C : return ou exit ).
}
```

En C : 
>decimal : 123  
>Binaire : **0b**1111011  
>Octal : **0**173   
>Hexadécimal :**0x**7B  
> ``` & ``` signifie : et logique  
> ``` | ``` signifie : ou logique  
> ``` ^ ``` signifie : ou logique  

### Unsigned
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

### Signed
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
int ∗ ptr = &i ;
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

### Alocations en mémoire
Stack : allouées en automatiquement en  mémoire  
Heap : alouées manuellement en mémoire
 
#### brk & sbrk 
> \#include <unistd.h>   
```c
int brk(void*addr);
void*sbrk(intptr_t incrément);
```
ces deux éléments permettent de modifier la taille du data segment size
 



