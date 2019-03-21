---
TITLE: Ressources pour la séquence 5 du module 1
AUTHOR: Christophe Pouzat
---\n
broken-links:nil c:nil creator:nil

Notes et références sur la séquence 5 : « Les étiquettes et les logiciels d'indexation pour s'y retrouver »
===========================================================================================================

La structure de la séquence
---------------------------

Nous revenons ici sur le problème de l'indexation, pas tant sur
l'indexation d'un document unique que sur l'indexation de documents
multiples dans des formats divers :

-   comme nous l'avons déjà affirmé, prendre des notes abondantes et
    détaillées n'est utile que si nous pouvons retrouver les
    informations qu'elles contiennent quand nous en avons besoin ;
-   pour des notes contenues dans un seul fichier texte, la fonction de
    recherche de notre éditeur favori nous permet généralement d'aller
    assez loin ;
-   pour des notes manuscrites contenues dans un cahier, la méthode de
    Locke — que nous avons exposée dans notre deuxième séquence — et qui
    repose sur des mots clé ou étiquettes, donne de bons résultats ;
-   les notes manuscrites sur fiches sont généralement stockées dans un
    meuble dont la structure matérialise un index — comme l'armoire de
    Placcius et Leibniz — ;
-   mais nous voulons ici aller plus loin, dans le cadre restreint des
    « notes » numérisées, en discutant de l'indexation de fichiers
    multiples qu'ils soient au format « texte » où dans d'autres format
    comme les images `jpg` où les fichier `pdf` ;
-   cela nous amménera à introduire les « moteurs de recherche de
    bureau » et à expliquer comment des `étiquettes` ou `mots-clés`
    peuvent être ajoutés à nos fichiers.

La citation de Leibniz
----------------------

J'ai trouvé la citation introductive :

« Il me semble que l'apparat savant contemporain est comparable à un
grand magasin qui contient une grande quantité de produits, stockés de
façon totalement désordonnée, mélangée ; où les nombres ou lettres
d'indexation manquent ; où les inventaires et livres de comptes pouvant
aider à ordonner le contenu ont disparus.

Plus grande est la quantité d'objets amassés, plus petite est leur
utilité. Ainsi, ne devrions nous pas seulement essayer de rassembler de
nouveaux objets de toutes provenances, mais nous devrions aussi essayer
d'ordonner ceux que nous avons déjà. »

