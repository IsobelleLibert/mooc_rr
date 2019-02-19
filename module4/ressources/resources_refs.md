---
TITLE:     Additional references
Date:   Tue Feb 19 19:19:03 2019 
---

Table of Contents<span class="tag" data-tag-name="TOC"></span>
==============================================================

-   ["Thoughts" on language/software stability](#thoughts-on-languagesoftware-stability)
-   [Controlling your software environment](#controlling-your-software-environment)
-   [Preservation/Archiving](#preservationarchiving)
-   [Workflows](#workflows)
-   [Numerical and statistical issues](#numerical-and-statistical-issues)
-   [Publication practices](#publication-practices)
-   [Experimentation](#experimentation)

"Thoughts" on language/software stability
=========================================

As we explained, the programming language used in an analysis has a clear influence on the reproducibility of your analysis. It is not a characteristic of the language itself but rather a consequence of the development philosophy of the underlying community. For example C is a very stable language with a [very clear specification designed by a committee](https://en.wikipedia.org/wiki/C_(programming_language)#ANSI_C_and_ISO_C) (even though some compilers may not respect this norm).

On the other end of the spectrum, [Python](https://en.wikipedia.org/wiki/Python_(programming_language)) had a much more organic development based on a readability philosophy and valuing continuous improvement over backwards-compatibility. Furthermore, Python is commonly used as a wrapping language (e.g., to easily use C or FORTRAN libraries) and has its own packaging system. All these design choices tend to make reproducibility often a bit painful with Python, even though the community is slowly taking this into account. The transition from Python 2 to the not fully backwards compatible Python 3 has been a particularly painful process, not least because the two languages are so similar that is it not always easy to figure out if a given script or module is written in Python 2 or Python 3. It isn't even rare to see Python scripts that work under both Python 2 and Python 3, but produce different results due to the change in the behavior of integer division.

[R](https://en.wikipedia.org/wiki/R_(programming_language)), in comparison is much closer (in terms of developer community) to languages like [SAS](https://en.wikipedia.org/wiki/SAS_(software)), which is heavily used in the pharmaceutical industry where statistical procedures need to be standardized and rock solid/stable. R is obviously not immune to evolutions that break old versions and hinder reproducibility/backward compatibility. Here is a relatively recent [true story about this](http://members.cbio.mines-paristech.fr/~thocking/HOCKING-reproducible-research-with-R.html) and some colleagues who worked on the [statistics introductory course with R on FUN](https://www.fun-mooc.fr/courses/UPSUD/42001S06/session06/about) reported us several issues with a few functions (`plotmeans` from `gplots`, `survfit` from `survival`, or `hclust`) whose default parameters had changed over the years. It is thus probably good practice to give explicit values for all parameters (which can be cumbersome) instead of relying on default values, and to restrict your dependencies as much as possible.

This being said, the R development community is generally quite careful about stability. We (the authors of this MOOC) believe that open source (which allows to inspect how computation is done and to identify both mistakes and sources of non-reproducibility) is more important than the rock solid stability of SAS, which is proprietary software.

Yet, if you really need to stay with SAS, you should know that SAS can be used within Jupyter using the [Python SASPy](https://sassoftware.github.io/saspy/) and the [Python SASKernel](https://sassoftware.github.io/sas_kernel/) packages (step by step explanations about this are given [here](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#53-le-package-python-saspy-permet-dex%C3%A9cuter-du-code-sas-dans-un-notebook-python)). Using such literate programming approach allied with systematic version and environment control will always help. Similar solutions exist for many languages ([list of Jupyter kernels](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels)).

Controlling your software environment
=====================================

As we mentioned in the video sequences, there are several solutions to control your environment:

-   The easy (preserve the mess) ones: [CDE](http://www.pgbovine.net/cde.html) or [ReproZip](https://vida-nyu.github.io/reprozip/)
-   The more demanding (encourage cleanliness) where you start with a clean environment and install only what's strictly necessary (and document it):
    -   The very well known [Docker](https://www.docker.io/)
    -   [Singularity](https://singularity.lbl.gov/) or [Spack](https://spack.io/), which are more targeted toward the specific needs of high performance computing users
    -   [Guix](https://www.gnu.org/software/guix/), [Nix](https://nixos.org/) that are very clean (perfect?) solutions to this dependency hell and which we recommend

It may be hard to understand the difference between these different approaches and decide which one is better in your context.

Here is a webinar where some of these tools are demoed in a reproducible research context: [Controling your environment (by Michael Mercier and Cristian Ruiz)](https://github.com/alegrand/RR_webinars/blob/master/2_controling_your_environment/index.org)

You may also want to have a look at [the Popper conventions](http://falsifiable.us/) ([webinar by Ivo Gimenez through google hangout](https://github.com/alegrand/RR_webinars/blob/master/11_popper/index.org)) or at the [presentation of Konrad Hinsen on Active Papers](https://github.com/alegrand/RR_webinars/blob/master/7_publications/index.org) (<http://www.activepapers.org/>).

Preservation/Archiving
======================

Ensuring software is properly archived, i.e, is safely stored so that it can be accessed in a perennial way, can be quite tricky. If you have never seen [Roberto Di Cosmo presenting the Software Heritage project](https://github.com/alegrand/RR_webinars/blob/master/5_archiving_software_and_data/index.org), this is a must see. [<https://www.softwareheritage.org/>](https://www.softwareheritage.org/)

For regular data, we highly recommend using [<https://www.zenodo.org/>](https://www.zenodo.org/) whenever the data is not sensitive.

Workflows
=========

In the video sequences, we mentioned workflow managers (original application domain in parenthesis):

-   [Galaxy](https://galaxyproject.org/) (genomics), [Kepler](https://kepler-project.org/) (ecology), [Taverna](https://taverna.apache.org/) (bio-informatics), [Pegasus](https://pegasus.isi.edu/) (astronomy), [Collective Knowledge](http://cknowledge.org/) (compiling optimization), [VisTrails](https://www.vistrails.org) (image processing)
-   Light-weight: [dask](http://dask.pydata.org/) (python), [drake](https://ropensci.github.io/drake/) (R), [swift](http://swift-lang.org/) (molecular biology), [snakemake](https://snakemake.readthedocs.io/) (like `make` but more expressive and in `python`)...
-   Hybrids: [SOS-notebook](https://vatlab.github.io/sos-docs/)...

You may want to have a look at this webinar: \[\[<https://github.com/alegrand/RR_webinars/blob/master/6_reproducibility_bioinformatics/index.org>\]\[Reproducible Science in Bio-informatics: Current Status, Solutions and Research Opportunities (by Sarah Cohen Boulakia, Yvan Le Bras and Jérôme Chopard).\]\]

Numerical and statistical issues
================================

We have mentioned these topics in our MOOC but we could by no way cover them properly. We only suggest here a few interesting talks about this.

-   \[\[<https://github.com/alegrand/RR_webinars/blob/master/10_statistics_and_replication_in_HCI/index.org>\]\[In this talk, Pierre Dragicevic provides a nice illustration of the consequences of statistical uncertainty and of how some concepts (e.G. p-values) are commonly badly understood.\]\]
-   \[\[<https://github.com/alegrand/RR_webinars/blob/master/3_numerical_reproducibility/index.org>\]\[Nathalie Revol, Philippe Langlois and Stef Graillat present the main challenges encountered when trying to achieve numerical reproducibility and present recent research work on this topic.\]\]

Publication practices
=====================

You may want to have a look at the following two webinars:

-   [Enabling open and reproducible research at computer systems’ conferences (by Grigori Fursin)](https://github.com/alegrand/RR_webinars/blob/master/8_artifact_evaluation/index.org). In particular, this talk discusses *artifact evaluation* that is becoming more and more popular.
-   [Publication Modes Favoring Reproducible Research (by Konrad Hinsen and Nicolas Rougier)](https://github.com/alegrand/RR_webinars/blob/master/7_publications/index.org). In this talk, the motivation for the [ReScience journal](http://rescience.github.io/) initiative are presented.
-   [Simine Vazire - When Should We be Skeptical of Scientific Claims?](https://www.youtube.com/watch?v=HuJ2G8rXHMs), which is discussing publication practices in social sciences and in particular HARKing (Hypothesizing After the Results are Known), p-hacking, etc.

Experimentation
===============

Experimentation was not covered in this MOOC, although it is an essential part of science. The main reason is that practices and constraints can vary so wildly from one domain to another that it could not be properly covered in a first edition. We would be happy to gather references you consider as interesting in your domain so do not hesitate to provide us with such references by using the forum and we will update this page.

-   [A recent talk by Lucas Nussbaum on Experimental Testbeds in Computer Science](https://github.com/alegrand/RR_webinars/blob/master/9_experimental_testbeds/index.org).
