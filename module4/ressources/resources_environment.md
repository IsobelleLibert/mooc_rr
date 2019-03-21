---
title:     Tracking environment information
date:   Tue Feb 19 19:19:03 2019 
---

# Table of Contents <span class="tag" data-tag-name="TOC"><span class="smallcaps">TOC</span></span>

  - [Getting information about your Git
    repository](#getting-information-about-your-git-repository)
  - [Getting information about Python(3)
    libraries](#getting-information-about-python3-libraries)
      - [Getting information about your
        system](#getting-information-about-your-system)
      - [Getting the list of installed packages and their
        version](#getting-the-list-of-installed-packages-and-their-version)
      - [How to list imported modules?](#how-to-list-imported-modules)
      - [Saving and restoring an environment with
        pip](#saving-and-restoring-an-environment-with-pip)
      - [Installing a new package or a specific
        version](#installing-a-new-package-or-a-specific-version)
  - [Getting information about R
    libraries](#getting-information-about-r-libraries)
      - [Getting the list imported modules and their
        version](#getting-the-list-imported-modules-and-their-version)
      - [Getting the list of installed packages and their
        version](#getting-the-list-of-installed-packages-and-their-version-1)
      - [Installing a new package or a specific
        version](#installing-a-new-package-or-a-specific-version-1)

# Getting information about your Git repository

When taking notes, it may be difficult to remember which version of the
code or of a file was used. This is what version control is useful for.
Here are a few useful commands that we typically insert at the top of
our notebooks in shell cells

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

*Note: the -u indicates that git should also display the contents of new
directories it did not previously know about.*

Then, we often include commands at the end of our notebook indicating
how to commit the results (adding the new files, committing with a clear
message and pushing). E.g.,

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

Obviously, in this case you need to save the notebook before running
this cell, hence the output of this final command (with the new git
hash) will not be stored in the cell. This is not really a problem and
is the price to pay for running git from within the notebook itself.

# Getting information about Python(3) libraries

## Getting information about your system

This topic is discussed on
[StackOverflow](https://stackoverflow.com/questions/3103178/how-to-get-the-system-info-with-python).

``` python
import platform
print(platform.uname())
```

``` example
uname_result(system='Linux', node='icarus', release='4.15.0-2-amd64', version='#1 SMP Debian 4.15.11-1 (2018-03-20)', machine='x86_64', processor='')
```

## Getting the list of installed packages and their version

This topic is discussed on
[StackOverflow](https://stackoverflow.com/questions/20180543/how-to-check-version-of-python-modules).
When using `pip` (the Python package installer) within a shell command,
it is easy to query the version of all installed packages (note that on
your system, you may have to use either `pip` or `pip3` depending on how
it is named and which versions of Python are available on your machine

Here is for example how I get this information on my machine:

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

In a Jupyter notebook, this can easily be done by using the `%%sh`
magic. Here is for example what you could do and get on the Jupyter
notebooks we deployed for the MOOC (note that here, you should simply
use the `pip` command):

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

In the rest of this document, I will assume the correct command is `pip`
and I will not systematically insert the `%%sh` magic.

Once you know which packages are installed, you can easily get
additional information about a given package and in particular check
whether it was installed "locally" through pip or whether it is
installed system-wide. Again, in a shell command:

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

## How to list imported modules?

Without resorting to pip (that will list all available packages), you
may want to know which modules are loaded in a Python session as well as
their version. Inspired by
[StackOverflow](https://stackoverflow.com/questions/4858100/how-to-list-imported-modules),
here is a simple function that lists loaded package (that have a
`__version__` attribute, which is unfortunately not completely
standard).

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

## Saving and restoring an environment with pip

The easiest way to go is as
follows:

``` shell
pip3 freeze > requirements.txt # to obtain the list of packages with their version
pip3 install -r requirements.txt # to install the previous list of packages, possibly on an other machine
```

If you want to have several installed Python environments, you may want
to use [Pipenv](https://docs.pipenv.org/). I doubt it allows to track
correctly FORTRAN or C dynamic libraries that are wrapped by Python
though.

## Installing a new package or a specific version

The Jupyter environment we deployed on our servers for the MOOC is based
on the version 4.5.4 of Miniconda and Python 3.6. In this environment
you should simply use the `pip` command (remember on your machine, you
may have to use `pip3`).

If I query the current version of `statsmodels` in a shell command, here
is what I will get.

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

I can then easily upgrade `statsmodels`:

``` shell
pip install --upgrade statsmodels 
```

Then the new version should then be:

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

It is even possible to install a specific (possibly much older) version,
e.g.,:

``` shell
pip install statsmodels==0.6.1
```

# Getting information about R libraries

## Getting the list imported modules and their version

The best way seems to be to rely on the `devtools` package (if this
package is not installed, you should install it first by running in `R`
the command `install.packages("devtools")`).

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

Some actually advocate that [writing a reproducible research compendium
is best done by writing an R
package](https://github.com/ropensci/rrrpkg). Those of you willing to
have a clean R dependency management should thus have a look at
[Packrat](https://rstudio.github.io/packrat/).

## Getting the list of installed packages and their version

Finally, it is good to know that there is a built-in R command
(`installed.packages`) allowing to retrieve and list the details of all
packages installed.

``` r
head(installed.packages())
```

| Package                                                      | LibPath                                                    | Version                                                  | Priority    | Depends                                                    | Imports                                                        | LinkingTo | Suggests      | Enhances                              | License                              | License<sub>isFOSS</sub> | License<sub>restrictsuse</sub> | OS<sub>type</sub> | MD5sum | NeedsCompilation | Built |       |
| ------------------------------------------------------------ | ---------------------------------------------------------- | -------------------------------------------------------- | ----------- | ---------------------------------------------------------- | -------------------------------------------------------------- | --------- | ------------- | ------------------------------------- | ------------------------------------ | ------------------------ | ------------------------------ | ----------------- | ------ | ---------------- | ----- | ----- |
| BH                                                           | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 1.66.0-1                                                 | nil         | nil                                                        | nil                                                            | nil       | nil           | nil                                   | BSL-1.0                              | nil                      | nil                            | nil               | nil    | no               | 3.5.1 |       |
| Formula                                                      | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 1.2-3                                                    | nil         | R (\>= 2.0.0), stats                                       | nil                                                            | nil       | nil           | nil                                   | GPL-2                                | GPL-3                    | nil                            | nil               | nil    | nil              | no    | 3.5.1 |
| Hmisc                                                        | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 4.1-1                                                    | nil         | lattice, survival (\>= 2.40-1), Formula, ggplot2 (\>= 2.2) | methods, latticeExtra, cluster, rpart, nnet, acepack, foreign, |           |               |                                       |                                      |                          |                                |                   |        |                  |       |       |
| gtable, grid, gridExtra, data.table, htmlTable (\>= 1.11.0), |                                                            |                                                          |             |                                                            |                                                                |           |               |                                       |                                      |                          |                                |                   |        |                  |       |       |
| viridis, htmltools, base64enc                                | nil                                                        | chron, rms, mice, tables, knitr, ff, ffbase, plotly (\>= |             |                                                            |                                                                |           |               |                                       |                                      |                          |                                |                   |        |                  |       |       |
| 4.5.6)                                                       | nil                                                        | GPL (\>= 2)                                              | nil         | nil                                                        | nil                                                            | nil       | yes           | 3.5.1                                 |                                      |                          |                                |                   |        |                  |       |       |
| Matrix                                                       | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 1.2-14                                                   | recommended | R (\>= 3.2.0)                                              | methods, graphics, grid, stats, utils, lattice                 | nil       | expm, MASS    | MatrixModels, graph, SparseM, sfsmisc | GPL (\>= 2)                          | file LICENCE             | nil                            | nil               | nil    | nil              | yes   | 3.5.1 |
| StanHeaders                                                  | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 2.17.2                                                   | nil         | nil                                                        | nil                                                            | nil       | RcppEigen, BH | nil                                   | BSD<sub>3clause</sub> + file LICENSE | nil                      | nil                            | nil               | nil    | yes              | 3.5.1 |       |
| acepack                                                      | /home/alegrand/R/x86<sub>64</sub>-pc-linux-gnu-library/3.5 | 1.4.1                                                    | nil         | nil                                                        | nil                                                            | nil       | testthat      | nil                                   | MIT + file LICENSE                   | nil                      | nil                            | nil               | nil    | yes              | 3.5.1 |       |

## Installing a new package or a specific version

This section is mostly a cut and paste from the [recent post by Ian
Pylvainen](https://support.rstudio.com/hc/en-us/articles/219949047-Installing-older-versions-of-packages)
on this topic. It comprises a very clear explanation of how to proceed.

### Installing a pre-compiled version

If you're on a Debian or a Ubuntu system, it may be difficult to access
a specific version without breaking your system. So unless you are
moving to the latest version available in your Linux distribution, **we
strongly recommend you to build from source**. In this case, you'll need
to make sure you have the necessary toolchain to build packages from
source (e.g., gcc, FORTRAN, etc.). On Windows, this may require you to
install [Rtools](https://cran.r-project.org/bin/windows/Rtools/).

If you're on Windows or OS X and looking for a package for an **older
version of R** (R 2.1 or below), you can check the [CRAN binary
archive](https://cran-archive.r-project.org/bin/). Once you have the
URL, you can install it using a command similar to the example
below:

``` r
packageurl <- "https://cran-archive.r-project.org/bin/windows/contrib/2.13/BBmisc_1.0-58.zip"
install.packages(packageurl, repos=NULL, type="binary")
```

### Using devtools

The simplest method to install the version you need is to use the
`install_version()` function of the `devtools` package (obviously, you
need to install `devtools` first, which can be done by running in `R`
the command `install.packages("devtools")`). For instance:

``` r
require(devtools)
install_version("ggplot2", version = "0.9.1", repos = "http://cran.us.r-project.org")
```

### Installing from source code

Alternatively, you may want to install an older package from source If
devtools fails or if you do not want to depend on it, you can install it
from source via `install.packages()` directed using the right URL. This
URL can be obtained by browsing the [CRAN Package
Archive](https://cran.r-project.org/src/contrib/Archive).

Once you have the URL, you can install it using a command similar to the
example
below:

``` r
packageurl <- "http://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_0.9.1.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
```

If you know the URL, you can also install from source via the command
line outside of R. For instance (in
bash):

``` shell
wget http://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_0.9.1.tar.gz
R CMD INSTALL ggplot2_0.9.1.tar.gz
```

### Potential issues

There are a few potential issues that may arise with installing older
versions of packages:

  - You may be losing functionality or bug fixes that are only present
    in the newer versions of the packages.
  - The older package version needed may not be compatible with the
    version of R you have installed. In this case, you will either need
    to downgrade R to a compatible version or update your R code to work
    with a newer version of the package.
