# 1 Installer Magit

Plusieurs méthodes sont proposées [ici] (https://magit.vc/manual/magit/Installing-from-an-Elpa-Archive.html).

Celle-ci a été testée sur Windows :

- Ajouter le code suivant dans le fichier `.emacs.d/init.el`

```
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
```

- Lancer Emacs et exécuter les commandes suivantes

```
M-x package-refresh-contents RET
M-x package-install RET magit RET
```

NB :  `M-` correspond à la touche `<Alt>`, `RET` à la touche `<Entrée>`

# 2 Lancer Magit

- Ouvrir un fichier et exécuter le racourci `C-x g`

- Magit demande le chemin du répertoire Git

- Indiquer le chemin du répertoire mooc-rr

![git1](documents/tuto_magit/images/git1.png)