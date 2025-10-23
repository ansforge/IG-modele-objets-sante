Logical: Contact
Parent: $Base
Id: Contact
Title: "Contact"
Description: "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.)."
* ^status = #draft
* . ^short = "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.)."
* . ^definition = "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.)."
* IdContact 0..1 Identifier "Identifiant du contact." "Identifiant du contact."
* nom 0..1 string "Un nom de la personne ou du service à contacter." "Un nom de la personne ou du service à contacter."
* fonction 0..1 string "Un titre, une position ou une fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.)." "Un titre, une position ou une fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.)."
* fonctionContact 0..1 Coding "Code du titre, de la position ou de la fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.)." "Code du titre, de la position ou de la fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.)."
* fonctionContact from https://mos.esante.gouv.fr/NOS/TRE_R251-FonctionContact/FHIR/TRE-R251-FonctionContact?vs (preferred)
* natureContact 0..1 Coding "Un service ou un guichet assurant le contact au sein de l'organisation (accueil, admission, etc.)." "Un service ou un guichet assurant le contact au sein de l'organisation (accueil, admission, etc.)."
* natureContact from https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact?vs (preferred)
* description 0..1 string "Une description du contact." "Une description du contact."
* type 0..1 Coding "Type du point de contact, c'est à dire un téléservice, un point de contact physique (une personne), un contact téléphonique, etc." "Type du point de contact, c'est à dire un téléservice, un point de contact physique (une personne), un contact téléphonique, etc."
* type from https://mos.esante.gouv.fr/NOS/TRE_R206-TypeContact/FHIR/TRE-R206-TypeContact?vs (preferred)
* personne 0..1 PersonnePhysique "Informations détaillées de la personne point de contact." "Informations détaillées de la personne point de contact."
* role 0..1 Coding "Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc." "Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc."
* role from https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass?vs (preferred)
* relation 0..1 Coding "Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc." "Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc."
* relation from relation-vs (preferred)
* dateDebut 0..1 dateTime "Date/heure à partir de laquelle le contact est effectif." "Date/heure à partir de laquelle le contact est effectif."
* dateFin 0..1 dateTime "Date/heure à partir de laquelle le contact n'est plus effectif." "Date/heure à partir de laquelle le contact n'est plus effectif."
* niveauConfidentialite 0..1 Coding "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact." "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact."
* niveauConfidentialite from https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite?vs (preferred)
* adresse 0..1 Adresse "Adresse géopostale du point de contact." "Adresse géopostale du point de contact."
* lieu 0..* Lieu "Lieu(x) rattaché(s) au contact." "Lieu(x) rattaché(s) au contact."
* telecommunication 0..* Telecommunication "Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.)." "Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.)."