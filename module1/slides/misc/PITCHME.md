---
# C028AL-W1-S0

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/clap.png" style="width:50%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## Les grandes lignes du module : cahier de notes / cahier de laboratoire
1. Nous utilisons tous des cahiers de notes 
2. <!-- .element class="fragment" --> Un aperçu historique de la prise de notes
3. <!-- .element class="fragment" --> Du fichier texte au langage de balisage léger
   - Démonstration : markdown
4. <!-- .element class="fragment" --> Pérennité et évolutivité des notes avec la gestion de version
   - Démonstration : gitlab
5. <!-- .element class="fragment" --> Les étiquettes et les logiciels d'indexation pour s'y retrouver
   - Démonstration : DocFetcher

Note:
__Première ligne__
Nous allons discuter ici d'une question qui dépasse la problématique de la recherche reproductible.

En effet, la mise en œuvre concrète de la recherche reproductible nécessite la tenue d'un cahier de notes et la prise de notes concerne tout le monde. Je commencerai donc ce module en vous disant quelque chose que vous savez déjà (!) : nous devons tous prendre des notes.

__Deuxième ligne__
Si nous devons tous prendre des notes, nos prédécesseurs ont du le faire aussi. Cette constatation élémentaire faite, nous éviterons de croire que nous sommes les premiers à avoir à faire face un déluge d'informations. Nous en profiterons pour apprendre comment nos brillants ancêtres s'y sont pris.

En nous inspirant de nos connaissances des « anciennes » techniques, nous verrons ensuite comment mettre à profit les outils fournis par l'informatique.

__Troisième ligne__
Les fichiers texte et les langages de balisage léger font nous permettre de structurer nos notes et de les « recycler » facilement (dans des articles, des pages web, etc.).

__Quatrième ligne__
La gestion de version nous évitera de tout perdre tout en gardant traces de nos corrections et modifications successives. 

__Cinquième ligne__
Enfin, reprendre une activité de zéro parce que retrouver la bonne information dans la jungle de nos notes prendrait plus de temps ne sera plus qu'un souvenir avec la construction d'index.


---
# C028AL-W1-S1

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/clap.png" style="width:50%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## 1. Cahier de notes / cahier de laboratoire

1. **Nous utilisons tous des cahiers de notes**
2. Un aperçu historique de la prise de notes
3. Du fichier texte au langage de balisage léger
   - Démonstration : markdown
4. Pérennité et évolutivité des notes avec la gestion de version
   - Démonstration : gitlab
5. Les étiquettes et les logiciels d'indexation pour s'y retrouver
   - Démonstration : DocFetcher

Note:
La recherche reproductible est encore – mais pour peu de temps seulement ! –, une activité dont le nombre d'adeptes est restreint. Elle suppose par contre une prise de notes « rigoureuse » et là, notre propos commence à s'adresser à un groupe beaucoup plus large. C'est ce que nous allons illustrer ici par quelques exemples.

+++
## L'érudit qui annote son livre / manuscrit 

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/ManuscritAnnoteEtCoupe.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Manuscrit d'œuvres d'Aristoteles (XIVe siècle).

Note:
Nous voyons ici un manuscrit du XIVe abondamment annoté par son propriétaire Nicasius de Planca. Cette forme de prise de note est extrêmement fréquente aussi bien à l'époque des manuscrits qu'aujourd'hui. Vous devriez néanmoins éviter de l'employer sur des livres empruntés dans une bibliothèque ou à des amis ! 

Les deux pages suivantes présentent un exemple d'une importance considérable pour l'histoire des sciences.
+++
## Galilée qui observe les lunes de Jupiter

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/GalileoManuscriptCoupe.png" style="width:90%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Le 7 janvier 1610, Galilée fait une découverte capitale : il remarque trois « petites étoiles » à côté de Jupiter. Après quelques nuits d'observation, il découvre qu'il y en a une quatrième et qu'**elles accompagnent la planète**, c'est ce qu'il note sur son cahier d'observations. Ce sont les satellites visibles de Jupiter, qu'il nommera plus tard les étoiles Médicées ou astres médicéens – en l'honneur de ses protecteurs, la Famille des Médicis – et qui sont aujourd'hui appelés lunes galiléennes.
+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/GalileoManuscriptZoom.png" style="width:90%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:
Ces observations amèneront Galilée à rejeter l'hypothèse géocentrique (la terre est le centre de l'Univers et tout tourne autour d'elle) en faveur du système copernicien héliocentrique. Cela l'amènera indirectement (je « fais court ») et bien plus tard, le 22 juin 1633, a être condamné par l'inquisition, ce qui lui vaudra de finir ses jours en résidence surveillée.

+++
## Les armoires à notes de Placcius et Leibniz

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Placcius_cabinet_TabIV.png" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:
Avec l'apparition de l'imprimerie, la demande de papier croît considérablement et le prix de celui-ci chute. En plus de l'emploi des codex avec support papier que nous venons de voir, de nombreux savants commencent à prendre leurs notes sur des « bouts de papier » qui deviendront plus tard des fiches.

Mais si prendre des notes en abondance sur des « bouts de papier », est très bien ! encore faut-il être capable de s'y retrouver. Vincent Placcius (1642-1699) et Gottfried Leibniz (1646-1716) s'étaient fait construire une armoire spéciale pour résoudre ce problème.

+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Placcius_cabinet_TabIVzoom.png" style="width:20%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:
Cette armoire contenait une multitude de colonnes capables de tourner autour de leur axe. Un côté de la colonne permettait d'inscrire un ou des mots clés et le côté opposé comportait un crochet auquel était attaché les notes correspondantes.

Remarquez l'avantage des « bouts de papiers classés » de Placcius et Leibniz sur le _codex_ de Galilée : les premiers peuvent être facilement réordonnées.

+++
## Les dangers de l'abondance de notes : la triste fin de Fulgence Tapir

