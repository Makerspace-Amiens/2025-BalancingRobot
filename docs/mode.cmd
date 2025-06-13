---
layout: default
nav_order: 7
title: Modes d'emploi
---

 I. Préparation et Vérification Pré-Opérationnelle

    Vérification de l'Assemblage :

    . Assurez-vous que toutes les pièces sont correctement assemblées.
    . Vérifiez la bonne fixation des moteurs et des roues.
    . Confirmez que les capteurs sont soudés et fixés correctement.
    . Vérifiez la connexion des moteurs, des capteurs et de la batterie au microprocesseur ESP32.


    Alimentation :

    S'assurer que la source d'alimentation est correctement connectée au système électronique.


  Vérification des Connexions Électroniques :

    Confirmez que toutes les connexions sont sécurisées entre l'ESP32, les capteurs (accéléromètre triaxial et gyroscope) et les commandes moteur.



II. Mise en Marche et Stabilisation

  Mise sous Tension :

    . Activez l'alimentation du robot.
    . Le microcontrôleur ESP32 devrait démarrer le programme avec le contrôle en boucle fermée.

  Processus de Stabilisation :

    . Le système utilisera la fusion de données des capteurs inertiels (accéléromètre et gyroscope) via un filtre complémentaire pour estimer précisément l'angle d'inclinaison.
    . L'algorithme PID implémenté sur l'ESP32 ajustera les moteurs en temps réel pour maintenir l'équilibre du robot. La stabilisation devrait être stable et réactive.


III. Contrôle et Fonctionnement

  Pilotage (si implémenté) :
    . Si une interface de contrôle à distance a été intégrée (par exemple via Bluetooth/Wi-Fi), utilisez l'application ou le dispositif de contrôle pour interagir avec le robot.
   .  Les moteurs seront pilotés par la carte électronique.

IV. Arrêt et Stockage

  Arrêt :

    . Désactivez l'alimentation du robot.

   Stockage :
    . Rangez le robot dans un endroit sûr et sec.

V. Maintenance et Amélioration (Points à Considérer pour l'Utilisation Continue)

  Tests de Stabilité : 
    . Effectuez régulièrement des phases de test pour vérifier la stabilité du robot et ajuster les algorithmes si nécessaire.
    . Optimisation des Algorithmes : Le rapport sur les tests et l'optimisation des algorithmes est un livrable attendu, ce qui implique que des ajustements seront nécessaires au fil du temps.


  Mise à jour du programme ESP32 :
    Si des améliorations sont apportées (par exemple, des capteurs plus précis ou une stabilisation avancée), le programme devra être mis à jour.


  Vérification de l'autonomie : 
    . Surveillez l'autonomie de la batterie et rechargez-la selon les besoins.

  Pour un mode d'emploi complet, vous auriez besoin de détails supplémentaires sur :

    . Le processus exact de démarrage du programme sur l'ESP32.
    . Les indicateurs visuels ou sonores du robot (LED, buzzer) pour indiquer son état.
    . Les étapes spécifiques de calibration des capteurs.
    . Les instructions détaillées pour l'interface de contrôle à distance (si applicable).
    . Des sections de dépannage pour les problèmes courants.

