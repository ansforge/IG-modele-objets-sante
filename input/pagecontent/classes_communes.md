Une classe commune est souvent utilisée comme type de données d'un attribut d'une classe du modèle. Cette formalisation, consistant à remplacer la relation d'agrégation entre la classe du modèle et cette classe commune, a pour premier objectif de simplifier la lecture des diagrammes.

Ces classes communes réutilisables décrivent notamment la personne physique, l’adresse géopostale, les moyens de contact, les moyens de télécommunication, les concepts codés, les lieux, les divisions territoriales, les coordonnées géographiques, etc.

{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Name like ('Adresse' OR 'AutoriteEnregistrement' OR 'BoiteLettreMSS' OR 'CoordonneeGeographique' OR 'CapaciteHabitation' OR 'CapaciteAccueil' OR 'Contact' OR 'ConceptCode' OR 'Diplome' OR 'DivisionTerritoriale' OR 'Evenement' OR 'Groupement' OR 'Horaire' OR 'LangueParlee' OR 'Lieu' OR 'Membre' OR 'Metadonnee' OR 'Patientele' OR 'PersonnePhysique' OR 'Telecommunication' OR 'Zone')",
    "class" : "lines",
    "columns" : [
        { "title" : "Classe commune", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}