Un extrait de la fin de la préface de « L'île des pingouins » d'Anatole France, publié en 1908.

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/A_France_Pingouins.jpg" style="width:70%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Je ne résiste pas, pour vous prévenir contre une accumulation exagérée de notes, à vous lire un extrait du roman d'Anatole France « L'île des pingouins », une histoire parodique de la France. Dans la préface, le narrateur explique qu'il écrit l'histoire des Pingouins et que sa quête d'informations l'amène chez l'immense savant Fulgence Tapir. Cette visite va se solder par une catastrophe que le narrateur rapporte ainsi :

Les murs du cabinet de travail, le plancher, le plafond même portaient des liasses débordantes, des cartons démesurément gonflés, des boîtes où se pressait une multitude innombrable de fiches, et je contemplai avec une admiration mêlée de terreur les cataractes de l'érudition prêtes à se rompre.

—Maître, fis-je d'une voix émue, j'ai recours à votre bonté et à votre savoir, tous deux inépuisables. Ne consentiriez-vous pas à me guider dans mes recherches ardues sur les origines de l'art pingouin?

—Monsieur, me répondit le maître, je possède tout l'art, vous m'entendez, tout l'art sur fiches classées alphabétiquement et par ordre de matières. Je me fais un devoir de mettre à votre disposition ce qui s'y rapporte aux Pingouins. Montez à cette échelle et tirez cette boîte que vous voyez là-haut. Vous y trouverez tout ce dont vous avez besoin.

J'obéis en tremblant. Mais à peine avais-je ouvert la fatale boîte que des fiches bleues s'en échappèrent et, glissant entre mes doigts, commencèrent à pleuvoir. Presque aussitôt, par sympathie, les boîtes voisines s'ouvrirent et il en coula des ruisseaux de fiches roses, vertes et blanches, et de proche en proche, de toutes les boîtes les fiches diversement colorées se répandirent en murmurant comme, en avril, les cascades sur le flanc des montagnes. En une minute elles couvrirent le plancher d'une couche épaisse de papier. Jaillissant de leurs inépuisables réservoirs avec un mugissement sans cesse grossi, elles précipitaient de seconde en seconde leur chute torrentielle. Baigné jusqu'aux genoux, Fulgence Tapir, d'un nez attentif, observait le cataclysme; il en reconnut la cause et pâlit d'épouvante.

—Que d'art! s'écria-t-il.

Je l'appelai, je me penchai pour l'aider à gravir l'échelle qui pliait sous l'averse. Il était trop tard. Maintenant, accablé, désespéré, lamentable, ayant perdu sa calotte de velours et ses lunettes d'or, il opposait en vain ses bras courts au flot qui lui montait jusqu'aux aisselles. Soudain une trombe effroyable de fiches s'éleva, l'enveloppant d'un tourbillon gigantesque. Je vis durant l'espace d'une seconde dans le gouffre le crâne poli du savant et ses petites mains grasses, puis l'abîme se referma, et le déluge se répandit sur le silence et l'immobilité. Menacé moi-même d'être englouti avec mon échelle, je m'enfuis à travers le plus haut carreau de la croisée. 

+++
## Le Navigateur et son livre de bord : Éric Tabarly

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/LivredebordpenduickV.JPG" style="width:70%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:
Ici, un cas en apparence plus anecdotique : le livre de bord d'Éric Tabarly lors de la trans-Pacifique de San-Francisco à Tokyo en 1969.
+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/LivredebordpenduickVzoom1.png" style="width:70%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note: 
Tabarly y note les événements « marquant ». Par exemple, le 21 mars à 23 h, le foc ballon est déchiré.
+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/LivredebordpenduickVzoom2.png" style="width:70%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:
Sur la page opposé il fait ses calculs de positions (il n'y avait pas de GPS à l'époque).

__Le cas du livre de bord n'est anecdotique qu'en apparence__.

Un projet européen a, en effet, été consacré, il y a une dizaine d'année, à une reconstruction des climats des océans atlantiques et indiens aux 17e et 18e siècles. Cette tentative de reconstruction s'est basée sur des *livre de bord* des navires des compagnies des Indes portugaises, espagnoles, hollandaises, anglaises et françaises. 

De même, les livres de bord des « navires négriers » constituent une source d'information capitale pour l'estimation du nombre d'africains déportés vers les colonies de ce que les occidentaux désignaient par « Nouveau Monde » du 15e au 19e siècle (11 à 12 millions).

+++
## <span style="font-size:95%">Quel(s) support(s) matériel(s) pour les notes ?</span>

Doit-on utiliser :

- l'objet d'étude (comme pour le livre annoté)
- un ou des cahiers
- des fiches ou feuilles volantes stockées dans un classeur
- un ou des fichiers d'ordinateur
- des dessins ou photos
- des films
- ... ?

+++
## Comment s'y retrouver ?

Les notes posent un problème d'organisation :

- <span style="font-size:97%">Comment peut-on imposer une structure à nos notes après coup ? Est-ce seulement possible ?</span>
- <span style="font-size:97%">Peut-on les indexer, si oui, comment ?</span>
- <span style="font-size:97%">Comment peut-on les rendre pérennes tout en les faisant évoluer ?</span>

Note:
__En Introduction__
Les notes par nature disparates – par les sujets dont elles traitent et, souvent, par leurs supports matériels – posent un problème d'organisation.

__En conclusion__
__Il est clair que sans organisation, l'utilité des notes n'excède qu'à peine notre capacité à mémoriser des faits ou évènements.__ 

Dans le reste de ce module nous allons *proposer* des réponses aux questions que nous venons de poser dans ces deux dernières diapos.

---
# C028AL-W1-S2
<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/clap.png" style="width:50%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## 1. Cahier de notes / cahier de laboratoire
1. Nous utilisons tous des cahiers de notes
2. **Un aperçu historique de la prise de notes**
3. Du fichier texte au langage de balisage léger
   - Démonstration : markdown
