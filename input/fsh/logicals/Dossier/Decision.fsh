Logical: Decision
Parent: $Base
Id: Decision
Title: "Decision"
Description: "Acte par lequel une autorité prend parti après examen d'une demande."
* ^status = #draft
* . ^short = "Acte par lequel une autorité prend parti après examen d'une demande."
* . ^definition = "Acte par lequel une autorité prend parti après examen d'une demande."
* dateDecision 0..1 date "Date à laquelle la décision a été rendue." "Date à laquelle la décision a été rendue."
* typeDecision 0..1 Coding "Type de décision." "Type de décision."
* typeDecision from https://mos.esante.gouv.fr/NOS/TRE_R327-TypeDecision/FHIR/TRE-R327-TypeDecision?vs (preferred)
* Demande 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande "Lien vers la classe Demande" "Lien vers la classe Demande"