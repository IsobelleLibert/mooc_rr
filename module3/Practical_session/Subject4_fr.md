# Sujet 4 : Estimation de la latence et de la capacité d’une connexion à partir de mesures asymétriques

__Prérequis__ : régression linéaire

Un modèle simple et fréquemment utilisé pour décrire la performance d'une connexion de réseau consiste à supposer que le temps d'envoi T pour un message dépend principalement de sa taille S (nombre d'octets) et de deux grandeurs propres à la connexion : la latence L (en secondes) et la capacité C (en octets/seconde). La relation entre ces quatre quantités est T(S) = L + S/C. Ce modèle néglige un grand nombre de détails. D'une part, L et C dépendent bien sûr du protocole de communication choisi mais aussi dans une certaine mesure de S. D'autre part, la mesure de T(S) comporte en général une forte composante aléatoire. Nous nous intéressons ici au temps moyen qu'il faut pour envoyer un message d'une taille donnée.

Votre tâche est d'estimer L et C à partir d'une série d'observations de T pour des valeurs différentes de S. Préparez votre analyse sous forme d'un document computationnel réplicable qui commence avec la lectures des données brutes, disponibles pour deux connexions différentes, qui ont été obtenues avec l'outil ping :

- Le premier jeu de données examine une connexion courte à l'intérieur d'un campus : http://mescal.imag.fr/membres/arnaud.legrand/teaching/2014/RICM4_EP_ping/liglab2.log.gz
- Le deuxième jeu de données mesure la performance d'une connexion vers un site Web éloigné assez populaire et donc chargé : http://mescal.imag.fr/membres/arnaud.legrand/teaching/2014/RICM4_EP_ping/stackoverflow.log.gz

Les deux fichiers contiennent la sortie brute de l'outil ping qui a été exécuté dans une boucle en variant de façon aléatoire la taille du message. Chaque ligne a la forme suivante:

[1421761682.052172] 665 bytes from lig-publig.imag.fr (129.88.11.7): icmp_seq=1 ttl=60 time=22.5 ms

Au début, entre crochet, vous trouvez la date à laquelle la mesure a été prise, exprimée en secondes depuis le 1er janvier 1970. La taille du message en octets est donnée juste après, suivie par le nom de la machine cible et son adresse IP, qui sont normalement identiques pour toutes les lignes à l'intérieur d'un jeu de données. À la fin de la ligne, nous trouvons le temps d'envoi (aller-retour) en millisecondes. Les autres indications, icmp_seq et ttl, n'ont pas d'importance pour notre analyse. Attention, il peut arriver qu'une ligne soit incomplète et il faut donc vérifier chaque ligne avant d'en extraire des informations !

__Votre mission si vous l'acceptez__ :

1. Commencez par travailler avec le premier jeu de données (liglab2). Représentez graphiquement l'évolution du temps de transmission au cours du temps (éventuellement à différents instants et différentes échelles de temps) pour évaluer la stabilité temporelle du phénomène. Ces variations peuvent-elles être expliquées seulement par la taille des messages ?
2. Représentez le temps de transmission en fonction de la taille des messages. Vous devriez observer une "rupture", une taille à partir de laquelle la nature de la variabilité change. Vous estimerez (graphiquement) cette taille afin de traiter les deux classes de tailles de message séparément.
3. Effectuez une régression linéaire pour chacune des deux classes et évaluez les valeurs de L et de C correspondantes. Vous superposerez le résultat de cette régression linéaire au graphe précédent.
4. (Optionnel) La variabilité est tellement forte et asymétrique que la régression du temps moyen peut être considérée comme peu pertinente. On peut vouloir s'intéresser à caractériser plutôt le plus petit temps de transmission. Une approche possible consiste donc à filtrer le plus petit temps de transmission pour chaque taille de message et à effectuer la régression sur ce sous-ensemble de données. Cela peut également être l'occasion pour ceux qui le souhaitent de se familiariser avec la régression de quantiles (implémentée en R dans la bibliothèque quantreg et en Python dans la bibliothèque statsmodels).
5. Répétez les étapes précédentes avec le second jeu de données (stackoverflow)
6. Déposer dans FUN votre résultat