4. Pérennité et évolutivité des notes avec la gestion de version
   - Démonstration : gitlab
5. Les étiquettes et les logiciels d'indexation pour s'y retrouver
   - Démonstration : DocFetcher

Note:
Si nous devons tous prendre des notes, nos prédécesseurs ont dû le faire aussi. Cette constatation élémentaire va nous inciter à regarder comment nos brillants ancêtres s'y sont pris pour effectuer cette tâche.

+++

## De quoi allons-nous discuter ?

- de l'aspect concret de la prise de note – la « matérialité » des historiens –
- de l'organisation des livres et des notes
- du lien entre aspects matériels et organisationnels.

Note:

Notre discussion va porter en partie sur le livre puisque les éléments de navigation de ce dernier : table des matières, index, etc. ; s'applique aussi à l'organisation des notes.

Nous allons nous concentrer sur le « côté occidental » de l'histoire avec une seule page consacrée aux contributions chinoises et aucune aux contributions musulmanes, indiennes ou précolombiennes. Ce biais doit être interprété comme un reflet de mes ignorances et par la plus grande facilité d'obtenir des documents et illustrations concernant l'histoire du livre et de la prise de notes en Occident.

+++
## L'aspect matériel résumé sur une diapo

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Figure_W1_S2_1.jpg" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:
En haut à gauche : une tablette d'argile avec des comptes (précunéiforme, vers -3000)

