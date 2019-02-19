---
TITLE:     Références complémentaires
AUTHOR:    Arnaud Legrand
Date:   Tue Feb 19 15:42:13 2019 
---

Table des matières<span class="tag" data-tag-name="TOC"></span>
===============================================================

-   [Réflexions sur la stabilité des langages de programmation](#réflexions-sur-la-stabilité-des-langages-de-programmation)
-   [Contrôler votre environnement logiciel](#contrôler-votre-environnement-logiciel)
-   [Préservation/Archivage](#préservationarchivage)
-   [Workflows](#workflows)
-   [Problèmes numériques et statistiques](#problèmes-numériques-et-statistiques)
-   [Pratiques de publication](#pratiques-de-publication)
-   [Expérimentation](#expérimentation)

Réflexions sur la stabilité des langages de programmation
=========================================================

Comme nous l'avons expliqué, le langage de programmation utilisé dans une analyse a une influence évidente sur la reproductibilité de l'analyse. Ce n'est pas une caractéristique du langage lui-même mais plutôt une conséquence de la philosophie de développement de la communauté sous-jacente. Par exemple, C est un langage très stable avec une [spécification très claire conçue par un comité](https://en.wikipedia.org/wiki/C_(programming_language)#ANSI_C_and_ISO_C) (même si certains compilateurs ne respectent cette norme).

À l’autre bout du spectre, [Python](https://en.wikipedia.org/wiki/Python_(programming_language)) a connu un développement beaucoup plus organique basé sur une philosophie de lisibilité et valorisant l'amélioration continue par rapport à la compatibilité ascendante. De plus, Python est couramment utilisé comme langage de wrapping (par exemple pour utiliser facilement les bibliothèques C ou FORTRAN) et dispose de son propre système de packaging. Tous ces choix de conception ont souvent tendance à rendre la reproductibilité un peu pénible avec Python, même si la communauté en tient lentement compte. La transition de Python 2 à Python 3, qui n'est pas totalement compatible avec les versions antérieures, a été un processus particulièrement pénible, notamment parce que les deux langages sont si similaires qu'il n'est pas toujours facile de savoir si un script ou un module donné est écrit en Python 2 ou Python 3. Il n'est même pas rare de voir des scripts Python qui fonctionnent sous Python 2 et Python 3, mais produisent des résultats différents en raison du changement de comportement de la division entière.

[R](https://en.wikipedia.org/wiki/R_(programming_language)), en comparaison, est beaucoup plus proche (en termes de communauté de développeurs) de langages comme [SAS](https://en.wikipedia.org/wiki/SAS_(logiciel)), très utilisé dans l'industrie pharmaceutique où les procédures statistiques doivent être standardisées et stables/solides. R n’est évidemment pas à l’abri des évolutions qui cassent les anciennes versions et gênent la reproductibilité/compatibilité avec les versions antérieures. Voici une [véritable histoire relativement récente à ce sujet](http://members.cbio.mines-paristech.fr//thocking/HOCKING-reproducible-research-with-R.html) et des collègues qui ont travaillé sur le [MOOC d'initiation à la statistique avec R sur FUN](https://www.fun-mooc.fr/courses/course-v1:UPSUD+42001+session10/about) nous ont signalé plusieurs problèmes concernant quelques fonctions (`gplots::plotmeans`, `survival::survfit` ou `hclust`) dont les paramètres par défaut ont changé au fil des ans. Il est donc probablement utile de donner des valeurs explicites pour tous les paramètres (ce qui peut être fastidieux) au lieu de s’appuyer sur des valeurs par défaut et de restreindre autant que possible vos dépendances.

Ceci étant dit, la communauté de développement R est généralement très prudente en matière de stabilité. Nous (les auteurs de ce MOOC) pensons que l'open source (qui permet de contrôler le calcul et d'identifier les erreurs et les sources de non-reproductibilité) est plus important que la stabilité à toute épreuve de SAS, qui est un logiciel propriétaire.

Cependant, si vous avez vraiment besoin de rester sous SAS, sachez que SAS peut être utilisé dans Jupyter en utilisant les packages Python [SASPy](https://sassoftware.github.io/saspy/) et [SASKernel](https://sassoftware.github.io/sas_kernel/) (tuto pas à pas [ici](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#53-le-package-python-saspy-permet-dex%C3%A9cuter-du-code-sas-dans-un-notebook-python)). L'utilisation d'une telle approche de programmation alphabète alliée à un contrôle systématique de la version et de l'environnement est un plus. Des solutions similaires existent pour de nombreux langages ([liste des kernels Jupyter](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels)).

Contrôler votre environnement logiciel
======================================

Comme nous l'avons mentionné dans les séquences vidéo, plusieurs solutions permettent de contrôler votre environnement :

-   Les faciles (autorisant le désordre) : [CDE](http://www.pgbovine.net/cde.html) ou [ReproZip](https://vida-nyu.github.io/reprozip/)
-   Les plus exigeants (encourageant la propreté) où vous commencez avec un environnement propre et n’installez que ce qui est strictement nécessaire (et le documentez) :
    -   Le très connu [Docker](https://www.docker.io/)
    -   [Singularity](https://singularity.lbl.gov/) ou [Spack](https://spack.io/), qui sont plus ciblés sur les besoins spécifiques des utilisateurs d'informatique de haute performance
    -   [Guix](https://www.gnu.org/software/guix/), [Nix](https://nixos.org/) qui sont des solutions très propres (parfaites ?) à cet enfer de dépendance et que nous recommandons

Il peut être difficile de comprendre la différence entre ces différentes approches et de décider laquelle est la meilleure dans votre contexte.

Voici un webinaire où certains de ces outils sont présentés dans un contexte de recherche reproductible : [Controling your environment (by Michael Mercier and Cristian Ruiz)](https://github.com/alegrand/RR_webinars/blob/master/2_controling_your_environment/index.org).

Vous voudrez peut-être aussi jeter un coup d’œil sur la convention [Popper](http://falsifiable.us/) ([webinaire par Ivo Gimenez par Google hangout](https://github.com/alegrand/RR_webinars/blob/master/11_popper/index.org)) ou sur la [présentation de Konrad Hinsen](https://github.com/alegrand/RR_webinars/blob/master/7_publications/index.org) sur [Active Papers](http://www.activepapers.org/).

Préservation/Archivage
======================

S'assurer que le logiciel est correctement archivé, c'est-à-dire qu'il est stocké de manière sécurisée afin de pouvoir y accéder de manière pérenne, peut être assez délicat. Si vous n'avez jamais vu la [présentation du projet Software Heritage par Roberto Di Cosmo](https://github.com/alegrand/RR_webinars/blob/master/5_archiving_software_and_data/index.org), c'est à voir absolument. [<https://www.softwareheritage.org/>](https://www.softwareheritage.org/)

Pour les données, nous vous recommandons vivement d’utiliser [<https://www.zenodo.org/>](https://www.zenodo.org/) lorsque les données ne sont pas sensibles.

Workflows
=========

Dans les séquences vidéo, nous avons mentionné les gestionnaires de flux de travaux (domaine d'application d'origine entre parenthèses) :

-   workflows assez complexes : [Galaxy](https://galaxyproject.org/) (génomique), [Kepler](https://kepler-project.org/) (écologie), [Taverna](https://taverna.apache.org/) (bioinformatique), [Pegasus](https://pegasus.isi.edu/) (astronomie), [Collective Knowledge](http://cknowledge.org/) (optimisation de la compilation), [VisTrails](https://www.vistrails.org) (traitement d'image)
-   workflows plus légers : [dask](http://dask.pydata.org/) (Python), [drake](https://ropensci.github.io/drake/) (R), [swift](http://swift-lang.org/) (biologie moléculaire), [snakemake](https://snakemake.readthedocs.io/) (comme `make` mais plus expressif et en `Python`)...
-   hybride à mi-chemin entre le notebook et le workflow : [SOS-notebook](https://vatlab.github.io/sos-docs/)

Vous voudrez peut-être consulter ce webinaire : \[\[<https://github.com/alegrand/RR_webinars/blob/master/6_reproducibility_bioinformatics/index.org>\]\[Science Reproducible en Bioinformatique : état actuel, solutions et opportunités de recherche (par Sarah Cohen Boulakia, Yvan Le Bras and Jérôme Chopard)\]\].

Problèmes numériques et statistiques
====================================

Nous avons mentionné ces sujets dans notre MOOC mais nous ne pourrions en aucun cas les couvrir correctement. Nous ne suggérons ici que quelques présentations intéressantes à ce sujet.

-   \[\[<https://github.com/alegrand/RR_webinars/blob/master/10_statistics_and_replication_in_HCI/index.org>\]\[Pierre Dragicevic donne une belle illustration des conséquences de l’incertitude statistique et de la manière dont certains concepts (par exemple les p-values) sont généralement mal compris\]\].
-   \[\[<https://github.com/alegrand/RR_webinars/blob/master/3_numerical_reproducibility/index.org>\]\[Nathalie Revol, Philippe Langlois et Stef Graillat présentent les principaux problèmes rencontrés en essayant d'obtenir une reproductibilité numérique et présentent les travaux de recherche récents en la matière\]\].

Pratiques de publication
========================

Vous souhaiterez peut-être consulter les webinaires suivants :

-   [Permettre une recherche ouverte et reproductible lors de conférences sur les systèmes informatiques (par Grigori Fursin)](https://github.com/alegrand/RR_webinars/blob/master/8_artifact_evaluation/index.org). En particulier, cette discussion aborde *l'évaluation des artefacts* qui devient de plus en plus populaire.
-   [Modalités de publication favorisant la recherche reproductible (par Konrad Hinsen et Nicolas Rougier)](https://github.com/alegrand/RR_webinars/blob/master/7_publications/index.org). Présentation des motivations de l'intiative [ReScience journal](http://rescience.github.io/).
-   [Simine Vazire - Quand devrions-nous être sceptiques face aux affirmations scientifiques ?](https://www.youtube.com/watch?v=HuJ2G8rXHMs), qui traite des pratiques de publication dans les sciences sociales et en particulier HARKing (Hypothèses après que les résultats sont connus), p-hacking, etc.

Expérimentation
===============

L'expérimentation n'est pas couverte dans ce MOOC bien qu'il s'agisse d'un élément essentiel de la science. La raison principale est que les pratiques et les contraintes varient tellement d'un domaine à l'autre que ce thème ne pouvait pas être correctement couvert dans une première édition. Nous serions heureux de rassembler les références que vous jugez intéressantes dans votre domaine. N'hésitez donc pas à nous les fournir à l'aide du forum. Nous les intégrerons dans cette page.

-   [Une récente conférence de Lucas Nussbaum sur les bancs d’essais expérimentaux en informatique](https://github.com/alegrand/RR_webinars/blob/master/9_experimental_testbeds/index.org).
