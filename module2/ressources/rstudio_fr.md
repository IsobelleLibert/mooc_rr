---
TITLE:     Rstudio
AUTHOR:    Arnaud Legrand
Date:   Tue Feb 19 15:42:13 2019 
---

Table des matières<span class="tag" data-tag-name="TOC"></span>
===============================================================

-   [Installer RStudio](#installer-rstudio)
    -   [Linux (debian, ubuntu)](#linux-debian-ubuntu)
    -   [Mac OSX and Windows](#mac-osx-and-windows)
-   [Documentation RStudio](#documentation-rstudio)
-   [Utiliser Git avec RStudio](#utiliser-git-avec-rstudio)
    -   [Cloner un dépôt](#cloner-un-dépôt)
    -   [Modifier un fichier](#modifier-un-fichier)

Installer RStudio
=================

Linux (debian, ubuntu)
----------------------

Nous ne fournissons ici que des instructions pour les distributions basées sur Debian. N’hésitez pas à contribuer à ce document en fournissant des informations à jour sur les autres distributions (RedHat, Fedora, par exemple).

Aujourd'hui, les versions stables des distributions les plus courantes fournissent des versions assez récentes de R :

-   Debian (stretch) est livré avec [R 3.3.3-1](https://packages.debian.org/stretch/r-base), [knitr 1.15.1](https://packages.debian.org/stretch/r-cran-knitr), et [ggplot 2.2.1](https://packages.debian.org/stretch/r-cran-ggplot2)
-   Ubuntu (bionic 18.04) est livré avec [R 3.4.4](https://packages.ubuntu.com/bionic/r-base), [knitr 1.17](https://packages.ubuntu.com/bionic/r-cran-knitr), et [ggplot 2.2.1](https://packages.ubuntu.com/bionic/r-cran-ggplot2)
-   Ubuntu (artful 17.04) est livré avec [R 3.4.2](https://packages.ubuntu.com/artful/r-base), [knitr 1.15](https://packages.ubuntu.com/artful/r-cran-knitr), et [ggplot 2.2.1](https://packages.ubuntu.com/artful/r-cran-ggplot2)

Si votre distribution est plus ancienne, c'est peut-être l'occasion de la mettre à jour...

### Installer R

Pour commencer, vous devez installer le langage R et quelques packages en exécutant (à la racine) :

``` shell
apt-get update ; sudo apt-get install r-base r-cran-knitr r-cran-ggplot2 
```

Si l'installation de `r-cran-knitr` ou `r-cran-gplot2` échoue, vous pouvez également installer ces packages manuellement en exécutant les commandes suivantes sous R (ou RStudio) :

``` r
install.packages("knitr")
install.packages("ggplot2")
```

Si vous envisagez d'exporter des documents pdf avec LaTeX, il faudra probablement aussi exécuter (à la racine) :

``` shell
apt-get update ; apt-get install texlive-base
```

### Installer RStudio

RStudio n’est malheureusement pas intégré à Debian. Le plus simple est de télécharger le paquet Debian correspondant sur le [site RStudio](https://www.rstudio.com/products/rstudio/download/#download), puis de l’installer manuellement (vous devrez peut-être adapter le numéro de version) :

``` shell
cd /tmp/
wget https://download1.rstudio.org/rstudio-xenial-1.1.453-amd64.deb
sudo dpkg -i rstudio-xenial-1.1.453-amd64.deb
sudo apt-get update ; sudo apt-get -f install # to fix possibly missing dependencies
```

Mac OSX and Windows
-------------------

-   Télécharger et installer R depuis le [site CRAN](https://cran.r-project.org/) en choisissant le bon système d'exploitation.
-   Télécharger et installer RStudio depuis le [site RStudio](https://www.rstudio.com/products/rstudio/download/#download) en choisissant le bon système d'exploitation.
-   Télécharger et installer MiKTeX depuis le [site MiKTeX](https://miktex.org/download) en choisissant le bon système d'exploitation. Vous serez amené à installer différents packages lors du premier export pdf.
-   Ouvrir RStudio et exécuter les commandes suivantes dans la console pour installer `knitr` et `ggplot2`

``` r
install.packages("knitr", dep=TRUE)
install.packages("ggplot2", dep=TRUE)
```

Documentation RStudio
=====================

L’équipe de RStudio a créé différents matériels et tutoriels très bien faits. Nous vous recommandons de consulter les [fiches mémo](https://www.rstudio.com/resources/cheatsheets/). En particulier, vous pourriez être intéressés par celles-ci :

-   [RStudio IDE](https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf),
-   [R Markdown](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf) (here is also a [nice step-by-step presentation of Rmarkdown](https://rmarkdown.rstudio.com/)),
-   The [R Markdown Reference guide](https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf),
-   [Data visualization with ggplot2](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf),
-   [Data transformation with dplyr](https://github.com/rstudio/cheatsheets/raw/master/data-transformation.pdf)

Voici aussi les versions françaises de certains documents mais elles ne sont pas toujours à jour :

-   [IDE RStudio](https://github.com/rstudio/cheatsheets/raw/master/translations/french/rstudio-IDE-cheatsheet.pdf)
-   [Visualisation de données avec ggplot2](https://github.com/rstudio/cheatsheets/raw/master/translations/french/ggplot2-french-cheatsheet.pdf)
-   [Transformation de données avec dplyr](https://github.com/rstudio/cheatsheets/raw/master/translations/french/data-wrangling-french.pdf)
-   [Un court document sur R Markdown](https://www.fun-mooc.fr/c4x/UPSUD/42001S02/asset/RMarkdown.pdf)

Utiliser Git avec RStudio
=========================

La première chose à faire est de configurer Git sur votre ordinateur. Pour ce faire, vous pouvez suivre la vidéo [configurer Git pour Gitlab](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/7508aece244548349424dfd61ee3ba85) (en français) et le document [Git et Gitlab](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/ressources/gitlab_fr.org) correspondant (en français).

Vous pourrez alors utiliser Git avec RStudio. Pour ce faire, vous pouvez suivre la vidéo [RStudio - Gitlab](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/d132a854b0464ad29085cedaded23136) (en français) dont les étapes sont reprises ci-dessous.

*(Nous vous signalons aussi cette* [vidéo](https://www.youtube.com/embed/uHYcDQDbMY8) *(en anglais) ainsi que le* [tuto pas à pas](https://swcarpentry.github.io/git-novice/14-supplemental-rstudio/index.html) *(en anglais) de Software Carpentry.)*

Cloner un dépôt
---------------

Ouvrir RStudio et procéder comme suit :

-   Créer un nouveau projet sous contrôle de version : `File / New
     Project / Version Control`

    ![](rstudio_images/new_project.png)

    ![](rstudio_images/git.png)

-   Récupérer l'URL du dépôt Gitlab

    ![](rstudio_images/adresse_depot.png)

-   Indiquez cette URL dans le champ "Repository URL" *(vous voudrez* *peut-être préfixer cette URL avec `xxx@` où `xxx` est votre identifiant* *Gitlab pour éviter d'avoir à le ressaisir ultérieurement)*.

    ![](rstudio_images/clone.png)

-   Si vous êtes derrière un proxy, il faut le définir dans Git (voir le paragraphe "Gérer les proxy" de la page sur [Git et Gitlab](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/7508aece244548349424dfd61ee3ba85)).
-   Git se connecte à Gitlab et récupère une copie complète du dépôt.
-   RStudio redémarre dans un mode lié à Git :

    ![](rstudio_images/rstudio.png)

-   Le gestionnaire de fichiers à droite vous permet de parcourir le dépôt sous contrôle de version.

Modifier un fichier
-------------------

-   Ouvrir le fichier `Module2/exo1/toy_document.Rmd` et le modifier.
-   Enregistrer.
-   Aller dans le menu Git pour effectuer le commit.

    ![](rstudio_images/commit.png)

    ![](rstudio_images/commit2.png)

-   Sélectionner les lignes à commiter puis cliquer sur `commit`.

    ![](rstudio_images/commit5.png)

    Les modifications ont été commitées uniquement sur la machine. Elles n'ont pas été propagées sur Gitlab.
-   Cliquer sur `push` pour les propager sur Gitlab.

    ![](rstudio_images/push.png)

    ![](rstudio_images/push2.png)

    ![](rstudio_images/push3.png)

    **NB :** Vous ne pouvez pas propager vos modifications sur GitLab si des modifications ont été faites sur GitLab entre-temps.

    ![](rstudio_images/push4.png)

-   Il faut d’abord récupérer ces modifications distantes sur votre machine locale. Pour ce faire cliquer sur `pull`.