En haut au milieu : une fresque de Pompéi avec le portrait de Terentius Neo et sa femme. Elle porte une _tablette de cire_ et un _stylet_ (les outils principaux de prise de notes jusqu'au 19e siècle, ou presque), il porte un _volumen_, la support matériel du livre jusqu'au début de notre ère.

En haut à droite : un cahier de notes sur papier datant du milieu du 17e siècle et contenant des « lieux communs » au sens rhétorique du terme de « source générale communément admise d’où un orateur peut tirer ses arguments ».

En bas à gauche : une fiche, exemple d'un support de notes dont l'utilisation va « exploser » avec la bureaucratisation et le développement des bibliothèques. Ce support sera largement adopté dans les sciences humaines, mais il a d'abord été systématiquement employé et peut être même créé par le naturaliste Carl Linné, père de la _taxinomie_.

En bas au milieu : des « Post-it » comme nous sommes nombreux à en utiliser tous les jours.

En bas à droite : un ordinateur moderne utilisable comme une tablette (numérique cette fois).
+++
## Tablette de cire et stylet

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/tabula_stilus.jpg" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Les tablettes de cire (en latin tabulæ, planches) sont des supports d'écriture effaçables et réutilisables, connus depuis la haute Antiquité et qui ont été utilisés jusqu'au milieu du XIXe siècle.

La tablette de cire est formée d'une plaquette le plus souvent en bois (mais les nobles auront des tablettes en argent, ivoire, etc.). Elle est évidée sur presque toute sa surface en conservant un rebord de quelques millimètres qui fait cadre. De la cire est coulée dans la partie en dépression puis lissée. L'écriture se fait en gravant les caractères sur la cire à l'aide de l'extrémité pointue d'un instrument appelé style ou  stylet. Ils peuvent être effacés en lissant la cire avec l'autre extrémité, plate, du stylet, après l'avoir ramollie.

La plus ancienne tablette connue provient d'un bateau mycénien et date du XIVe siècle av. J.-C. Les Grecs ont adopté la tablette par l'intermédiaire des Phéniciens en même temps que l'alphabet vers le VIIIe siècle av. J.-C.. 

En français l'expression « faire table rase » vient du latin _tabula rasa_, effacer la tablette.

Les ardoises et des tablettes de sable ont également été utilisées pour prendre des notes.
+++
## Du _volumen_ au _codex_

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Figure_W1_S2_3.jpg" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Le passage du _volumen_ au _codex_ est absolument fondamentale pour l'avenir de la civilisation écrite.

Le _volumen_ est un livre à base de feuilles de papyrus collées les unes aux autres et qui s'enroule sur lui-même. Il a été créé en Égypte vers 3000 av. J.-C. Le texte est rédigé en colonnes parallèles assez étroites. C'est le support du texte par excellence durant les trente siècles précédant notre ère, d'abord en Égypte, puis dans tout le monde méditerranéen. 

La mosaïque en bas à gauche représente Virgile (70-19 avant J.-C., assis) tenant un volume de l'Énéide et Clio, muse de l'Histoire, tenant elle aussi un _volumen_.

Comme l'explique Frédéric Barbier : « La forme du _volumen_ impose une pratique de lecture complexe : il faut dérouler (_explicare_) et enrouler en même temps, ce qui interdit par exemple, de travailler simultanément sur plusieurs rouleaux (un texte et son commentaire) ou de prendre des notes, impose une lecture suivie et empêche la simple consultation. »

Le _volumen_ n'est clairement pas adapté à une lecture « nomade » ; imagine-t-on Ulysse partant pour son Odyssée avec les 24 _volumen_ de l'Iliade ?

Le _volumen_ est à l'origine du terme « volume » dans un « livre en plusieurs volumes » comme dans la désignation du concept géométrique.

Le passage au codex repose sur deux innovations : 
- la collection des tablettes de cires en « groupes reliés » ;
- la généralisation du parchemin (peau, généralement, de mouton spécialement préparée) au détriment du papyrus. Cette généralisation résulte une lutte pour l'hégémonie culturelle entre deux descendants de généraux d'Alexandre le Grand, en effet d'après Pline l'ancien : Ptolémé Épiphane d'Alexandrie cherchait à empêcher Eumène II d'établir une bibliothèque à Pergame (au 2e siècle avant J.-C.) et avait interdit l'exportation du papyrus (produit exclusivement en Égypte), ce qui incita Eumène à chercher un substitut qui devint le parchemin.

Le remplacement du rouleau par le codex aura des conséquences majeures sur l'organisation du livre ainsi que sur la façon de lire et il permettra le développement ultérieur de l'imprimerie. 

La principale révolution introduite par le codex est la notion de page. Grâce à elle, le lecteur peut accéder de manière directe à un chapitre ou à un passage du texte, alors que le rouleau impose une lecture continue. __Les mots ne sont de plus pas séparés par des espaces__. Comme l'écrit Collette Sirat : « Il faudra vingt siècles pour qu’on se rende compte que l’importance primordiale du codex pour notre civilisation a été de permettre la lecture sélective et non pas continue, contribuant ainsi à l’élaboration de structures mentales où le texte est dissocié de la parole et de son rythme. »

Remarquez les lettres en rouge, résultat de la _rubrication_ (mot qui a donné notre « rubrique » moderne) utilisée pour séparer ce qui deviendra des paragraphes avec l'imprimerie. Cette dernière en effet utilisera des espaces blancs plutôt que des couleurs (trop chères) pour marquer des séparations. L'usage de la couleur constitue une technique de mise en page qui pourrait parfaitement être remise à l'ordre du jour avec l'informatique.

+++
## Eusèbe et les références croisées

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Eusebe_final.jpg" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Au IVe siècle de notre ère, Eusèbe de Césarée ou Eusèbe (de) Pamphile est l'auteur de nombreuses œuvres historiques, apologétiques, bibliques et exégétiques. Auteur de l’Histoire ecclésiastique, il est reconnu comme un Père de l'Église, et ses écrits historiques ont une importance capitale pour la connaissance des trois premiers siècles de l'histoire chrétienne. Il va apporter plusieurs innovations capitales à l'organisation du livre dont la table de références croisées.
+++
## Canon eusébien

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Evangeliaire_Lorsch.jpg" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Pour permettre une comparaison plus facile des quatre évangiles, il numérote les différents versets de chacun d'entre eux – sa numérotation n'est celle employée de nos jours qui, elle, date du XVIe siècle. Il indique les versets dont les contenus sont identiques dans les 4 évangiles (à gauche), ceux dont le contenu est identique dans 3 des 4 (à droite), dans 2 des 4, etc. Ce « canon eusébien » constitue le premier exemple connu de références croisées.

+++

## Importance du _codex_
D'après Frédéric Barbier dans l'« Histoire du livre » :

- L'invention du _codex_ est absolument fondamentale pour l'avenir de la civilisation écrite
- Le _codex_ se prête à la _consultation partielle_
- On peut lui superposer un système de références facilitant la consultation
- On peut consulter le _codex_ en prenant des notes
- La combinaison du _codex_ et de la minuscule donne un outil intellectuel très puissant, tel qu'il n'en existait pas antérieurement.

Note:

Au fil des siècles, le codex — qu'on désigne le plus souvent comme un manuscrit — va évoluer et se donner peu à peu les attributs du livre moderne : séparation entre les mots (VIIe siècle), début de ponctuation (VIIIe siècle), table des matières, titre courant, marque de paragraphe (XIe siècle), pagination, index (XIIIe siècle), etc. 

Un point intéressant : le contenu de la Thora est « fixé » avant l'apparition du codex et, aujourd'hui encore, la Thora est écrite sur des _volumen_ (dans les synagogues au moins). La religion chrétienne se développe en même temps que le codex et ne donnera jamais au _volumen_ un statut « supérieur », pas plus que ne le fera la religion musulmane.

+++
## Parallèle chinois

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Figure_W1_S2_6.jpg" style="width:90%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Le lien entre apparition et généralisation du _codex_, d'une part, et apparition des « outils de navigation », table des matières, index, titre courant etc., d'autre part à un pendant dans la civilisation chinoise. 

En Chine, les concours d'entrée dans l'administration se développent au 9e siècle. L'épreuve principale de ceux-ci serait probablement appelée épreuve de culture générale de nos jours et demande aux candidat une connaissance approfondie des classiques, Confucius en tête, et la capacité de les citer. 

Pour répondre à cette demande, des ouvrages spécialisés, sorte de florilèges, les leishu, vont se développer. Mais leur utilisation efficace doit permettre de trouver un ensemble de citations appropriées à un contexte donné suppose l'emploi d'index, de table des matières, etc. De façon intéressante, le _codex_ et les outils de navigation vont eux aussi se développer __de concert__ à partir de cette époque.

La majorité de ces leishus __est imprimée__ (dès le 9e siècle !), ce que rappelle la matrice d'impression à droite de la page. L'impression se fait bien sûr sur du papier, support inventé par les Chinois au 8e siècle avant J.-C....

+++
## Organiser en « mettant dans la bonne case »

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Placcius_cabinet_TabIV.png" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Maintenant que nous avons très brièvement décrit l'apparition des principaux outils de navigations du livre – outils qui peuvent bien entendu s'appliquer aux notes prises dans un cahier – ; nous revenons sur le « bout de papier » ou la fiche comme support de note.

Nous montrons à nouveau l'armoire à notes de Placcius et Leibniz puisqu'elle évoque parfaitement les inconvénients et les avantages des supports ne contenant __qu'une seule note__.

L'inconvénient est que le bout de papier ou la fiche se perdent facilement et ne servent à rien s'ils ne sont pas __classés__ en plus d'être rangés. Problème résolu par l'armoire de la figure. D'une certaine façon, sa conception fait qu'on accède à son contenu par l'index.

L'avantage est que les notes peuvent être réorganisées si elles contiennent des information sur plusieurs sujets. Elle peuvent aussi être directement collées dans un livre lors de la composition d'un florilège ou d'un ouvrage de synthèse. 

Ce dernier procédé était très couramment employé par les humanistes et les érudit de la renaissance et du début de la période moderne. [Conrad Gessner](https://fr.wikipedia.org/wiki/Conrad_Gessner) (1516-1565) était un champion de cette technique ; il obtenait même parfois ses fiches en découpant les pages des livres. Encore une fois, ne faites pas cela avec les livres de bibliothèques !

+++

## Organiser avec une bonne « carte » : la méthode de John Locke

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/MethodeLocke1.jpg" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Nous allons maintenant apprendre une technique de construction d'index due à [John Locke](https://fr.wikipedia.org/wiki/John_Locke) (1632-1704), grand-père du libéralisme, ce qui ne l'empêchait pas d'être actionnaire de la _Royal African Company_, [principale compagnie négrière anglaise](https://en.wikipedia.org/wiki/John_Locke#Constitution_of_Carolina)...

J'illustre la méthode avec mon cahier de notes. Les deux pages décrivent l'organisation d'un jeu de données dans un fichier au format [HDF5](https://www.hdfgroup.org/) sur la page de gauche et l'organisation correspondante dans un `data frame` du logiciel [R](https://www.r-project.org/) sur la page de droite. Les données concernent la mesure de la concentration des ions calcium dans des neurones et ces notes ont été prises lors du développement d'un code (programme d'ordinateur) pour les analyser. 

Pour l'application de la méthode de Locke, ce n'est pas le contenu des pages qui nous importent directement, mais les fait qu'elles sont numérotées (en bas dans les coins externes, ici nous avons affaire aux pages 86 et 87) et qu'elles comportent des mots clé : `code` ; `neuro` ; `calcium` ; inscrits en rouge en bas des pages.

Je signale que la méthode de Locke peut être mise en œuvre après coup. Je l'ai en fait testée lors de la préparation de ce cours, c'est-à-dire après avoir commencé à remplir mon cahier de notes.

+++

## La méthode de John Locke (suite)
<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/MethodeLocke2.jpg" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note: 

Nous voyons maintenant notre index. Il est situé en fin de cahier, même si Locke recommande de le placer au début, parce-que je ne l'avais pas planifié comme je viens de l'expliquer. 

L'idée est de référencer les mots clé du cahier en se basant sur leur première lettre et sur la première voyelle suivant la première lettre. 

L'index est ainsi décomposé en 26 entrées principales, les lettres capitales de A à R visibles sur les deux pages, et chaque entrée principale est elle-même subdivisée suivant les 5 voyelles les plus courantes (par convention le y sera alors classé avec le i). 

Les pages 86 et 87 que nous venons de voir comportaient le mot clé `code` et nous voyons qu'elles figurent sur la ligne `Co`, elle comportaient le mot clé `neurone` et elles figurent également sur la ligne `Ne` ; enfin elle comportaient le mot clé `calcium` et figurent donc sur la ligne `Ca`.

Si besoin, on peut aussi lister les mots clé avant ou après l'index lorsque le cahier est fini.
+++

## Conclusions

- Comme il est rarement possible de se passer complètement d'un support papier, apprendre de nos brillants prédécesseurs devrait nous permettre de ne pas « réinventer la roue »
- Clairement nous avons néanmoins intérêt à utiliser autant que possible un support numérique pour profiter (en nous inspirant de ces mêmes prédécesseurs) :
    + d'une plus grande flexibilité d'organisation, de réorganisation et de structuration
	+ d'outils d'archivage fiables
	+ d'outils d'indexation puissants.
	

---
# C028AL-W1-S3
<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/clap.png" style="width:50%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## 1. Cahier de notes / cahier de laboratoire
1. Nous utilisons tous des cahiers de notes
2. Un aperçu historique de la prise de notes
3. **Du fichier texte au langage de balisage léger**
   - Démonstration : markdown
4. Pérennité et évolutivité des notes avec la gestion de version
   - Démonstration : gitlab
5. Les étiquettes et les logiciels d'indexation pour s'y retrouver
   - Démonstration : DocFetcher
	
Note: 

Nous commençons à présent une discussion plus « technique » dirigée principalement vers les outils que l'informatique met à notre disposition pour prendre des notes avec les notions de « fichier texte » et de « langage de balisage léger ».

+++
## Qu'est-ce qu'un fichier texte ?
- De façon pratique, un « [fichier texte](https://fr.wikipedia.org/wiki/Fichier_texte) » _donne quelque chose de lisible_ lorsqu'il est ouvert avec un [éditeur de texte](https://fr.wikipedia.org/wiki/%C3%89diteur_de_texte).
- Un « éditeur de texte » permet de créer et de modifier des fichiers
  textes (belle définition circulaire !) :
    + [Notepad++](https://notepad-plus-plus.org/) pour `Windows`
    + [gedit](https://wiki.gnome.org/Apps/Gedit) pour les systèmes `Unix / Linux` (mais pas seulement)
    + [TextEdit](https://en.wikipedia.org/wiki/TextEdit) pour les `MacOS`.
	
Note: 

Nous ne citons ici, délibérément, que des logiciels libres (il est difficile de faire de la recherche vraiment reproductible avec des logiciels non libres).

Un logiciel de « [traitement de texte](https://fr.wikipedia.org/wiki/Traitement_de_texte) » est plus sophistiqué qu'un simple éditeur de texte ; il permet de faire plus, ce qui sous entend qu'il peut aussi ouvrir et manipuler des fichiers textes.

**Attention** : le format « natif » des traitements de texte est rarement un format texte. Les fichiers `doc` et `docx` de `Word` et `odt` de `LibreOffice` _ne sont pas des fichiers textes_. 

+++
## Un fichier « non lisible » avec un éditeur de texte

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Exemple_Fichier_Binaire.png" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Un fichier `PDF` ouvert avec `gedit`

+++
## Un fichier « texte » ouvert avec un éditeur de texte

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Exemple_Fichier_Texte.png" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## Pourquoi utiliser des fichiers texte ?
Les caractères contenus dans le fichier texte sont typiquement codés en [UTF-8](https://fr.wikipedia.org/wiki/UTF-8) (_Universal Character Set Transformation Format - 8 bits_).

**Cela implique que** :

- il est _toujours possible_ de les lire avec un éditeur de texte _même des années plus tard_
- les logiciels d'indexation ou de « [recherche de bureau](https://en.wikipedia.org/wiki/Desktop_search) », comme les logiciels de [gestion de versions](https://fr.wikipedia.org/wiki/Gestion_de_versions), les exploitent pleinement.

**Conclusion : choisissez le format texte (UTF-8)**.

+++
## Problème du fichier texte « simple »

- Avec un fichier texte « simple » il n'est pas possible de profiter des outils de navigation comme les hyperliens. 
- De même, il n'est pas possible de mettre en évidence un mot ou un groupe de mots avec une police **grasse** ou une police *italique*. 
- Si plusieurs personnes travaillent sur un même texte, elles ne peuvent se corriger en ~~barrant~~ des mots.


+++
## Un fichier `HTML` visualisé avec un navigateur
<br/>
<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Exemple_Rendu_HTML.png" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Ces limitations, combinées aux avantages des fichiers textes, ont amenées les informaticiens à développer des [langages de balisages](https://fr.wikipedia.org/wiki/Langage_de_balisage) (_Markup Language_ en anglais).

Un exemple banale est le [langage HTML](https://fr.wikipedia.org/wiki/Hypertext_Markup_Language). 

+++
## Un fichier `HTML` visualisé avec un éditeur de texte

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Exemple_Source_HTML.png" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Ces langages définissent une collection de balises qui ne sont pas (typiquement) destinées à être lues par un humain, mais à être interprétées par un logiciel. 

Retrouvons le texte du début de la page précédente : « En informatique les langages de balisage... ».

Remarquez la syntaxe qui permet d'introduire un commentaire dans le fichier source. Un commentaire est un élément de texte qui ne sera pas interprété par le logiciel de visualisation.

+++
Le problème se résume ainsi :

- Fichiers texte attractifs pour la prise de notes. 
- Langages de balisages ⇒ meilleur confort de lecture des fichiers _avec logiciel « de rendu »_. 
- Langages de balisages ⇒ fichiers source au format texte, __mais__ nécessitent éditeurs spécialisés. 

Peut-on combiner la légèreté des fichiers textes « simples » avec le confort de lecture offert par les langages de balisage ?

Note: 

Le problème se résume ainsi :

- Les fichiers textes sont très attractifs pour la prise de notes. 
- Les langages de balisages comme l'`HTML` nous permettent d'améliorer considérablement le confort de lecture de nos fichiers _à condition d'utiliser un logiciel « de rendu » adapté_. 
- Les langages de balisages comme l'`HTML` génèrent des fichiers sources au format texte, mais avec lesquels il est difficile (pénible) de travailler et nécessitent des éditeurs spécialisés – ce qui ralentit l'écriture des notes –. 

Peut-on combiner la légèreté des fichiers textes « simples » avec le confort de lecture offert par les langages de balisage ?

+++
## Langage de balisage léger : l'idée

Un [langage de balisage léger](https://fr.wikipedia.org/wiki/Langage_de_balisage_l%C3%A9ger) est :

- un type de langage de balisage utilisant une _syntaxe simple_ 
- conçu pour qu'un fichier en ce langage soit _aisé à saisir_ avec un éditeur de texte simple
- _facile à lire dans sa forme non formatée_, c'est-à-dire sans logiciel dédié comme un navigateur internet.

+++
## L'exemple de `Markdown`

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Exemple_Markdown.png" style="width:70%; margin-top: none; border: none; background: none; box-shadow: none;" />

Markdown source (en haut) et sortie HTML (en bas)

Note:

Markdown nous permet aussi de structurer facilement nos notes avec des sections, sous-sections, etc.

Les hyperliens peuvent être aussi bien avoir des cibles externes, comme illustré ici, qu'interne.

Il est possible d'inclure des commentaires.

+++
## `Markdown` n'est pas le seul langage de balisage léger disponible

- Le plus communément employé est [`Wikitexte`](https://fr.wikipedia.org/wiki/Wikitexte) de Wikipédia
- [AsciiDoc](http://www.methods.co.nz/asciidoc/) a de nombreux adeptes
- [ReStructuredText](http://docutils.sourceforge.net/docs/user/rst/quickstart.html) est très employé par la communauté des programmeurs `Python`
- Il y en a bien d'autres.

+++
## Conclusions

Les langages de balisage léger vont nous permettre de :

- travailler avec des fichiers textes
- écrire rapidement nos notes, avec n'importe quel éditeur, grâce à leur syntaxe simplifiée
- organiser nos notes en les structurant.

Note:

Dans la partie approfondissements, nous montrons :

- comment obtenir n'importe quel format « de sortie » (`HTML`, `PDF`, `docx`, `Wikitexte`) à partir d'un seul « fichier source » au format `Markdown` ;
- que le langage de balisage léger choisi importe peu puisque nous disposons d'un outil pour convertir l'un dans n'importe quel autre.

---
## C028AL-W1-S4
<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/clap.png" style="width:50%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## 1. Cahier de notes / cahier de laboratoire

1. Nous utilisons tous des cahiers de notes
2. Un aperçu historique de la prise de notes
3. Du fichier texte au langage de balisage léger
   - Démonstration : markdown
4. **Pérennité et évolutivité des notes avec la gestion de version**
   - Démonstration : gitlab
5. Les étiquettes et les logiciels d'indexation pour s'y retrouver
   - Démonstration : DocFetcher

Note:

Nous allons maintenant discuter de la façon dont l'informatique nous permet de conserver nos notes de façon « sûr » tout en nous permettant de les faire évoluer.

Les outils dont nous allons parler concernent encore une fois une communauté beaucoup plus large que celle de la « recherche reproductible ». Toute personne amenée à « travailler » son texte s'y trouve confrontée, cela d'autant plus que la rédaction est de plus en plus effectuée en commun.

La problème de la pérennité des notes et des textes ne constitue en rien une nouveauté. 

Pour les humanistes et les savants du début de l'ère moderne qui se spécialisaient dans la compilation de textes, elle était une véritable obsession et la justification de leur travail. 

La solution qu'ils préconisaient alors, la copie multiple, est identique à celle que nous employons aujourd'hui, seul le support à changer. 

Restons modestes, le support papier des humanistes a démontré sa capacité à résister à l'épreuve du temps. 

Par contre, en ce qui concerne l'évolutivité, nous avons quelques raisons de penser que nos outils modernes constituent un véritable progrès.

+++
## L'évolutivité avec un support papier

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Pierre_Ambroise_Choderlos_de_Laclos_Les_Liaisons_dangereuses.png" style="width:40%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Ici, l'exemple du manuscrit des « Liaisons dangereuses » de Pierre Ambroise Choderlos de Laclos.

L'auteur a apporté de nombreuses corrections à son manuscrit.

On conçoit que le nombre de corrections qu'il peut ainsi apporter est relativement restreint. 
+++
## L'évolutivité avec traitement de texte

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/LibreOffice_notes_pour_CLOM_diff_origine.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Une solution qui permet de travailler lorsqu'on utilise que des fichiers texte est le suivi de modifications proposé par la plupart des logiciels de traitement de texte.

Ce n'est pas la solution que nous préconisons, mais c'est certainement le type de « gestion de version » auquel les utilisateurs d'ordinateurs ont le plus de chances d'avoir été exposés.

Nous prenons ici un exemple avec `LibreOffice` où nous éditons un fichier contenant des notes prises pour préparer ce cours.

Remarquez les boutons en bas à gauche que nous faisons apparaître en navigant dans les menu _view_ puis _Toolbars_ avant de sélectionner _track changes_.
 
- solution « facile » à mettre en œuvre
- pas de format texte
- faire attention à ne garder __que la dernière version__ avant de soumettre un article (pour les scientifiques)
- les sauvegardes doivent être gérées séparément.

+++
## L'évolutivité avec un « moteur de wiki »

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Dokuwiki_notes_pour_CLOM.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Une solution plus proche de l'esprit de ce cours est l'emploi d'un _wiki_ pour gérer ses notes.

Ici, j'illustre l'usage d'un wiki personnel utilisant _DokuWiki_ comme moteur de wiki, j'aurais aussi pu utiliser _MediaWiki_, le moteur de Wikipédia.

_DokuWiki_ n'emploie que des fichiers texte.

Je l'ai appris lors de la préparation de ce cours, ce qui signifie qu'il est assez simple à utiliser.

Encore une fois, les notes prises en préparation du cours sont utilisées pour illustration.

+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Dokuwiki_notes_pour_CLOM_historique2.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Si je clique sur « Derniers changements », alors je vois apparaître la liste des pages de mon wiki avec les dates des dernières modifications. Si maintenant je clique sur le nom de l'une des pages...
+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Dokuwiki_notes_pour_CLOM_diff.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note: 

Je vois apparaître la différence entre la dernière version, à gauche, et la version présente à droite.

Commenter plus...

Vous avez accès à des informations du même type sur n'importe quelle page wikipédia.

+++
## Avantages et inconvénients

- solution qui a fait ses preuves, en particulier dans un cadre collaboratif
- format texte (avec `DokuWiki`)
- ne permet de modifier qu'une seule page à la fois

+++
## L'évolutivité avec la gestion de version

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Github_Module1.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Je présente maintenant la solution la plus sophistiquée à ce jour.

Ici, un logiciel spécifique, _git_ est employé pour gérer les versions successives d'un ensemble de fichiers de nature disparate (des fichiers textes, des images, etc). En fait des arborescence de fichiers peuvent être gérées par ce logiciel.

Les logiciels comme _git_ nécessite la création d'un dépôt, qui peut être la machine de l'utilisateur, mais qui est en général hébergé sur un site internet dédié comme ici _GitHub_.

Le dépôt va permettre à différentes personnes de travailler sur le même « projet ». Elles vont échanger leur modifications via le dépôt. __Elles auront néanmoins toutes une copie complète de ce dernier__ (datant de leur dernière « synchronisation »).

Des nombreux instituts de recherche fournissent maintenant de tels dépôts aux laboratoires qui leurs sont rattachés.

Les utilisateurs peuvent alors souvent employer une interface graphique pour naviguer dans leurs dépôts, revenir sur des version antérieures, faire des comparaisons, des recherches, etc.

Nous voyons ici l'interface fourni par _GitHub_ et nous visualisons un état antérieur du fichier source de cette présentation. 

Vous pouvez tous vous connectez à _Github_, aller sur le dépôt que nous avons utilisé pour préparer le cours, et refaire ce qui est montré dans les quelques diapos qui suivent.

Si je clique sur le bouton _History_, je vois...

+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Github_Module1_historique.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Encore une fois, la liste des modifications apportées au fichier avec le nom de la personne ayant effectué ces modifications et les dates associées.

Si maintenant je clique sur le numéro 5a2951f, je vois...

+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Github_Module1_diff.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Les différences entre la version précédente et la version identifiée par le numéro sur lequel j'ai cliqué.

Commentez...

+++

<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/Git_diff_mixte.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

Note:

Lorsque plusieurs fichiers ont été modifiés, comme ici où un fichier image a été rajouté et un fichier texte a été modifié, l'ensemble des modifications est visible et accessible.

+++
## Avantages et inconvénients

- Solution sophistiquée (donc un peu plus difficile à maîtriser que les précédentes)
- Solution qui a fait ses preuves, en particulier dans un cadre collaboratif sur de grands projets (noyau Linux)
- Permet d'enregistrer des modifications sur plusieurs fichiers à la fois
- Une sauvegarde centralisée dont tous les membres du projet ont une copie intégrale

Note:

Dans la partie approfondissements, nous rentrerons un peu plus dans les aspects concrets de l'utilisation de `git`.

`git` devient de fait le standard de la gestion de version bien au-delà des projets purement logiciels, cela vaut donc la peine de faire un petit effort pour en maîtriser les rudiments.

Quelque soit la stratégie de gestion de version employée, le retour en arrière est possible, mais lors des premières tentatives il vous faudra faire preuve de calme et de patience ! 


---
## C028AL-W1-S5
<img src="https://rawgit.com/alegrand/RR_MOOC/master/assets/img/clap.png" style="width:50%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## 1. Cahier de notes / cahier de laboratoire

1. Nous utilisons tous des cahiers de notes
2. Un aperçu historique de la prise de notes
3. Du fichier texte au langage de balisage léger
   - Démonstration : markdown
4. Pérennité et évolutivité des notes avec la gestion de version
   - Démonstration : gitlab
5. **Les étiquettes et les logiciels d'indexation pour s'y retrouver**
   - Démonstration : DocFetcher

Note:

Nous revenons ici sur le problème de l'indexation, pas tant sur l'indexation d'un document unique que sur l'indexation de documents multiples dans des formats divers.

- comme nous l'avons déjà affirmé, prendre des notes abondantes et détaillées n'est utile que si nous pouvons retrouver les informations qu'elles contiennent quand nous en avons besoin
- pour des notes contenues dans un seul fichier texte, la fonction de recherche de notre éditeur favori nous permet généralement d'aller assez loin
- pour des notes manuscrites contenues dans un cahier, la méthode de Locke — que nous avons exposée dans notre deuxième séquence — et qui repose sur des mots clé ou étiquettes, donne de bons résultats
- les notes manuscrites sur fiches sont généralement stockées dans un meuble dont la structure matérialise un index — comme l'armoire de Placcius et Leibniz —

+++
## Ainsi parlait Leibniz

« Il me semble que l'apparat savant contemporain est comparable à un grand magasin qui contient une grande quantité de produits, stockés de façon totalement désordonnée, mélangée ; où les nombres ou lettres d'indexation manquent ; où les inventaires et livres de comptes pouvant aider à ordonner le contenu ont disparu.

Plus grande est la quantité d'objets amassés, plus petite est leur utilité. Ainsi, ne devrions nous pas seulement essayer de rassembler de nouveaux objets de toutes provenances, mais nous devrions aussi essayer d'ordonner ceux que nous avons déjà. »

Note:

J'emploie ici le terme d'« [apparat savant](https://fr.wikipedia.org/wiki/Apparat_savant) » qui est un terme technique de l'édition désignant :  citations, références et sources, notes en bas de pages, introduction, texte en langue originale (en parallèle avec la traduction), commentaire historique ou philologique, index fontium (les sources), index locorum (références avec renvoi à la page où le passage est cité ou mentionné, par ex. : Évangile selon Marc 1, 1 : p. 100), index nominum (les noms propres), index rerum (les thèmes), etc.

     "It seems to me that the apparatus of contemporary scholarship is comparable to a very large store which, though it keeps a great variety of goods, yet is totally confused and in disorder, because all items are mixed up, because no numbers or letters of an index are displayed, and because inventories or account ledgers which could throw some light on the matter are missing.

     "The larger the mass of collected things, the less will be their usefulness. Therefore, one should not only strive to assemble new goods from everywhere, but one must endeavor to put in the right order those that one already possesses."

http://www.backwordsindexing.com/index.html

+++
## S'y retrouver dans un fichier texte

<img src="assets/img/recherche-avec-editeur.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## S'y retrouver dans un cahier

<img src="assets/img/IndexCahierLocke.jpg" style="width:80%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## S'y retrouver dans des « fiches »

<img src="assets/img/Placcius_cabinet_TabIV.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## Problèmes, limitations, solutions ?

<br/>

- Un seul document

<br/>

- Indexation de fichiers numériques

<br/>

- Étiquetage de fichiers numériques au sens large

<br/>

- Moteur de recherche pour indexation et recherche globale

Note:

- les techniques que nous venons de voir ou revoir ne fonctionnent que pour un seul « document » — recherche avec l'éditeur de texte, index d'un cahier — et/ou pour un seul type de document
- les outils informatiques dont nous disposons nous permettent d'aller plus loin dans l'indexation des fichiers numériques
- il est possible de rajouter des étiquettes ou mots-clés à des fichiers textes comme à des fichiers images (`jpg`, `png`) ou des fichiers « mixtes » (`pdf`) grâce aux métadonnées qu'ils contiennent
- les moteurs de recherche de bureau permettent d'indexer l'ensemble des fichiers textes d'une arborescence donnée mais aussi les métadonnées des autres fichiers

+++
## Trouver un mot quelconque avec un moteur de recherche de bureau (`DocFetcher`)

<img src="assets/img/Trouver_un_mot_avec_DocFetcher.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />


+++
##  Le problème de l'« abondance »  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<img src="assets/img/Trouver_calcium_avec_DocFetcher.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## Ajouter des étiquettes ou mots clés dans un fichier texte (`Markdown`)

<img src="assets/img/Ajout_etiquette_avec_Markdown.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## Trouver une étiquette avec un moteur de recherche de bureau (`DocFetcher`)

<img src="assets/img/Trouver_etiquette_avec_DocFetcher.png" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## Les fichiers images contiennent des métadonnées

<img src="assets/img/Metadonne_fichier_index.jpg" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## Les métadonnées peuvent être modifiées &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<img src="assets/img/Metadonne_fichier_index2.jpg" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />

+++
## Les moteurs de recherche de bureau peuvent lire les métadonnées

<img src="assets/img/Trouver_etiquette_avec_DocFetcher2.jpg" style="width:100%; margin-top: none; border: none; background: none; box-shadow: none;" />


+++
## Conclusion

En combinant : 

- des étiquettes insérées dans nos fichiers textes, images, `PDF`, etc 
- avec un moteur de recherche de bureau

nous pouvons espérer éviter le « cauchemar de Leibniz »
