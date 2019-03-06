
# Table des matières

1.  [Notes et références sur la séquence 3 : « Du fichier texte au langage de balisage léger »](#orge633e7c)
    1.  [Fichier texte et éditeur de texte](#org8baa6c7)
    2.  [Le cas du fichier `PDF` ouvert avec un éditeur de texte](#org66a1b0c)
    3.  [Sur l'UTF-8](#org366381c)



<a id="orge633e7c"></a>

# Notes et références sur la séquence 3 : « Du fichier texte au langage de balisage léger »


<a id="org8baa6c7"></a>

## Fichier texte et éditeur de texte

Une définition plus technique (et moins circulaire !) du fichier texte se trouve sur [la page wikipédia](https://fr.wikipedia.org/wiki/Fichier_texte) consacrée au sujet. Pour plus de détails sur les éditeurs de texte, voir aussi la [page wikipédia correspondante](https://fr.wikipedia.org/wiki/%C3%89diteur_de_texte). 

Un logiciel de « [traitement de texte](https://fr.wikipedia.org/wiki/Traitement_de_texte) » est plus sophistiqué qu'un simple éditeur de texte ; il permet de faire plus, ce qui sous entend qu'il peut aussi ouvrir et manipuler des fichiers textes.

\*Attention\* : le format « natif » des traitements de texte est rarement un format texte. Les fichiers `doc` et `docx` de `Word` et `odt` de `LibreOffice` *ne sont pas des fichiers textes*.


<a id="org66a1b0c"></a>

## Le cas du fichier `PDF` ouvert avec un éditeur de texte

Dans le cours filmé, j'utilise l'exemple du [PDF](https://en.wikipedia.org/wiki/Portable_Document_Format) — je donne l'adresse de la page wikipedia en anglais, bien plus complète que celle en français — ouvert avec un éditeur de texte pour montrer que le fichier ne peut pas être visualisé avec un tel logiciel, il faut un logiciel de rendu dédié comme `Adobe Reader`, `Evince`, `MuPDF`, `Aperçu`,&#x2026; Vous remarquez néanmoins que le début du fichier contient du texte (la première ligne nous apprend que le fichier utilise la version 1.3 du format `PDF`). Cette partie au format texte du fichier contient les méta-données — qui ne sont pas montrées, en tout cas pas directement, par les logiciels de rendu. Ces méta-données sont (en partie) au format [XMP](https://en.wikipedia.org/wiki/Extensible_Metadata_Platform) (*Extensible Metadata Platform*), nous y reviendrons dans la cinquème séquence.


<a id="org366381c"></a>

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

J'ai en plus redéfini la « <Multi<sub>key</sub>> » pour qu'elle corresponde à la touche « impression d'écran » de mon clavier. Pour apprendre à redéfinir des touches, consultez : <https://wiki.archlinux.org/index.php/Keyboard_configuration_in_Xorg#Configuring_compose_key>.

