Logical: PatientInCharge
Id: PatientInCharge
Title: "PatientInCharge"
Description: "Logical model to represent : Individual receiving care, examinations, preventive measures, or services. Depending on the context, the individual in question may be referred to as a patient or a user."
* . ^short = "Patient In Charge"
* . ^definition = "Individual receiving care, examinations, preventive measures, or services."
// * insert oneElementLogicalFR(ins, 0..1, http://isis.com/requirementig/StructureDefinition/Ins, [[National Health Identity]], [[Identité nationale de santé]])
* insert oneElementLogicalFR(ins, 0..1, Ins, [[National Health Identity]], [[Identité nationale de santé]])
* insert oneElementLogicalFR(idPersonInCharge, 0..*, Identifier, [[Secondary identifier of the person being cared for]], [[Identifiant secondaire de la personne prise en charge.]])
//* insert oneElementLogicalFR(person, 0..1, http://isis.com/requirementig/StructureDefinition/PhysicalPerson, [[Civil identity of the person being cared for.]],[[Identité civile de la personne prise en charge.]])
* insert oneElementLogicalFR(person, 0..1, PhysicalPerson, [[Civil identity of the person being cared for.]],[[Identité civile de la personne prise en charge.]])
* insert oneElementLogicalFR(communicationPreference, 0..1, CodeableConcept, [[Preferred means of communication of the person being cared for.]], [[Moyen de communication privilégié de la personne prise en charge.]])
* insert oneElementLogicalFR(contact, 0..*, ContactPoint, [[Contact information for individuals to reach out to in case of need.]], [[Coordonnées des personnes à contacter en cas de besoin.]])
* insert oneElementLogicalFR(correspondenceAddress, 0..*, Address, [[Correspondence address(es) of the person being cared for.]], [[Adresse(s) de correspondance de la personne prise en charge.]])
* insert oneElementLogicalFR(telecommunication, 0..*, ContactPoint, [[Communication address(es) of the person being cared for (phone number, email address, URL, etc.).]], [[Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, URL, etc.).]])
* insert oneElementLogicalFR(metadata, 0..1, Meta, [[Information related to the management of classes and data.]], [[Informations relatives à la gestion des classes et des données.]])
