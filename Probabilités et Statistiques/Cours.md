# Probabilités pour scientifiques et ingénieurs

## Chapitre 1: Notions de base
### 1.1 Expérience aléatoire
**Une expérience aléatoire (ou épreuve)** : expérience dans laquelle le hasard intervient.

Pour caractériser une expérience aléatoire, il faut : 
- décrire le dispositif expérimental sous lequel l'expérience est exécutée
- s'assurer que les répétitions de l'expérience se font sous des conditions semblables
- définir l'ensemble des résultats possibles, noté Ω, que l'on appelle *univers* de l'expérience aléatoire.

l'ensemble des résultats possibles (noté Ω) peut-être : 
- **énumération des objets qui le composent**[déf en extension] ( ex: {Annimaux, Végétaux}, {1, 2, 3, 4, 5, 6}, {pile, face} )
- **propriété de l'ensemble**[déf en compréhension] ( ex: Ω={ω: ω>10, ω∈ℕ} ) 
Ou encore par : 
- **nombre défini d'éléments** (ex: 2 faces d'une piece)
- **infinité dénombrable d'élément** (ex: nb de pieces fabriqués que l'on doit examiner avant de tomber sur un défaut) 
- **infinité non dénombrable d'éléments** (ex:hauteur des précipitations à un endroit en une année  Ω=[0,∞ )

### 1.2 Evénement
**Un événement** est un sous-ensemble des résultats possibles tel qu'à l'issue de l'expérience on peut déterminer si A est réalisé ou non.

Si A=Ω :  **événement certain** (Toujours réalisé)
A=∅ : **événement impossible** (Jamais réalisé)
A=ω : **événement élémentaire** (élément observable) (ω∈Ω)

#### 1.2.1 Relations entr événements 
**L'inclusion** : A⊂B (si A est réalisé, B aussi)
**L'égalité** : A=B (les éléments de A sont les mêmes que les éléments de B)
**L'incompatibilité** : A≠B (A et B n'ont aucun élémént en commun)

#### 1.2.2 Composition d'événements 
**la négation** :  A*=Ω\A ( non A est Tout moins A )
**l'intersection** : A∩B (A et B sont réalisés simultanément)
**L'union** : A∪B (soit A, soit B pour que ce soit réalisé) 

On peut étendre toutes ces compositions 

A<sub>1</sub>∩A<sub>2</sub>∩A<sub>3</sub>∩A<sub>4</sub>∩A<sub>5</sub> = ∩<sup>n</sup><sub>i=1</sub>  A<sub>i</sub>
A<sub>1</sub>∪A<sub>2</sub>∪A<sub>3</sub>∪A<sub>4</sub>∪A<sub>5</sub> = ∪<sup>n</sup><sub>i=1</sub>  A<sub>i</sub>

#### 1.2.3 Algèbre des événements
L'algèbre est utilisée pour effectuer des opérations sur les événements 
**Idempotence** : A∪A = A ; A∩A = A
**La commutativité** : A∪B = B∪A ; A∩B = B∩A
**L'associativité** : A∪B∪C = (A∪B)∪C= A∪(B∪C) ; A∩B∩C = (A∩B)∩C= A∩(B∩C)
**La distributivité** : (A∪B)∩C = (A∩C)∪(B∩C) ; (A∩B)∪C = (A∪C)∩(B∪C)
**Les identités** : A∪∅=A ; A∪Ω=Ω ; A∩∅=∅ ; A∩Ω=A
**La complémentarité** : A∪A\* =Ω ; A∩A\* =∅ ; (A\*)\*=A ; ∅\* = Ω ; Ω\* = ∅ 
**Les lois de Morgan** : (A∪B)\* = A\* ∩ B\* ; (A∩B)\* = A\* ∪ B\*

L'interêt de ces formules est de permettre la simplification des expressions dans l'optique de les rendre plus simples à calculer par la suite.

#### 1.2.4 Système complet d'événements ou partition

Un système complet d'événement est aussi appelé **partition**, il est tel que chaque événement mis bout à bout  forme l'événement certain Ω. Il y a cependant des conditions pour obtenir une partition : **aucun des événement n'est impossible**, Les événements sont **incompatibles deux à deux**, **Leur union est l'événement certain**
La partition la plus souvent rencontrée est la partition de A et A\* 

#### 1.2.5 Diagrammes en arbre 
Pour représenter les événements, il est simple et efficace d'utiliser les diagrammes de Venn, mais dans certains cas le diagramme en arbre est plus intuitif.

