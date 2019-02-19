---
TITLE:     FIXME Introduction à Markdown
Date:   Tue Feb 19 19:19:03 2019 
---

Voici un aperçu rapide de la syntaxe Markdown repris d'une [présentation de Github](https://guides.github.com/features/mastering-markdown/) ainsi que de celles d'[Archer Reilly](http://csrgxtu.github.io/2015/03/20/Writing-Mathematic-Fomulars-in-Markdown/).

Table des matières<span class="tag" data-tag-name="TOC"></span>
===============================================================

-   [Syntaxe](#syntaxe)
    -   [Headers](#headers)
    -   [Emphasis](#emphasis)
    -   [Lists](#lists)
    -   [Images](#images)
    -   [Links](#links)
    -   [Blockquotes](#blockquotes)
    -   [Inline code](#inline-code)
-   [Écrire des Maths](#écrire-des-maths)
    -   [Lettres grecques](#lettres-grecques)
    -   [Fonctions et opérateurs](#fonctions-et-opérateurs)
    -   [Exposants et indices](#exposants-et-indices)
    -   [Fractions, coefficients binomiaux, racines, ...](#fractions-coefficients-binomiaux-racines-)
    -   [Sommes et intégrales](#sommes-et-intégrales)
    -   [Déguisements](#déguisements)
-   [Autour de `markdown`](#autour-de-markdown)

Syntaxe
=======

Headers
-------

``` example
# This is an <h1> tag
## This is an <h2> tag
###### This is an <h6> tag
```

Emphasis
--------

``` example
*This text will be italic*
_This will also be italic_

**This text will be bold**
__This will also be bold__

_You **can** combine them_
```

Lists
-----

### Unordered

``` example
- Item 1
- Item 2
  - Item 2a
  - Item 2b
```

### Ordered

``` example
1. Item 1
2. Item 2
3. Item 3
   1. Item 3a
   2. Item 3b
```

Images
------

``` example
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
```

Links
-----

``` example
http://github.com - automatic!
[GitHub](http://github.com)
```

Blockquotes
-----------

``` example
As Kanye West said:

> We're living the future so
> the present is our past.
```

Inline code
-----------

```` example
To print some text with python, you should use the `print()` function.
```
print("Hello world!")
```
````

Écrire des Maths
================

Il est possible d'écrire des formules en Markdown, soit en mode **inline** soit en mode **displayed formulas**. Dans le premier cas, les formules sont inclues directement à l'intérieur du paragraphe courant alors que dans le second, elles apparaissent centrées et mises en exergue.

Le formatage de la formule est légèrement différent dans les deux cas car pour qu'une formule s'affiche joliment sur une seule ligne, il faut la "tasser" un peu plus que lorsqu'elle est mise en valeur.

Pour écrire une formule en mode **inline**, il faut la délimiter par un `$` (du coup, pour écrire le symbole dollar, il faut le préfixer par un backslash, comme ceci: `\$`) alors que pour écrire en mode **displayed**, il faut la délimiter par un `$$`. Un petit exemple valant mieux qu'un long discours, voici concrètement comment cela fonctionne:

``` example
Cette expression $\sum_{i=1}^n X_i$ est inlinée.
```

Cette expression $\\sum\_{i=1}^n X\_i$ est inlinée.

``` example
Cette expression est mise en valeur:

$$\sum_{i=1}^n X_i$$
```

Cette expression est mise en valeur:

$$\\sum\_{i=1}^n X\_i$$

Nous vous présentons par la suite une sélection de symboles et de commandes courantes. En fait, à peu près tout ce qui est classique dans le langage LaTeX peut être utilisé pourvu que vous délimitiez bien avec un `$`. Pour d'autres exemples plus complets jetez un coup d'œil à ces [exemples de James H. Steiger](http://www.statpower.net/Content/310/R%2520Stuff/SampleMarkdown.html).

Lettres grecques
----------------

| Symbole | Commande   |
|---------|------------|
| *α*     | `$\alpha$` |
| *β*     | `$\beta$`  |
| *γ*     | `$\gamma$` |
| *Γ*     | `$\Gamma$` |
| *π*     | `$\pi$`    |

Fonctions et opérateurs
-----------------------

| Symbole | Commande    |
|---------|-------------|
| cos     | `$\cos$`    |
| sin     | `$\sin$`    |
| lim     | `$\lim$`    |
| exp     | `$\exp$`    |
| →       | `$\to$`     |
| ∈       | `$\in$`     |
| ∀       | `$\forall$` |
| ∃       | `$\exists$` |
| ≡       | `$\equiv$`  |
| ∼       | `$\sim$`    |
| ≈       | `$\approx$` |
| ×       | `$\times$`  |
| ≤       | `$\le$`     |
| ≥       | `$\ge$`     |

Exposants et indices
--------------------

| Symbole                       | Commande    |
|-------------------------------|-------------|
| *k*<sub>*n* + 1</sub>         | `$k_{n+1}$` |
| *n*<sup>2</sup>               | `$n^2$`     |
| *k*<sub>*n*</sub><sup>2</sup> | `$k_n^2$`   |

Fractions, coefficients binomiaux, racines, ...
-----------------------------------------------

| Symbole                       | Commande                      |
|-------------------------------|-------------------------------|
| $\\frac{4z^3}{16}$            | `$\frac{4z^3}{16}$`           |
| $\\frac{n!}{k!(n-k)!}$        | `$\frac{n!}{k!(n-k)!}$`       |
| $\\binom{n}{k}$               | `$\binom{n}{k}$`              |
| $\\frac{\\frac{x}{1}}{x - y}$ | `$\frac{\frac{x}{1}}{x - y}$` |
| **<sup>3</sup>/<sub>7</sub>   | `$^3/_7$`                     |
| $\\sqrt{k}$                   | `$\sqrt{k}$`                  |
| $\\sqrt\[n\]{k}$              | `$\sqrt[n]{k}$`               |

Sommes et intégrales
--------------------

| Symbole                                            | Commande                                       |
|----------------------------------------------------|------------------------------------------------|
| $\\sum\_{i=1}^{10} t\_i$                           | `$\sum_{i=1}^{10} t_i$`                        |
| ∫<sub>0</sub><sup>∞</sup>*e*<sup>−*x*</sup> *d**x* | `$\int_0^\infty \mathrm{e}^{-x}\,\mathrm{d}x$` |

Déguisements
------------

| Symbole                | Commande                |
|------------------------|-------------------------|
| *â*                    | `$\hat{a}$`             |
| *ā*                    | `$\bar{a}$`             |
| *ȧ*                    | `$\dot{a}$`             |
| $\\ddot{a}$            | `$\ddot{a}$`            |
| $\\overrightarrow{AB}$ | `$\overrightarrow{AB}$` |

Autour de `markdown`
====================

Tout d'abord, pour aller plus loin avec `markdown` et ses extensions / ramifications :

-   Le didacticiel « [Élaboration et conversion de documents avec Markdown et Pandoc](https://enacit1.epfl.ch/markdown-pandoc/) » de Jean-Daniel Bonjour (EPFL), précis, complet, concis, en français ; un vrai bonheur !
-   L'article [Markdown](https://en.wikipedia.org/wiki/Markdown#Example) de wikipedia en anglais contient un bon pense-bête sur la syntaxe `markdown`.
-   Github propose un court et efficace didacticiel (en anglais) : [Mastering Markdown](https://guides.github.com/features/mastering-markdown/).

Comme nous l'illustrons dans la « film d'écran » (*screencast*), l'éditeur de texte des dépôts `github` et `gitlab` permet d'interpréter / transformer à la demande un fichier `mardown` en un fichier `html`. C'est à la fois agréable et pratique, mais ce n'est pas une solution pour une utilisation quotidienne de `markdown`, pour cela, il est plus efficace d'éditer son texte, avec un éditeur de texte, sur son ordinateur, avant de « l'exporter » dans un format comme `html`, `pdf`, `docx`, `epub`, etc. Il existe des éditeurs plus ou moins spécialisés pour `markdown`, certains sont indiqués sur la page [Editors](https://github.com/jgm/pandoc/wiki/Pandoc-Extras#editors) du site de `pandoc`, mais nous préconisons clairement l'emploi d'un éditeur de texte « généraliste » capable de reconnaître la syntaxe `markdown`. Nous en avons indiqué en début de séquence et on pourra trouver des informations complémentaires dans la section [Quelques éditeurs adaptés à l'édition Markdown](https://enacit1.epfl.ch/markdown-pandoc/#editeurs_markdown) du didacticiel de Jean-Daniel Bonjour.

Pour convertir un fichier `markdown` en un format « arbitraire », la solution à ce jour la plus complète est [Pandoc](http://pandoc.org/), logiciel développé par John MacFarlane, un philosophe de Berkeley (le site [github](https://github.com/jgm/pandoc)). En plus du site de `Pandoc`, le didacticiel de J.-D. Bonjour donne de nombreuses explications sur comment installer et utiliser `pandoc` dans la section [Utilisation du convertisseur Pandoc](https://enacit1.epfl.ch/markdown-pandoc/#commande_pandoc). Comme `pandoc` -- écrit en Haskell -- peut être parfois un peu difficile à installer, nous indiquons maintenant quelques solutions alternatives :

-   Des sites comme <http://www.markdowntopdf.com/> et <http://markdown2pdf.com/> permettent de convertir en ligne un fichier `markdown` en un fichier `pdf`.
-   Le projet [CommonMark](http://commonmark.org/) propose, en plus d'une spécifications plus rigoureuse de la syntaxe `markdown`, des convertisseurs `markdown` → `html` / `LaTeX` (et plus) écris en `C` et en `JavaScript` (<https://github.com/CommonMark/CommonMark>).
-   Le site de [John Gruber](https://daringfireball.net/projects/markdown/), le créateur de `markdown`, fournit un convertisseur `markdown` → `html` écrit en `perl`.
-   [MultiMarkdown](http://fletcherpenney.net/multimarkdown/) est une autre extension de `markdown` qui vient avec son convertisseur `markdown` → `html` écrit en `C`.
-   [grip](https://github.com/joeyespo/grip) est un serveur écrit en `python` qui permet de convertir et visualiser à la volée des fichiers `markdown` avec son navigateur (très utile pour éviter d'avoir à faire des « commits » en grande quantité lorsqu'on écrit de tels fichiers pour un dépôt `github` ou `gitlab`).

La conversion en `pdf` passe toujours par [LaTeX](https://fr.wikipedia.org/wiki/LaTeX) ce qui nécessite d'avoir une version complète et à jour de ce logiciel sur sa machine.

Dans la petite démonstration, nous montrons comment générer un fichier `docx` à partir d'un fichier `md` avec `Pandoc` et nous soulignons qu'il est alors possible d'utiliser un traitement de texte comme `LibreOffice` pour modifier le fichier obtenu. Il est clair que si des modifications sont apportées au `docx` elle en seront pas (automatiquement) propagées au `md`. Il faudra utiliser `Pandoc` pour cela et effectuer une conversion de `docx` vers `md` (et seules les éléments du format `docx` qui existent en `md` seront conservés).

Une stratégie qui est souvent employée et qui fonctionne bien en pratique consiste à faire le gros du travail de rédaction d'un article ou d'un mémoire en `Markdown`. La rédaction terminée, le fichier est exporté au format `docx` (ou `LaTeX`) et des ajustements de mise en page sont alors effectués avec un logiciel de traitement de texte (ou un éditeur `LaTeX`).
