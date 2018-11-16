# Configurer Gitlab

- Accéder à [Gitlab](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session01bis/xblock/block-v1:inria+41016+session01bis+type@lti+block@05a0ce425f1741e5bee5049040f70529/handler/preview_handler)

![sign_in](documents/tuto_git_gtlab/images/sign_in.png)

- NB : Il faut accéder à Gitlab depuis la plateforme FUN. On obtient une erreur 405 en accédant directement à la page https://app-learninglab.inria.fr/gitlab/users/sign_in.
 
![erreur 405](documents/tuto_git_gtlab/images/erreur405.png)

- Cliquer sur le premier **Sign in**. L'authentification est automatique à cette étape.

![projects](documents/tuto_git_gtlab/images/projects.png)

La grande chaîne de caractères remplacée ici par xxx est le login qu'il faudra utiliser dans Git pour accéder à Gitlab.

- Pour récupérer le mot de passe prédéfini, il faut utiliser le [Gitlab credentials retrieval
   tool](https://app-learninglab.inria.fr/jupyterhub/services/password). On retrouve alors le login et le mot de passe.

![settings](documents/tuto_git_gtlab/images/password_retrieval.png)

- Il est possible de modifier le mot de passe dans `Account / Paramètres / Mot de passe`. NB : Cela empêchera d'utiliser les notebook Jupyter du MOOC.

![settings](documents/tuto_git_gtlab/images/password.png)

---

# Configurer Git

## Opérations de configuration à faire sur Git (parcours RStudio et OrgMode)

- Enregistrer l'email et le nom de l'utilisateur

```
git config --global --user.email you@example.com
git config --global --user.name Your Name
```

NB : Ne pas mettre de guillemets.

Ces deux paramètres sont obligatoire pour pouvoir commiter sinon on obtient le message suivant

![commit3](documents/tuto_git_gtlab/images/commit3.png)

- Si vous êtes derrière un proxy, il faut le définir dans Git

```
git config --global http.proxy http://proxy.server.com:port
```

On peut aussi définir le proxyUsername pour n'avoir que le mot de passe à saisir

```
git config --global http.proxy http://proxyUsername@proxy.server.com:port
```

- Option pour que le login et mot de passe soient enregistrés pendant 1 heure

```
git config --global credential.helper "cache --timeout=3600"
```

## Commandes pour afficher et effacer des options de configuration (parcours RStudio et OrgMode)

- Afficher les paramètres

```
git config --list
```

- Effacer les mots de passe enregistrés

```
git config --system --unset credential.helper
```

- Effacer le proxy

```
git config --global --unset http.proxy
```

- Effacer le message "git: 'credential-cache' is not a git command."

```
git config --global --unset credential.helper
```

## Opérations de transfert entre Git et Gitlab (parcours OrgMode)

- Récupérer l'adresse du dépôt

![adresse_depot](documents/tuto_git_gtlab/images/adresse_depot.png)

- Cloner le dépôt

```
git clone https://app-learninglab.inria.fr/gitlab/xxx/mooc-rr.git
```

On peut aussi définir l'identifiant pour n'avoir que le mot de passe à saisir

```
git clone https://xxx@app-learninglab.inria.fr/gitlab/xxx/mooc-rr.git
```

Un répertoire `mooc-rr` est créé sur votre ordinateur.

- Se placer dans le répertoire mooc-rr

```
cd mooc-rr
```

- Lister les fichiers du répertoire

```
ls (Unix)
dir (Windows)
```

- Synchroniser Git vers Gitlab

Il faut suivre les fichiers (commande `git add`) et les commiter (commande `git commit`) en local pour pouvoir les transférer sur serveur. La commande `git status` indique le statut des fichiers.

Soit un fichier `fichier.txt` à la racine du répertoire mooc-rr.

```
git status
```

![status1](documents/tuto_git_gtlab/images/status1.png)

```
git add fichier.txt
git status
```

![status2](documents/tuto_git_gtlab/images/status2.png)

```
git commit -m "message commit"
```

![commit_git](documents/tuto_git_gtlab/images/commit_git.png)

```
git status
```

![status3](documents/tuto_git_gtlab/images/status3.png)

On peut alors faire le `git push`pour transférer le fichier sur Gitlab.

```
git push
```

Demande le mot de passe

- NB : Il n'est pas possible de synchroniser vers Gitlab si des modifications ont été faites sur Gitlab et n'ont pas été répercupées en local

![rejected](documents/tuto_git_gtlab/images/rejected.png)

- Synchroniser Gitlab vers Git

```
git pull
```

# Liens utiles

- [Installer Git et Gitlab](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session01bis/courseware/66bc811404b8481da5f794de54681c5e/f6580ad8e997400faeffe9af4fd37063/)

- [Définir un proxy dans Git](https://gist.github.com/evantoli/f8c23a37eb3558ab8765)

- [Mémoriser son mot de passe](http://blog.lecacheur.com/2015/11/05/git-le-b-a-ba-memoriser-son-mot-de-passe/)

- [Livre Pro Git](https://git-scm.com/book/fr/v2/)