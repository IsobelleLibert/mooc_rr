---
TITLE:     Git et GitLab
AUTHOR:    Arnaud Legrand
Date:   Tue Feb 19 15:42:13 2019 
---

**Ce document est particulièrement important si vous suivez le parcours RStudio ou Org-Mode. Vous pouvez l’ignorer dans un premier temps si** **vous suivez le parcours Jupyter car nous avons étroitement intégré Jupyter et GitLab dans le contexte de ce MOOC.**

Jusqu'à présent, vous avez utilisé Git uniquement via l'interface web du GitLab que nous avons déployée pour le MOOC : [<https://app-learninglab.inria.fr/gitlab/>](https://app-learninglab.inria.fr/gitlab/)

Si vous accédez à ce lien depuis la plate-forme FUN, vous n'avez pas à vous authentifier et vous pouvez facilement lire et modifier tous vos fichiers. C'est très pratique, mais dans la plupart des cas, vous voudrez avoir votre propre copie locale du référentiel et vous devrez synchroniser votre copie locale avec celle de GitLab. Vous devrez évidemment vous authentifier sur GitLab pour propager vos modifications.

Ce document décrit le logiciel que vous devez installer sur votre ordinateur et comment gérer l'authentification. La section "Configuration de Git" est illustrée dans un [tutoriel vidéo](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session01bis/jump_to_id/7508aece244548349424dfd61ee3ba85) (en français).

Veuillez lire attentivement toutes ces instructions, en particulier celle sur la "Configuration de votre mot de passe sur GitLab".

Table des matières<span class="tag" data-tag-name="TOC"></span>
===============================================================

-   [Installer Git](#installer-git)
    -   [Linux (Debian, Ubuntu)](#linux-debian-ubuntu)
    -   [Mac OSX et Windows](#mac-osx-et-windows)
-   [Configurer Git](#configurer-git)
    -   [Dire à Git qui vous êtes : nom et email](#dire-à-git-qui-vous-êtes-nom-et-email)
    -   [Gérer les proxy](#gérer-les-proxy)
    -   [Récupérer votre mot de passe par défaut sur GitLab (et le changer éventuellement)](#récupérer-votre-mot-de-passe-par-défaut-sur-gitlab-et-le-changer-éventuellement)
    -   [Enregistrer votre mot de passe localement](#enregistrer-votre-mot-de-passe-localement)
    -   [Optionnel : authentification par SSH](#optionnel-authentification-par-ssh)
-   [Utiliser Git par lignes de commandes pour synchroniser vos fichiers locaux avec Gitlab](#utiliser-git-par-lignes-de-commandes-pour-synchroniser-vos-fichiers-locaux-avec-gitlab)

Installer Git
=============

Linux (Debian, Ubuntu)
----------------------

Nous ne fournissons ici que des instructions pour les distributions basées sur Debian. N'hésitez pas à contribuer à ce document en fournissant des informations à jour sur les autres distributions (RedHat, Fedora, par exemple).

Run (as root) :

``` bash
apt-get update ; apt-get install git
```

Mac OSX et Windows
------------------

-   Télécharger et installer Git depuis le [site Git](https://git-scm.com/downloads).
-   Clients Git optionnels (ne devraient pas être nécessaires si vous travaillez dans RStudio) :
    -   [SourceTree](https://www.sourcetreeapp.com/)
    -   [GitHub Desktop](https://desktop.github.com/)

        > Semble fonctionner avec GitLab et https (voir [discussion](https://github.com/desktop/desktop/issues/852)).

Configurer Git
==============

Dire à Git qui vous êtes : nom et email
---------------------------------------

1.  Ouvrir un terminal.
2.  Définir un nom d'utilisateur et un email dans Git :

    ``` shell
    git config --global user.name "Mona Lisa"
    git config --global user.email "email@example.com"
    ```

3.  Confirmer que vous avez correctement défini le nom d'utilisateur et l'email Git :

    ``` shell
    git config --global user.name
    git config --global user.email
    ```

    ``` example
    Mona Lisa
    email@example.com
    ```

Gérer les proxy
---------------

Vous êtes peut-être derrière un proxy, auquel cas vous pouvez avoir des problèmes de clonage ou d’extraction à partir d’un dépôt distant, ou une erreur telle que : `unable to access... Couldn't resolve host...`

Dans ce cas, envisagez quelque chose comme ceci :

``` shell
git config --global http.proxy http://proxyUsername:proxyPassword@proxy.server.com:port
```

Le `proxyPassword` sera stocké en texte brut (non crypté) dans votre fichier `.gitconfig`, ce que vous ne souhaitez peut-être pas. Dans ce cas, supprimez-le de l'URL et vous serez invité à le saisir chaque fois que vous en aurez besoin.

Récupérer votre mot de passe par défaut sur GitLab (et le changer éventuellement)
---------------------------------------------------------------------------------

**Avertissement (utilisateurs Jupyter) :** changer votre mot de passe Gitlab par défaut vous empêchera de commiter les notebooks Jupyter que nous avons déployés pour le MOOC. Vous devrez effectuer l’étape supplémentaire de modification de votre `~/.git-credentials` dans l’environnement Jupyter (éventuellement plusieurs fois).

1.  Récupérer votre mot de passe par défaut en utilisant l'outil [Gitlab credentials retrieval](https://app-learninglab.inria.fr/jupyterhub/services/password) comme décrit dans la [ressource correspondante](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session01bis/jump_to_id/7508aece244548349424dfd61ee3ba85).

    ![](gitlab_images/password_retrieval.png)

    La première séquence de caractères longue et laide est votre identifiant GitLab qu'il est facile de trouver une fois que vous êtes connecté à Gitlab. Cependant la seconde séquence de caractères est votre mot de passe et cette page Web est le seul endroit où vous pouvez le trouver. Nous avons utilisé le mécanisme d'authentification FUN pour propager vos informations d'identification de sorte que seulement vous puissiez y accéder. Vous devrez utiliser ce mot de passe lorsque vous essaierez de propager des modifications de votre ordinateur vers GitLab.

    *Note : Vous devez accéder à cette page Web à partir de la* *plate-forme FUN, sinon vous risquez d'obtenir une erreur 405 en* *essayant d'accéder directement à <https://app-learninglab.inria.fr/jupyterhub/services/password>.*

    ![](gitlab_images/erreur405.png)

2.  Accéder à [GitLab](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session01bis/xblock/block-v1:inria+41016+session01bis+type@lti+block@05a0ce425f1741e5bee5049040f70529/handler/preview_handler).

    *Note : Vous devez à nouveau accéder à Gitlab à partir de la plate-forme* *FUN, sinon vous risquez d'obtenir une erreur 405 en essayant d'accéder directement à* <https://app-learninglab.inria.fr/gitlab/users/sign_in/>.
3.  Cliquez sur le premier bouton `Sign in`. Vous pouvez également utiliser l'identifiant/mot de passe que vous venez de récupérer et utiliser le second bouton `Sign in`. Le second bouton permet de plus de se connecter sans passer par la plateforme FUN une fois que vous connaissez votre identifiant/mot de passe.

    ![](gitlab_images/signin.png)

4.  Si vous souhaitez modifier votre mot de passe, accédez à `Account >
     Settings > Password` et définissez votre mot de passe à l'aide du mot de passe par défaut que vous venez de récupérer. Encore une fois, si vous utilisez les notebooks Jupyter que nous avons déployés pour le MOOC, n’oubliez pas que changer votre mot de passe Gitlab par défaut vous empêchera de les commiter. Vous devrez effectuer l’étape supplémentaire consistant à changer votre `~/.git-credentials` Jupyter via une console Jupyter (voir section suivante).

    ![](gitlab_images/password.png)

Enregistrer votre mot de passe localement
-----------------------------------------

Si vous clonez votre dépôt en collant simplement l'URL de GitLab, vous serez invité à saisir votre identifiant et votre mot de passe chaque fois que vous souhaitez propager vos modifications locales, ce qui est fastidieux. C’est pourquoi vous pouvez demander à Git de se rappeler de votre identifiant et votre mot de passe comme suit :

``` shell
git config --global credential.helper cache                  # remember my password
git config --global credential.helper "cache --timeout=3600" # for one hour at most
```

Avec cette configuration, vous serez invité à saisir votre mot de passe, mais celui-ci sera mis en cache et ne sera plus demandé pendant une heure. Vous voudrez peut-être lire [ces instructions](https://stackoverflow.com/questions/5343068/is-there-a-way-to-skip-password-typing-when-using-https-on-github) pour mieux comprendre comment tout cela fonctionne.

Si vous souhaitez que votre mot de passe soit mémorisé en permanence, vous devez utiliser cette commande :

``` shell
git config credential.helper store
```

Votre mot de passe sera alors stocké dans un fichier `.git-credentials` en texte brut (non-crypté). Sur une machine parfaitement sécurisée, cela peut être très bien... ou pas... ;) Utilisez cette possibilité à vos risques et périls.

Optionnel : authentification par SSH
------------------------------------

Il existe deux manières d'authentifier et de synchroniser votre dépôt local avec GitLab : via HTTPS ou via SSH. Le premier est ce qui vient d'être décrit et ne nécessite aucune installation de logiciel particulier sur votre machine, c'est donc ce que je recommande pour ce MOOC. Pourtant, je préfère le second (bien que cela puisse paraître un peu plus technique), c'est pourquoi je le décris ici. Cela consiste à installer SSH, à créer une paire de clés ou des clés privée/publique et à télécharger votre clé publique SSH sur GitLab. Cette section fournit des informations sur la procédure à suivre.

### Installer SSH

1.  Linux (Debian, Ubuntu)

    Nous ne fournissons ici que des instructions pour les distributions basées sur Debian. N'hésitez pas à contribuer à ce document en fournissant des informations à jour sur les autres distributions (RedHat, Fedora, par exemple).

    Run (as root) :

    ``` bash
    apt-get update ; apt-get install openssh-client
    ```

2.  macOS

    C'est installé par défaut donc vous n'avez rien à faire.

3.  Windows

    Vous devez installer le client [Putty](https://www.ssh.com/ssh/putty/windows/). Une fois l’installation terminée, suivez la section [PuTTYgen - Key Generator for PuTTY on Windows](https://www.ssh.com/ssh/putty/windows/puttygen).

### Configurer SSH sur GitLab

Vous trouverez [ici](https://docs.gitlab.com/ee/ssh/) les explications officielles sur la configuration de votre clé SSH sur GitLab. Vous pouvez aussi regarder cette vidéo :

<iframe width="560" height="315" src="https://www.youtube.com/embed/54mxyLo3Mqk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

Utiliser Git par lignes de commandes pour synchroniser vos fichiers locaux avec Gitlab
======================================================================================

Cette section décrit un moyen générique (par lignes de commandes) de synchroniser vos fichiers locaux avec Gitlab. Vous n'en aurez pas besoin si vous suivez le parcours Jupyter. Si vous suivez le parcours RStudio, toutes ces opérations peuvent être effectuées via RStudio et vous voudrez peut-être lire [les instructions correspondantes](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session01bis/jump_to_id/1a4f58a1efed437c93a9f5c5f15df428). Si vous suivez le chemin Org-Mode, toutes ces opérations peuvent être effectuées via Magit et vous voudrez peut-être lire [les instructions correspondantes](https://www.fun-mooc.fr/courses/course-v1:inria+41016+session01bis/jump_to_id/508299f7373449a3939faa5b11462bc4).

Voici d'autres moyens d'apprendre Git par lignes de commandes :

-   Le [Software Carpentry git tutorial](http://swcarpentry.github.io/git-novice/)
-   Le livre Pro Git (gratuit) en [englais](https://git-scm.com/book/en/v2) ou en [français](https://git-scm.com/book/fr/v2). Les deux premiers chapitres suffisent pour bien commencer.
-   Le site [Apprenez Git Branching](https://learngitbranching.js.org/) permet d'apprendre Git interactivement et de comprendre les branches.

Maintenant, commençons !

1.  Récupérer l'URL du dépôt

    ![](rstudio_images/adresse_depot.png)

2.  Cloner le dépôt

    ``` shell
    cd /the/directory/where/you/want/to/clone/your/repository
    git clone https://app-learninglab.inria.fr/gitlab/xxx/mooc-rr.git
    ```

    Alternativement, vous pouvez vouloir indiquer votre identifiant maintenant, bien que je vous suggère plutôt de suivre les instructions de la partie *Enregistrer votre mot de passe localement*.

    ``` shell
    git clone https://xxx@app-learninglab.inria.fr/gitlab/xxx/mooc-rr.git
    ```

    Maintenant un répertoire `mooc-rr` a été créé sur votre ordinateur.
3.  Inspecter le répertoire correspondant au dépôt

    ``` shell
    cd mooc-rr
    ls # (Unix)
    dir # (Windows)
    ```

4.  Synchroniser avec GitLab

    Vous devez indiquer les fichiers à suivre (`git add`) et les valider localement (`git commit`) avant de pouvoir les transférer (`git push`) à GitLab. Le `git status` vous indiquera si les fichiers sont suivis/modifiés/commités/...

    Supposons que vous venez de créer un fichier `fichier.txt` à la racine du répertoire `mooc-rr`.

    ``` shell
    git status
    ```

    ![](gitlab_images/status1.png)

    ``` shell
    git add fichier.txt
    git status
    ```

    ![](gitlab_images/status2.png)

    ``` shell
    git commit -m "message commit"
    ```

    ![](gitlab_images/commit_git.png)

    ``` shell
    git status
    ```

    ![](gitlab_images/status3.png)

    Le fichier peut ensuite être transféré vers GitLab :

    ``` shell
    git push
    ```

    À ce stade, Git vous demandera votre identifiant/mot de passe, sauf si vous avez suivi les instructions de la partie *Enregistrer votre mot de passe localement*.

    NB : vous ne serez pas autorisé à propager vos modifications dans GitLab si d'autres modifications ont été propagées entre temps (par exemple par quelqu'un d'autre).

    ![](gitlab_images/rejected.png)

5.  Synchronisation à partir de Gitlab : pour éviter le problème précédent, vous devez d’abord récupérer les modifications distantes de GitLab et les appliquer localement.

    ``` shell
    git pull
    ```

    Alors seulement pourrez-vous exécuter le `git push`.
