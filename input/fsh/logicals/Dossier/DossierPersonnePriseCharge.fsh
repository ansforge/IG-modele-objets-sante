Logical: DossierPersonnePriseCharge
Parent: $Base
Id: DossierPersonnePriseCharge
Title: "DossierPersonnePriseCharge"
Description: "Un dossier regroupe l'ensemble des informations et des documents liés à une personne."
* ^status = #draft
* . ^short = "Un dossier regroupe l'ensemble des informations et des documents liés à une personne."
* . ^definition = "Un dossier regroupe l'ensemble des informations et des documents liés à une personne."
* identifiantDossier 0..1 Identifier "Identifiant du dossier de la personne prise en charge." "Identifiant du dossier de la personne prise en charge."
* PersonnePriseCharge 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge "Lien vers la classe PersonnePriseCharge" "Lien vers la classe PersonnePriseCharge"
* Demande 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande "Lien vers la classe Demande" "Lien vers la classe Demande"
* Document 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document "Lien vers la classe Document" "Lien vers la classe Document"