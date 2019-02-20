---
TITLE:     Jupyter : tips and tricks, Installing and configuring
AUTHOR:    Arnaud Legrand, Benoit Rospars, Konrad Hinsen
Date:   Tue Feb 19 15:42:13 2019 
---

Table of Contents<span class="tag" data-tag-name="TOC"></span>
==============================================================

-   [1 Jupyter tips and tricks](#1-jupyter-tips-and-tricks)
    -   [1.1 Creating or importing a notebook](#11-creating-or-importing-a-notebook)
    -   [1.2 Running R and Python in the same notebook](#12-running-r-and-python-in-the-same-notebook)
    -   [1.3 Other languages](#13-other-languages)
-   [2 Installing and configuring Jupyter on your computer](#2-installing-and-configuring-jupyter-on-your-computer)
    -   [2.1 Installing Jupyter](#21-installing-jupyter)
    -   [2.2 Making sure Jupyter allows you to use R](#22-making-sure-jupyter-allows-you-to-use-r)
    -   [2.3 Additional tips](#23-additional-tips)

1 Jupyter tips and tricks
=========================

The following [webpage](https://www.dataquest.io/blog/jupyter-notebook-tips-tricks-shortcuts/) lists several Jupyter tricks (in particular, it illustrates many `IPython magic` commands) that should improve your efficiency (note that this blog post is about two years old so some of the tricks may have been integrated in the default behavior of Jupyter now).

1.1 Creating or importing a notebook
------------------------------------

Using the Jupyter environment we deployed for this MOOC will allow to easily access any file from your default GitLab project. There are situations however where you may want to play with other notebooks.

Adding a brand new notebook in a given directory  
Simply follow the following steps:

1.  From the menu: `File -> Open`. You're now in the Jupyter file manager.
2.  Navigate to the directory where you want your notebook to be created.
3.  Then from the top right button: `New -> Notebook: Python 3`.
4.  Give your notebook a name from the menu: `File -> Rename`.

    N.B.: If you create a file by doing `File -> New Notebook ->
     Python 3`, the new notebook will be created in the current directory. Moving it afterward is possible but a bit cumbersome (you'll have to go through the Jupyter file manager by following the menu `File -> Open`, then select it, `Shut` it `down`, and `Move` and/or `Rename`).

Importing an already existing notebook  
If your notebook is already in your GitLab project, then simply synchronize by using the `Git pull` button and use the `File -> Open` menu. Otherwise, imagine, you want to import the [following notebook](https://app-learninglab.inria.fr/gitlab/moocrr-session1/moocrr-reproducibility-study/blob/master/src/Python3/challenger.ipynb) from someone else's repository to re-execute it.

1.  Download the file on your computer. E.g., for this [GitLab hosted notebook](https://app-learninglab.inria.fr/gitlab/moocrr-session1/moocrr-reproducibility-study/blob/master/src/Python3/challenger.ipynb), click on `Open raw` (a small `</>` within a document icon) and save (`Ctrl-S` on most browsers) the content (a long Json text file).
2.  Open the Jupyter file manager from the menu `File -> Open` and navigate to the directory where you want to upload your notebook.
3.  Then from the top right button, `Upload` the previously downloaded notebook and confirm the upload.
4.  Open the freshly uploaded notebook through the Jupyter file manager.

1.2 Running R and Python in the same notebook
---------------------------------------------

`rpy2` package allows to use both languages in the same notebook by:

1.  Loading `rpy2`:

    ``` python
    %load_ext rpy2.ipython
    ```

2.  Using the `%R` Ipython magic:

    ``` python
    %%R 
    summary(cars)
    ```

    Python objects can then even be passed to R as follows (assuming `df` is a pandas dataframe):

    ``` python
    %%R -i df
    plot(df)
    ```

Note that this `%%R` notation indicates that R should be used for the whole cell but an other possibility is to use `%R` to have a single line of R within a python cell.

1.3 Other languages
-------------------

Jupyter is not limited to Pytyhon and R. Many other languages are available: [<https://github.com/jupyter/jupyter/wiki/Jupyter-kernels>](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels), including non-free languages like SAS, Mathematica, Matlab... Note that the maturity of these kernels differs widely.

None of these other languages have been deployed in the context of our MOOC but you may want to read the next sections to learn how to set up your own Jupyter on your computer and benefit from these extensions.

Since the question was asked several times, if you really need to stay with SAS, you should know that SAS can be used within Jupyter using either the [Python SASKernel](https://sassoftware.github.io/sas_kernel/) or the [Python SASPy](https://sassoftware.github.io/saspy/) package (step by step explanations about this are given [here](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md)).

Since proprietary software such as SAS cannot easily be inspected, we discourage its use as it hinders reproducibility by essence. But perfection does not exist anyway and using Jupyter literate programming approach allied with systematic control version and environment control will certainly help anyway.

2 Installing and configuring Jupyter on your computer
=====================================================

In this section, we explain how to set up a Jupyter environment on your own computer similar to the one deployed for this MOOC.

Note that Jupyter notebooks are only a small part of the picture and that Jupyter is now part of a bigger project: [JupyterLab](https://blog.jupyter.org/jupyterlab-is-ready-for-users-5a6f039b8906), which allows you to mix various components (including notebooks) in your browser. In the context of this MOOC, our time frame was too short to benefit from JupyterLab which was still under active development. You may, however, prefer JupyterLab when doing an installation on your own computer.

2.1 Installing Jupyter
----------------------

Follow these instructions if you wish to have a Jupyter environment on your own computer similar to the one we set up for this MOOC.

First, download and install the [latest version of Miniconda](https://conda.io/miniconda.html). We use Miniconda version `4.5.4` and Python version `3.6` on our server.

Miniconda is a light version of Anaconda, which includes Python, the Jupyter Notebook, and other commonly used packages for scientific computing and data science.

Then download the [mooc<sub>rr</sub> environment file](https://gist.github.com/brospars/4671d9013f0d99e1c961482dab533c57) and create the environment using conda:

``` shell
conda env create -f environment.yml

# Windows activate the environment
activate mooc_rr

# Linux and MacOS activate the environment
source activate mooc_rr

# Linux, MacOS and Windows: launch the notebook
jupyter notebook
```

2.2 Making sure Jupyter allows you to use R
-------------------------------------------

The environment described in the last section should include R, but if you proceeded otherwise and only have Python available in Jupyter, you may want to read the following section.

### • Installing [IRKernel](https://github.com/IRkernel/IRkernel) (R package)

Do the following in R console:

Install the `devtools` package:

``` r
install.packages('devtools',dep=TRUE)
```

Define a proxy if needed:

``` r
library(httr)
set_config(use_proxy(url="proxy", port=80, username="username", password="password")) 
```

Install the `IRkernel` package:

``` r
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()  # to register the kernel in the current R installation
```

### • Installing rpy2 (Python package)

On Linux, the rpy2 package is available in standard distributions

``` shell
sudo apt-get install python3-rpy2 python3-tzlocal
```

An alternative (not really recommended if the first one is available) consists in going through the python package manager with

``` python
pip3 install rpy2
```

**Windows**

Download the `rpy2` [binary file](https://www.lfd.uci.edu/~gohlke/pythonlibs/#rpy2) by choosing the right operating system.

Open a DOS console and type the following command:

``` shell
python -m pip install rpy2‑2.9.4‑cp37‑cp37m‑win_amd64.whl # adapt filename
```

Install also `tzlocal`:

``` shell
python -m pip install tzlocal
```

2.3 Additional tips
-------------------

### • Exporting a notebook

Here is what we had to install on a recent Debian computer to make sure the notebook export via LaTeX works:

``` shell
sudo apt-get install texlive-xetex wkhtmltopdf
```

Obviously, you can convert to html or pdf using the using the `File > Download as > HTML` (or `PDF`) menu option. This can also be done from the command line with the following command:

``` bash
ipython3 nbconvert --to pdf Untitled.ipynb
```

If you want to use a specific style, then the `nbconvert` exporter should be customized. This is discussed and demoed [here](http://markus-beuckelmann.de/blog/customizing-nbconvert-pdf.html). We encourage you to simply read the [doc of nbconvert](https://nbconvert.readthedocs.io/en/latest/).

Instead of going directly through LaTeX and playing too much with the `nbconvert` exporter, an other option consists in exporting to Markdown and playing with [pandoc](https://pandoc.org/). Both approaches work, it's rather a matter of taste.

**Windows**

Download and install MiKTeX from the [MiKTeX webpage](https://miktex.org/download) by choosing the right operating system. You will be prompted to install some specific packages when exporting to pdf.

### • Improving notebook readability

Here are a few extensions that can ease your life:

-   [Code folding](https://stackoverflow.com/questions/33159518/collapse-cell-in-jupyter-notebook) to improve readability when browsing the notebook.

    ``` shell
    pip3 install jupyter_contrib_nbextensions
    # jupyter contrib nbextension install --user # not done yet
    ```

-   [Hiding code](https://github.com/kirbs-/hide_code) to improve readability when exporting.

    ``` bash
    sudo pip3 install hide_code
    sudo jupyter-nbextension  install --py hide_code
    jupyter-nbextension  enable --py hide_code
    jupyter-serverextension enable --py hide_code
    ```

### • Interacting with GitLab and GitHub

To ease your experience, we added pull/push buttons that allow you to commit and sync with GitLab. This development was specific to the MOOC but inspired from a previous [proof of concept](https://github.com/Lab41/sunny-side-up). We have recently discovered that someone else developed about at the same time a [rather generic version of this Jupyter plugin](https://github.com/sat28/githubcommit). Otherwise, remember that it is very easy to insert a shell cell in Jupyter in which you can easily issue git commands. This is how we work most of the time.

This being said, you may have noticed that Jupyter keeps a perfect track of the sequence in which cells have been run by updating the "output index". This is a very good property from the reproducibility point of view but depending on your usage, you may find it a bit painful when committing. Some people have thus developed [specific git hooks](https://gist.github.com/pbugnion/ea2797393033b54674af) to ignore these numbers when committing Jupyter notebooks. There is a long an interesting discussion about various options on [StackOverflow](https://stackoverflow.com/questions/18734739/using-ipython-notebooks-under-version-control).

For those who use [JupyterLab](https://blog.jupyter.org/jupyterlab-is-ready-for-users-5a6f039b8906) rather than the plain Jupyter, a specific [JupyterLab git plugin](https://github.com/jupyterlab/jupyterlab-git) has been developed to offer a nice version control experience.