sur le site <http://www.backwordsindexing.com/index.html>, c'est donc
une traduction de traduction. J'emploie ici le terme volontairement
anachronique d'« \[apparat
savant\](<https://fr.wikipedia.org/wiki/Apparat_savant>) » qui est un
terme technique de l'édition désignant : citations, références et
sources, notes en bas de pages, introduction, texte en langue originale
(en parallèle avec la traduction), commentaire historique ou
philologique, index fontium (les sources), index locorum (références
avec renvoi à la page où le passage est cité ou mentionné, par ex. :
Évangile selon Marc 1, 1 : p. 100), index nominum (les noms propres),
index rerum (les thèmes), etc. La référence au « grand magasin » est,
elle aussi anachronique !

Leibniz a, pendant une bonne partie de sa vie, « gagné celle-ci » comme
[bibliothécaire](https://www.reseau-canope.fr/savoirscdi/societe-de-linformation/le-monde-du-livre-et-des-medias/histoire-du-livre-et-de-la-documentation/biographies/leibniz-le-bibliothecaire.html),
ce qui explique en partie sont intérêt très poussé pour les questions de
classifications, d'indexations, etc.

Rechercher avec un éditeur de texte
-----------------------------------

La diapo correspondante rappelle juste au lecteur quelque chose qu'il
sait déjà et qui est vue, par les gens qui passent des notes « papier »
aux notes « numériques », comme le gros attrait du numérique.

Les gens de monde Unix/Linux connaissent aussi généralement le programme
[grep](https://fr.wikipedia.org/wiki/Grep) qui permet de faire des
recherches de mots et, plus généralement d'[expressions
régulières](https://fr.wikipedia.org/wiki/Expression_r%C3%A9guli%C3%A8re),
sur un ou *plusieurs* fichiers ; nous y reviendrons.

Recherche avec index construit « à la main » sur des cahiers de notes
---------------------------------------------------------------------

Là encore, il s'agit juste d'un rappel pour les lecteurs assidus de ce
cours ; à ce stade se sont des experts dans la méthode d'indexation de
Locke.

Recherche avec index « matérialisés »
-------------------------------------

Encore un rappel pour les lecteurs.

Vers les outils « sophistiqués » de l'informatique
--------------------------------------------------

-   les techniques que nous venons de voir ou revoir ne fonctionnent que
    pour un seul « document » — recherche avec l'éditeur de texte, index
    d'un cahier — et/ou pour un seul type de document ;
-   les outils informatiques dont nous disposons nous permettent d'aller
    plus loin dans l'indexation des fichiers numériques ;
-   il est possible de rajouter des étiquettes ou mots-clés à des
    fichiers textes comme à des fichiers images (\`jpg\`, \`png\`) ou
    des fichiers « mixtes » (\`pdf\`) grâce aux métadonnées qu'ils
    contiennent ;
-   les moteurs de recherche de bureau permettent d'indexer l'ensemble
    des fichiers textes d'une arborescence donnée mais aussi les
    métadonnées des autres fichiers.

Les moteurs de recherche de bureau
----------------------------------

Les moteurs de recherche de bureau comme :

-   [DocFetcher](http://docfetcher.sourceforge.net/fr/index.html)
    (Linux, MacOS, Windows) ;
-   [Tracker](https://wiki.gnome.org/Projects/Tracker) (Linux) ;
-   [Recoll](https://www.lesbonscomptes.com/recoll/index.html.fr)
    (Linux, MacOS, Windows) ;
-   [Spotlight](https://fr.wikipedia.org/wiki/Spotlight_(moteur_de_recherche))
    (MacOS) ;

permettent de rechercher le *contenu* des fichiers textes, des
courriels, des fichiers générés par les `traitements de texte`
— c'est-à-dire des fichiers qui contiennent essentiellement du texte,
mais qui sont stockés dans un format type `doc`, `docx`, `odt`, etc qui
ne sont pas des formats texte —, des fichiers `pdf` — quand ceux-ci ne
sont pas des *images* de textes —, mais aussi des
[métadonnées](https://en.wikipedia.org/wiki/Portable_Document_Format#Metadata)
des fichiers `pdf`, etc.

Les moteurs de recherche de bureau « utilisent des techniques
d'[indexation](https://fr.wikipedia.org/wiki/Indexation_automatique_de_documents)
qui permettent de réduire considérablement les temps de recherche, par
rapport aux fonctions de recherche intégrées par défaut aux systèmes
d'exploitation. Au contraire de ces derniers, ils prennent aussi souvent
en charge les
[métadonnées](https://fr.wikipedia.org/wiki/M%C3%A9tadonn%C3%A9e), et
sont capables de faire une [analyse
syntaxique](https://fr.wikipedia.org/wiki/Analyse_syntaxique) des
fichiers. » (Source : [Moteur de recherche de
bureau](https://fr.wikipedia.org/wiki/Moteur_de_recherche_de_bureau) sur
Wikipédia)

Comme exemple de « fonctions de recherche intégrées par défaut », on
trouvera sur les systèmes Unix/Linux le programme [grep
](https://fr.wikipedia.org/wiki/Grep)avec lequel nous pouvons chercher
les occurrences du mot « Galilée » dans le répertoire
« RR<sub>MOOC</sub> » de notre cours sur GitHub (après l'avoir cloné) :

``` bash
grep -r Galilée
```

``` example
PITCHME.md:## Galilée qui observe les lunes de Jupiter
PITCHME.md:Le 7 janvier 1610, Galilée fait une découverte capitale : il remarque trois « petites étoiles » à côté de Jupiter. Après quelques nuits d'observation, il découvre qu'il y en a une quatrième et qu'**elles accompagnent la planète**, c'est ce qu'il note sur son cahier d'observations. Ce sont les satellites visibles de Jupiter, qu'il nommera plus tard les étoiles Médicées ou astres médicéens – en l'honneur de ses protecteurs, la Famille des Médicis – et qui sont aujourd'hui appelés lunes galiléennes.
PITCHME.md:Ces observations amèneront Galilée à rejeter l'hypothèse géocentrique (la terre est le centre de l'Univers et tout tourne autour d'elle) en faveur du système copernicien héliocentrique. Cela l'amènera indirectement (je « fais court ») et bien plus tard, le 22 juin 1633, a être condamné par l'inquisition, ce qui lui vaudra de finir ses jours en résidence surveillée.
PITCHME.md:Remarquez l'avantage des « bouts de papiers classés » de Placcius et Leibniz sur le _codex_ de Galilée : les premiers peuvent être facilement réordonnées.
Notes_module1.org:- [[https://en.wikipedia.org/wiki/Galileo_Galilei][la page wikipedia sur Galilée]] contient de nombreux liens, certains vers ses cahiers de notes ;
Notes_module1.org:Comme exemple de « fonctions de recherche intégrées par défaut » on trouvera sur les systèmes Unix/Linux le programme [[https://fr.wikipedia.org/wiki/Grep][grep ]]avec lequel nous pouvons chercher les occurrences du mot « Galilée » dans le répertoire « RR_MOOC » de notre cours sur GitHub (après l'avoir cloné) :
Notes_module1.org:grep -r Galilée
```

Une version plus sophistiquée de `grep` est fournie par le programme
[cgvg](http://uzix.org/cgvg.html).

Pourquoi des étiquettes
-----------------------

Une requête basée sur un simple mot renvoie souvent un très grand nombre
de propositions, même si la plupart des moteurs de recherche de bureau
permettent de filtrer ces dernières. Une façon efficace de limiter leur
nombre est d'inclure dans nos documents des étiquettes, c'est-à-dire des
points d'ancrage labelisés, qui seront aisément indexés par le moteur de
recherche de bureau et dont le label ne correspond à aucun mot ou
locution du dictionnaire — nous effectuons ainsi une version simplifiée
du travail de l'*indexeur*, la personne chargée de construire l'index
d'un livre. Pour que l'étiquette garde un sens, il suffit d'encadrer un
mot par une paire de signes de ponctuation comme « : », « ; » ou « ? ».
Un label comme « :code: » sera facilement mémorisé et fera un parfait
équivalent du mot-clé « code » utilisé dans l'exemple du cahier de note
de la deuxième séquence de ce module — pour illustrer la méthode de
Locke.

Il nous reste encore nous reste encore un détail technique à régler dans
le cas de nos notes prises en format texte comme `Markdown`. En effet,
nous ne souhaitons pas que nos étiquettes apparaissent dans les sorties
`html`, `pdf` ou `docx` de nos notes. Un façon de procéder, pour les
langages de balisage légers qui ne disposent pas d'étiquettes — par
exemple, `Markdown` n'en dispose pas, alors que `org` en a — et de les
inclure dans des commentaires. En `Markdown`, tout ce qui est encadré
par `<!--` et `-->` est considéré comme un commentaire et ne figure pas
dans les sorties `html` ou `pdf` des notes. Nous pouvons ainsi
utiliser :

``` example
<!-- ;code; -->
```

à l'endroit de nos notes où nous souhaitons aller rapidement lorsque que
nous cherchons une information relative à de la programmation
(production de codes).

Les métadonnées
---------------

### Fichiers images

Nous savons à présent comment rajouter des étiquettes à un fichier au
format texte, mais nous devons souvent aussi travailler avec des
fichiers contenant des images ou des photos, comme les fichiers
[JPEG](https://fr.wikipedia.org/wiki/JPEG) — les appareils photos
numériques utilisent tous ce format —,
[GIF](https://fr.wikipedia.org/wiki/Graphics_Interchange_Format) ou
[PNG](https://fr.wikipedia.org/wiki/Portable_Network_Graphics). La
question se pose alors, peut-on ajouter des étiquettes à nos fichiers
images de sorte que nos moteurs de recherche de bureau les indexent ? La
réponse et oui, grâce aux
[métadonnées](https://fr.wikipedia.org/wiki/M%C3%A9tadonn%C3%A9e) que
contiennent ces fichiers. Les métadonnées, dans ce cas, sont des données
stockées dans le fichier mais qui ne sont pas montrées par le logiciel
de rendu (en tout cas, pas montrées par défaut). Nous savons tous que
ces métadonnées « existent » ; ce sont elles qui contiennent la date, la
localisation GPS, le temps d'exposition, etc. de nos photos numériques.
Dans les fichiers `JPEG`, elles sont stockées suivant l'[exchangeable
image file
format](https://fr.wikipedia.org/wiki/Exchangeable_image_file_format)
(`EXIF`). La plupart des logiciels de manipulations d'images et de
photos permettent d'accéder au contenu des métadonnées et de les
modifier. L'exemple illustré dans le cours utilise une solution très
simple en « ligne de commande »,
[ExifTool](http://owl.phy.queensu.ca/~phil/exiftool/) qui permet de
visualiser et de modifier les métadonnées. D'autres logiciels comme
[exiv2](http://www.exiv2.org/index.html) ou
[ImageMagick](https://imagemagick.org/script/index.php) permettent de le
faire (pour ne citer que des logiciels libres disponibles sur Linux,
Windows et MacOS). Certains des éléments du format `EXIF` sont des
chaînes de caractères, c'est-à-dire du texte, que nous somme libres
d'utiliser comme nous le souhaitons ; nous pouvons dès lors les utiliser
pour rajouter nos étiquettes. Nous illustrons dans le cours comment le
faire avec `ExifTool`, mais nous aurions aussi pu le faire avec le
programme
[mogrify](https://www.imagemagick.org/script/command-line-options.php#comment)
d'ImageMagick. Tous les moteurs de recherche de bureau que nous avons
mentionné vont « aller regarder » les métadonnées des fichier `JPEG`
lors de la phase d'indexation et nous permettront ainsi d'exploiter les
étiquettes que nous y aurons insérées.

`EXIF` n'est pas le seul format de métadonnées existant ; un format plus
récent est l'[Extensible Metadata Platform
](https://fr.wikipedia.org/wiki/Extensible_Metadata_Platform)(`XMP`),
disponible pour un plus grand nombre de formats de fichiers — il n'est
pour l'instant pas lu sur les fichiers `JPEG` par `DocFetcher`, c'est
pourquoi nous avons mis en avant le format `EXIF`, mais cela devrait
évoluer assez vite ; les autres moteurs comme `Tracker` et `Recoll` le
lisent.

### Fichiers `PDF`

En plus des fichiers images, nous sommes tous très fréquemment amenés à
travailler avec les fichiers « composites » — contenant textes, images,
et plus — que sont les fichiers
[PDF](https://fr.wikipedia.org/wiki/Portable_Document_Format). Ces
fichiers contiennent eux aussi des métadonnées ; c'est d'ailleurs pour
eux qu'Adobe a initialement introduit le format `XMP` que nous venons de
discuter. Ces métadonnées peuvent être lues et modifiées, en particulier
l'élément `Keywords` (mot-clé) qui peut contenir des chaînes de
caractères de longueur arbitraires et qui est parfait pour accueillir
nos étiquettes. Le programme `ExifTool`, permet de modifier les
métadonnées des fichiers `PDF`. Les moteurs de recherche de bureau que
nous avons mentionnés, vont tous aller lire les métadonnées des fichiers
`PDF` lors de la phase d'indexation.

### Fichiers audios

Les formats audio comme le
[mp3](https://fr.wikipedia.org/wiki/MPEG-1/2_Audio_Layer_III) ou le
[ogg](https://fr.wikipedia.org/wiki/Ogg) contiennent eux aussi des
métadonnées, où sont stockés les titres, noms des interprètes, etc ; ces
métadonnées peuvent être modifiées et sont lues par les moteurs de
recherche de bureau lors de la phase d'indexation.
