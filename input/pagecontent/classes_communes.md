Une classe commune est souvent utilisée comme type de données d'un attribut d'une classe du modèle. Cette formalisation, consistant à remplacer la relation d'agrégation entre la classe du modèle et cette classe commune, a pour premier objectif de simplifier la lecture des diagrammes.

Ces classes communes réutilisables décrivent notamment la personne physique, l’adresse géopostale, les moyens de contact, les moyens de télécommunication, les concepts codés, les lieux, les divisions territoriales, les coordonnées géographiques, etc.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE  Name = 'Adresse' or Name = 'AutoriteEnregistrement' or Name = 'BoiteLettreMSS' or Name = 'CoordonneeGeographique' or Name = 'CapaciteHabitation' or Name = 'CapaciteAccueil' or Name = 'Contact' or Name = 'ConceptCode' or Name = 'Diplome' or Name = 'DivisionTerritoriale' or Name = 'Evenement' or Name = 'Groupement' or Name = 'Horaire' or Name = 'LangueParlee' or Name = 'Lieu' or Name = 'Membre' or Name = 'Metadonnee' or Name = 'Patientele' or Name = 'PersonnePhysique' or Name = 'Telecommunication' or Name = 'Zone'",
    "class" : "lines",
    "columns" : [
        { "title" : "Classe commune", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
