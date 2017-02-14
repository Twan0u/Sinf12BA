#Systèmes Informatiques 1

##Notes de cours 2

En C : 
>decimal : 123  
>Binaire : **0b**1111011  
>Octal : **0**173   
>Hexadécimal :**0x**7B  

en C on a des unsign short,  
* unsign int (min 16 bits)  
...voir slide   

Size of retourne l'espace mémoire du type utilisé.  

...

**Attention** pas de Tab.length en C   
...
en C chaque chaine de caractère se termine avec \0  


###Pointeurs 
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

###Structures

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

###passage par valeur
**Attention** : quand on place un pointeur comme argument d'une fonction on ne peut la modifier.

Bit shift : plus optimisé pour "effecturer des opérations"


 




