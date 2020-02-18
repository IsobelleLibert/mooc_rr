# Sujet 5 : Analyse des dialogues dans l'Avare de Molière

 __Prérequis__ : analyse de texte, éventuellement techniques de présentation graphique

L’Observatoire de la vie littéraire ([OBVIL](http://obvil.sorbonne-universite.site/obvil/presentation)) promeut une approche de l'analyse des textes littéraires fondée sur le numérique. 
Dans le cadre du [Projet Molière](http://obvil.sorbonne-universite.site/projets/projet-moliere), des pièces de cet auteur ont été numérisées et sont accessibles librement dans différents formats utilisables par un programme informatique.   
Pour l'Avare de Molière, voici les formats disponibles : [TEI](http://dramacode.github.io/moliere/moliere_avare.xml), [epub](http://dramacode.github.io/epub/moliere_avare.epub), [kindle](kindle/moliere_avare.mobi), [markdown](http://dramacode.github.io/markdown/moliere_avare.txt), [Texte iramuteq](http://dramacode.github.io/iramuteq/moliere_avare.txt ), [Texte dit/Paroles](http://dramacode.github.io/naked/moliere_avare.txt), [TXM](http://dramacode.github.io/txm/moliere_avare.xml), [html complet avec table des matières](http://dramacode.github.io/html/moliere_avare.html), [fragment html](http://dramacode.github.io/article/moliere_avare.html). 

Grâce à ces numérisations, il est possible d'écrire des programmes pour réaliser des analyses syntaxiques et sémantiques. Nous vous proposons dans ce sujet de reproduire une étude réalisée par l'OBVIL sur l'étude des dialogues de l'Avare de Molière. 

Nous vous conseillons de réaliser cet exercice en Python plutôt qu'en R, surtout pour la partie qui traite le texte. 

__Votre mission si vous l'acceptez__ :

1. Classez les personnages selon la quantité de parole grâce à une analyse syntaxique du texte (scènes / répliques / mots). En particulier, quel est celui qui parle le plus ? Quel est celui qui ne parle pas du tout ? Attention, les noms des personnages ne sont pas forcément homogènes (casse et accents par exemple).
2. Réalisez un graphique qui montrera le nombre de mots que chaque acteur prononce dans chaque scène. Pour cela, vous pouvez vous inspirer de l'[étude de l'Avare de Molière réalisée par l'OBVIL](https://obvil.sorbonne-universite.fr/corpus/moliere/moliere_avare) (graphe de gauche). Dans ce graphique, les lignes sont de longueur égale et la hauteur représente le nombre de mots prononcés au total dans la scène. La largeur de chaque rectangle indique le pourcentage de la scène qu’un acteur occupe.  
3. Facultatif : Construisez un graphe d’interlocution permettant de visualiser les échanges entre les personnages. Pour cela, vous pouvez vous inspirer de l'[étude de l'Avare de Molière réalisée par l'OBVIL](https://obvil.sorbonne-universite.fr/corpus/moliere/moliere_avare) (graphe de droite).
4. Déposer votre résultat dans FUN
