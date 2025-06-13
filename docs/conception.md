---
layout: default
nav_order: 5
title: Conception et montage
---

# Conception 
Le projet vise à concevoir un robot mobile à deux roues auto-équilibré, reposant sur un système de contrôle en boucle fermée basé sur un algorithme PID implémenté sur microcontrôleur. La stabilisation est assurée en temps réel grâce à la fusion de données issues de capteurs inertiels (accéléromètre triaxial et gyroscope) via un filtre complémentaire, permettant l’estimation précise de l’angle d’inclinaison.
Les objectifs principaux de la conception incluent l'utilisation d'une carte électronique pour piloter le robot et récupérer les informations fournies par les capteurs , la mise en place d'une méthode de stabilisation permettant au robot de rester en équilibre , et d'assurer une bonne communication entre les différents éléments du système.
Les contraintes techniques définies pour la conception sont les suivantes :
  . Utiliser un système électronique pour contrôler l’ensemble du robot.
  . Intégrer un capteur permettant de connaître l’orientation et les mouvements du robot.
  . Mettre en place une méthode permettant au robot de rester en équilibre de façon stable et réactive.
  . Faire fonctionner le robot sur batterie, avec une autonomie suffisante pour une utilisation pratique.

La phase de conception a débuté par des recherches initiales et une compréhension approfondie des robots auto-stabilisateurs, incluant leur définition, leur principe de fonctionnement et leurs applications existantes. Une étude des capteurs IMU (accéléromètre pour l'inclinaison et gyroscope pour la vitesse angulaire) a été réalisée. Le choix de l'ESP32 comme microcontrôleur a été motivé par ses performances supérieures à celles de l'Arduino classique et son intégration WiFi/Bluetooth. L'analyse de projets existants a également permis d'étudier les matériels utilisés, les types de moteurs et d'alimentation, ainsi que les algorithmes de stabilisation.

Ensuite, des études techniques approfondies ont été menées pour valider les composants. Cela a impliqué la détermination des composants électroniques tels que le type, le nombre et le couple nécessaires pour les moteurs, ainsi que la tension, l'intensité et l'autonomie de la batterie. L'impact du poids sur l'équilibre du robot a été étudié dans le cadre des caractéristiques mécaniques. Un site de documentation Git a été mis en place pour centraliser et suivre l'évolution du projet, documenter les choix techniques et les tests réalisés. La validation des composants a inclus la vérification de la compatibilité entre les éléments et l'ajustement des choix techniques avant l'assemblage.


# Montage
La phase de montage du robot constitue une étape cruciale du prototypage. Elle a débuté par la validation finale des choix techniques, aboutissant à une liste des composants sélectionnés et une vérification des contraintes électriques et mécaniques.

Le processus de montage implique plusieurs étapes clés :

  . Assemblage des pièces : Les différentes parties mécaniques du robot sont assemblées pour former la structure de base.
  . Soudure des capteurs : Les capteurs inertiels (accéléromètre et gyroscope) sont soudés aux cartes électroniques appropriées, assurant une connexion fiable pour la collecte de données.
  . Fixation des moteurs : Les moteurs sont solidement fixés au châssis du robot, en veillant à leur alignement et à leur capacité à entraîner les roues.
  . Fixation des roues : Les roues sont montées sur les moteurs, complétant ainsi le système de propulsion du robot.
  
Des photos du prototype en cours de montage montrent les étapes initiales de l'assemblage, avec les moteurs et les roues fixés, ainsi que les premières connexions électroniques réalisées sur une platine d'expérimentation

![image](https://cloudlasalle.sharepoint.com/sites/TEAMS-AMS-PROJETI32-08Robotautostabilisation/Documents%20partages/08%20Robot%20%C3%A0%20auto%20stabilisation/WhatsApp%20Image%202025-04-07%20at%2011.33.29.jpeg?csf=1&web=1&e=ia34hh)

![image](https://cloudlasalle.sharepoint.com/sites/TEAMS-AMS-PROJETI32-08Robotautostabilisation/Documents%20partages/08%20Robot%20%C3%A0%20auto%20stabilisation/WhatsApp%20Image%202025-04-29%20at%2008.46.29.jpeg?csf=1&web=1&e=mZbL11)

![image](https://cloudlasalle.sharepoint.com/sites/TEAMS-AMS-PROJETI32-08Robotautostabilisation/Documents%20partages/08%20Robot%20%C3%A0%20auto%20stabilisation/WhatsApp%20Image%202025-05-20%20at%2020.57.11%20(1).jpeg?csf=1&web=1&e=NaMf59)

![image](https://cloudlasalle.sharepoint.com/sites/TEAMS-AMS-PROJETI32-08Robotautostabilisation/Documents%20partages/08%20Robot%20%C3%A0%20auto%20stabilisation/ChatGPT%20Image%2020%20mai%202025,%2008_54_57.png?csf=1&web=1&e=1dF16h)
