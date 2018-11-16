# Dans Git

- Enregistrer l'email et le nom de l'utilisateur

```
git config --global --user.email you@example.com
git config --global --user.name Your Name
```

NB : Ne pas mettre de guillemets.

Ces deux paramètres sont obligatoire pour pouvoir commiter sinon on obtient le message suivant

![commit3](documents/tuto_rstudio_gitlab/images/commit3.png)

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

# Dans RStudio

- File / New Project / Version Control

![new_project](documents/tuto_rstudio_gitlab/images/new_project.png)

![git](documents/tuto_rstudio_gitlab/images/git.png)

- Récupérer l'adresse du dépôt

![adresse_depot](documents/tuto_rstudio_gitlab/images/adresse_depot.png)

- Indiquer l'adresse du dépôt dans le champ "Repository URL"
- Il est possible de faire précéder l'adresse du dépôt par `xxx@`, xxx étant l'identifiant Gitlab, pour ne pas avoir à le renseigner par la suite

![clone](documents/tuto_rstudio_gitlab/images/clone.png)

- Si vous êtes derrière un proxy, il faut le définir dans Git
- Git demande le mot de passe du proxy

![password_proxy](documents/tuto_rstudio_gitlab/images/password_proxy.png)

- Git se connecte à Gitlab et récupère l'ensemble des données

- RStudio redémarre pour se placer dans un mode lié à Git

![rstudio](documents/tuto_rstudio_gitlab/images/rstudio.png)

- Module2 / exo1 / toy_document.Rmd

- Modifier le fichier

- Sauvegarder

- Aller dans Git pour effectuer le commit

![commit](documents/tuto_rstudio_gitlab/images/commit.png)

![commit2](documents/tuto_rstudio_gitlab/images/commit2.png)

- Sélectionner les lignes à commiter puis cliquer sur "commit"

![commit5](documents/tuto_rstudio_gitlab/images/commit5.png)

Les modifications sont pour l'instant uniquement sur la machine. Elles n'ont pas été propagées sur Gitlab.

- Cliquer sur "push" pour les propager sur Gitlab

![push](documents/tuto_rstudio_gitlab/images/push.png)

![push2](documents/tuto_rstudio_gitlab/images/push2.png)

![push3](documents/tuto_rstudio_gitlab/images/push3.png)

- NB : Il n'est pas possible de synchroniser vers Gitlab si des modifications ont été faites sur Gitlab et n'ont pas été répercupées en local

![push4](documents/tuto_rstudio_gitlab/images/push4.png)

- Cliquer sur "pull" pour synchroniser Gitlab vers Git