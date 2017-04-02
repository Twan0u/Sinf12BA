# Projet appsinf

>Professeur: Sebastian Gonzales  
>E-Mail: Sebastian.gonzales@uclouvain.be  

# 1: Les besoins utilisateurs 
## Objectifs du cours
- Acquérir de l’expérience méthodologique dans la production d’une application de taille moyenne.  
- Élargir l'éventail conceptuel et technique auquel vous pourrez faire appel lors de votre parcours professionnel.  
- Acquérir une première experience en développement des applications web.  
- Défendre son projet de manière convaincante.  

La programmation n’est pas orientée objet classique mais elle est événementielle / asynchrone

## Le cycle de vie d'un logiciel
1. Besoin  
2. Analyse  
3. Conception  
4. Implémentation  
5. Livraison  


## Contenu conceptuel et technique
* Programmation
	* orientée objet
	* fonctionnelle
	* asynchrone
* Approches de contrôle qualité
	* Conception pilotée par le comportement
	* Développement pilotée par les tests
* Développement d’interfaces web (frontend)
	* Spécification de la structure
	* Spécification de la apparence
	* Spécification du comportement
	* Empaquetage de logiciel
* Développement de services web (backend)
	* Microservices
	* Conception des APIs REST
	* Traitement asynchrone des requêtes
* Bases de données non relationnelles
	* Mango DB

##Evaluation
* Analyse et conception (30%)
	* Spécifications des besoins
	* Conception de l’interface
	* Diagramme de classes
	* Base de données
* Implémentation(30%)
	* Conformité par rapport aux spécifications (tests
d’acceptation)
	* Fonctionnement correct (tests unitaires et manuels)
	* Qualité du code (lisibilité, documentation, efficacité)
* Rapport écrit
* Défense(30%)
	* Démo (10%)
	* Aspects techniques (10%)
	* Questions–réponses (10%)

# 2: Spécification des besoins 
Spécification systématique des besoins de l’utilisateur en langage (pseudo) naturel.
Nous allons utiliser 'gherkin' qui est un dérivé de cumcumber 

Feature: [title]
	*benefit*
	*means*
Scenario: [title]
	Given [context]
	And [some more context]
	...
	When [event]
	And [another event]
	...
	Then [outcome]
	And [another outcome]
	...
Scenario: ...
## Vérifications
on effectue des vérifications transversales: vérifiacation des features et des fonctionnalités de chaque chose  . 
## Impératifs
Dans ce genre de spécifications on applique la philosophie DRY (Don't Reapeat Yourself)
éviter le couplage avec l'interface user.
> enters 20 into the “amount” field

On utilise le language dans lequel on développe l'application.
> When the user requests 20 --> When the account holder requests €20

## Organiser les spécifications par fonctionnalité
* atm-withdrawal.feature
* proton-reload.feature
* card-payment.feature
* card-stop.feature
... et pas : atm-withdrawal-and-proton-reload.feature

# 3: Développement piloté par les tests 
## Tests unitaires
* **Langage orienté objet** : les tests unitaires suivent la découpe en objets, classes et méthodes
* **Langage fonctionnel** : les tests unitaires suivent la découpe en fonctions
* **JavaScript** : langage fonctionnel et orienté objet
##Modalités des tests
1. Les tests doivent être indépendants les uns des autres
>L’ordre d’exécution des tests ne doit pas influencer le résultat
> On doit pouvoir exécuter des tests individuels au choix sans influencer le résultat
> Un test ne doit pas se baser sur les actions ou données générées par un autre test
2. Les tests doivent être efficaces pour ne pas ralentir le cycle de travail du développeur
## Outils
* Mocha
* Karma 
* Jasmine
* Qu
##Exemple 
``` javascript
// « Test suite » : ensemble de tests liés
describe('UserLoginComponent', () => {
// « Test spec » : test unitaire
	it('disables login button when the username is empty', () => {
	// Actions dont l’effet est à vérifier
inputText({ element: usernameInput, text: '' });

// « Expectation » : vérification des effets
expect(submitButton.properties.disabled).toBeTruthy();
});

// « Test spec » : test unitaire
it('enables login button when username and password are provided', () => {

// Actions dont l’effet est à vérifier
inputText({ element: usernameInput, text: 'bob' });
inputText({ element: passwordInput, text: ‘let-me-in!$#@’ });

// « Expectation » : vérification des effets
expect(submitButton.properties.disabled).toBeFalsy();
});
});
```
#Cours S4

Développement piloté par les tests = TDD(test driven developpement)
 

