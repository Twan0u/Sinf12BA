# Conception Orientée Objet 
## Objectifs du Cours
>prof : Kim Mens  

### Thèmes
- Introduction aux bases de données et modélisation  de données  
- Conception de programmes orientés objet  
- Méthodologie d'aide au développement de programmes  
- Réalisation ( analyse et implémentation ) de programmes Java ( android ) de complexité moyenne  

### Durée 
**9 semaines** à raison de 2H/semaine

### Open Campus Days

**S7**

### Projet - EZMeal

1. Ecran de Login  
2. Gestion du profil utilisateur   
3. Menu d'accueil  
4. Recettes recommandées  
5. Catalogue de recettes  
7. Détail d'une recette   
6. Recherche de recettes  

différentes extensions possibles

### Contenu du cours 
1. Gestionn de données  
2. Conception orientée Objet  
3. Programmation Android  

### Evaluation

50 % projet et 50 % Travail  
>Il faut un minimum de 10/20 à chaqu'un d'entre eux pour réussir

### Examen 
Modélisation et conception d'une application similaire à l'étude de cas développée dans les séances pratiques  



5 questions sur des sujets vus au cours  

ORM, SQL, diagrammes de classes, diagrammes de séquences, ...  

Question type: à partir d’un modèle incomplet   

corrigez / critiquez / discutez ce modèle  

complétez ou raffinez le modèle pour une extension donnée  

## Introduction

**Une Base de Donnée** : est unsystème informatique de stockage d'informations  

>Il existe une grande variété de base de données.   
> mais les plus utilisés s'appuient sur le **modèle relationnel** et utilisent le **language SQL**  

Si une donnée est redondante, c'est qu'elle peut être mise dans une BD.  

```sql
select Item1, Item2, Item3 
from DataBase
where condition
```

ceci retourne un tableau de 3 colonnes et d'autant de lignes qu'il y a d'éléments dans la BD qui satisfont la condition.  

```sql
select D1.ITEM2, D2.ITEM3, sum(D.QUANTITE*P.PRIX)
from CLIENT D1 , DETAIL D , PRODUIT P
where C.CLI + D.NCLI
and D.NPRO = P.NPRO
group by C.LOCALITE, P.NPRO
```

> Une **base de données** est constituée d’un ensemble de **tables**  
> Une **table** contient les données relatives à une **collection d ’entités** de même nature  
> Chaque **ligne** d’une table reprend les données relatives à une **entité**  
> Chaque **colonne** d’une table décrit une propriété commune des entités  
> Un **identifiant** de la table est Le jeu de colonnes dont les valeurs sont uniques  
> Une **clé étrangère** vers cette autre table sont les lignes d’une table peuvent faire référence chacune à une ligne d’une autre table.  
> On évite d’enregistrer des données qu’il est possible de calculer à partir d’autres données enregistrées.

### Les SGBD ( Systèmes de Gestion de Bases de Donées )
- Organisation des données
> le SGBD :   
> - organise les données en tables permanentes stockées sur disques.  
> - crée les mécanismes garantissant un accès rapide aux données.  
> - informe les utilisateurs sur ces structures.  

- Gestion des données : 
> le SGBD  :   
> - garantit l'évolution cohérente des données.  
> - vérifie que les contraintes (unicité, références entre tables, etc.) sont respectées.  

- Accès aux données : 
> le SGBD :  
> - permet l'accès aux données à la fois par l'utilisateur occasionnel et par les programmes de traitement de données.  

- Protection contre les accidents :   
> le SGBD :  
> - garantit l'intégrité et l'accessibilité des données en cas d'incident ou d'attaque.  

- Gestion des accès concurrents :   
> le SGBD :  
> - permet l'accès simultané aux données par des centaines voire des milliers d'utilisateurs.   
> - contrôle rigoureusement les opérations simultanées sur les mêmes données.  

- Contrôle des accès :   
> le SGBD   
> - garantit que seuls les utilisateurs autorisés peuvent accéder aux données et les modifier.  

---

## Cours S3 - notes
contraintes d'unicité

cercle bleu signifie doit avoir    

(Etudiant (Noma))  =  (Etudiant) -[<->,<->] - (Noma)

Unicité : il faut un truc et un autre truc


## Cours S4 - notes 

Le sous la guage DDL permets de créer des structures de données et les modifier.
Data Description Language


## cours S6 - notes

UML = Unified Modelling language
- language architecture (ex: package)
- UML class diagrams
- UMZ sequence diagrams
-...
User stories = récit utilisateurs





