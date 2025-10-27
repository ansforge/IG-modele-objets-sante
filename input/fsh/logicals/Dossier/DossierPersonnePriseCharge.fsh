Logical: DossierPersonnePriseCharge
Parent: $Base
Id: DossierPersonnePriseCharge
Title: "DossierPersonnePriseCharge"
Description: "Un dossier regroupe l'ensemble des informations et des documents liés à une personne."
* ^status = #draft
* . ^short = "Un dossier regroupe l'ensemble des informations et des documents liés à une personne."
* . ^definition = "Un dossier regroupe l'ensemble des informations et des documents liés à une personne."
* identifiantDossier 0..1 Identifier "Identifiant du dossier de la personne prise en charge." "Identifiant du dossier de la personne prise en charge."
* meatdonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données." "Informations relatives à la gestion des classes et des données."