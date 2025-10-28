Logical: PlageReference
Parent: $Base
Id: PlageReference
Title: "PlageReference"
Description: "La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes."
* ^status = #draft
* . ^short = "La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes."
* . ^definition = "La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes."
* borneInferieure 0..1 Quantity "Borne inférieure de la plage." "Borne inférieure de la plage."
* borneSuperieure 0..1 Quantity "Borne supérieure de la plage." "Borne supérieure de la plage."
* type 0..1 CodeableConcept "Type de plage de référence définie selon les critères s’appliquant à la personne sur laquelle porte l’observation. http://hl7.org/fhir/ValueSet/referencerange-meaning" "Type de plage de référence définie selon les critères s’appliquant à la personne sur laquelle porte l’observation. http://hl7.org/fhir/ValueSet/referencerange-meaning"
* trancheAge 0..1 Patientele "Tranche d'âge pour laquelle la plage de référence est applicable." "Tranche d'âge pour laquelle la plage de référence est applicable."
* guideTextuel 0..1 string "Plage de référence exprimée sous la forme d’un texte pour interpréter la valeur." "Plage de référence exprimée sous la forme d’un texte pour interpréter la valeur."