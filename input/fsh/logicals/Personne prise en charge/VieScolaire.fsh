Logical: VieScolaire
Parent: $Base
Id: VieScolaire
Title: "VieScolaire"
Description: "/!\\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge."
* ^status = #draft
* . ^short = "/!\\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge."
* . ^definition = "/!\\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge."
* typeScolarisation 0..1 Coding "Type de scolarisation de la personne." "Type de scolarisation de la personne."
* typeScolarisation from https://mos.esante.gouv.fr/NOS/TRE_R328-TypeScolarisation/FHIR/TRE-R328-TypeScolarisation?vs (preferred)
* besoinScolarite 0..* Coding "Besoins de la personne dans sa vie scolaire." "Besoins de la personne dans sa vie scolaire."
* besoinScolarite from besoinScolarite-vs (preferred)
* PersonnePriseCharge 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge "Lien vers la classe PersonnePriseCharge" "Lien vers la classe PersonnePriseCharge"