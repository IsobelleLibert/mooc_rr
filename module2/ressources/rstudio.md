---
TITLE:     Rstudio
Date:   Tue Feb 19 19:19:03 2019 
---

Table of Contents<span class="tag" data-tag-name="TOC"></span>
==============================================================

-   [Installing RStudio](#installing-rstudio)
    -   [Linux (debian, ubuntu)](#linux-debian-ubuntu)
    -   [Mac OSX and Windows](#mac-osx-and-windows)
-   [RStudio documentation](#rstudio-documentation)
-   [Using Git from RStudio](#using-git-from-rstudio)
    -   [Cloning a repository](#cloning-a-repository)
    -   [Modifying a file](#modifying-a-file)

Installing RStudio
==================

Linux (debian, ubuntu)
----------------------

We provide here only instructions for Debian-based distributions. Feel free to contribute to this document to provide up-to-date information for other distributions (e.g., RedHat, Fedora).

Today, the stable versions of the most common distributions provide recent enough versions of R:

-   Debian (stretch) ships with [R 3.3.3-1](https://packages.debian.org/stretch/r-base), [knitr 1.15.1](https://packages.debian.org/stretch/r-cran-knitr), and [ggplot 2.2.1](https://packages.debian.org/stretch/r-cran-ggplot2)
-   Ubuntu (bionic 18.04) ships with [R 3.4.4](https://packages.ubuntu.com/bionic/r-base), and [knitr 1.17](https://packages.ubuntu.com/bionic/r-cran-knitr), and [ggplot 2.2.1](https://packages.ubuntu.com/bionic/r-cran-ggplot2)
-   Ubuntu (artful 17.04) ships with [R 3.4.2](https://packages.ubuntu.com/artful/r-base), and [knitr 1.15](https://packages.ubuntu.com/artful/r-cran-knitr), and [ggplot 2.2.1](https://packages.ubuntu.com/artful/r-cran-ggplot2)

If your distribution is older than this, well, it may be a good time for upgrading...

### Installing R

First, you need to install the R language and convenient packages by running (as root):

``` shell
apt-get update ; sudo apt-get install r-base r-cran-knitr r-cran-ggplot2 
```

Alternatively, if the installation of `r-cran-gplot2` or `r-cran-knitr` fails, you may want to install them locally (through the R packaging system) and manually by running the following commands in R (or RStudio):

``` r
install.packages("knitr")
install.packages("ggplot2")
```

If you plan to export pdf documents with LaTeX, you probably also want to run (as root):

``` bash
apt-get update ; apt-get install texlive-base
```

### Installing RStudio

RStudio is unfortunately not packaged within Debian so the easiest is to download the corresponding Debian package on the [RStudio webpage](https://www.rstudio.com/products/rstudio/download/#download) and then to install it manually (you may have to adjust the version number in the following example). Here is how to install it:

``` shell
cd /tmp/
wget https://download1.rstudio.org/rstudio-xenial-1.1.453-amd64.deb
sudo dpkg -i rstudio-xenial-1.1.453-amd64.deb
sudo apt-get update ; sudo apt-get -f install # to fix possibly missing dependencies
```

Mac OSX and Windows
-------------------

> Some instructions on installing R and knitr must be missing. This should be tested and improved.

-   Download and install R from the [CRAN webpage](https://cran.r-project.org/) by choosing the right operating system.
-   Download and install RStudio from the [RStudio webpage](https://www.rstudio.com/products/rstudio/download/#download) by choosing the right operating system.
-   Download and install MiKTeX from the [MiKTeX webpage](https://miktex.org/download) by choosing the right operating system. You will be prompted to install some specific packages when exporting to pdf.
-   Open RStudio and type the following commands in the console to install `knitr` and `ggplot2`:

``` r
install.packages("knitr", dep=TRUE)
install.packages("ggplot2", dep=TRUE)
```

RStudio documentation
=====================

The RStudio team has created a lot of very good material and tutorials. You should definitively look at the [Cheat sheets webpage](https://www.rstudio.com/resources/cheatsheets/). In particular you may want to have look at the following ones:

-   [The RStudio IDE](https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf),
-   [R Markdown](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf) (here is also a [nice step-by-step presentation of Rmarkdown](https://rmarkdown.rstudio.com/)),
-   The [R Markdown Reference guide](https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf),
-   [Data visualization with ggplot2](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf),
-   [Data transformation with dplyr](https://github.com/rstudio/cheatsheets/raw/master/data-transformation.pdf)

In case it helps, here are some (sometimes outdated) French versions of these documents:

-   [L'IDE RStudio](https://github.com/rstudio/cheatsheets/raw/master/translations/french/rstudio-IDE-cheatsheet.pdf)
-   [Visualisation de données avec ggplot2](https://github.com/rstudio/cheatsheets/raw/master/translations/french/ggplot2-french-cheatsheet.pdf)
-   [Transformation de données avec dplyr](https://github.com/rstudio/cheatsheets/raw/master/translations/french/data-wrangling-french.pdf)
-   [Un court document sur R Markdown](https://www.fun-mooc.fr/c4x/UPSUD/42001S02/asset/RMarkdown.pdf)

Using Git from RStudio
======================

If you have never used git with RStudio, **we strongly advise that you follow [our tutorial on using git from RStudio](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/d132a854b0464ad29085cedaded23136)** (/"RStudio et Gitlab"/ in French). Before proceeding, make sure you also have followed the **["git/GitLab configuration" tutorial](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/7508aece244548349424dfd61ee3ba85)** (in French).

Alternatively, you may want to watch [this video](https://www.youtube.com/embed/uHYcDQDbMY8) (in English). If you do not like videos, you should have a look at the [step-by-step explanations from Software Carpentry](https://swcarpentry.github.io/git-novice/14-supplemental-rstudio/index.html). It comes with many screenshots and is quite progressive.

Cloning a repository
--------------------

Open RStudio and do the following steps:

-   Create a new version controled project: `File / New Project / Version Control`

    ![](rstudio_images/new_project.png)

    ![](rstudio_images/git.png)

-   Get the URL from your GitLab repository:

    ![](rstudio_images/adresse_depot.png)

-   Indicate this URL in the "Repository URL" field (*you may want to prefix this URL with `xxx@` where `xxx` is* *your Gitlab id to avoid repeatedly giving it later on*).

    ![](rstudio_images/clone.png)

-   If you're behind a proxy, git should be configured accordingly. Check the ["Dealing with proxies" section](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/7508aece244548349424dfd61ee3ba85).
-   Git will then connect to Gitlab and fetch a whole copy of the repository.
-   RStudio should restart in a mode related to Git:

    ![](rstudio_images/rstudio.png)

-   The file manager on the right, allows you to browse the version controled repository.

Modifying a file
----------------

-   Open `Module2/exo1/toy_document.Rmd` and perform a simple modification.
-   Save
-   Go to the Git menu to commit

    ![](rstudio_images/commit.png)

    ![](rstudio_images/commit2.png)

-   Select the lines to commit and then click on `commit`

    ![](rstudio_images/commit5.png)

    Your modifications have now been commited on your local machine. They haven't been propagated to GitLab yet.
-   Click on `push` to propagate them on GitLab

    ![](rstudio_images/push.png)

    ![](rstudio_images/push2.png)

    ![](rstudio_images/push3.png)

    **NB**: You won't be able to propagate your modifications on GitLab if some modifications have been done on GitLab in the meantime. ![](rstudio_images/push4.png)
-   You should first merge these remote modifications locally. Click on `pull` to get these modifications on your machine.
