# Systèmes Informatiques 1

## cours 1
CPU & registres <--> cache[SRAM]/Mémoire Principale[DRAM]/Mémoire Virtuelle[Disque]
### Répertoires
Hiérarchie de répertoires
* **/:** racine
*  **/bin** et **/usr/bin** : utilitaires
*  **/var** et **/tmp** : fichiers temporaires
*  **/etc** : fichiers de configuration
*  **/home** : répertoires utilisateurs (~login)

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
    printf ( "Hello , %s!\n" , NAME) ;// affiche sur la sortie standard
    return 0;//Un programme retourne toujours une valeur (en C : return ou exit ).
}
```

En C : 
>decimal : 123  
>Binaire : **0b**1111011  
>Octal : **0**173   
>Hexadécimal :**0x**7B  
> ``` && ``` signifie : et logique  
> ``` || ``` signifie : ou logique  

### Unsigned
en C on a des nombres non signés,  
* unsigned short minimum 16 bits
* unsigned int minimum 16 bits
* unsigned long minimum 32 bits
* unsigned long long minimum 64 bits
* sizeof(...) permet de connaitre la taille d’un type en nombre d’octets (8 bits). 

Par exemple : 
```C 
sizeof( unsigned int ) = 4 
sizeof ( unsigned short ) = 2    
```
**Attention** pas de Tab.length en C  il faut donc prévoir de garder la taille du tableau en mémoire si on veut l'utiliser par la suite

### Signed
Les bits signés sont représentés sous la forme : Signe (négatif si = 1) - Nombre 
* short minimum 16 bits
* int minimum 16 bits
* long minimum 32 bits
* long long minimum 64 bits

Réels
1 bit pour le signe
8 (resp. 11) bits pour l’exposant
23 (resp. 52) bits pour la fraction

sizeof(float) 4 bytes - 32 bits
sizeof(double) 8 bytes - 64 bits
en C chaque chaine de caractère se termine avec \0  


### Pointeurs 
en C la mémoire est gérée avec des pointeurs.  

On déclare avec * **ptr = &variable**
>*int* i = 5;  
>*int* *ptr = &i

On peut récupérer une valeur stockée à l'adresse d'un pointeur avec **variable =** * **ptr**
>printf("%d\n",j);
>*int* j = *ptr ;  

modifier la valeur 
 ...

*char* sigle[] = "sinf1252";  
*char* *ptr = sigle;  
*char* *c-ptr = ptr + 4;  
printf("%s\n",c_ptr;  
*char* c = *c_ptr;  
> = *ptr  --> s   
> =c_ptr --> 1   
> sigle ==&(sigle[0]) -->   
>c_ptr --> adresse  
>c_ptr --> char   

### Structures

Définition d'une structure
>*struct* studen{  
>*int* matricule;  
>char prenom[20];  
>char nom[30];  
>};  


Déclaration et initialisation
>struct student linus = {1,"linus","Torvald"}   
>...   
>...   
>...   
>...   
>...   

### passage par valeur
**Attention** : quand on place un pointeur comme argument d'une fonction on ne peut la modifier.

Bit shift : plus optimisé pour "effecturer des opérations"


 




