Table des matières<span class="tag" data-tag-name="TOC"></span>
===============================================================

-   [Obtenir des informations sur votre dépôt Git](#obtenir-des-informations-sur-votre-dépôt-git)
-   [Obtenir des informations sur les librairies Python 3](#obtenir-des-informations-sur-les-librairies-python-3)
    -   [Obtenir des informations sur votre système](#obtenir-des-informations-sur-votre-système)
    -   [Lister les packages installés et leur version](#lister-les-packages-installés-et-leur-version)
    -   [Lister les packages importés (chargés dans une session Python) et leur version](#lister-les-packages-importés-chargés-dans-une-session-python-et-leur-version)
    -   [Sauvegarder et restaurer un environnement avec pip](#sauvegarder-et-restaurer-un-environnement-avec-pip)
    -   [Installer un nouveau package ou une version spécifique](#installer-un-nouveau-package-ou-une-version-spécifique)
-   [Obtenir des informations sur les packages R](#obtenir-des-informations-sur-les-packages-r)
    -   [Lister les packages installés et leur version](#lister-les-packages-installés-et-leur-version-1)
    -   [Lister les packages importés (chargés dans une session R) et leur version](#lister-les-packages-importés-chargés-dans-une-session-r-et-leur-version)
    -   [Installer un nouveau package ou une version spécifique](#installer-un-nouveau-package-ou-une-version-spécifique-1)

Obtenir des informations sur votre dépôt Git
============================================

Lorsqu'on prend des notes, il peut être difficile de se rappeler quelle version de code ou de fichier a été utilisée. C'est l'intérêt du contrôle de versions. Voici quelques commandes utiles que nous insérons généralement au début de nos notebooks dans des cellules shell :

``` shell
git log -1
```

``` example
commit 741b0088af5b40588493c23c46d6bab5d0adeb33
Author: Arnaud Legrand <arnaud.legrand@imag.fr>
Date:   Tue Sep 4 12:45:43 2018 +0200

    Fix a few typos and provide information on jupyter-git plugins.
```

``` shell
git status -u
```

``` example
On branch master
Your branch is ahead of 'origin/master' by 4 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

    modified:   resources.org

Untracked files:
  (use "git add <file>..." to include in what will be committed)

    ../../module2/ressources/replicable_article/IEEEtran.bst
    ../../module2/ressources/replicable_article/IEEEtran.cls
    ../../module2/ressources/replicable_article/article.bbl
    ../../module2/ressources/replicable_article/article.tex
    ../../module2/ressources/replicable_article/data.csv
    ../../module2/ressources/replicable_article/figure.pdf
    ../../module2/ressources/replicable_article/logo.png
    .#resources.org

no changes added to commit (use "git add" and/or "git commit -a")
```

*Note : L'option -u indique que Git doit aussi afficher le contenu des répertoires nouvellement créés.*

Nous ajoutons aussi souvent des commandes à la fin des notebooks pour indiquer comment commiter les résultats (ajout des nouveaux fichiers, commit avec un message clair et commande push). Par exemple :

``` shell
git add resources.org;
git commit -m "Completing the section on getting Git information"
git push
```

``` example
[master 514fe2c1 ] Completing the section on getting Git information
 1 file changed, 61 insertions(+)
Counting objects: 25, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (20/20), done.
Writing objects: 100% (25/25), 7.31 KiB | 499.00 KiB/s, done.
Total 25 (delta 11), reused 0 (delta 0)
To gitlab.inria.fr:learninglab/mooc-rr/mooc-rr-ressources.git
   6359f8c..1f8a567  master -> master
```

Évidemment, dans ce cas il faut enregistrer le notebook avant d'exécuter cette cellule, donc le résultat de cette dernière commande (avec le nouveau Git hash) ne sera pas stocké dans la cellule. Ce n'est pas vraiment un problème et c'est le prix à payer pour exécuter Git à partir du notebook lui-même.

Obtenir des informations sur les librairies Python 3
====================================================

Obtenir des informations sur votre système
------------------------------------------

Cette question est discutée sur [StackOverflow](https://stackoverflow.com/questions/3103178/how-to-get-the-system-info-with-python).

``` python
import platform
print(platform.uname())
```

``` example
uname_result(system='Linux', node='icarus', release='4.15.0-2-amd64', version='#1 SMP Debian 4.15.11-1 (2018-03-20)', machine='x86_64', processor='')
```

Lister les packages installés et leur version
---------------------------------------------

Cette question est discutée sur [StackOverflow](https://stackoverflow.com/questions/20180543/how-to-check-version-of-python-modules). Il est facile d'obtenir la version de tous les packages installés en exécutant `pip` (l'installateur de packages Python) dans une commande shell (la commande peut être `pip` or `pip3` selon la configuration de votre ordinateur).

Voici par exemple comment j'obtiens ces informations sur ma machine :

``` shell
pip3 freeze
```

``` example
asn1crypto==0.24.0
attrs==17.4.0
bcrypt==3.1.4
beautifulsoup4==4.6.0
bleach==2.1.3
...
pandas==0.22.0
pandocfilters==1.4.2
paramiko==2.4.0
patsy==0.5.0
pexpect==4.2.1
...
traitlets==4.3.2
tzlocal==1.5.1
urllib3==1.22
wcwidth==0.1.7
webencodings==0.5
```

Dans un notebook Jupyter, cela peut facilement être fait en utilisant la commande magique `%%sh`. Voici par exemple ce que vous pouvez faire et obtenir avec les notebooks Jupyter que nous avons déployés pour le MOOC (notez qu’ici vous devez simplement utiliser la commande `pip`) :

``` python
%%sh
pip freeze
```

``` example
alembic==0.9.9
asn1crypto==0.24.0
attrs==18.1.0
Automat==0.0.0
...
numpy==1.13.3
olefile==0.45.1
packaging==17.1
pamela==0.3.0
pandas==0.22.0
...
webencodings==0.5
widgetsnbextension==3.2.1
xlrd==1.1.0
zope.interface==4.5.0
```

Dans la suite de ce document, je supposerai que la commande correcte est `pip` et je ne vais pas systématiquement insérer la commande magique `%%sh`.

Une fois que vous savez quels packages sont installés, vous pouvez facilement obtenir des informations supplémentaires sur un package donné et notamment vérifier s'il a été installé "localement" via pip ou s'il est installé à l'échelle du système. À nouveau dans une commande shell :

``` shell
pip show pandas
echo "            "
pip show statsmodels
```

``` example
Name: pandas
Version: 0.22.0
Summary: Powerful data structures for data analysis, time series,and statistics
Home-page: http://pandas.pydata.org
Author: None
Author-email: None
License: BSD
Location: /usr/lib/python3/dist-packages
Requires: 

Name: statsmodels
Version: 0.9.0
Summary: Statistical computations and models for Python
Home-page: http://www.statsmodels.org/
Author: None
Author-email: None
License: BSD License
Location: /home/alegrand/.local/lib/python3.6/site-packages
Requires: patsy, pandas
```

Lister les packages importés (chargés dans une session Python) et leur version
------------------------------------------------------------------------------

Vous pouvez vouloir savoir quels packages sont chargés dans une session Python ainsi que leur version sans recourir à pip (qui listera tous les packages disponibles). Inspiré par [StackOverflow](https://stackoverflow.com/questions/4858100/how-to-list-imported-modules), voici une fonction simple qui liste les packages chargés (ayant un attribut `__version__`, qui n’est malheureusement pas tout à fait standard).

``` python
def print_imported_modules():
    import sys
    for name, val in sorted(sys.modules.items()):
        if(hasattr(val, '__version__')): 
            print(val.__name__, val.__version__)
        else:
            print(val.__name__, "(unknown version)")

print("**** Package list in the beginning ****");
print_imported_modules()
print("**** Package list after loading pandas ****");
import pandas
print_imported_modules()
```

``` example
**** Package list in the beginning ****
**** Package list after loading pandas ****
_csv 1.0
_ctypes 1.1.0
decimal 1.70
argparse 1.1
csv 1.0
ctypes 1.1.0
cycler 0.10.0
dateutil 2.7.3
decimal 1.70
distutils 3.6.5rc1
ipaddress 1.0
json 2.0.9
logging 0.5.1.2
matplotlib 2.1.1
numpy 1.14.5
numpy.core 1.14.5
numpy.core.multiarray 3.1
numpy.core.umath b'0.4.0'
numpy.lib 1.14.5
numpy.linalg._umath_linalg b'0.1.5'
pandas 0.22.0
_libjson 1.33
platform 1.0.8
pyparsing 2.2.0
pytz 2018.5
re 2.2.1
six 1.11.0
urllib.request 3.6
zlib 1.0
```

Sauvegarder et restaurer un environnement avec pip
--------------------------------------------------

La façon la plus simple de faire est la suivante :

``` shell
pip3 freeze > requirements.txt # to obtain the list of packages with their version
pip3 install -r requirements.txt # to install the previous list of packages, possibly on an other machine
```

Si vous voulez avoir plusieurs environnements Python sur votre ordinateur, vous pouvez vouloir utiliser [Pipenv](https://docs.pipenv.org/) (mais je doute que cela permette de tracer correctement les bibliothèques dynamiques FORTRAN ou C encapsulées dans Python).

Installer un nouveau package ou une version spécifique
------------------------------------------------------

L’environnement Jupyter que nous avons déployé sur nos serveurs pour le MOOC est basé sur Miniconda 4.5.4 et Python 3.6. Dans cet environnement, vous devez simplement utiliser la commande `pip` (vous devrez peut-être utiliser `pip3` sur votre ordinateur).

Voici ce que j'obtiens si j'interroge la version actuelle de `statsmodels` dans une commande shell.

``` shell
pip show statsmodels
```

``` example
Name: statsmodels
Version: 0.8.0
Summary: Statistical computations and models for Python
Home-page: http://www.statsmodels.org/
Author: Skipper Seabold, Josef Perktold
Author-email: pystatsmodels@googlegroups.com
License: BSD License
Location: /opt/conda/lib/python3.6/site-packages
Requires: scipy, patsy, pandas
```

Je peux alors facilement mettre `statsmodels` à jour :

``` shell
pip install --upgrade statsmodels 
```

La nouvelle version devrait alors être :

``` shell
pip show statsmodels
```

``` example
Name: statsmodels
Version: 0.9.0
Summary: Statistical computations and models for Python
Home-page: http://www.statsmodels.org/
Author: Skipper Seabold, Josef Perktold
Author-email: pystatsmodels@googlegroups.com
License: BSD License
Location: /opt/conda/lib/python3.6/site-packages
Requires: scipy, patsy, pandas
```

Il est même possible d’installer une version spécifique (peut-être beaucoup plus ancienne), par exemple :

``` shell
pip install statsmodels==0.6.1
```

Obtenir des informations sur les packages R
===========================================

Lister les packages installés et leur version
---------------------------------------------

Il existe une commande R intégrée (`installed.packages`) permettant de récupérer et de lister les détails de tous packages installés.

``` r
head(installed.packages())
```

| Package                                                        | LibPath                                                    | Version                                                    | Priority    | Depends                                                        | Imports                                                        | LinkingTo | Suggests      | Enhances                              | License                              | License<sub>isFOSS</sub> | License<sub>restrictsuse</sub> | OS<sub>type</sub> | MD5sum | NeedsCompilation | Built |       |
|----------------------------------------------------------------|------------------------------------------------------------|------------------------------------------------------------|-------------|----------------------------------------------------------------|----------------------------------------------------------------|-----------|---------------|---------------------------------------|--------------------------------------|--------------------------|--------------------------------|-------------------|--------|------------------|-------|-------|
| BH                                                             | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 1.66.0-1                                                   | nil         | nil                                                            | nil                                                            | nil       | nil           | nil                                   | BSL-1.0                              | nil                      | nil                            | nil               | nil    | no               | 3.5.1 |       |
| Formula                                                        | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 1.2-3                                                      | nil         | R (&gt;= 2.0.0), stats                                         | nil                                                            | nil       | nil           | nil                                   | GPL-2                                | GPL-3                    | nil                            | nil               | nil    | nil              | no    | 3.5.1 |
| Hmisc                                                          | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 4.1-1                                                      | nil         | lattice, survival (&gt;= 2.40-1), Formula, ggplot2 (&gt;= 2.2) | methods, latticeExtra, cluster, rpart, nnet, acepack, foreign, |           |               |                                       |                                      |                          |                                |                   |        |                  |       |       |
| gtable, grid, gridExtra, data.table, htmlTable (&gt;= 1.11.0), |                                                            |                                                            |             |                                                                |                                                                |           |               |                                       |                                      |                          |                                |                   |        |                  |       |       |
| viridis, htmltools, base64enc                                  | nil                                                        | chron, rms, mice, tables, knitr, ff, ffbase, plotly (&gt;= |             |                                                                |                                                                |           |               |                                       |                                      |                          |                                |                   |        |                  |       |       |
| 4.5.6)                                                         | nil                                                        | GPL (&gt;= 2)                                              | nil         | nil                                                            | nil                                                            | nil       | yes           | 3.5.1                                 |                                      |                          |                                |                   |        |                  |       |       |
| Matrix                                                         | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 1.2-14                                                     | recommended | R (&gt;= 3.2.0)                                                | methods, graphics, grid, stats, utils, lattice                 | nil       | expm, MASS    | MatrixModels, graph, SparseM, sfsmisc | GPL (&gt;= 2)                        | file LICENCE             | nil                            | nil               | nil    | nil              | yes   | 3.5.1 |
| StanHeaders                                                    | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 2.17.2                                                     | nil         | nil                                                            | nil                                                            | nil       | RcppEigen, BH | nil                                   | BSD<sub>3clause</sub> + file LICENSE | nil                      | nil                            | nil               | nil    | yes              | 3.5.1 |       |
| acepack                                                        | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 1.4.1                                                      | nil         | nil                                                            | nil                                                            | nil       | testthat      | nil                                   | MIT + file LICENSE                   | nil                      | nil                            | nil               | nil    | yes              | 3.5.1 |       |

Lister les packages importés (chargés dans une session R) et leur version
-------------------------------------------------------------------------

Le meilleur moyen semble être d'utiliser le package `devtools`. Si le package n'est pas installé, vous devez d'abord l'installer en exécutant la commande `install.packages("devtools",dep=TRUE)` dans `R`).

``` r
sessionInfo()
devtools::session_info()
```

``` example
R version 3.5.1 (2018-07-02)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Debian GNU/Linux buster/sid

Matrix products: default
BLAS: /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.8.0
LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.8.0

locale:
 [1] LC_CTYPE=fr_FR.UTF-8       LC_NUMERIC=C              
 [3] LC_TIME=fr_FR.UTF-8        LC_COLLATE=fr_FR.UTF-8    
 [5] LC_MONETARY=fr_FR.UTF-8    LC_MESSAGES=fr_FR.UTF-8   
 [7] LC_PAPER=fr_FR.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=fr_FR.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

loaded via a namespace (and not attached):
[1] compiler_3.5.1
Session info ------------------------------------------------------------------
 setting  value                       
 version  R version 3.5.1 (2018-07-02)
 system   x86_64, linux-gnu           
 ui       X11                         
 language (EN)                        
 collate  fr_FR.UTF-8                 
 tz       Europe/Paris                
 date     2018-08-01                  

Packages ----------------------------------------------------------------------
 package   * version date       source        
 base      * 3.5.1   2018-07-02 local         
 compiler    3.5.1   2018-07-02 local         
 datasets  * 3.5.1   2018-07-02 local         
 devtools    1.13.6  2018-06-27 CRAN (R 3.5.1)
 digest      0.6.15  2018-01-28 CRAN (R 3.5.0)
 graphics  * 3.5.1   2018-07-02 local         
 grDevices * 3.5.1   2018-07-02 local         
 memoise     1.1.0   2017-04-21 CRAN (R 3.5.1)
 methods   * 3.5.1   2018-07-02 local         
 stats     * 3.5.1   2018-07-02 local         
 utils     * 3.5.1   2018-07-02 local         
 withr       2.1.2   2018-03-15 CRAN (R 3.5.0)
```

Certains suggèrent même [l'écriture d'un package R pour faciliter la recherche reproductible](https://github.com/ropensci/rrrpkg).

Ceux d'entre vous qui souhaitent disposer d'une gestion des dépendances "propre" en R peuvent aussi jeter un coup d'œil à [Packrat](https://rstudio.github.io/packrat/).

Installer un nouveau package ou une version spécifique
------------------------------------------------------

Cette section est principalement un copier-coller du [récent post de Ian Pylvainen](https://support.rstudio.com/hc/en-us/articles/219949047-Installing-older-versions-of-packages) sur ce sujet. Il comprend une explication très claire de la façon de procéder.

### Installer une version pré-compilée

Si vous êtes sur un système Debian ou Ubuntu, il peut être difficile d’accéder à une version spécifique sans casser votre système. Donc, sauf si vous passez à la dernière version disponible pour votre distribution Linux, **nous vous recommandons fortement d'installer les packages à l'aide des fichiers source**. Dans ce cas, vous devez vous assurer que vous disposez de l'ensemble des outils nécessaires pour créer des packages à partir des sources (par exemple : gcc, FORTRAN, etc.). Sous Windows, il se peut que vous deviez installer [Rtools](https://cran.r-project.org/bin/windows/Rtools/).

Si vous utilisez Windows ou OS X et recherchez un package pour une **ancienne version de R** (version 2.1 ou inférieure), vous pouvez le rechercher sur l'[archive binaire du site CRAN](https://cran-archive.r-project.org/bin/). Une fois que vous avez l'URL, vous pouvez l'installer à l'aide d'une commande similaire à l'exemple ci-dessous :

``` r
packageurl <- "https://cran-archive.r-project.org/bin/windows/contrib/2.13/BBmisc_1.0-58.zip"
install.packages(packageurl, repos=NULL, type="binary")
```

### Utiliser devtools

La méthode la plus simple pour installer la version dont vous avez besoin consiste à utiliser la fonction `install_version()` du package `devtools` (vous devez évidemment avoir préalablement installé `devtools`, ce qui peut être fait en exécutant `R` la commande `install.packages("devtools",dep=TRUE)`). Par exemple:

``` r
require(devtools)
install_version("ggplot2", version = "0.9.1", repos = "http://cran.us.r-project.org")
```

### Installer à partir du code source

Vous pouvez également installer un ancien package à partir de son code source. Si vous ne réussissez pas avec devtools ou si vous ne voulez pas dépendre de ce package, vous pouvez l’installer à partir du source à l'aide de la commande `install.packages()` en utilisant la bonne URL. Cette URL peut être obtenue en naviguant dans [l'archive de packages du site CRAN](https://cran.r-project.org/src/contrib/Archive).

Une fois que vous avez l'URL, vous pouvez l'installer à l'aide d'une commande similaire à l'exemple ci-dessous :

``` r
packageurl <- "http://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_0.9.1.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
```

Si vous connaissez l'URL, vous pouvez également installer à partir du source par ligne de commande en dehors de R. Par exemple (en bash) :

``` shell
wget http://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_0.9.1.tar.gz
R CMD INSTALL ggplot2_0.9.1.tar.gz
```

### Problèmes potentiels

Quelques problèmes sont susceptibles de survenir lors de l'installation d'anciennes versions de packages :

-   Vous pouvez perdre des fonctionnalités ou des corrections de bugs qui ne sont présentes que dans les versions les plus récentes des packages.
-   L'ancienne version de package requise peut ne pas être compatible avec la version de R que vous avez installée. Dans ce cas, vous devrez soit rétrograder R vers une version compatible, soit mettre à jour votre code R pour qu'il fonctionne avec une version plus récente du package.

