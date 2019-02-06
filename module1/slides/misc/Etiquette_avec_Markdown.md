# Comment rajouter des étiquettes dans un fichier Markdown ?

Pour rajouter une étiquette ou un mot clé visible par un `moteur de recherche de bureau`, nous pouvons les insérer dans des `commentaires`, c'est-à-dire des parties du fichier texte `source` qui ne seront pas montrées par le logiciel de rendu — comme le navigateur internet lors de la génération d'une sortie au format `HTML`.

Le [didacticiel Markdown](https://enacit1.epfl.ch/markdown-pandoc) de Jean-Daniel Bonjour nous explique clairement comment faire cela en section `3.2.7.4 Autres remarques sur les listes`. Pour rajouter en commentaire l'étiquette `:ceci-est-une-étiquette:`, il suffit de taper : `<!-- :ceci-est-une-étiquette: -->`. Nous pouvons ainsi étiqueter les différents éléments d'une liste :

* le premier élément ; <!-- :étiquette-1: -->
* le deuxième élément. <!-- :étiquette-2: -->
 
 Et voilà !