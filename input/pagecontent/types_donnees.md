Les types de données présentés sont ceux utilisés pour typer les concepts.

Il existe deux familles de types de données :

* les types de données primitifs (ex : string, etc.) : World Wide Web Consortium (W3C)
* les types de données complexes, décrits dans cette partie qui sont des éléments réutilisables encapsulant des types de données primitifs.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Name like 'Adresse' OR 'AutoriteEnregistrement' OR 'BoiteLettreMSS' OR 'CoordonneeGeographique' OR 'CapaciteHabitation' OR 'CapaciteAccueil' OR 'Contact' OR 'ConceptCode' OR 'Diplome' OR 'DivisionTerritoriale' OR 'Evenement' OR 'Groupement' OR 'Horaire' OR 'LangueParlee' OR 'Lieu' OR 'Membre' OR 'Metadonnee' OR 'Patientele' OR 'PersonnePhysique' OR 'Telecommunication' OR 'Zone'",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
