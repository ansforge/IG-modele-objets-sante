Instance: CM-PatientModel-EHDS
InstanceOf: ConceptMap
Usage: #definition
* version = "0.1.0"
* name = "CM-PatientModel-EHDS"
* title = "Mapping entre du Patient MOS le Patient EHDS"
* status = #draft
* date = "2025-05-26"
* description = "Cette ConceptMap fait correspondre le model logique d'un patient MOS vers un patient EHDS."
* purpose = "Pour faciliter l'intégration des données de recherche dans les systèmes basés sur FHIR pour la recherche."
* sourceUri = Canonical(PatientInCharge)
* targetUri = "https://github.com/Fyrstain/IG-MOS/tree/ISIS-56"

// Groupe: Patient
* group[+].source = Canonical(PatientInCharge)
* group[=].target = "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPatient"
//
* group[=].element[+].code = #PatientInCharge.ins
* group[=].element[=].target[+].code = #EHDSPatient.personalIdentifier
* group[=].element[=].target[=].equivalence = #narrower
// TODO R5 * group[=].element[=].target[=].equivalence = #source-is-narrower-than-target
// 
* group[=].element[+].code = #PatientInCharge.idPersonInCharge
* group[=].element[=].target[+].code = #EHDSPatient.personalIdentifier
* group[=].element[=].target[=].equivalence = #narrower
// TODO R5 * group[=].element[=].target[=].equivalence = #source-is-narrower-than-target
// 
* group[=].element[+].code = #PatientInCharge.person
* group[=].element[=].target[+].code = #EHDSPatient.name
* group[=].element[=].target[=].equivalence = #relatedto
// TODO R5 * group[=].element[=].target[=].equivalence = #related-to
//
* group[=].element[+].code = #PatientInCharge.communicationPreference
* group[=].element[=].target[+].equivalence = #unmatched
// TODO R5 * group[=].element[=].noMap = true
//
* group[=].element[+].code = #PatientInCharge.contact
* group[=].element[=].target[+].equivalence = #unmatched
// TODO R5 * group[=].element[=].noMap = true
//
* group[=].element[+].code = #PatientInCharge.correspondenceAddress
* group[=].element[=].target[+].code = #EHDSPatient.address
* group[=].element[=].target[=].equivalence = #equivalent
//
* group[=].element[+].code = #PatientInCharge.telecommunicationnoma
* group[=].element[=].target[+].code = #EHDSPatient.telecom
* group[=].element[=].target[=].equivalence = #equivalent
//
* group[=].element[+].code = #PatientInCharge.metadata
* group[=].element[=].target[+].equivalence = #unmatched
// TODO R5 * group[=].element[=].noMap = true
