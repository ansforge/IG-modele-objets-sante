Logical: INS
Id: Ins
Title: "INS"
Description: "Logical model to represent the Health National Identity"
* . ^short = "INS"
* . ^definition = "National Health Identity."
* insert oneElementLogicalFR(registrationINS, 1..1, Identifier, [[The registration number in the National Directory of Identification of Physical Persons (NIR) or the waiting identifier number (NIA) for individuals awaiting the allocation of a NIR (Art. R. 1111-8-1.-I of the CSP).]], [[Le numéro d’inscription au répertoire national d’identification des personnes physiques (NIR)  ou le numéro identifiant d’attente (NIA) pour les personnes en instance d’attribution d’un NIR (Art. R. 1111-8-1.-I du CSP);]])
* insert oneElementLogicalFR(familyName, 1..1, string, [[The last name (also referred to as surname or birth name) is an identity element.]], [[Le nom de famille (également nommé nom de naissance) est un élément d’identité.]])
* insert oneElementLogicalFR(givenNameAtBirth, 1..1, string, [[First names indicated on the birth certificate.]], [[Prénoms indiqués sur l'acte de naissance.]])
* insert oneElementLogicalFR(firstGivenNameAtBirth, 1..1, string, [[First given name in the list of birth names.]], [[Premier prénom dans la liste des prénoms de naissance]])
* insert oneElementLogicalFR(usedFamilyName, 1..1, string, [[The actual name used by the individual in daily life.]], [[Nom réellement porté par la personne physique dans la vie courante.]])
* insert oneElementLogicalFR(usedGivenName, 1..1, string, [[The first name actually used by the individual in daily life.]], [[Prénom réellement porté par la personne physique dans la vie courante]])
* insert oneElementLogicalFR(gender, 1..1, code, [[The INS identity can only contain values F (female) or M (male).]], [[Le sexe.L’identité INS ne peut comporter que des valeurs F (féminin) ou M (masculin) pour le sexe.]])
* insert oneElementLogicalFR(dateOfBirth, 1..1, date, [[Date of birth of the individual.]], [[Date de naissance de la personne]])
* insert oneElementLogicalFR(placeOfBirth, 1..1, code, [[Official geographic code (COG) of the municipality (France) or country.]], [[Code officiel géographique (COG) de la commune (France) ou du pays.]])
* insert oneElementLogicalFR(metadata, 0..1, Meta, [[Information related to the management of classes and data.]], [[Informations relatives à la gestion des classes et des données.]])