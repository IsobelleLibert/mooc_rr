---
TITLE:     FIXME Emacs/org-mode
Date:   Tue Feb 19 19:19:03 2019 
---

**Disclaimer:** The two sections *A simple "reproducible research" emacs configuration* and *A stub of replicable article* explain how to set up emacs/org-mode for this MOOC. These are very important sections in the context of this MOOC. **These sections are illustrated in two out of the [three video tutorials of this sequence](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/9cfc7500f0ef46d288d2317ec7b037b4), and** **which you really should follow carefully**. **Otherwise, you may have trouble doing the exercises later on**. Likewise, I strongly encourage you to watch the ["emacs and git" video tutorial available at the same place](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/9cfc7500f0ef46d288d2317ec7b037b4).

The next section provides information on how to install emacs.

Table of Contents<span class="tag" data-tag-name="TOC"></span>
==============================================================

-   [Installing emacs, org-mode, ess, and auctex.](#installing-emacs-org-mode-ess-and-auctex)
    -   [Linux (Debian, Ubuntu)](#linux-debian-ubuntu)
    -   [macOS](#macos)
    -   [Windows](#windows)
    -   [All platforms: pretty code in HTML export](#all-platforms-pretty-code-in-html-export)
-   [A simple "*reproducible research*" emacs configuration](#a-simple-reproducible-research-emacs-configuration)
    -   [Step 0: Backup and download our configuration](#step-0-backup-and-download-our-configuration)
    -   [Step 1: Prepare your journal](#step-1-prepare-your-journal)
    -   [Step 2: Set up Emacs configuration](#step-2-set-up-emacs-configuration)
    -   [Step 3: Adapt the configuration to your specific needs if required](#step-3-adapt-the-configuration-to-your-specific-needs-if-required)
    -   [Step 4: Check whether the installation is working or not](#step-4-check-whether-the-installation-is-working-or-not)
    -   [Step 5: Open and play with your journal:](#step-5-open-and-play-with-your-journal)
-   [A stub of a replicable article](#a-stub-of-a-replicable-article)
-   [Emacs tips and tricks](#emacs-tips-and-tricks)
    -   [Cheat-sheets](#cheat-sheets)
    -   [Video tutorials](#video-tutorials)
    -   [Additional useful emacs packages](#additional-useful-emacs-packages)
    -   [Other resources](#other-resources)

Installing emacs, org-mode, ess, and auctex.
============================================

Linux (Debian, Ubuntu)
----------------------

We provide here only instructions for Debian-based distributions. Feel free to contribute to this document to provide up-to-date information for other distributions (e.g.n redhat, fedora).

Today, the stable versions of the most common distributions provide recent enough versions of emacs and org-mode:

-   Debian (stretch) ships with [emacs 25.1](https://packages.debian.org/stretch/emacs25) and [org-mode 9.0.3](https://packages.debian.org/stretch/org-mode)
-   Ubuntu (bionic 18.04) ships with [emacs 25.2](https://packages.ubuntu.com/bionic/emacs25) and [org-mode 9.1.6](https://packages.ubuntu.com/bionic/org-mode)
-   Ubuntu (artful 17.04) ships with [emacs 25.2](https://packages.ubuntu.com/artful/emacs25) and [org-mode 9.0.9](https://packages.ubuntu.com/artful/org-mode)

If your distribution is older than this, well, it may be a good time for upgrading...

Simply run (as root):

``` bash
apt-get update ; apt-get install emacs25 org-mode ess r-base auctex
```

Then make sure you have a sufficiently recent version of emacs.

``` bash
emacs --version 2>&1 | head -n 1
```

``` example
GNU Emacs 25.2.2
```

Likewise, you'll want to check you have a recent version of org-mode:

``` bash
emacs -batch --funcall "org-version" 2>&1 | grep version
```

``` example
Org mode version 9.1.11 (9.1.11-dist @ /usr/share/emacs/25.2/site-lisp/elpa/org-9.1.11/)
```

The version numbers you get will depend on the distribution you are running. **You really want to make sure you do not rely on org-mode 8**, which is now deprecated.

macOS
-----

**Note:** macOS comes with a prehistoric command-line-only version of Emacs located at `/usr/bin/emacs`. It's best to forget about it.

-   **Option 1**: Install the `.dmg` file from [Vincent Goulet](http://vgoulet.act.ulaval.ca/): [<https://vigou3.gitlab.io/emacs-modified-macos/>](https://vigou3.gitlab.io/emacs-modified-macos/). It ships with recent versions:
    -   Emacs 26.1
    -   Org-mode 9.1.13
    -   ESS 17.11

    If you install this version of Emacs, or in fact any other version of Emacs distributed as a clickable application in a `.dmg` file, you must type the full path to the executable if you want to run Emacs from a terminal. For example, if your clickable application is at `/Applications/Emacs.app`, then the executable is at `/Applications/Emacs.app/Contents/MacOS/Emacs`

-   **Option 2**: If you use [Homebrew](https://docs.brew.sh/), do the following:

    ``` bash
    brew update
    brew install emacs --with-cocoa
    brew linkapps emacs
    brew install wget
    brew tap dunn/emacs
    brew install auctex
    brew tap brewsci/science
    brew install ess
    ```

    This provides an `emacs` command for use from the command line, plus a clickable application at `Cellar/emacs/26.1_1/Emacs.app` inside your Homebrew directory. If you installed Homebrew at the default location `/usr/local`, then this is `/usr/local/Cellar/emacs/26.1_1/Emacs.app`. If you installed Homebrew on an account with administrator privileges, you can add

    ``` bash
    brew linkapps emacs
    ```

    in order to make Emacs accessible directly from `/Applications`.

Windows
-------

Install the `.exe` file from [Vincent Goulet](http://vgoulet.act.ulaval.ca/): [<https://vigou3.gitlab.io/emacs-modified-windows/>](https://vigou3.gitlab.io/emacs-modified-windows/). It ships with recent versions:

-   Emacs 26.1
-   Org-mode 9.1.13
-   ESS 17.11

### Directory naming conventions

In the following instructions, we refer to your home directory through the (UNIX) `~/` notation. On Windows, your home directory should be something like `C:\Users\yourname`. Therefore, whenever we mention the `~/org/` (resp. the `~/.emacs.d/`) directory this means we are referring to `C:\Users\yourname\org` (resp. `C:\Users\yourname\.emacs.d\`).

### Making R and Python available to the console

When running a command, Windows will look for the command in the directories indicated in the `PATH` environment variable. If none of these directories contains the command, Windows will stop and indicate the command does not exist. To make sure R (which may be in something like `C:/Program Files/R/R-3.5.1/bin/x64/`) and Python (which may be in something like `C:/Program Files/Python/Python37/`) can easily be run from Emacs, you should thus configure the `PATH` variable accordingly.

This requires to go through the "Environment Variable" editor as explained [here](http://sametmax.com/ajouter-un-chemin-a-la-variable-denvironnement-path-sous-windows/).

### Installing and configuring Matplotlib (graphic python library)

Open an DOS console and type the following command:

``` shell
python -m pip install -U matplotlib
```

![](emacs_orgmode_images/install_matplotlib.png)

Then you will want to deactivate interactive plots in matplotlib. To this end, you first need to know where the matplotlib configuration is located. Open a python console the type the following code:

``` python
import matplotlib
matplotlib.matplotlib_fname()
```

![](emacs_orgmode_images/matplotlib.png)

Open the `matplotlibrc` file and modify the line starting with `backend` to make it `backend : Agg`.

All platforms: pretty code in HTML export
-----------------------------------------

To have code pretty printing when exporting to HTML, you should install the `htmlize` package, which is done by opening emacs and typing the following command:

``` example
M-x package-install RET htmlize RET    # where M-x means pressing the "Esc" key then the "x" key
```

A simple "*reproducible research*" emacs configuration
======================================================

This section is illustrated in a [video tutorial](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/9cfc7500f0ef46d288d2317ec7b037b4) (/"Mise en place Emacs/Orgmode"/ in French). Watching it before following the instructions given in this section may help.

Emacs comes with very basic default configuration and it appears like everyone has its own taste. You will for example find [here](https://www.emacswiki.org/emacs/StarterKits) several default Emacs configurations that reflect the preferences of their creators. Likewise the configuration of Org-Mode is incredibly flexible (see for example [the org-mode website](https://orgmode.org/worg/org-configs/index.html) for more references). In the context of this MOOC, we propose you a relatively minimalist one that is rather "*reproducible research*" oriented by adding a few org-mode specific configurations.

Step 0: Backup and download our configuration
---------------------------------------------

The procedure we propose will wipe your already existing custom Emacs configuration if you have one. **You should thus beforehand make a backup** of `~/.emacs` and of `~/.emacs.d/init.el` (if these files exist).

Then download [this archive](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/rr_org_archive.tgz) and uncompress it. It contains the following files and we will refer to them in the following:

``` example
rr_org/init.el
rr_org/journal.org
```

Alternatively, [the files you are looking for are available here](rr_org/).

Step 1: Prepare your journal
----------------------------

Create an `org/` directory in the top of your home:

``` bash
mkdir -p ~/org/
```

Then copy `rr_org/journal.org` file in your `~/org/` directory. This file will be your laboratory notebook and all the notes you will capture with `C-c c` will go automatically go in this file. The first entry of this notebook is populated with [many Emacs shortcuts](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/ressources/rr_org/journal.org) that you should give a try.

Step 2: Set up Emacs configuration
----------------------------------

Copy `rr_org/init.el` in your `~/.emacs.d/` directory.

Alternatively, if you do not want to mess with your already existing emacs configuration, you may launch emacs with this specific configuration with the following command: `emacs -q -l rr_org/init.el`.

Step 3: Adapt the configuration to your specific needs if required
------------------------------------------------------------------

There are two situations in which it might be necessary to modify `init.el`:

1.  Your network environment forces you to use a proxy for access to Web sites (HTTP(S) protocol).
2.  You have multiple installations of Python or R on your computer, or they are in unusual places and not fully configured. If you can run
    -   "python3" and "R" under Linux and macOS
    -   "Python" and "R" under Windows

    in a terminal without getting an error message, then you should not have to do anything.

If you do have to modify `init.el`, check the comments at the beginning of the file for instructions.

Step 4: Check whether the installation is working or not
--------------------------------------------------------

Open a new instance of Emacs and open a `foo.org` file. Copy the following lines in this file:

``` example
#+begin_src shell :session foo :results output :exports both
ls -la # or dir under windows
#+end_src
```

Put your cursor inside this code block and execute it with the following command: `C-c C-c` (If you are not familiar with Emacs commands, this one means '`Ctrl + C`' twice)

A `#+RESULTS:` block with the result of the command should appear if it worked.

In the video, we already have demonstrated the main features and shortcuts of emacs/org-mode that will help you maintain a document and benefit from literate programming. The list of features and shortcuts is demonstrated in the [first entry of your labbook](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/ressources/rr_org/journal.org).

Step 5: Open and play with your journal:
----------------------------------------

In step 1, you were told to create an journal in `~org/journal.org`. First you probably want to make sure this file is stored in a version control system like git. We leave it up to you to set this up but if you have any trouble, feel free to ask on the FUN forums.

A stub of a replicable article
==============================

This section is illustrated in a [video tutorial](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/9cfc7500f0ef46d288d2317ec7b037b4) (/"Écrire un article réplicable avec Emacs/Orgmode"/ in French). Watching it before following the instructions given in this section may help.

Remember, you need a working LaTeX and R environment. If you can't open a terminal and run the commands `R`, `pdflatex`, and `python`, you will not be able to generate this document. When being compiled, the article downloads the corresponding LaTeX packages so you also need to have a working `wget` command (alternatively, it uses `curl`). Once downloaded, you may still read the source (<https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/ressources/replicable_article/article.org>) and understand how it works though.

Download the following [archive](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/replicable_article.tgz), uncompress it and simply `make` to generate the article. You should then be able to open the [resulting article](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/ressources/replicable_article/article.pdf). This is summarized in the following command:

``` bash
wget --no-check-certificate -O replicable_article.tgz https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/replicable_article.tgz
tar zxf replicable_article.tgz; cd replicable_article; make ; evince article.pdf
```

**Possible issues**:

-   If the `make` command fails (especially on Mac), it may be because Emacs or something else is not correctly installed. In that case, open the article directly with the following command:

    ``` bash
    emacs -q --eval "(setq enable-local-eval t)" --eval "(setq enable-local-variables t)"  article.org
    ```

    and export it to pdf with the following shortcut: `C-c C-e l o`
-   If it still doesn't work and emacs complains about not finding ESS, it may be because you installed ESS in your home instead of system-wide. In that case, try to remove the `-q` in the previous command line to load your personal emacs configuration.

Finally, when you'll be tired of always re-executing all the source code when exporting, just look for the following line in [article.org](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/ressources/replicable_article/article.org):

``` example
# #+PROPERTY: header-args :eval never-export
```

If you remove the `# ` in the beginning of the line, it will not be a comment anymore and will indicate org-mode to stop evaluating every chunk of code when exporting.

Emacs tips and tricks
=====================

Cheat-sheets
------------

Learning Emacs and Org-Mode can be difficult as there is an inordinate amount of shortcuts. Many people have thus come up with cheat-sheats. Here is a selection in case it helps:

### Emacs

-   [Common and step-by-step Emacs shortcuts for our *reproducible research* configuration](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/ressources/rr_org/journal.org)
-   [The official GNU emacs refcard](https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf)
-   Two graphical cheat-sheats by Sacha Chua on ![](http://sachachua.com/blog/wp-content/uploads/2013/05/How-to-Learn-Emacs-v2-Large.png) and on ![](http://sachachua.com/blog/wp-content/uploads/2013/08/20130830-Emacs-Newbie-How-to-Learn-Emacs-Keyboard-Shortcuts.png).

### Org-mode

-   [Common and step-by-step org-mode shortcuts for our *reproducible research* configuration](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/ressources/rr_org/journal.org)
-   [The official org-mode refcard](https://orgmode.org/worg/orgcard.html)
-   [The official description of the org-mode syntax](https://orgmode.org/worg/dev/org-syntax.html) and a [relatively concise description of the org-mode syntax](https://gist.github.com/hoeltgman/3825415).

Video tutorials
---------------

For those of you who prefer video explanations, here is a [Youtube channel with many step by step emacs tutorials](https://www.youtube.com/playlist?list=PL9KxKa8NpFxIcNQa9js7dQQIHc81b0-Xg).

Additional useful emacs packages
--------------------------------

### Company-mode

[Company-mode](http://company-mode.github.io/) is a text completion framework for Emacs. It allows to have smart completion in emacs for the most common languages. If you feel this is needed, you should follow the instructions from the official Web page: [<http://company-mode.github.io/>](http://company-mode.github.io/)

### Magit

[Magit](https://magit.vc/) is an Emacs interface for Git. Its usage is briefly illustrated in the context of this MOOC in a [video tutorial](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/jump_to_id/9cfc7500f0ef46d288d2317ec7b037b4) ("*Utilisation Emacs/git*" in French).

It is very powerful and we use it on a daily basis but you should definitely understand what git does behind the scenes beforehand. If you feel this would be useful for you, you should follow [this visual walk-through](https://magit.vc/screenshots/) or [this really short "crash course"](https://www.emacswiki.org/emacs/Magit). If you installed the previous "*reproducible research*" emacs configuration, you can easily invoke magit by using `C-x g`.

Other resources
---------------

-   [The compact Org-mode Guide](https://orgmode.org/orgguide.pdf)
-   [Many examples illustrating the use of different languages in org-mode](https://github.com/dfeich/org-babel-examples)
