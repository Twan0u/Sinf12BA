# Enoncé textuel du projet

## Enoncé textuel du projet « Aéroclub » (LINGE1322, 6 février 2017)

Un aéroclub souhaite acheter un logiciel de gestion pour faciliter la gestion des plannings, le contrôle des vols, la gestion des adhérents.

On connaît le nom, les prénoms, les adresses (principale et secondaire) et les numéros de téléphone (de 1 à 3 numéros) pour chaque adhérent au club. Il n'existe pas deux adhérents ayant le même nom et les mêmes prénoms simultanément. Un pilote est un adhérent ayant une certaine ancienneté de vol et qui est qualifié pour un certain nombre d'appareils pour lesquels il a reçu un numéro de licence propre pour une période donnée (p. ex. de février 2017 à juin 2017). Tous les adhérents ne sont pas des pilotes. Un instructeur est un pilote ayant un niveau d’habilitation maximum (de 1 à 10). Quand un pilote planifie un vol sur un appareil, il remet un plan de vol au responsable de la tour de contrôle. Ce plan décrit un vol par la date de départ, la date de retour, l’heure de départ et l’heure de retour estimées, le trajet et l'immatriculation unique de l'appareil (p. ex. OO-BEL). Un vol peut emporter aussi comme passager un ou plusieurs adhérents.

Dans un ordre quelconque, la tour de contrôle encode le plan de vol au terminal et procède à deux validations :

1.   le système vérifie automatiquement que le pilote est bien qualifié pour l'appareil, les heures et dates demandées;

2.   le responsable vérifie qu'il n'y a pas de conflit avec un autre plan de vol existant.

Si une validation n'aboutit pas, le SI envoie automatiquement une feuille de commentaires au pilote afin qu'il modifie son plan jusqu’à ce qu’il soit valide ou bien qu’il suspende sa demande. Si les deux validations aboutissent, une autorisation de vol est imprimée directement avec un numéro de vol spécifique et est transmise au pilote.

Le jour du départ, le pilote signe l'autorisation de vol qu'il remet au chef de la tour de contrôle. Il effectue ensuite le vol planifié. A son retour, la tour de contrôle introduit dans le système l'heure et le jour d'arrivée exacts, qui peuvent différer de l’heure et de la date estimées. En fin de mois, le service de comptabilité imprime automatiquement les factures de tous les vols que chaque pilote doit payer.

Chaque appareil du club est notamment décrit par sa marque (p. ex. Jodel), son modèle (p. ex. D 140), son sobriquet (p. ex. "Mousquetaire"), son type (avion, ULM, hélicoptère), son nombre maximum de passagers, sa puissance totale et le niveau de qualification (de 1 à 10) requis pour le piloter. On enregistre également pour chaque moteur le numéro de série, la marque, le modèle, la puissance nominale et la date de la dernière révision.
