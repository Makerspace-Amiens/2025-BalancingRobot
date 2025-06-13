---
layout: default
title: Préparation des Matériaux
parent: Etapes de fabrication
nav_order: 1
---

# Préparation des Matériaux

Recherches initiales et compréhension du projet (Phase 1): Cette phase consiste à comprendre les robots auto-stabilisateurs, étudier les capteurs IMU (accéléromètre et gyroscope), et déterminer pourquoi l'ESP32 est choisi (plus performant que l'Arduino classique, avec connexion WiFi/Bluetooth intégrée). Elle inclut également l'analyse de projets existants pour étudier les matériels utilisés, les types de moteurs, l'alimentation et les algorithmes de stabilisation.

Études techniques et validation des composants (Phase 2): Il s'agit de déterminer les composants électroniques (moteurs et batterie) et d'étudier les caractéristiques mécaniques, notamment l'impact du poids sur l'équilibre. Un site de documentation Git est mis en place pour centraliser et suivre l'évolution du projet, documentant les choix techniques et les tests réalisés. Cette phase se termine par la validation des composants, vérifiant la compatibilité entre les éléments et ajustant les choix techniques avant l'assemblage.
Début de la construction du robot (Phase 3): Cette étape valide les choix techniques finaux et le début du montage du robot. Cela inclut l'assemblage des pièces, la soudure des capteurs, et la fixation des moteurs et des roues.

## Liste des Matériaux

  . Module 6 DoF SEN-MPU6050 (2 unités) 
  . Jeu de 2 connecteurs FH2830 (2 unités) 
  . Commande moteur 1 x 1,9 A 4036 (2 unités) 
  . Chassis 2WD ADA3216 (1 unité) 
  . Matériaux déjà disponibles au MakerSpace :
  . Une alimentation externe 
  . Fils de connexion 
  . Microprocesseur ESP32 

## Procédure de Préparation

Phase 1 : Recherches Initiales et Compréhension du Projet 

  . Comprendre les robots auto-stabilisateurs : Définir leur principe de fonctionnement et examiner des applications existantes. 
  . Étudier les capteurs IMU (accéléromètre et gyroscope) : Comprendre comment l'accéléromètre mesure l'inclinaison et le gyroscope la vitesse angulaire. 
  . Analyser le choix de l'ESP32 : Comprendre pourquoi il est préféré à l'Arduino classique (meilleures performances et connexion WiFi/Bluetooth intégrée). 
  . Analyser les projets existants : Étudier les matériels utilisés, les types de moteurs, l'alimentation et les algorithmes de stabilisation. 
  
Phase 2 : Études Techniques et Validation des Composants 

  . Déterminer les composants électroniques : Spécifier le type, le nombre et le couple nécessaire des moteurs, ainsi que la tension, l'intensité et l'autonomie de la batterie. 
  . Étudier les caractéristiques mécaniques : Évaluer l'impact du poids sur l'équilibre du robot. 
  . Mettre en place le site de documentation Git : Créer un espace pour centraliser et suivre l'évolution du projet, ainsi que documenter les choix techniques et les tests. 
  . Valider les composants : Vérifier la compatibilité entre les différents éléments et ajuster les choix techniques avant l'assemblage.
  
Phase 3 : Début de la Construction du Robot 

Valider les choix techniques finaux : Confirmer la liste des composants sélectionnés et vérifier les contraintes électriques et mécaniques. 
Commencer le montage du robot : 
  . Assembler les pièces. 
  . Souder les capteurs. 
  . Fixer les moteurs. 
  . Fixer les roues. 

## Conseils de Sécurité

  . Connexions électriques : Vérifiez toujours que toutes les connexions électriques sont sécurisées et bien isolées pour éviter les courts-circuits ou les chocs électriques. Assurez-vous que les fils de connexion  sont        correctement branchés.
  . Outils : Utilisez les outils appropriés pour chaque tâche et manipulez-les avec soin. Rangez-les correctement après utilisation pour éviter les accidents.
  . Tests : Lors des phases de test, soyez vigilant. Si le robot commence à se comporter de manière imprévue, soyez prêt à couper l'alimentation immédiatement.
    Environnement de travail : Maintenez un espace de travail propre et dégagé pour éviter les trébuchements ou la chute de composants.

Une fois cette étape terminée, passez à l'[Assemblage](/assemblage).
