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

#### 1.2.5 Diagrammes en arbre ∪∩⊂Ω∅ωℕ∈ 
Pour représenter les événements, il est simple et efficace d'utiliser les diagrammes de Venn, mais dans certains cas le diagramme en arbre est plus intuitif. 

### 1.3 Combinaison d'expériences aléatoires*
## Chapitre 2: Notions de probabilité
## Chapitre 3: Variables aléatoires
## Chapitre 4: Grandeurs caractéristiques
## Chapitre 5: Fonction d'une variable aléatoire
## Chapitre 6: Couples aléatoires
## Chapitre 7: Vecteurs aléatoires
## Chapitre 8: Nombres aléatoires *
## Chapitre 9: Introduction à la statistique *