![](https://raw.githubusercontent.com/Twan0u/Sinf12BA/master/Proba%20%26%20Stat/Img/1.png) 

Il peut cependant être laborieux et nécésiter l'utilisation du calcul combinatoire.

 

### 1.3 Combinaison d'expériences aléatoires*
## Chapitre 2: Notions de probabilité 

### 2.1 Probabilité d'un événement 
#### 2.1.1 Définition Classique (Laplace)

On définit la probabilité d'un événement comme le nb d'événements favorables à la réalisation d'un événement A (noté #A) par rapport au nombre de cas possibles (noté #Ω). ce qui nous donne la formule 
$$P(A)=#A/#Ω$$

Cette définition simple pose cependant quelques problèmes : elle nécésite que **tous** les éléments ont la **même probabilité de sortir** et dans le cas ou il y a un nombre fini de possibilités. 
Cette définition n'est donc bonne que pour résoudre des problèmes simples.

#### 2.1.2 Définition en fréquence
Une autre approche séduisante est d'évaluer la fréquence avec laquelle l'événement A se réalise en comptant #A. On obtient alors la formule suivante ou P(A) est la fréquence théorique: 

$$P(A) = lim (n➝∞)  : #A/n $$

Cette définition permets d'obtenir la probabilité d'un événement sur la base de l'expérimentation. 
Elle à cependant certains problèmes: 
- Elle e s'applique qu'à des expériences répétables sous conditions identiques
- Elle ne permets que de déduire une probabilité à priori

#### 2.1.3 Définition axiomatique
Axiomes de Kolmogorov :
- P(A) ≥0 
- P(Ω)=1 donc P(∅)=0
- P(A∪B)= P(A)+P(B) si A∩B=∅
- P(A) ≤ 1
- P(A*)=1-P(A)
- P(∪<sup>n</sup><sub>i=1</sub> A<sub>i</sub>) = ∑<sup>n</sup><sub>i=1</sub>P(Ai) si Ai ∩ Aj =∅ pour tout i≠j
- P(A∪B)=P(A)+P(B)-P(A∩B)
 P(A)=P(B) ne veut pas dire que A=B mais que ils ont autant de chance de se produire ( ex: garçon ou fille)

#### 2.1.4 Probabilités théoriques et subjectives
**La probabilité estimée** est une probabilité déduite d'observations.
**La probabilité subjective** est dans ce cas une mesure du sentiment de certitude ou d'incertitude, de croyance ou de doute quant à la réalisation ou non d'un événement

Un problème persiste, c'est le défaut de la chose réele. contrairenement à son idéalisation théorique, elle n'est pas toujours aussi fidèle aux probabilités que son idéal (ex: dé truqué)

### 2.2 Probabilité conditionnelle
La probabilité P(A|B) de l'événement A sachant que B est réalisé, que l'on appelle *probabilité conditionnelle* de A si B, est donnée par : 
$$P(A|B)=P(A∩B)/P(B)$$
avec P(B)≠0
### 2.3 Théorème des probabilités composées 
$$P(A∩B) = P(A|B).P(B)$$
$$P(A1∩A2∩A3)=P(A1).P(A2|A1).P(A3|A1∩A2)$$
On l'appelle loi des probabilités composées
### 2.4 Théorème des probabilités totales
si l'ensemble {B1,...,Bn} est une partition de Ω 
$$P(A)=∑[n,i=1]P(A|Bi).P(Bi)
### 2.5 Téorème de Bayes
si l'ensemble {B1,...,Bn} est une partition de Ω 
$$P(Bi|A)=P(A|Bi).P(Bi)/∑[n,j=1] P(A|Bj).P(Bj)$$

Bi peuvent être interprétés comme toutes les causes responsables de la réalisation de A. ( En pratique, on observe rarement les causes mais les conséquences. voilà donc pourquoi on cherche à savoir, sachant que A est réalisé, combien de chances celà avait-il de se produire?
### 2.6 Indépendance
L'hypothèse d'indépendance est facilement posable ou vérifiable. Cependant, la sésolution analytique est laborieuse voir impossible.
#### 2.6.1 Indépendance entre événements
l'indépendance entre A et B (notée A ⊥ B) 
$$A ⊥ B ⇋ P(A∩B)=P(A).P(B)$$

Pour vérifier des indépendances plus grandes, il suffit de procéder par paires( si A⊥B⊥C) alors, on vérifira A⊥(B⊥C); B⊥(C⊥A) ; C⊥(A⊥B) 
## Chapitre 3: Variables aléatoires 
L'objectif est de remplaçer chaque événement ω∈ℝ par un Nombre x∈ℝ.
### 3.1 Définition
Une **variable aléatoire** X est une application de Ω dans ℝ telle qu'à tout ω correspond une valeur X(ω)=x

Le **domaine de variation**(=le support)Rx est l'ensemble des valeurs que la variable aléatoire X peut prendre
### 3.2 Variable aléatoire discrète
x est une **variable aléatoire dscrète** (VAD) quand Rx comprend un bombre fini ou ue infinité dénombrable de valeurs possibles ( généralement, il s'agit de nombres entiers)
#### 3.2.1 Fonction de probabilité
P(x) est une fonction de probabilité ( elle caractérise une VAD)
$$p(x)≡P(X=x)$$
cette fonction spécifie la probabilité de la VAD 

----------------------IMG 2 -----------------------

∑<sup>n</sup><sub>i=1</sub>  p(xi) =1

#### 3.2.2 Fonction de répartition

F(x) associe à chaque valeur de x de la variable aléatoire X la probabilité de ne pas excéder cette valeur 

$$F(x)=p(X≤x)$$

----------------------IMG 3 -----------------------

#### 3.2.3 Loi de Bernouilli
Expérience ou il y a réalisation ou non d'un événement A. p est la probabilité de A

$$X~Be(p)$$

#### 3.2.4 Répétitions de l'épreuve de Bernouilli
##### Loi binomiale 
Après n expériences à la probabilité p, combien de fois l'expérience de bernouilli à-t-elle réussi ? 

$$X~Bi(n,p)$$
##### Loi Hypergéométrique (tirage sans remise)
X = nombre d'objet parmi les n qui réalisent cet événement
N = total des objets 
n = nombres d'objets retirés
k = nombres de défectueux
$$X~Hy(N,n,k)$$

##### Loi géométrique (nombre de répétition pour obtenir 1 réussite)
$$X~Ge(p)$$

##### Loi de Pascal ou loi binomiale négative(nombre de répétition pour obtenir k réussites)

$$X~Pa(k,p)$$

##### Loi de Poisson  
quand la P(A) est très faible
$$X~Po(µ)$$

Cette loi est utilisée pour déterminer le nombre d'occurence / unité de temps ou d'espace

##### Approcimation de la loi binomiale
lorsque n est grand et p petit ( np étant une valeur finie)

$$X~Po(n.p), (n➝∞)$$

### 3.3 variable aléatoire continue 
Rx est maintenant dans ℝ

#### 3.3.1 et 3.3.2 Fonction de répartition et fct de densité de proba
F(x) n'est plus une fonction en escalier mais une fct continue et idem pour p(x)

----------------------IMG 4 -----------------------

#### 3.3.3 Loi uniforme 
Si la loi de densité est Ct sur [a,b] est nulle ailleur on parle de loi uniforme. 

----------------------IMG 5 -----------------------

#### 3.3.4 Loi exponentielle
$$X~Exp(λ)
? 
#### 3.3.5 loi normale ou loi de Gauss-Laplace  

$$X~N(µ,σ²)$$

µ = moyenne 
σ = variance autour de cette moyenne

------------------------Loi normale réduite-------------------------

### 3.4 Approximation d'une loi par une autre

je skip 
## Chapitre 4: Grandeurs caractéristiques 
### 4.1 Mode
Le mode x~m~ d'une variable aléatoire est la valeur la plus probable que peut prendre la variable aléatoire ( maximum de la fonction p(x) et f(x))

----------------------IMG 6 -----------------------

### 4.2 Médiane
Une médiane est une mesure de centralité. ~m~   assure que l'on ait une chance sur 2 d'observer une valeur x plus grande ou plus petite à ~m~

----------------------IMG 7 -----------------------

### 4.3 Quantiles
Comme pour la médiane, sauf qu'ils subdivisent différement 

|Nom|quantilles|nombre d'intervalles|
|----:|:----:|:----:|
|Médiane|0,5quantile|2|
|Quartiles|x~0,25~,x~0,5~,...|4|
|Déciles|x~0,1~,x~0,2~,...|10|
|Centiles|x~0,01~,x~0,02~,...|100|

### 4.4 Espérance (µ ou E[x])
valeur qe l'on s'attend à observer en moyenne pour la variable aléatoire X.
(c'est une sorte de moyenne pondérée)

### 4.5 Variance(σ² ou Var[x])
σ est appelée écart-type ou déviation standart. c'est une mesure de la dispersion de la variable autour de sa moyenne.


## Chapitre 5: Fonction d'une variable aléatoire ∪∩⊂Ω∅ωℕ∈≠∑⊥⇋ℝ≡≤≥λ➝∞σ


## Chapitre 6: Couples aléatoires
## Chapitre 7: Vecteurs aléatoires
## Chapitre 8: Nombres aléatoires *
## Chapitre 9: Introduction à la statistique *
