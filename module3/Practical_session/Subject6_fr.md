# Sujet 6 : Autour du Paradoxe de Simpson

 __Prérequis__ : calcul de moyenne et de ratios, techniques de présentation graphique simples, éventuellement régression logistique

<!-- In 1972-1974 a one-in-six survey of the electoral roll, largely -->
<!-- concerned with thyroid disease and heart disease, was carried out in -->
<!-- Whickham, a mixed urban and rural district near Newcastle upon Tyne, -->
<!-- United Kingdom (Tunbridge et al. 1977). Twenty years later a follow-up -->
<!-- study was conducted (Vanderpump et al. 1995). Some of the results deal -->
<!-- with smoking habits and whether or not the individual survived until -->
<!-- the second survey. For the sake of simplicity we have restricted -->
<!-- ourselves to women, and within them to the 1,314 who were classified -->
<!-- either as current smokers or as never having smoked; there were -->
<!-- relatively few women at the first survey (162) who had smoked but -->
<!-- stopped, and only 18 whose smoking habits were not recorded. The -->
<!-- 20-year survival status was determined for all the women in the -->
<!-- original survey. -->


En 1972-1974, à Whickham, une ville du nord-est de l'Angleterre,
située à environ 6,5 kilomètres au sud ouest de Newcastle upon Tyne,
un sondage d'un sixième des électeurs a été effectué afin d'éclairer
des travaux sur les maladies thyroïdiennes et cardiaques (Tunbridge et
al. 1977). Une suite de cette étude a été menée vingt ans plus tard
(Vanderpump et al. 1995). Certains des résultats avaient trait au
tabagisme et à savoir si les individus étaient toujours en vie lors de la
seconde étude. Par simplicité, nous nous restreindrons aux femmes et
parmi celles-ci aux 1314 qui ont été catégorisées comme "fumant
actuellement" ou "n'ayant jamais fumé". Il y avait relativement peu de
femmes dans le sondage initial ayant fumé mais ayant arrêté depuis
(162) et très peu pour lesquelles l'information n'était pas disponible
(18). La survie à 20 ans a été déterminée pour l'ensemble des femmes
du premier sondage.

L'ensemble de ces données est disponible dans ce [fichier
CSV](file:https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/raw/master/module3/Practical_session/Subject6_smoking.csv). Vous trouverez sur chaque ligne si la
personne fume ou non, si elle est vivante ou décédée au moment de la
seconde étude, et son âge lors du premier sondage. 

Cet exercice peut être réalisé indifféremment en R ou en Python.

__Votre mission si vous l'acceptez__ :

1. Représentez dans un tableau le nombre total de femmes vivantes et
   décédées sur la période en fonction de leur habitude de
   tabagisme. Calculez dans chaque groupe (fumeuses/ non fumeuses) le
   taux de mortalité (le rapport entre le nombre de femmes décédées
   dans un groupe avec le nombre total de femmes dans ce groupe). Vous
   pourrez proposer une représentation graphique de ces données et
   calculer des intervalles de confiance si vous le souhaitez. En quoi
   ce résultat est-il surprenant ?
2. Reprenez la question 1 (effectifs et taux de mortalité) en
   rajoutant une nouvelle catégorie liée à la classe d'âge. On
   considérera par exemple les classes suivantes: 18-34 ans, 34-54
   ans, 55-64 ans, plus de 65 ans.

   En quoi ce résultat est-il surprenant ? Arrivez vous à expliquer ce
   paradoxe ? De même, vous pourrez proposer une représentation
   graphique de ces données pour étayer vos explications.
3. Afin d'éviter un biais induis par des regroupements en tranches
   d'âges arbitraires et non régulières, il est envisageable d'essayer
   de réaliser une régression logistique. Si on introduit une variable
   `Death` valant `1` ou `0` pour indiquer si l'individu est décédé
   durant la période de 20 ans, on peut étudier le modèle `Death ~
   Age` pour étudier la probabilité de décès en fonction de l'âge
   selon que l'on considère le groupe des fumeuses ou des non
   fumeuses. Ces régressions vous permettent de conclure ou pas
   sur la nocivité du tabagisme ?  Vous pourrez proposer une
   représentation graphique de ces régressions (en n'omettant pas les
   régions de confiance).
4. Déposer votre étude dans FUN
