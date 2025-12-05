Logical: VieProfessionnelle
Parent: $Base
Id: VieProfessionnelle
Title: "VieProfessionnelle"
Description: "/!\\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge."
* ^status = #draft
* . ^short = "/!\\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge."
* . ^definition = "/!\\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge."
* dejaTravaille 0..1 boolean "Indicateur afin de savoir si la personne a déjà travaillé." "Indicateur afin de savoir si la personne a déjà travaillé."
* diplome 0..* Diplome "Diplôme(s) obtenu(s) par la personne prise en charge." "Diplôme(s) obtenu(s) par la personne prise en charge."
* situationVieProfessionnelle 0..1 Coding "Situation professionnelle de la personne." "Situation professionnelle de la personne."
* situationVieProfessionnelle from https://mos.esante.gouv.fr/NOS/TRE_R325-SituationProfessionnelle/FHIR/TRE-R325-SituationProfessionnelle?vs (preferred)
* situationSansEmploi 0..1 Coding "Situation de la personne lorsqu'elle est sans emploi." "Situation de la personne lorsqu'elle est sans emploi."
* situationSansEmploi from https://mos.esante.gouv.fr/NOS/TRE_R326-SituationSansEmploi/FHIR/TRE-R326-SituationSansEmploi?vs (preferred)
* besoinProfessionnel 0..* Coding "Besoins de la personne dans sa vie professionnelle." "Besoins de la personne dans sa vie professionnelle."
* besoinProfessionnel from https://mos.esante.gouv.fr/NOS/TRE_R324-BesoinSoutienProjetProfessionnel/FHIR/TRE-R324-BesoinSoutienProjetProfessionnel?vs (preferred)
* PersonnePriseCharge 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge "Lien vers la classe PersonnePriseCharge" "Lien vers la classe PersonnePriseCharge"
* Emploi 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Emploi "Lien vers la classe Emploi" "Lien vers la classe Emploi"
* ArretTravail 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ArretTravail "Lien vers la classe ArretTravail" "Lien vers la classe ArretTravail"