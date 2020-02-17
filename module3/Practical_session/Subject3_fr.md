# Sujet 3 : L'épidémie de choléra à Londres en 1854

__Prérequis__ : représentation de données géographiques

En 1854, le quartier de Soho à Londres a vécu [une des pires épidémies de choléra du Royaume-Uni](https://fr.wikipedia.org/wiki/%C3%89pid%C3%A9mie_de_chol%C3%A9ra_de_Broad_Street), avec 616 morts. Cette épidémie est devenue célèbre à cause de l'analyse détaillée de ses causes réalisée par le médecin [John Snow](http://www.johnsnowsociety.org/). Ce dernier a notamment montré que le choléra est transmis par l'eau plutôt que par l'air, ce qui était la théorie dominante de l'époque.

Un élément clé de cette analyse était une [carte](https://commons.wikimedia.org/wiki/File:Snow-cholera-map-1.jpg) sur laquelle John Snow avait marqué les lieux des décès et les endroits où se trouvaient les pompes à eau publiques. Ces données sont aujourd'hui [disponibles sous forme numérique](http://blog.rtwilson.com/john-snows-cholera-data-in-more-formats). Nous vous proposons de les utiliser pour recréer la carte de John Snow dans un document computationnel réplicable.

Votre mission si vous l'acceptez :

1. Londres a bien sûr évolué depuis 1854, mais une carte d'aujourd'hui est tout à fait utilisable comme support pour ces données historiques. À partir des données numériques, réalisez une carte dans l'esprit de celle de John Snow. Montrez les lieux de décès avec des symboles dont la taille indique le nombre de décès. Indiquez sur la même carte la localisation des pompes en utilisant une autre couleur et/ou un autre symbole. 
2. Par la suite, essayez de trouver d'autres façons pour montrer que la pompe de Broad Street est au centre de l'épidémie. Vous pouvez par exemple calculer la densité des décès dans le quartier et l'afficher sur la carte, mais n'hésitez pas à expérimenter avec d'autres approches.
3. Déposer dans FUN votre résultat

**Conseils techniques pour l'affichage de cartes**

En R, nous vous suggérons l'utilisation de la bibliothèque [ggmap](https://journal.r-project.org/archive/2013-1/kahle-wickham.pdf). Evitez Google Maps comme source de cartes car ce service est devenu payant en 2018 (et même si vous restez dans le quota gratuit, vous devez déposer vos coordonnées bancaires pour vous inscrire). OpenStreetMaps est une bonne alternative que ggmap propose également (source="osm").

En Python dans l'environnement Jupyter, la bibliothèque [folium](https://python-visualization.github.io/folium/) produit des belles cartes qui en plus sont interactives. Le seul inconvénient est que les cartes stockées dans les notebooks ne sont pas affichées dans GitLab. Pour que vos évaluateurs puissent les voir plus facilement, pensez à exporter votre notebook au format HTML et déposer cette version aussi dans votre dépôt.
