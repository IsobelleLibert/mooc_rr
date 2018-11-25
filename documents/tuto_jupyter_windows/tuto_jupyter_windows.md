1. [Installer Python](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#1-installer-python)
2. [Installer le package Jupyter](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#2-installer-le-package-jupyter)
3. [Installer les modules complémentaires](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#3-installer-les-modules-compl%C3%A9mentaires)
4. [Lancer Jupyper](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#4-lancer-jupyper)
5. [Autres langages](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#5-autres-langages)
  1. [Le package R IRKernel](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#51-le-package-r-irkernel-permet-dex%C3%A9cuter-du-code-r-dans-un-notebook-r)
  2. [Le package Python rpy2](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#52-le-package-python-rpy2-permet-dex%C3%A9cuter-du-code-r-dans-un-notebook-python)
  3. [Le package Python SASPy](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#53-le-package-python-saspy-permet-dex%C3%A9cuter-du-code-sas-dans-un-notebook-python)
  4. [Le package Python SASKernel](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_jupyter_windows/tuto_jupyter_windows.md#54-le-package-python-saskernel-permet-dex%C3%A9cuter-du-code-sas-dans-un-notebook-sas)

# 1 Installer Python

- Installer Python
- Ajouter les chemins de Python et Python\Scripts dans dans la variable PATH de Windows

La façon de procéder est très bien expliquée [ici](http://sametmax.com/ajouter-un-chemin-a-la-variable-denvironnement-path-sous-windows/).

---

# 2 Installer le package Jupyter

- Méthode pour installer un package
 - Ouvrir une invite de commande dos
 - Exécuter la commande suivante

```
pip install jupyter
```

NB : Le raccourci `^v` ne fonctionne pas dans l'invite de commande dos. La fonction "coller" est disponible avec le bouton droit de la souris.

---

# 3 Installer les modules complémentaires

- Ouvrir une invite de commande dos
- Exécuter les commandes suivantes

## **jupyter_contrib_nbextensions** pour replier le code à l'affichage

```
pip install jupyter_contrib_nbextensions
```

## **hide_code** pour choisir ce qui est exporté

```
pip install hide_code
jupyter-nbextension install --py hide_code
jupyter-nbextension  enable --py hide_code
jupyter-serverextension enable --py hide_code
```

Choisir `Hide_code` dans le menu

![menu_hide_code](documents/tuto_jupyter_windows/images/menu_hide_code.png)

On obtient ceci

![hide_code](documents/tuto_jupyter_windows/images/hide_code.png)

Utiliser les icônes ci-dessous pour l'export

![export_hide_code](documents/tuto_jupyter_windows/images/export_hide_code.png)

NB : L'export semble mal fonctionner sous Windows (cf. [discussion](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session01bis/discussion/forum/0c40378f778710ac14c97e2f0d8e7bb6c9d8d0c2/threads/5bd1685da0241eb2d5005bc7)).

# 4 Lancer Jupyper

- Ouvrir une invite de commande dos
- Exécuter la commande suivante

```
jupyter notebook
```

---

# 5 Autres langages

Jupyper permet par défaut d'exécuter du code Python. Des packages permettent d'exécuter d'autres langages.

## 5.1 Le package R [IRKernel](https://cran.r-project.org/web/packages/IRkernel/IRkernel.pdf) permet d'exécuter du code R dans un notebook R

- Lancer R ou RStudio

- Installer le package `IRkernel`

```
install.packages('IRkernel',dep=TRUE)
IRkernel::installspec()  # to register the kernel in the current R installation
```

- On peut alors créer un notebook R

![new_notebook](documents/tuto_jupyter_windows/images/new_notebook.png)

![notebook_R](documents/tuto_jupyter_windows/images/notebook_R.png)

On remarque l'icône du logiciel R en haut à droite.

- [Exemple de notebook R](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/notebooks_jupyter/notebook_R/notebook_R.ipynb)

- Lien utile : https://irkernel.github.io/installation/

---

## 5.2 Le package Python **rpy2** permet d'exécuter du code R dans un notebook Python

- Le package `rpy2` s'installe difficilement par méthode standard.

- Télécharger le fichier binaire qui correspond au système d'exploitation [ici](https://www.lfd.uci.edu/~gohlke/pythonlibs/#rpy2)

- Ouvrir une invite de commande dos

- Se placer dans le dossier de téléchargement

- Exécuter la commande suivante

```
python -m pip install rpy2‑2.9.4‑cp37‑cp37m‑win_amd64.whl # adapter le nom du fichier
```

- Lancer Jupiter et créer un notebook Python

- Exécuter la commande suivante

```
%load_ext rpy2.ipython
```

- Installer le package `tzlocal` à l'aide de la commande `pip`

- [Exemple de notebook Python/R](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/notebooks_jupyter/notebook_Python_R/notebook_Python_R.ipynb)

- Lien utile : https://stackoverflow.com/questions/14882477/rpy2-install-on-windows-7

NB : Je n'ai pas eu besoin de définir les variables d'environnement R_HOME et R_USER.

---

## 5.3 Le package Python [SASPy](https://sassoftware.github.io/saspy/) permet d'exécuter du code SAS dans un notebook Python

- Installer le package `saspy` à l'aide de la commande `pip`

- Modifier le fichier C:\Program Files\Python\Python37\Lib\site-packages\saspy\sascfg_sav.py pour l'adapter à votre système

Dans les deux images ci-dessous, la fenêtre de gauche correspond au fichier initial et celle de droite au fichier modifié.

![sascfg1](documents/tuto_jupyter_windows/images/sascfg1.png)

![sascfg2](documents/tuto_jupyter_windows/images/sascfg2.png)

- [Exemple de notebook Python/SAS] (https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/notebooks_jupyter/notebook_Python_SAS/notebook_Python_SAS.ipynb)

- NB : L'export Jupyter vers pdf ne fonctionne pas pour les sorties HTML et donc SAS. Il est possible de faire l'export depuis pandoc.

 - Exporter le document au format HTML
 - Exécuter la commande suivante

```
pandoc --variable=geometry:a4paper --variable=geometry:margin=1in notebook_sas.html -o  notebook_sas.pdf
```

mais ça ne marche pas pour tous les tableaux et on perd la coloration syntaxique.

---

## 5.4 Le package Python [SASKernel](https://sassoftware.github.io/sas_kernel/) permet d'exécuter du code SAS dans un notebook SAS

- Le package `sas_kernel` est basé sur le package `saspy`. Installer `saspy` en suivant les instructions de la section 4.3 si ce n'est déjà fait.

- Installer le package `sas_kernel` à l'aide de la commande `pip`

- On peut alors créer un notebook SAS

![new_notebook](documents/tuto_jupyter_windows/images/new_notebook.png)

![notebook_SAS](documents/tuto_jupyter_windows/images/notebook_SAS.png)

On remarque l'icône du logiciel SAS en haut à droite.

- [Exemple de notebook SAS](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/notebooks_jupyter/notebook_SAS/notebook_SAS.ipynb)

- NB : L'export Jupyter vers pdf ne fonctionne pas pour les sorties HTML et donc SAS. Il est possible de faire l'export depuis pandoc.

 - Exporter le document au format HTML
 - Exécuter la commande suivante

```
pandoc --variable=geometry:a4paper --variable=geometry:margin=1in notebook_sas.html -o  notebook_sas.pdf
```

mais ça ne marche pas pour tous les tableaux et on perd la coloration syntaxique.

- Lien utile : https://sassoftware.github.io/sas_kernel/install.html
