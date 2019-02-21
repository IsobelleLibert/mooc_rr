
# Table des matières

1.  [Introduction au module](#orge43986e)
    1.  [Le « cahier de notes »](#org730212d)
        1.  [Exemples concrets de « cahier de notes »](#org2a90588)
2.  [Notes et références sur la séquence 1 : « Nous utilisons tous des cahiers de notes »](#orgf5eeda3)
    1.  [Manuscrits annotés](#orgc71b34a)
    2.  [Armoires à notes de Placcius et Leibniz](#org60d83a8)
    3.  [La préface de « L'île des pingouins » d'Anatole France](#org15f16da)
    4.  [Les livres de bord](#org2019f41)
    5.  [Un absent : le cahier de laboratoire classique](#org16eb5e8)
3.  [Notes et références sur la séquence 2 : « Un aperçu historique de la prise de notes »](#org1ae2571)
    1.  [Références générales](#orge284492)
    2.  [Sur les tablettes de cires](#org8dd9b50)
    3.  [Sur le passage du rouleau (*volumen*) au codex](#org172e431)
    4.  [Sur Eusèbe de Césarée](#org0f408c9)
    5.  [Parallèle chinois](#org898d2c5)
    6.  [Retour sur l'armoire à notes](#org23f1477)
    7.  [L'index et John Locke](#orge852c7e)
4.  [Notes et références sur la séquence 3 : « Du fichier texte au langage de balisage léger »](#org30c5f99)
    1.  [Fichier texte et éditeur de texte](#orgf02472f)
    2.  [Le cas du fichier `PDF` ouvert avec un éditeur de texte](#org4c92ae2)
    3.  [Sur l'UTF-8](#org1305f4c)
5.  [Notes et références sur la séquence 5 : « Les étiquettes et les logiciels d'indexation pour s'y retrouver »](#orgaba3aca)
    1.  [La structure de la séquence](#orgfcff6c0)
    2.  [La citation de Leibniz](#org32aaaed)
    3.  [Rechercher avec un éditeur de texte](#orgdbf92e1)
    4.  [Recherche avec index construit « à la main » sur des cahiers de notes](#orgab1d546)
    5.  [Recherche avec index « matérialisés »](#orgebb0a49)
    6.  [Vers les outils « sophistiqués » de l'informatique](#orgddef543)
    7.  [Les moteurs de recherche de bureau](#orgaf4f7ba)
    8.  [Pourquoi des étiquettes](#org06edb53)
    9.  [Les métadonnées](#orgd05cefb)
        1.  [Fichiers images](#org35c9a2a)
        2.  [Fichiers `PDF`](#org1dca817)
        3.  [Fichiers audios](#orgea7f02d)



<a id="orge43986e"></a>

# Introduction au module

La mise en œuvre de la « recherche reproductible ou réplicable » requiert en plus des codes et des données une description de la façon dont les premiers ont été appliqués aux secondes. Cette description devrait contenir une **discussion du choix** des paramètres / arguments des codes lorsque ceux-ci ne sont pas choisis de façon automatique / algorithmique. Des considérations du même ordre doivent d'ailleurs s'appliquer à la conception (choix des algorithmes) et à la réalisation (choix du langage, des librairies, etc.) des codes comme à la conception et à la réalisation de la collecte de données, c'est-à-dire des expériences, des enquêtes, etc.

Le praticien de la recherche reproductible se trouve ainsi confronté à un problème somme toute classique : garder une trace, documenter ce qui est fait. L'épitête « classique » se justifie dès lors que le lecteur réalise qu'il a lui aussi souvent été confronté à ce problème même si sous des formes légérement différentes. Ainsi, bon nombre d'entre nous doit effectuer un travail bibliographique plus ou moins fréquemment, ce qui génère des « notes » pouvant prendre diverse formes sur un ou plusieurs supports. Mais ce travail de prise de notes, ce « traçage », ne s'arrête, le plus souvent, pas là. Prenons le cas de l'algorithme à mettre en œuvre ; après une étude bibliographique en ayant identifié quelques-uns *a priori* applicable à la situation rencontrée, il nous faudra soit les coder nous-mêmes, soit les trouver déjà codés sur un dépôt type [github](https://github.com/) ou [gitlab](https://about.gitlab.com/) ; quelque soit la solution adoptée, il nous faudra la documenter &#x2013; /en expliquer les raisons/, ce qui peut impliquer une courte étude comparative &#x2013; avec des références adéquates ce qui générera de nouvelles notes sur support papier ou numérique. En poursuivant cette logique, on voit vite que la quasi totalité de notre activité peut (ou devrait) s'accompagner d'une prise de notes. Voilà pourquoi notre premier module traitera d'une question qui ne se limite pas, loin s'en faut, à la recherche reproductible, celle du « cahier de notes ». Ce module commencera donc en vous disant quelque chose que vous savez déjà (!) : « nous devons tous prendre des notes. »

Si nous devons tous prendre des notes, nos prédécesseurs ont du le faire aussi. Cette constatation élémentaire faite, nous éviterons de croire que nous sommes les premiers à avoir à faire face un déluge d'informations. Nous en profiterons pour apprendre comment nos brillants ancêtres s'y sont pris. En nous inspirant de nos connaissances des « anciennes » techniques, nous verrons ensuite comment mettre à profit les outils fournis par l'informatique.

Les fichiers texte et les langages de balisage léger vont nous permettre de structurer nos notes et de les « recycler » facilement (dans des articles, des pages web, etc.). La gestion de version nous évitera de tout perdre tout en gardant trace de nos corrections et modifications successives. Enfin, reprendre une activité de zéro parce que retrouver la bonne information dans la jungle de nos notes prendrait plus de temps ne sera plus qu'un souvenir avec la construction d'index.


<a id="org730212d"></a>

## Le « cahier de notes »

Le « cahier de notes » doit être considéré ici « au sens large » ; c'est-à-dire que, suivant le contexte, il sera plus proprement appelé « cahier de terrain », « cahier d'observations », « journal » ou « cahier de laboratoire ». Ce qui nous intéresse ici est la notion de supports (papiers ou numériques) dans lesquels des informations sont stockées au fil du temps &#x2013; contrairement au cas d'un mémoire ou d'un article où c'est la logique de l'argumentation qui structure le contenu &#x2013; ; ces informations sont de plus de nature souvent hétérogène et leurs supports, lorsqu'ils sont multiples, aussi (par exemple, un cahier de notes associé à des fichiers textes).


<a id="org2a90588"></a>

### Exemples concrets de « cahier de notes »

-   [Les cahiers de Léonard de Vinci](http://unesdoc.unesco.org/images/0007/000748/074877fo.pdf) et la page Wikipédia sur [Le Codex Leicester](https://fr.wikipedia.org/wiki/Codex_Leicester) ;
-   [la page wikipedia sur Galilée](https://en.wikipedia.org/wiki/Galileo_Galilei) contient de nombreux liens, certains vers ses cahiers de notes ;
-   [Les « registres de laboratoire » de Pasteur](http://gallica.bnf.fr/Search?ArianeWireIndex=index&p=1&lang=EN&f_typedoc=manuscrits&q=Louis+Pasteur+registres) sont disponibles sur Gallica ;
-   [Les dossiers préparatoires de Zola pour les Rougon-Macquart](http://gallica.bnf.fr/ark:/12148/btv1b90797770/f1.image.r=Emile%20Zola) sont aussi disponibles sur Gallica ;
-   [Le journal de bord de James Cook](https://ebooks.adelaide.edu.au/c/cook/james/c77j/index.html) lors de son premier voyage sont consultables &#x2013; [un autre exemple](http://southseas.nla.gov.au/journals/hv01/title.html) plus complet est aussi disponible &#x2013;, la [page Wikipedia](https://en.wikipedia.org/wiki/James_Cook) contient un grand nombre de liens ;
-   L'essentiel des [cahiers de notes de Charles Darwin](http://darwin-online.org.uk/) est consultable en ligne ;
-   [Les fiches de Carl von Linnée](http://linnean-online.org/61332/#/0) sont consultables en ligne ;
-   [Les cahiers de laboratoire de Linus Pauling](http://scarc.library.oregonstate.edu/coll/pauling/rnb/index.html) sont disponibles dans leur intégralité ;
-   L'histoire de la [mesure du méridien](https://fr.wikipedia.org/wiki/Figure_de_la_Terre_et_m%C3%A9ridienne_de_Delambre_et_M%C3%A9chain#M%C3%A9ridienne_de_Delambre_et_M%C3%A9chain_et_progr%C3%A8s_scientifiques_%C3%A0_la_m%C3%AAme_%C3%A9poque) de Dunkerke à Barcelone par Delambre et Méchain est remarquablement contée dans le livre de Ken Alder, « Mesurer le monde - 1792-1799 : l'incroyable histoire de l'invention du mètre » (en poche chez Flammarion) ; les cahiers de notes y jouent un rôle tout à fait primordial.


<a id="orgf5eeda3"></a>

# Notes et références sur la séquence 1 : « Nous utilisons tous des cahiers de notes »


<a id="orgc71b34a"></a>

## Manuscrits annotés

En guise d'entrée dans l'univers des manuscrits annotés, je fais suivre une petite sélection de passages du premier chapitre de « LA PAGE. DE L'ANTIQUITÉ À L'ÈRE DU NUMÉRIQUE » d'Anthony Grafton (Hazan, 2012) :

      Par le mouvement même de sa plume sur la page, il est clair que
    Casaubon maîtrise tout ce qu'il lit. Constamment, il souligne des
    mots et des expressions, il note en marge des mots clés et des résumés
    montrant qu'il a lu attentivement, même quand, précise-t-il dans son
    journal intime, il étudie en une journée quarante à cinquante pages
    in-folio de grec émaillées de nombreuses abréviations. Les passages
    plus importants donnent lieu en marge à des commentaires plus
    longs. Sur les pages de titre, Casaubon porte très souvent — un peu
    comme Montaigne — un jugement global sur la valeur de l'ouvrage.
    Par ailleurs, il note ses réflexions dans des carnets, ou prend
    des notes sur des textes qu'il ne peut pas acheter. Tels qu'ils sont
    réunis dans sa bibliothèque, ses livres représentent une vie entière de
    lecture que l'on peut reconstituer au fil des pages.

Pages 32 et 33, à propos d'[Isaac Casaubon](https://fr.wikipedia.org/wiki/Isaac_Casaubon) (1559-1614).

      Pourtant, Harvey a laissé beaucoup plus que cela, et notamment
    des traces des ses lectures sous forme de plus d'une centaine de livres
    couverts d'annotations magnifiquement écrites de sa belle écriture
    italique — en plus des cahiers dans lesquels il notait des extraits.
    Manifestement, Harvey considérait la lecture comme sa profession,
    et il en a fait aussi un art. Décennie après décennie, il couche ses
    pensées sur l'histoire dans une édition in-folio de 1555 de l'Histoire
    romaine de Tite-Live. Ses notes, en latin pour la plupart, parcourent
    les marges, se répandent entre les chapitres et remplissent
    des feuilles volantes, prenant un aspect particulièrement érudit et
    assez rébarbatif.

Pages 35 et 36, à propos de [Gabriel Harvey](https://en.wikipedia.org/wiki/Gabriel_Harvey) (1545-1630).

    ... Mais dans l'exemplaire de travail qui subsiste du
    texte, l'édition de base de 1549, il [Casaubon] introduit tant d'annotations
    précises que les catalogueurs de la Bibliothèque bodléienne, qui n'étaient
    pas rompus à la rhétorique, ont classé ce livre imprimé parmi les manuscrits.

Page 40.


<a id="org60d83a8"></a>

## Armoires à notes de Placcius et Leibniz

J'ai trouvé cet exemple dans les travaux d'[Ann Blair](https://projects.iq.harvard.edu/ablair) comme « [The Rise of Note-Taking in Early Modern Europe](https://dash.harvard.edu/handle/1/4774908) » et son livre « [TOO MUCH TO KNOW. Managing Scholarly Information before the Modern Age](https://yalebooks.yale.edu/book/9780300165395/too-much-know) », publié chez *Yale University Press* en 2011. 


<a id="org15f16da"></a>

## La préface de « L'île des pingouins » d'Anatole France

Étant très loin de connaître Anatole France sur le bout des doigts, j'ai trouvé la référence citée dans le remarquable article de Keith Thomas publié par la *London Review of Books*, [le 10 juin 2010](https://www.lrb.co.uk/v32/n11/keith-thomas/diary). Cet article (en anglais) décrit et discute le travail concret de prise de notes par un historien, il est de plus très bien écrit et plein d'anecdotes.


<a id="org2019f41"></a>

## Les livres de bord

Je remercie Joël Caselli de m'avoir aidé à interpréter le contenu du livre de bord d'Éric Tabarly. 

Le projet européen de reconstruction des climats des océans atlantique et indien (et non pacifique comme je le dis dans le cours !) : [*Climatological Database for the World's Oceans 1750-1850*](http://webs.ucm.es/info/cliwoc/) ; dispose d'un site internet très intéressant (mais en anglais).

On trouvera des citations abondantes (et effrayantes) de livres de bord de navires négriers dans le livre de Marcus Rediker « À bord du négrier : Une histoire atlantique de la traite » (disponible en édition de poche).


<a id="org16eb5e8"></a>

## Un absent : le cahier de laboratoire classique

Je traduis ici la section 6.2 *Notebooks and Records* du remarquable livre de E. Bright Wilson *An Introduction to Scientific Research* réimprimé par Dover.

Il est difficile de concevoir un cahier de laboratoire parfait et il est malheureusement rare d'en trouver un qui soit même à peu près satisfaisant ; la conservation d'une trace écrite du travail effectué est néanmoins une source majeure d'efficacité. Il y aura forcément des gens opposés à un ensemble de règles fixes, mais cela sera probablement plus rare pour le rituel de garder un cahier que sur d'autres sujets. Par conséquent, un ensemble de règles qui sont généralement considérées comme satisfaisantes, voire même essentielles, seront quelque peu dogmatiquement énoncées.

De grandes découvertes ont été retardées en raison d'une négligente tenue des traces écrites. L'astronome Le Monnier est ainsi supposé avoir observé la planète Uranus à plusieurs reprises &#x2013; avant que son identification comme planète ait été annoncée par Herschel &#x2013;, mais a décidé qu'elle était une étoile fixe. Cela s'explique probablement en partie par le fait qu'il a écrit ses mesures sur des morceaux de papier, y compris un sac en papier contenant à l'origine de la poudre pour cheveux !

Les cahiers de laboratoire doivent être solidement reliés, d'une taille approximative de 20 x 25 cm, avec des pages numérotées. Les feuilles séparées sont trop facilement perdues pour être satisfaisantes, d'autant plus qu'un cahier de laboratoire subit souvent un traitement un peu rude avec peut-être des projections occasionnelles d'acide [c'est un physico-chimiste qui écrit]. Le cas de mesures répétées constitue une exception où une ébauche spéciale imprimée est souvent utile si un bon système est établi pour collecter et relier les feuilles séparées. Les pages avec des lignes sont généralement utilisées, mais il s'agit d'une question de goût personnel, et certaines préfèrent des pages blanches ou à carreaux. Un tampon en caoutchouc peut être utilisé pour fournir des en-têtes pour les entrées les plus communes.

Les données doivent être entrées directement dans le cahier au moment de l'observation. Il est intolérable d'utiliser sa mémoire ou des fragments de papier pour l'enregistrement primaire, du fait de l'inévitabilité des erreurs et des pertes. Il devrait donc y avoir une bonne place pour le cahier à coté du poste de travail, et l'expérimentateur ne devrait jamais être sans son cahier lorsqu'il est en action.

Les données doivent être enregistrées à l'encre, de préférence une encre permanente, un buvard peut être pratique. Sinon, la trace écrite est trop éphémère. Les cahiers sont soumis à une utilisation intensive et les écritures au crayons se détériorent trop rapidement. Lorsque le cahier peut être utilisé comme preuve pour un brevet, l'usage de l'encre s'impose.

Des graphiques approximatifs et qualitatifs peuvent être dessinés directement, mais les graphiques précis sont généralement préparés avec le papier graphique du type le plus approprié [pensez au papier millimétré]. Ils sont ensuite soigneusement collés dans le cahier, une page vierge étant découpée afin de compenser l'épaisseur ajoutée.

Les cahiers doivent porter le nom de l'utilisateur et les dates couvertes. [&#x2026;]. Les huit ou dix premières pages devraient être réservées pour une table des matières. Il s'agit de lignes ajoutées chronologiquement pour chaque série d'expériences similaires, ainsi que la référence de la page. La table des matières est extrêmement utile pour trouver des éléments plus tard et est très simple à suivre. Un index au dos du cahier est avantageux mais pas indispensable.

Chaque élément devrait être datée et, si plusieurs personnes utilisent un cahier (généralement pas recommandé), paraphé. Le contenu ne devrait pas inscrit de façon trop dense sur les pages ; le papier est bon marché par rapport aux autres dépenses de recherche.

La principale difficulté est de décider ce qu'il faut écrire dans le cahier. Évidemment, on entre les résultats numériques et les valeurs des variables indépendantes telles que la température, la composition ou la pression qui sont directement pertinentes. Il est également nécessaire d'avoir un système d'entrées ou de références afin que, plus tard, il soit possible de dire quel appareil a été utilisé et dans quelles circonstances. Une description assez complète de l'appareil devrait être conservée. Ensuite, lorsque des modifications sont apportées à l'appareil, elles doivent être décrites immédiatement dans le cahier. Il devrait également être possible de retracer la source des courbes d'étalonnage, des corrections, etc., qui étaient appropriées aux données d'un jour donné. Il est utile que les exigences relatives à l'écriture d'un article, d'une thèse ou d'un livre soient gardées à l'esprit. Une telle tâche, une fois effectuée, entraîne généralement la résolution solennelle de garder un cahier plus détaillé dans le futur. Essayer de comprendre le cahier de notes de quelqu'un d'autre constitue aussi un exercice hautement salutaire. Toutes les références aux appareils, aux lieux, aux horaires, aux livres, aux articles, aux graphiques et aux personnes devraient être suffisamment explicites pour être compréhensibles des années plus tard. **Il devrait être possible de prendre chaque article scientifique et de montrer exactement où chaque figure, description ou déclaration est justifiée par des observations originales dans le cahier de laboratoire, et exactement pourquoi les nombres final et original diffèrent, si tel est le cas**.

Un énoncé du but de chaque expérience et un résumé des conclusions obtenues rendent le cahier beaucoup plus utile.
Les croquis, dessins et diagrammes sont essentiels. Comme tant d'observations sont visuelles, *il est important de noter ce qui est réellement vu, y compris des éléments qui ne sont pas entièrement compris lors de leur observation*.

Les expériences mauvaises ou non prometteuses, même celles considérées comme des échecs, devraient être entièrement enregistrées. Elles représentent un effort qui ne doit pas être gaspillé, car souvent quelque chose peut être récupéré, même si ce n'est qu'une connaissance de ce qu'il ne faut pas faire.

Les données doivent toujours être entrées dans leur forme la plus primaire, et non après un calcul ou une transformation. Si c'est le rapport de deux observations qui est intéressant, mais si les deux nombres sont effectivement observés, les deux nombres doivent être enregistrés. Si le poids précis d'un objet est important, les poids d'équilibrage individuels utilisés et leur identification devraient être inclus, c'est-à-dire le numéro de série de leur boîte. Dans le cas contraire, il devient impossible d'appliquer ultérieurement des corrections d'étalonnage ou de modifier les corrections si de nouvelles valeurs apparaissent. Naturellement, ce détail n'est pas nécessaire si seulement un poids approximatif est impliqué. La forme tabulaire est la meilleure pour les données numériques. Les unités doivent être notées.

Lorsque des brevets sont impliquées, il peut être souhaitable d'authentifier les pages des cahiers à intervalles réguliers. Le témoin devrait être quelqu'un qui comprend le contenu mais qui n'est pas impliqué dans la recherche. Un contenu ajouté ultérieurement à une page devrait l'être dans une encre de couleur différente, et toutes les modifications devraient être paraphées, authentifiées et datées si elles sont susceptibles d'être importantes. Les entreprises industrielles font ainsi généralement respecter leurs propres règles en matière de cahiers de laboratoire.

**Numéros d'identification**. Il est stupide de consacrer du temps et de l'argent à des enregistrements de différents types [&#x2026;] si ceux-ci sont ensuite perdus ou mélangés. Tout enregistrements qui ne peut être inclut directement dans le cahier de notes devraient porter une identification complète indélébile. Un système simple qui a fait ses preuves consiste à écrire à l'encre sur chaque enregistrement un symbole identifiant le cahier, puis le numéro de page sur lequel les données auxiliaires sont enregistrées. Si plus d'un enregistrement sont mentionnés sur une page du cahier, des lettres ou des chiffres supplémentaires peuvent être ajoutés. Ainsi, EBW II 85c identifie le troisième enregistrement discuté à la page 85 du deuxième cahier EBW. C'est mieux qu'un numéro de série qui ne dit pas, sans clé supplémentaire, où chercher la description le concernant dans le cahier.
Un bon système de classement est indispensable pour tous les films, les photographies, les schémas, les graphiques, les diagrammes de circuit, les dessins, les plans, etc. Il est plus difficile de concevoir des méthodes de dépôt satisfaisantes pour des matériaux très petits ou très grands. Les premiers sont facilement perdus et les dernier très volumineux. [&#x2026;]

Il est important d'archiver les dessins et les plans à partir desquels les appareils utilisés ont été construits, même si ces dessins sont grossiers. Ils doivent être datés, paraphés et étiquetés ; en fait, tout morceau de papier contenant une information utile devrait être marqué de la sorte. Lorsqu'un équipement électronique ou autre est fabriqué, son diagramme doit être soigneusement préparé et entièrement étiqueté avec toutes les constantes. L'appareil doit porter un numéro de série qui apparaît également sur ce diagramme. Lorsque des modifications sont apportées, celles-ci doivent être indiquées sur le schéma et datées ou un diagramme révisé et daté doit être préparé. L'ancien ne doit pas être obscurci ou jeté, car il peut être nécessaire pour expliquer des données antérieures, considérées ultérieurement comme étranges. [&#x2026;]

Le but de toute cette pratique de prise de notes est de préserver la valeur [le temps et les moyens humains et matériels investis dans la recherche]. Elle devrait être soigneusement conçus pour s'adapter aux conditions de chaque laboratoire et devraient être adéquate mais pas trop élaborés. **Si l'on exige trop de la nature humaine, le système ne fonctionnera pas**.


<a id="org1ae2571"></a>

# Notes et références sur la séquence 2 : « Un aperçu historique de la prise de notes »


<a id="orge284492"></a>

## Références générales

En plus des deux livres déjà cités :

-   « LA PAGE. DE L'ANTIQUITÉ À L'ÈRE DU NUMÉRIQUE » d'Anthony Grafton (Hazan, 2012) ;
-   « [TOO MUCH TO KNOW. Managing Scholarly Information before the Modern Age](https://yalebooks.yale.edu/book/9780300165395/too-much-know) », d'Ann Blair publié chez *Yale University Press* en 2011 ;

j'ai utilisé :

-   « L'histoire du livre » de Frédéric Barbier ;
-   le remarquable site de Jacques Poitou, [langages écritures typographies](http://j.poitou.free.fr/pro/index.html) ;
-   le site [l'aventure des écritures](http://classes.bnf.fr/ecritures/) de la BNF ;
-   le catalogue de l'exposition de la BNF « Tous les savoirs du monde : Encyclopédies et bibliothèques de Sumer au XXIème siècle » ;
-   « [Du papyrus à l'hypertexte](http://litmedmod.ca/sites/default/files/pdf/vandendorpe-papyrusenligne_lr.pdf) » de Christian Vandendorpe (La Découverte, 1999).


<a id="org8dd9b50"></a>

## Sur les tablettes de cires

Voir le site de Jacques Poitou (d'où les illustrations sont empruntées) et le livre de Frédéric Barbier, « L'histoire du livre ».


<a id="org172e431"></a>

## Sur le passage du rouleau (*volumen*) au codex

Voir le livre de Frédéric Barbier, celui d'Anthony Grafton.

Le *volumen* est un livre à base de feuilles de papyrus collées les unes aux autres et qui s'enroule sur lui-même. Il a été créé en Égypte vers 3000 av. J.-C. Le texte est rédigé en colonnes parallèles assez étroites. C'est le support du texte par excellence durant les trente siècles précédant notre ère, d'abord en Égypte, puis dans tout le monde méditerranéen. 

Comme l'explique Frédéric Barbier : « La forme du *volumen* impose une pratique de lecture complexe : il faut dérouler (*explicare*) et enrouler en même temps, ce qui interdit par exemple, de travailler simultanément sur plusieurs rouleaux (un texte et son commentaire) ou de prendre des notes, impose une lecture suivie et empêche la simple consultation. »

Le *volumen* n'est clairement pas adapté à une lecture « nomade » ; imagine-t-on Ulysse partant pour son Odyssée avec les 24 *volumen* de l'Iliade ?

Le *volumen* est à l'origine du terme « volume » dans un « livre en plusieurs volumes » comme dans la désignation du concept géométrique.

Le passage au codex repose sur deux innovations : 

-   la collection des tablettes de cires en « groupes reliés » ;
-   la généralisation du parchemin (peau, généralement, de mouton spécialement préparée) au détriment du papyrus. Cette généralisation résulte une lutte pour l'hégémonie culturelle entre deux descendants de généraux d'Alexandre le Grand, en effet d'après Pline l'ancien : [Ptolémé Épiphane](https://fr.wikipedia.org/wiki/Ptol%C3%A9m%C3%A9e_V) d'Alexandrie cherchait à empêcher [Eumène II](https://fr.wikipedia.org/wiki/Eum%C3%A8ne_II) d'établir une bibliothèque à Pergame (au 2e siècle avant J.-C.) et avait interdit l'exportation du papyrus (produit exclusivement en Égypte), ce qui incita Eumène à chercher un substitut qui devint le parchemin.

Le remplacement du rouleau par le codex aura des conséquences majeures sur l'organisation du livre ainsi que sur la façon de lire et il permettra le développement ultérieur de l'imprimerie. 

La principale révolution introduite par le codex est la notion de page. Grâce à elle, le lecteur peut accéder de manière directe à un chapitre ou à un passage du texte, alors que le rouleau impose une lecture continue. **Les mots ne sont de plus pas séparés par des espaces**. Comme l'écrit Collette Sirat : « Il faudra vingt siècles pour qu’on se rende compte que l’importance primordiale du codex pour notre civilisation a été de permettre la lecture sélective et non pas continue, contribuant ainsi à l’élaboration de structures mentales où le texte est dissocié de la parole et de son rythme. »

Au fil des siècles, le codex — qu'on désigne le plus souvent comme un manuscrit — va évoluer et se donner peu à peu les attributs du livre moderne : séparation entre les mots (VIIe siècle), début de ponctuation (VIIIe siècle), table des matières, titre courant, marque de paragraphe (XIe siècle), pagination, index (XIIIe siècle), etc. 

Un point intéressant : le contenu de la Thora est « fixé » avant l'apparition du codex et, aujourd'hui encore, la Thora est écrite sur des *volumen* (dans les synagogues au moins). La religion chrétienne se développe en même temps que le codex, adopte ce support et le répand ; elle ne donnera jamais au *volumen* un statut « supérieur », pas plus que ne le fera la religion musulmane.


<a id="org0f408c9"></a>

## Sur Eusèbe de Césarée

Pour en savoir plus sur [Eusèbe de Césarée](https://fr.wikipedia.org/wiki/Eus%C3%A8be_de_C%C3%A9sar%C3%A9e), consultez le passionnant deuxième chapitre du livre d'Anthony Grafton.


<a id="org898d2c5"></a>

## Parallèle chinois

Comme je le dis, mon inculture fait que je ne rends pas justice aux contributions chinoises, musulmanes, précolombienne, etc. J'essaierai de combler cette énorme lacune pour les seconde version du CLOM&#x2026;

Ce que je dis sur le passage du volumen au codex accompagné d'un développement des « outils de navigation » (index, table des matières, etc)  en Chine lors du développement de leishus vient du bouquin d'Ann Blair (p. 31) qui cite un article de Susan Cherniack, « Book Culture and Textual Transmission in Sung China », *Harvard Journal of Asiatic Studies* Vol. 54, No. 1 (Jun., 1994), pp. 5-125.


<a id="org23f1477"></a>

## Retour sur l'armoire à notes

Nous revenons sur le « bout de papier » ou la fiche comme support de note. L'inconvénient est que le bout de papier ou la fiche se perdent facilement et ne servent à rien s'ils ne sont pas **classés** en plus d'être rangés. Problème résolu par l'armoire de Placcius. D'une certaine façon, sa conception fait qu'on accède à son contenu par l'index.

L'avantage est que les notes peuvent être réorganisées si elles contiennent des information sur plusieurs sujets. Elle peuvent aussi être directement collées dans un livre lors de la composition d'un florilège ou d'un ouvrage de synthèse. 

Ce dernier procédé était très couramment employé par les humanistes et les érudit de la renaissance et du début de la période moderne. [Conrad Gessner](https://fr.wikipedia.org/wiki/Conrad_Gessner) (1516-1565) était un champion de cette technique ; il obtenait même parfois ses fiches en découpant les pages des livres. Encore une fois, ne faites pas cela avec les livres de bibliothèques !


<a id="orge852c7e"></a>

## L'index et John Locke

Sur l'origine de l'index, on pourra lire l'article de Jean Berger : [Indexation, Memoire, pouvoir et representations au seuil du XIIe siecle : La redecouverte des feuillets de tables du Liber De Honoribus, premier cartulaire de la collegiale Saint-Julien de Brioude](https://www.theindexer.org/files/25-2-berger.pdf), *The Indexer*.

La méthode de John Lock est expliquée dans l'article *Indexing commonplace books: John Locke’s method* d'Alan Walker, [The Indexer](https://www.theindexer.org/issues/query.php?vol=22&iss=3), vol. 22, p. 114-118, 2001.

Sur [John Locke](https://fr.wikipedia.org/wiki/John_Locke) (1632-1704) « papa du libéralisme » et actionnaire de la *Royal African Company* principale compagnie négrière britannique, voir l'article [Wikipedia](https://en.wikipedia.org/wiki/John_Locke#Constitution_of_Carolina) (en anglais) et le livre « Contre-histoire du libéralisme » de Domenico Losurdo (La Découverte / Poche, 2014, p. 34-36).


<a id="org30c5f99"></a>

# Notes et références sur la séquence 3 : « Du fichier texte au langage de balisage léger »


<a id="orgf02472f"></a>

## Fichier texte et éditeur de texte

Une définition plus technique (et moins circulaire !) du fichier texte se trouve sur [la page wikipédia](https://fr.wikipedia.org/wiki/Fichier_texte) consacrée au sujet. Pour plus de détails sur les éditeurs de texte, voir aussi la [page wikipédia correspondante](https://fr.wikipedia.org/wiki/%C3%89diteur_de_texte). 

Un logiciel de « [traitement de texte](https://fr.wikipedia.org/wiki/Traitement_de_texte) » est plus sophistiqué qu'un simple éditeur de texte ; il permet de faire plus, ce qui sous entend qu'il peut aussi ouvrir et manipuler des fichiers textes.

\*Attention\* : le format « natif » des traitements de texte est rarement un format texte. Les fichiers `doc` et `docx` de `Word` et `odt` de `LibreOffice` *ne sont pas des fichiers textes*.


<a id="org4c92ae2"></a>

## Le cas du fichier `PDF` ouvert avec un éditeur de texte

Dans le cours filmé, j'utilise l'exemple du [PDF](https://en.wikipedia.org/wiki/Portable_Document_Format) — je donne l'adresse de la page wikipedia en anglais, bien plus complète que celle en français — ouvert avec un éditeur de texte pour montrer que le fichier ne peut pas être visualisé avec un tel logiciel, il faut un logiciel de rendu dédié comme `Adobe Reader`, `Evince`, `MuPDF`, `Aperçu`,&#x2026; Vous remarquez néanmoins que le début du fichier contient du texte (la première ligne nous apprend que le fichier utilise la version 1.3 du format `PDF`). Cette partie au format texte du fichier contient les méta-données — qui ne sont pas montrées, en tout cas pas directement, par les logiciels de rendu. Ces méta-données sont (en partie) au format [XMP](https://en.wikipedia.org/wiki/Extensible_Metadata_Platform) (*Extensible Metadata Platform*), nous y reviendrons dans la cinquème séquence.


<a id="org1305f4c"></a>

## Sur l'UTF-8

Une table des symboles UTF-8, avec leur code se trouve à l'adresse : <http://www.utf8-chartable.de/>. C'est pratique pour insérer un symbole pas très courant comme la lettre « TLO » : Ꮰ de la langue cherokee, ou le symbole mathématique ∀, « pour tout ».

Pour ceux qui doivent souvent utiliser des lettres grecs (par exemple pour écrire des équations), il est possible sous Linux de (re)définir des combinaisons de touches pour générer directement les dites lettres. Ces combinaisons sont définies dans le fichier `.XCompose`, le début de mon fichier contient :

    # On charge la base de donnée de Compose la plus complète en UTF-8
     include "/usr/share/X11/locale/en_US.UTF-8/Compose"
     # espace insécable fine
     <Multi_key> <Multi_key> <Space> : " " U202F
     # Lettres greques
     <Multi_key> <space> <a> : "α"  Greek_alpha
     <Multi_key> <space> <A> : "Α"  Greek_ALPHA
     <Multi_key> <space> <b> : "β"  Greek_beta
     <Multi_key> <space> <B> : "Β"  Greek_BETA
     <Multi_key> <space> <g> : "γ"  Greek_gamma
     <Multi_key> <space> <G> : "Γ"  Greek_GAMMA
     <Multi_key> <space> <d> : "δ"  Greek_delta
     <Multi_key> <space> <D> : "Δ"  Greek_DELTA
     <Multi_key> <space> <e> : "ε"  Greek_epsilon
     <Multi_key> <space> <E> : "Ε"  Greek_EPSILON
     <Multi_key> <space> <z> : "ζ"  Greek_zeta
     <Multi_key> <space> <Z> : "Ζ"  Greek_ZETA
     <Multi_key> <space> <h> : "η"  Greek_eta

J'ai en plus redéfini la « <Multi\_key> » pour qu'elle corresponde à la touche « impression d'écran » de mon clavier. Pour apprendre à redéfinir des touches, consultez : <https://wiki.archlinux.org/index.php/Keyboard_configuration_in_Xorg#Configuring_compose_key>.


<a id="orgaba3aca"></a>

# Notes et références sur la séquence 5 : « Les étiquettes et les logiciels d'indexation pour s'y retrouver »


<a id="orgfcff6c0"></a>

## La structure de la séquence

Nous revenons ici sur le problème de l'indexation, pas tant sur l'indexation d'un document unique que sur l'indexation de documents multiples dans des formats divers :

-   comme nous l'avons déjà affirmé, prendre des notes abondantes et détaillées n'est utile que si nous pouvons retrouver les informations qu'elles contiennent quand nous en avons besoin ;
-   pour des notes contenues dans un seul fichier texte, la fonction de recherche de notre éditeur favori nous permet généralement d'aller assez loin ;
-   pour des notes manuscrites contenues dans un cahier, la méthode de Locke — que nous avons exposée dans notre deuxième séquence — et qui repose sur des mots clé ou étiquettes, donne de bons résultats ;
-   les notes manuscrites sur fiches sont généralement stockées dans un meuble dont la structure matérialise un index — comme l'armoire de Placcius et Leibniz — ;
-   mais nous voulons ici aller plus loin, dans le cadre restreint des « notes » numérisées, en discutant de l'indexation de fichiers multiples qu'ils soient au format « texte » où dans d'autres format comme les images `jpg` où les fichier `pdf` ;
-   cela nous amménera à introduire les « moteurs de recherche de bureau » et à expliquer comment des `étiquettes` ou `mots-clés` peuvent être ajoutés à nos fichiers.


<a id="org32aaaed"></a>

## La citation de Leibniz

J'ai trouvé la citation introductive :

« Il me semble que l'apparat savant contemporain est comparable à un grand magasin qui contient une grande quantité de produits, stockés de façon totalement désordonnée, mélangée ; où les nombres ou lettres d'indexation manquent ; où les inventaires et livres de comptes pouvant aider à ordonner le contenu ont disparus.

Plus grande est la quantité d'objets amassés, plus petite est leur utilité. Ainsi, ne devrions nous pas seulement essayer de rassembler de nouveaux objets de toutes provenances, mais nous devrions aussi essayer d'ordonner ceux que nous avons déjà. »

sur le site <http://www.backwordsindexing.com/index.html>, c'est donc une traduction de traduction. J'emploie ici le terme volontairement anachronique d'« [apparat savant](<https://fr.wikipedia.org/wiki/Apparat_savant>) » qui est un terme technique de l'édition désignant :  citations, références et sources, notes en bas de pages, introduction, texte en langue originale (en parallèle avec la traduction), commentaire historique ou philologique, index fontium (les sources), index locorum (références avec renvoi à la page où le passage est cité ou mentionné, par ex. : Évangile selon Marc 1, 1 : p. 100), index nominum (les noms propres), index rerum (les thèmes), etc. La référence au « grand magasin » est, elle aussi anachronique !

Leibniz a, pendant une bonne partie de sa vie, « gagné celle-ci » comme [bibliothécaire](https://www.reseau-canope.fr/savoirscdi/societe-de-linformation/le-monde-du-livre-et-des-medias/histoire-du-livre-et-de-la-documentation/biographies/leibniz-le-bibliothecaire.html), ce qui explique en partie sont intérêt très poussé pour les questions de classifications, d'indexations, etc.


<a id="orgdbf92e1"></a>

## Rechercher avec un éditeur de texte

La diapo correspondante rappelle juste au lecteur quelque chose qu'il sait déjà et qui est vue, par les gens qui passent des notes « papier » aux notes « numériques », comme le gros attrait du numérique.

Les gens de monde Unix/Linux connaissent aussi généralement le programme [grep](https://fr.wikipedia.org/wiki/Grep) qui permet de faire des recherches de mots et, plus généralement d'[expressions régulières](https://fr.wikipedia.org/wiki/Expression_r%C3%A9guli%C3%A8re), sur un ou *plusieurs* fichiers ; nous y reviendrons.


<a id="orgab1d546"></a>

## Recherche avec index construit « à la main » sur des cahiers de notes

Là encore, il s'agit juste d'un rappel pour les lecteurs assidus de ce cours ; à ce stade se sont des experts dans la méthode d'indexation de Locke.


<a id="orgebb0a49"></a>

## Recherche avec index « matérialisés »

Encore un rappel pour les lecteurs.


<a id="orgddef543"></a>

## Vers les outils « sophistiqués » de l'informatique

-   les techniques que nous venons de voir ou revoir ne fonctionnent que pour un seul « document » — recherche avec l'éditeur de texte, index d'un cahier — et/ou pour un seul type de document ;
-   les outils informatiques dont nous disposons nous permettent d'aller plus loin dans l'indexation des fichiers numériques ;
-   il est possible de rajouter des étiquettes ou mots-clés à des fichiers textes comme à des fichiers images (\`jpg\`, \`png\`) ou des fichiers « mixtes » (\`pdf\`) grâce aux métadonnées qu'ils contiennent ;
-   les moteurs de recherche de bureau permettent d'indexer l'ensemble des fichiers textes d'une arborescence donnée mais aussi les métadonnées des autres fichiers.


<a id="orgaf4f7ba"></a>

## Les moteurs de recherche de bureau

Les moteurs de recherche de bureau comme :

-   [DocFetcher](http://docfetcher.sourceforge.net/fr/index.html) (Linux, MacOS, Windows) ;
-   [Tracker](https://wiki.gnome.org/Projects/Tracker) (Linux) ;
-   [Recoll](https://www.lesbonscomptes.com/recoll/index.html.fr) (Linux, MacOS, Windows) ;
-   [Spotlight](https://fr.wikipedia.org/wiki/Spotlight_(moteur_de_recherche)) (MacOS) ;

permettent de rechercher le *contenu* des fichiers textes, des courriels, des fichiers générés par les `traitements de texte` — c'est-à-dire des fichiers qui contiennent essentiellement du texte, mais qui sont stockés dans un format type `doc`, `docx`, `odt`, etc qui ne sont pas des formats texte —, des fichiers `pdf` — quand ceux-ci ne sont pas des *images* de textes —, mais aussi des [métadonnées](https://en.wikipedia.org/wiki/Portable_Document_Format#Metadata) des fichiers `pdf`, etc. 

Les moteurs de recherche de bureau « utilisent des techniques d'[indexation](https://fr.wikipedia.org/wiki/Indexation_automatique_de_documents) qui permettent de réduire considérablement les temps de recherche, par rapport aux fonctions de recherche intégrées par défaut aux systèmes d'exploitation. Au contraire de ces derniers, ils prennent aussi souvent en charge les [métadonnées](https://fr.wikipedia.org/wiki/M%C3%A9tadonn%C3%A9e), et sont capables de faire une [analyse syntaxique](https://fr.wikipedia.org/wiki/Analyse_syntaxique) des fichiers. » (Source : [Moteur de recherche de bureau](https://fr.wikipedia.org/wiki/Moteur_de_recherche_de_bureau) sur Wikipédia)

Comme exemple de « fonctions de recherche intégrées par défaut », on trouvera sur les systèmes Unix/Linux le programme [grep ](https://fr.wikipedia.org/wiki/Grep)avec lequel nous pouvons chercher les occurrences du mot « Galilée » dans le répertoire « RR\_MOOC » de notre cours sur GitHub (après l'avoir cloné) :

    grep -r Galilée

    Notes_module1.org:- [[https://en.wikipedia.org/wiki/Galileo_Galilei][la page wikipedia sur Galilée]] contient de nombreux liens, certains vers ses cahiers de notes ;
    Notes_module1.org:Comme exemple de « fonctions de recherche intégrées par défaut », on trouvera sur les systèmes Unix/Linux le programme [[https://fr.wikipedia.org/wiki/Grep][grep ]]avec lequel nous pouvons chercher les occurrences du mot « Galilée » dans le répertoire « RR_MOOC » de notre cours sur GitHub (après l'avoir cloné) :
    Notes_module1.org:grep -r Galilée
    Notes_module1.org:: PITCHME.md:## Galilée qui observe les lunes de Jupiter
    Notes_module1.org:: PITCHME.md:Le 7 janvier 1610, Galilée fait une découverte capitale : il remarque trois « petites étoiles » à côté de Jupiter. Après quelques nuits d'observation, il découvre qu'il y en a une quatrième et qu'**elles accompagnent la planète**, c'est ce qu'il note sur son cahier d'observations. Ce sont les satellites visibles de Jupiter, qu'il nommera plus tard les étoiles Médicées ou astres médicéens – en l'honneur de ses protecteurs, la Famille des Médicis – et qui sont aujourd'hui appelés lunes galiléennes.
    Notes_module1.org:: PITCHME.md:Ces observations amèneront Galilée à rejeter l'hypothèse géocentrique (la terre est le centre de l'Univers et tout tourne autour d'elle) en faveur du système copernicien héliocentrique. Cela l'amènera indirectement (je « fais court ») et bien plus tard, le 22 juin 1633, a être condamné par l'inquisition, ce qui lui vaudra de finir ses jours en résidence surveillée.
    Notes_module1.org:: PITCHME.md:Remarquez l'avantage des « bouts de papiers classés » de Placcius et Leibniz sur le _codex_ de Galilée : les premiers peuvent être facilement réordonnées.
    Notes_module1.org:: Notes_module1.org:- [[https://en.wikipedia.org/wiki/Galileo_Galilei][la page wikipedia sur Galilée]] contient de nombreux liens, certains vers ses cahiers de notes ;
    Notes_module1.org:: Notes_module1.org:Comme exemple de « fonctions de recherche intégrées par défaut » on trouvera sur les systèmes Unix/Linux le programme [[https://fr.wikipedia.org/wiki/Grep][grep ]]avec lequel nous pouvons chercher les occurrences du mot « Galilée » dans le répertoire « RR_MOOC » de notre cours sur GitHub (après l'avoir cloné) :
    Notes_module1.org:: Notes_module1.org:grep -r Galilée
    PITCHME.md:## Galilée qui observe les lunes de Jupiter
    PITCHME.md:Le 7 janvier 1610, Galilée fait une découverte capitale : il remarque trois « petites étoiles » à côté de Jupiter. Après quelques nuits d'observation, il découvre qu'il y en a une quatrième et qu'**elles accompagnent la planète**, c'est ce qu'il note sur son cahier d'observations. Ce sont les satellites visibles de Jupiter, qu'il nommera plus tard les étoiles Médicées ou astres médicéens – en l'honneur de ses protecteurs, la Famille des Médicis – et qui sont aujourd'hui appelés lunes galiléennes.
    PITCHME.md:Ces observations amèneront Galilée à rejeter l'hypothèse géocentrique (la terre est le centre de l'Univers et tout tourne autour d'elle) en faveur du système copernicien héliocentrique. Cela l'amènera indirectement (je « fais court ») et bien plus tard, le 22 juin 1633, a être condamné par l'inquisition, ce qui lui vaudra de finir ses jours en résidence surveillée.
    PITCHME.md:Remarquez l'avantage des « bouts de papiers classés » de Placcius et Leibniz sur le _codex_ de Galilée : les premiers peuvent être facilement réordonnées.

Une version plus sophistiquée de `grep` est fournie par le programme [cgvg](http://uzix.org/cgvg.html).


<a id="org06edb53"></a>

## Pourquoi des étiquettes

Une requête basée sur un simple mot renvoie souvent un très grand nombre de propositions, même si la plupart des moteurs de recherche de bureau permettent de filtrer ces dernières. Une façon efficace de limiter leur nombre est d'inclure dans nos documents des étiquettes, c'est-à-dire des points d'ancrage labelisés, qui seront aisément indexés par le moteur de recherche de bureau et dont le label ne correspond à aucun mot ou locution du dictionnaire — nous effectuons ainsi une version simplifiée du travail de l'*indexeur*, la personne chargée de construire l'index d'un livre. Pour que l'étiquette garde un sens, il suffit d'encadrer un mot par une paire de signes de ponctuation comme « : », « ; » ou « ? ». Un label comme « :code: » sera facilement mémorisé et fera un parfait équivalent du mot-clé « code » utilisé dans l'exemple du cahier de note de la deuxième séquence de ce module — pour illustrer la méthode de Locke. 

Il nous reste encore nous reste encore un détail technique à régler dans le cas de nos notes prises en format texte comme `Markdown`. En effet, nous ne souhaitons pas que nos étiquettes apparaissent dans les sorties `html`, `pdf` ou `docx` de nos notes. Un façon de procéder, pour les langages de balisage légers qui ne disposent pas d'étiquettes — par exemple, `Markdown` n'en dispose pas, alors que `org` en a — et de les inclure dans des commentaires. En `Markdown`, tout ce qui est encadré par `<!--` et `-->` est considéré comme un commentaire et ne figure pas dans les sorties `html` ou `pdf` des notes. Nous pouvons ainsi utiliser :

    <!-- ;code; -->

à l'endroit de nos notes où nous souhaitons aller rapidement lorsque que nous cherchons une information relative à de la programmation (production de codes). 


<a id="orgd05cefb"></a>

## Les métadonnées


<a id="org35c9a2a"></a>

### Fichiers images

Nous savons à présent comment rajouter des étiquettes à un fichier au format texte, mais nous devons souvent aussi travailler avec des fichiers contenant des images ou des photos, comme les fichiers [JPEG](https://fr.wikipedia.org/wiki/JPEG) — les appareils photos numériques utilisent tous ce format —,  [GIF](https://fr.wikipedia.org/wiki/Graphics_Interchange_Format) ou [PNG](https://fr.wikipedia.org/wiki/Portable_Network_Graphics). La question se pose alors, peut-on ajouter des étiquettes à nos fichiers images de sorte que nos moteurs de recherche de bureau les indexent ? La réponse et oui, grâce aux [métadonnées](https://fr.wikipedia.org/wiki/M%C3%A9tadonn%C3%A9e) que contiennent ces fichiers. Les métadonnées, dans ce cas, sont des données stockées dans le fichier mais qui ne sont pas montrées par le logiciel de rendu (en tout cas, pas montrées par défaut). Nous savons tous que ces métadonnées « existent » ; ce sont elles qui contiennent la date, la localisation GPS, le temps d'exposition, etc. de nos photos numériques. Dans les fichiers `JPEG`, elles sont stockées suivant l'[exchangeable image file format](https://fr.wikipedia.org/wiki/Exchangeable_image_file_format) (`EXIF`). La plupart des logiciels de manipulations d'images et de photos permettent d'accéder au contenu des métadonnées et de les modifier. L'exemple illustré dans le cours utilise une solution très simple en « ligne de commande », [ExifTool](http://owl.phy.queensu.ca/~phil/exiftool/) qui permet de visualiser et de modifier les métadonnées. D'autres logiciels comme [exiv2](http://www.exiv2.org/index.html) ou [ImageMagick](https://imagemagick.org/script/index.php) permettent de le faire (pour ne citer que des logiciels libres disponibles sur Linux, Windows et MacOS). Certains des éléments du format `EXIF` sont des chaînes de caractères, c'est-à-dire du texte, que nous somme libres d'utiliser comme nous le souhaitons ; nous pouvons dès lors les utiliser pour rajouter nos étiquettes. Nous illustrons dans le cours comment le faire avec `ExifTool`, mais nous aurions aussi pu le faire avec le programme [mogrify](https://www.imagemagick.org/script/command-line-options.php#comment) d'ImageMagick. Tous les moteurs de recherche de bureau que nous avons mentionné vont « aller regarder » les métadonnées des fichier `JPEG` lors de la phase d'indexation et nous permettront ainsi d'exploiter les étiquettes que nous y aurons insérées.

`EXIF` n'est pas le seul format de métadonnées existant ; un format plus récent est l'[Extensible Metadata Platform ](https://fr.wikipedia.org/wiki/Extensible_Metadata_Platform)(`XMP`), disponible pour un plus grand nombre de formats de fichiers — il n'est pour l'instant pas lu sur les fichiers `JPEG` par `DocFetcher`, c'est pourquoi nous avons mis en avant le format `EXIF`, mais cela devrait évoluer assez vite ; les autres moteurs comme `Tracker` et `Recoll` le lisent.


<a id="org1dca817"></a>

### Fichiers `PDF`

En plus des fichiers images, nous sommes tous très fréquemment amenés à travailler avec les fichiers « composites » — contenant textes, images, et plus — que sont les fichiers [PDF](https://fr.wikipedia.org/wiki/Portable_Document_Format). Ces fichiers contiennent eux aussi des métadonnées ; c'est d'ailleurs pour eux qu'Adobe a initialement introduit le format `XMP` que nous venons de discuter. Ces métadonnées peuvent être lues et modifiées, en particulier l'élément `Keywords` (mot-clé) qui peut contenir des chaînes de caractères de longueur arbitraires et qui est parfait pour accueillir nos étiquettes. Le programme `ExifTool`, permet de modifier les métadonnées des fichiers `PDF`. Les moteurs de recherche de bureau que nous avons mentionnés, vont tous aller lire les métadonnées des fichiers `PDF` lors de la phase d'indexation.


<a id="orgea7f02d"></a>

### Fichiers audios

Les formats audio comme le [mp3](https://fr.wikipedia.org/wiki/MPEG-1/2_Audio_Layer_III) ou le [ogg](https://fr.wikipedia.org/wiki/Ogg) contiennent eux aussi des métadonnées, où sont stockés les titres, noms des interprètes, etc ; ces métadonnées peuvent être modifiées et sont lues par les moteurs de recherche de bureau lors de la phase d'indexation. 

