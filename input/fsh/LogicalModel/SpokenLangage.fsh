Logical: SpokenLanguage
Id: SpokenLanguage
Title: "Logical Model for SpokenLanguage"
Description: "A physical person is an individual with rights and obligations, characterized by a civil identity."
* ^version = "0.1.0"
* ^status = #draft
* . ^short = "Spoken Language"
* . ^definition = "Spoken Language"
* insert oneElementLogicalFR(spokenLanguage, 0..1, CodeableConcept, [[Spoken language.]], [[Langue parlée.]])
* insert oneElementLogicalFR(endDate, 0..1, date, [[Date on which the person gives up the right to refer to this language.]], [[Date à laquelle la personne renonce à être référent de cette langue.]])
* insert oneElementLogicalFR(metadata, 0..1, Meta, [[Class and data management information.]], [[Informations relatives à la gestion des classes et des données.]])