Les types de données présentés sont ceux utilisés pour typer les concepts.

Il existe deux familles de types de données :

* les types de données primitifs (ex : string, etc.) : World Wide Web Consortium (W3C)
* les types de données complexes, décrits dans cette partie qui sont des éléments réutilisables encapsulant des types de données primitifs.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Name like 'Code' OR 'DateHeure' OR 'Date' OR 'Heure' OR 'Identifiant' OR 'Indicateur' OR 'Mesure' OR 'Montant' OR 'Numerique' OR 'ObjetBinaire' OR 'Texte'",
    "class" : "lines",
    "columns" : [
        { "title" : "Type de données", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
