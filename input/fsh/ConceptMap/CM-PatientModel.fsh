Instance: CM-PatientModel-EHDS
InstanceOf: ConceptMap
Usage: #definition
* version = "0.1.0"
* name = "CM_PatientModel_EHDS"
* title = "Mapping entre du Patient MOS le Patient EHDS"
* status = #draft
* experimental = false
* date = "2025-05-26"
* description = "Cette ConceptMap fait correspondre le model logique d'un patient MOS vers un patient EHDS."
* purpose = "Pour faciliter l'intégration des données de recherche dans les systèmes basés sur FHIR pour la recherche."
* sourceUri = Canonical(PersonnePriseCharge)
* targetUri = "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPatient"

// Groupe: Patient
* group[+].source = Canonical(PersonnePriseCharge)
* group[=].target = "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPatient"
//
* group[=].element[+].code = #PersonnePriseCharge.INS
* group[=].element[=].target[+].code = #EHDSPatient.personalIdentifier
* group[=].element[=].target[=].equivalence = #relatedto
// TODO R5 * group[=].element[=].target[=].equivalence = #source-is-narrower-than-target
// 
* group[=].element[+].code = #PersonnePriseCharge.idPersonnePriseCharge
* group[=].element[=].target[+].code = #EHDSPatient.personalIdentifier
* group[=].element[=].target[=].equivalence = #relatedto
// TODO R5 * group[=].element[=].target[=].equivalence = #source-is-narrower-than-target
// 
* group[=].element[+].code = #PersonnePriseCharge.personne
* group[=].element[=].target[+].code = #EHDSPatient.name
* group[=].element[=].target[=].equivalence = #relatedto
// TODO R5 * group[=].element[=].target[=].equivalence = #related-to
//
* group[=].element[+].code = #PersonnePriseCharge.preferenceCommunication
* group[=].element[=].target[+].equivalence = #unmatched
// TODO R5 * group[=].element[=].noMap = true
//
* group[=].element[+].code = #PersonnePriseCharge.contact
* group[=].element[=].target[+].equivalence = #unmatched
// TODO R5 * group[=].element[=].noMap = true
//
* group[=].element[+].code = #PersonnePriseCharge.adresseCorrespondance
* group[=].element[=].target[+].code = #EHDSPatient.address
* group[=].element[=].target[=].equivalence = #equivalent
//
* group[=].element[+].code = #PersonnePriseCharge.telecommunication
* group[=].element[=].target[+].code = #EHDSPatient.telecom
* group[=].element[=].target[=].equivalence = #equivalent
//
* group[=].element[+].code = #PersonnePriseCharge.metadonnee
* group[=].element[=].target[+].equivalence = #unmatched
// TODO R5 * group[=].element[=].noMap = true
