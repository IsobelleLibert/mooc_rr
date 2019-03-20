---
TITLE:     Introduction to Markdown
Date:   Wed Mar 20 13:57:10 2019 
---

This document presents a brief overview of the Markdown syntax and builds on a [presentation from the Github team](https://guides.github.com/features/mastering-markdown/) and [blog post from Archer Reilly](http://csrgxtu.github.io/2015/03/20/Writing-Mathematic-Fomulars-in-Markdown/).

Table of Contents<span class="tag" data-tag-name="TOC"></span>
==============================================================

-   [Syntax](#syntax)
    -   [Headers](#headers)
    -   [Emphasis](#emphasis)
    -   [Lists](#lists)
    -   [Images](#images)
    -   [Links](#links)
    -   [Blockquotes](#blockquotes)
    -   [Inline code](#inline-code)
-   [Writing Math](#writing-math)
    -   [Greek Letters](#greek-letters)
    -   [Usual functions and operators](#usual-functions-and-operators)
    -   [Exponents and indices](#exponents-and-indices)
    -   [Fractions, binomial coefficients, square roots, ...](#fractions-binomial-coefficients-square-roots-)
    -   [Summations and integrals](#summations-and-integrals)
    -   [Outfits ☺](#outfits-smiley)
-   [About `markdown`](#about-markdown)

Syntax
======

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

Writing Math
============

Math formulas are easy to write using Markdown, either using the **inline** mode or the **displayed formulas** mode. With the inline mode, formulas are inlined in the current paragraph whereas with the displayed mode, they appear as centered and emphasized.

The formatting generally slightly differs in both cases since, to display nicely on a single line, it is generally required to pack them a bit more than when they are emphasized.

To write formulas using the **inline** mode, they should be surrounded by a single `$` (as a consequence, whenever you need to use the original dollar symbol, you should prefix it with a backslash: `\$`). To write formulas using the **displayed** mode, they should be surrounded by a `$$`. Here are a few examples:

``` example
This expression $\sum_{i=1}^n X_i$ is inlined.
```

This expression $\\sum\_{i=1}^n X\_i$ is inlined.

``` example
This expression is emphasized:

$$\sum_{i=1}^n X_i$$
```

This expression is emphasized:

$$\\sum\_{i=1}^n X\_i$$

In the rest of this section we present a brief selection of common symbols and commands. Actually, almost any classical LaTeX command can used as such in Markdown, provided it is surrounded by a `$`. For more complete examples, please have a look at these ces [examples by James H. Steiger](http://www.statpower.net/Content/310/R%2520Stuff/SampleMarkdown.html).

Greek Letters
-------------

| Symbol | Command    |
|--------|------------|
| *α*    | `$\alpha$` |
| *β*    | `$\beta$`  |
| *γ*    | `$\gamma$` |
| *Γ*    | `$\Gamma$` |
| *π*    | `$\pi$`    |

Usual functions and operators
-----------------------------

| Symbol | Command     |
|--------|-------------|
| cos    | `$\cos$`    |
| sin    | `$\sin$`    |
| lim    | `$\lim$`    |
| exp    | `$\exp$`    |
| →      | `$\to$`     |
| ∈      | `$\in$`     |
| ∀      | `$\forall$` |
| ∃      | `$\exists$` |
| ≡      | `$\equiv$`  |
| ∼      | `$\sim$`    |
| ≈      | `$\approx$` |
| ×      | `$\times$`  |
| ≤      | `$\le$`     |
| ≥      | `$\ge$`     |

Exponents and indices
---------------------

| Symbol                        | Command     |
|-------------------------------|-------------|
| *k*<sub>*n* + 1</sub>         | `$k_{n+1}$` |
| *n*<sup>2</sup>               | `$n^2$`     |
| *k*<sub>*n*</sub><sup>2</sup> | `$k_n^2$`   |

Fractions, binomial coefficients, square roots, ...
---------------------------------------------------

| Symbol                        | Command                       |
|-------------------------------|-------------------------------|
| $\\frac{4z^3}{16}$            | `$\frac{4z^3}{16}$`           |
| $\\frac{n!}{k!(n-k)!}$        | `$\frac{n!}{k!(n-k)!}$`       |
| $\\binom{n}{k}$               | `$\binom{n}{k}$`              |
| $\\frac{\\frac{x}{1}}{x - y}$ | `$\frac{\frac{x}{1}}{x - y}$` |
| **<sup>3</sup>/<sub>7</sub>   | `$^3/_7$`                     |
| $\\sqrt{k}$                   | `$\sqrt{k}$`                  |
| $\\sqrt\[n\]{k}$              | `$\sqrt[n]{k}$`               |

Summations and integrals
------------------------

| Symbol                                             | Command                                        |
|----------------------------------------------------|------------------------------------------------|
| $\\sum\_{i=1}^{10} t\_i$                           | `$\sum_{i=1}^{10} t_i$`                        |
| ∫<sub>0</sub><sup>∞</sup>*e*<sup>−*x*</sup> *d**x* | `$\int_0^\infty \mathrm{e}^{-x}\,\mathrm{d}x$` |

Outfits ☺
---------

| Symbol                 | Command                 |
|------------------------|-------------------------|
| *â*                    | `$\hat{a}$`             |
| *ā*                    | `$\bar{a}$`             |
| *ȧ*                    | `$\dot{a}$`             |
| $\\ddot{a}$            | `$\ddot{a}$`            |
| $\\overrightarrow{AB}$ | `$\overrightarrow{AB}$` |

About `markdown`
================

First of all, to know more about `markdown` and its extensions, you may want to read:

-   The « [Élaboration et conversion de documents avec Markdown et Pandoc](https://enacit1.epfl.ch/markdown-pandoc/) » tutorial by Jean-Daniel Bonjour (EPFL). A must-read in French...
-   The wikipedia article on [Markdown](https://en.wikipedia.org/wiki/Markdown#Example) provides a good overview of the `markdown` syntax.
-   Github proposes a short and efficient introduction: [Mastering Markdown](https://guides.github.com/features/mastering-markdown/).

As we explain in the video, `github` and `gitlab` allow you to easily edit `mardown` documents and to render them in `html`. This is quite convenient but may be a bit cumbersome for a daily use. You may prefer to edit these documents with a real editor and later to export them in whichever format you may like (`html`, `pdf`, `docx`, `epub`, etc). There are a few editors specifically designed for `markdown` (see for example the [Editors](https://github.com/jgm/pandoc/wiki/Pandoc-Extras#editors) page of the `pandoc` website) but we rather advise you to use a general-purpose editor that is capable of handling the `markdown` syntax. A few ones were mentioned in the beginning of the video and additional information are available in the ["Quelques éditeurs adaptés à l'édition Markdown"](https://enacit1.epfl.ch/markdown-pandoc/#editeurs_markdown) section of Jean-Daniel Bonjour's tutorial.

To convert `markdown` in an "arbitrary" other format, the best solution today is [Pandoc](http://pandoc.org/), a software developed by John MacFarlane, a philosopher from de Berkeley, and whose [main page is on github](https://github.com/jgm/pandoc). J.-D. Bonjour's tutorial provides many explanations on how to install and use `pandoc` in the [Utilisation du convertisseur Pandoc](https://enacit1.epfl.ch/markdown-pandoc/#commande_pandoc) section. `pandoc` is written in Haskell and may be a bit cumbersome to install. Therefore, we provide here a few alternative solutions:

-   Some websites like <http://www.markdowntopdf.com/> or <http://markdown2pdf.com/> allow you to convert online `markdown` files into `pdf` files without having to install anything on your computer.
-   The [CommonMark](http://commonmark.org/) project proposes a rigorous specification of the `markdown` syntax and converters `markdown` → `html` / `LaTeX` written in `C` and `JavaScript` (<https://github.com/CommonMark/CommonMark>).
-   You will find on the website of [John Gruber](https://daringfireball.net/projects/markdown/), the creator of `markdown`, a `markdown` → `html` converter written in `perl`.
-   [MultiMarkdown](http://fletcherpenney.net/multimarkdown/) is another `markdown` extension that provides its own `markdown` → `html` converter written in `C`.
-   [grip](https://github.com/joeyespo/grip) is a `python`-based server that allows you to convert on the fly `markdown` documents and to preview them with your favorite browser (this is quite useful to avoid useless commits just for the sake of previewing when using `github` ou `gitlab`).

The `pdf` conversion always relies on [LaTeX](https://fr.wikipedia.org/wiki/LaTeX), which requires a full-fledged and running LaTeX installation on your computer.

In the demo, we show how to generate a `docx` from a `markdown` document with `Pandoc` and we explain that it is then possible to use a word processor like `LibreOffice` to edit the resulting file. Obviously the modifications will not be back-propagated to the original `markdown` document. You may however want to use `Pandoc` again to convert your new `docx` document to a new `markdown` document.

Another common strategy consists in doing most of the editing of an article/report in `Markdown` and to export it into a `docx` (or `LaTeX`) only in the end so as to prepare it for a camera-ready version with a standard word processing environment (or a `LaTeX` editor).
