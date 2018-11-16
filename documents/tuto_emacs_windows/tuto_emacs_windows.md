1. [Installation et configuration des différents outils](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#1-installation-et-configuration-des-diff%C3%A9rents-outils)
  1. [Installer et configurer Emacs](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#11-installer-et-configurer-emacs)
  2. [Ajouter les chemins de R et Python dans dans la variable PATH de Windows](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#12-ajouter-les-chemins-de-r-et-python-dans-dans-la-variable-path-de-windows)
  3. [Installer et configurer matplotlib (librairie graphique Python)](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#13-installer-et-configurer-matplotlib-librairie-graphique-python)
2. [Utilisation d'Emacs](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#2-utilisation-demacs)
  1. [Exécuter des commandes dos](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#21-ex%C3%A9cuter-des-commandes-dos)
  2. [Exécuter du code R](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#22-ex%C3%A9cuter-du-code-r)
  3. [Exécuter du code Python](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#23-ex%C3%A9cuter-du-code-python)
  4. [Écrire dans le journal](https://app-learninglab.inria.fr/gitlab/85bc36e0a8096c618fbd5993d1cca191/mooc-rr/blob/master/documents/tuto_emacs_windows/tuto_emacs_windows.md#24-%C3%89crire-dans-le-journal)

# **1 Installation et configuration des différents outils**

## 1.1 Installer et configurer Emacs

- Installer [Emacs modifié pour Windows](https://vigou3.github.io/emacs-modified-windows/)
  - version 26.1 pour Windows 64 bits
  - version 25.2 pour Windows 32 bits
  
- Télécharger le fichier [rr_org_archive.tgz](https://app-learninglab.inria.fr/gitlab/learning-lab/mooc-rr-ressources/raw/master/module2/ressources/rr_org_archive.tgz)

*NB : Avec 7z il faut décompresser l'archive deux fois : une première fois crée une archive `rr_org_archive.tar` et une deuxième fois crée un dossier `rr_org` contenant les fichiers `init.el` et `journal.org`.*

- Lancer Emacs

![emacs](documents/tuto_emacs_windows/images/emacs.png)

- Emacs crée le répertoire `C:\Users\***\.emacs.d`

*NB : Le répertoire est créé au premier lancement d'Emacs.*

- Placer le fichier `init.el` dedans

- Lancer Emacs

![scratch](documents/tuto_emacs_windows/images/scratch.png)

- Exécuter la commande suivante pour installer `htmlize`

```
M-x package-install RET htmlize RET
```

- Créer un dossier `C:\Users\***\org` dans l'explorateur Windows

- Placer le fichier `journal.org` dedans

---

## 1.2 Ajouter les chemins de R et Python dans dans la variable PATH de Windows

La façon de procéder est très bien expliquée [ici](http://sametmax.com/ajouter-un-chemin-a-la-variable-denvironnement-path-sous-windows/).

---

## 1.3 Installer et configurer matplotlib (librairie graphique Python)

- Installer la librairie `matplotlib`

 - Ouvrir une invite de commande dos
 - Exécuter la commande suivante

```
python -m pip install -U matplotlib
```

![install_matplotlib](documents/tuto_emacs_windows/images/install_matplotlib.png)

- Désactiver les plots interactifs dans matplotlib

Pour ce faire, il faut d'abord savoir où se trouve le fichier de configuration de matplotlib sous Windows.

Exécuter le code suivant sous Python

```
import matplotlib
matplotlib.matplotlib_fname()
```

![matplotlib](documents/tuto_emacs_windows/images/matplotlib.png)

Ouvrir le fichier `matplotlibrc` et ajouter un `#` devant la ligne qui commence par `backend`, ce qui correspond à utiliser la valeur par défaut `Agg`

---

## 1.4 Installer MiKTeX

Télécharger et installer [MiKTeX](https://miktex.org/download) en choisissant le bon système d'exploitation. 
Vous serez amené à installer différents packages lors du premier export pdf.

---
---

# **2 Utilisation d'Emacs**

## 2.1 Exécuter des commandes dos

- Lancer Emacs

- Créer un fichier toto.org dans l'explorateur Windows

- Ouvrir le fichier toto.org dans Emacs et saisir `<b` + `tab`.

![shell](documents/tuto_emacs_windows/images/shell.png)

- Le raccourci `C-g` permet de sortir d'une commande

---

## 2.2 Exécuter du code R

- Le raccourci `<r` + `tab` permet d'exécuter une commande R

![commandeR1](documents/tuto_emacs_windows/images/commandeR1.png)

Emacs demande le dossier de démarrage. Garder le dossier par défaut (`Entrée`)

![commandeR2](documents/tuto_emacs_windows/images/commandeR2.png)

- Le raccourci `<R` + `tab` permet d'exécuter une commande graphique R

(org-babel-temp-file \"figure\" \".png\") génère un nom de fichier temporaire.

Il faut indiquer un nom de fichier pour que l'image soit chargée lors de la réouverture du fichier Emacs.

![graphiqueR](documents/tuto_emacs_windows/images/graphiqueR.png)

Remarque : Il peut être pratique de remplacer `(org-babel-temp-file \"figure\" \".png\")` par `"D:/temp/figure.png\"` dans dans le fichier `init.el` (raccourci `<R` et `<PP`).

---

## 2.3 Exécuter du code Python

- Voir la page [Python Source Code Blocks in Org Mode](https://orgmode.org/worg/org-contrib/babel/languages/ob-doc-python.html)

- Le raccourci `<p` + `tab` permet d'exécuter du code Python en mode "non-session"

![python1](documents/tuto_emacs_windows/images/python1.png)

- Le raccourci `<P` + `tab` permet d'exécuter du code Python en mode "session" pour conserver les valeurs d'un bloc de code à l'autre.

![python2](documents/tuto_emacs_windows/images/python2.png)

- Le raccourci `<PP` + `tab` permet d'exécuter un graphique Python

![python4](documents/tuto_emacs_windows/images/python4.png)

---

## 2.4 Écrire dans le journal

- Ouvrir le fichier `journal.org`

- Le raccourci `C-c c` ouvre un menu demandant si on veut écrire dans la todo list ou dans le journal

![ctrl_c_c](documents/tuto_emacs_windows/images/ctrl_c_c.png)

- On appuie sur `j` pour écrire dans le journal. Un mini buffer est ouvert et Emacs modifie le fichier `journal.org` pour créer une entrée à la bonne date. On peut commencer à écrire dans le journal.

![org_mode](documents/tuto_emacs_windows/images/org_mode.png)

`C-c C-c` pour enregistrer les modifications.

- La combinaison `Alt`+ `flèche gauche` ou `flèche droite` permet de décaler les puces à gauche ou à droite.

- Penser à enregistrer avant de quitter !
