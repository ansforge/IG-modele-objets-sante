Logical: ResultatObservation
Parent: $Base
Id: ResultatObservation
Title: "ResultatObservation"
Description: "Résultat de la mesure ou de l’observation effectuée sur un personne."
* ^status = #draft
* . ^short = "Résultat de la mesure ou de l’observation effectuée sur un personne."
* . ^definition = "Résultat de la mesure ou de l’observation effectuée sur un personne."
* type 0..* CodeableConcept "Un type d’observation peut être composé de plusieurs sous-types d’observation.Par exemple, pour mesurer une mesure de la pression artérielle il est nécessaire d'utiliser les deux valeurs :**85354-9 Pression arterielle**8480-6 Systolique**8462-4 Diastoliquehttps://loinc.org/" "Un type d’observation peut être composé de plusieurs sous-types d’observation.Par exemple, pour mesurer une mesure de la pression artérielle il est nécessaire d'utiliser les deux valeurs :**85354-9 Pression arterielle**8480-6 Systolique**8462-4 Diastoliquehttps://loinc.org/"
* valeur 0..1 Quantity "Résultat, valeur mesurée de l'observation. L'observation peut ne pas avoir de valeur si une raison justifie cette absence ou si elle représente un groupe d'observations." "Résultat, valeur mesurée de l'observation. L'observation peut ne pas avoir de valeur si une raison justifie cette absence ou si elle représente un groupe d'observations."
* interpretation 0..1 CodeableConcept "Pour certains résultats, notamment les résultats numériques, une interprétation est nécessaire pour bien comprendre la signification d'un résultat.http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation" "Pour certains résultats, notamment les résultats numériques, une interprétation est nécessaire pour bien comprendre la signification d'un résultat.http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* raisonAbsence 0..1 CodeableConcept "Raison de l'absence de résultat.https://www.hl7.org/fhir/codesystem-data-absent-reason.html" "Raison de l'absence de résultat.https://www.hl7.org/fhir/codesystem-data-absent-reason.html"