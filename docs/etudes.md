---
layout: default
nav_order: 4
title: Études et choix techniques
---

# Qu'est ce qu'un PID ? Pourquoi le reguler et comment le reguler ?

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



