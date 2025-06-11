---
layout: default
nav_order: 4
title: Qu'est ce qu'un PID ? Pourquoi le reguler et comment le reguler ?
---

La commande d’un système consiste à appliquer, via une entrée de commande, une action sur ce système afin d’obtenir un comportement souhaité en sortie. Dans le cadre de notre projet, nous illustrerons ce principe à l’aide d’un régulateur PID chargé de stabiliser un drone et de maintenir un équilibre précis.


# Qu'est ce qu'un PID ?
Un PID est un régulateur utilisé en automatique pour contrôler un système en maintenant une grandeur (température, vitesse, tension, position, etc.) proche d'une valeur souhaitée appelée consigne.
Le terme PID vient des trois composantes principales de ce régulateur :

  . P pour Proportionnel

  . I pour Intégral

  . D pour Dérivé

Chacune de ces actions a un rôle bien précis :

  . Action proportionnelle (P) :
      Elle est proportionnelle à l’erreur (la différence entre la consigne et la mesure réelle).
      Elle permet une réponse rapide mais ne suffit pas à elle seule à annuler l’erreur à l’état stationnaire.

  . Action intégrale (I) :
      Elle corrige l’erreur accumulée dans le temps.
      Cela permet d’annuler l’erreur résiduelle, mais peut introduire une lenteur ou des oscillations si mal réglée.

  . Action dérivée (D) :
      Elle anticipe les variations futures de l’erreur en se basant sur sa dérivée.
      Elle améliore la stabilité du système et limite les dépassements (overshoot).

La formule mathématique du PID en continu est généralement :
![image](https://image.slideserve.com/954672/diff-rentes-structures-d-un-pid-l.jpg)


# Pourquoi reguler le PID ?
Imagine que tu veux garder la température de ta chambre à 22 °C. Tu règles le chauffage, mais la température change au fil du temps : il peut faire plus froid dehors, tu ouvres une fenêtre, ou encore le radiateur chauffe un peu trop.Sans régulation, ton système (ici, le chauffage) ne s’adapte pas. Résultat : soit tu as trop chaud, soit tu as trop froid. Pas top.

C’est là qu’intervient un régulateur comme le PID. Son rôle, c’est de corriger en permanence l’écart entre ce que tu veux (la consigne) et ce qui se passe réellement (la mesure).

En régulant, on cherche donc à :

  . Atteindre la valeur souhaitée (la consigne) sans trop attendre.

  . Réagir aux imprévus (changement de température, charge, etc.).

  . Éviter les excès : par exemple, ne pas dépasser largement la consigne avant de redescendre.

  . Maintenir un fonctionnement stable et prévisible, même si l’environnement change.

En bref, on régule pour que tout se passe bien, même quand les conditions ne sont pas idéales.
C’est un peu comme un pilote automatique : il corrige la trajectoire pour arriver à destination, malgré les turbulences.


# Comment reguler le PID ?
Pour réguler un système à l’aide d’un PID, plusieurs étapes sont nécessaires :

  a) Modélisation du système (si possible)
    Comprendre le comportement du système (réponse à une entrée, type de dynamique, présence de retard, etc.). Cela peut se faire via des équations différentielles, des fonctions de transfert ou par identification              expérimentale.

  b) Choix du type de régulateur
    . Régulateur P seul : réponse rapide mais présence d’erreur statique.

    . Régulateur PI : supprime l’erreur statique mais peut être plus lent.

    . Régulateur PD : améliore la rapidité et la stabilité mais laisse une erreur statique.

    . Régulateur PID : équilibre entre les trois ; souvent le choix par défaut.

  c) Réglage des gains Kp, Ki, Kd
    Plusieurs méthodes existent pour ajuster les paramètres du PID :

    . Essai-erreur empirique

    . Méthode de Ziegler-Nichols (réglage automatique basé sur l'observation de la réponse à une excitation)

    . Logiciels de simulation/optimisation (Matlab, Simulink, LabVIEW, etc.)

    . Méthodes modernes (optimisation numérique, intelligence artificielle, etc.)

  d) Implémentation pratique
    Le régulateur PID peut être implanté :

    . Par voie logicielle : microcontrôleur, automate, système embarqué.

    . Avec des composants analogiques (plus rare aujourd’hui).

  e) Vérification et ajustement
    Observer la réponse du système réel (stabilité, temps de réponse, dépassement, erreur finale) et ajuster les gains si nécessaire.



