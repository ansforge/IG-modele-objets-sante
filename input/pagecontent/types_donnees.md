Les types de données présentés sont ceux utilisés pour typer les concepts.

Il existe deux familles de types de données :

* les types de données primitifs (ex : string, etc.) : World Wide Web Consortium (W3C)
* les types de données complexes, décrits dans cette partie qui sont des éléments réutilisables encapsulant des types de données primitifs.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Name = 'Code' or Name = 'DateHeure' or Name = 'Date' or Name = 'Heure' or Name = 'Identifiant' or Name = 'Indicateur' or Name = 'Mesure' or Name = 'Montant' or Name = 'Numerique' or Name = 'ObjetBinaire' or Name = 'Texte'",
    "class" : "lines",
    "columns" : [
        { "title" : "Type de données", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
