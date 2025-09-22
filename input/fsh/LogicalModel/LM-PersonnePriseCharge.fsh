Logical: PersonnePriseCharge
Id: PersonnePriseCharge
Title: "Classe PersonnePriseCharge du MOS"
Description: "Modèle logique pour représenter une personne prise en charge avec ses identifiants, coordonnées et préférences de communication."
Characteristics: #can-be-target
* INS 0..1 INS "L'INS référence les données de santé et se compose des éléments suivants: - Un matricule INS : le numéro d’inscription au répertoire national d’identification des personnes physiques (NIR) ou le numéro identifiant d’attente (NIA) pour les personnes en instance d’attribution d’un NIR (Art. R. 1111-8-1.-I du CSP) - Des traits d'identité de l'état civil : nom de naissance, prénom (liste des prénoms de naissance), date de naissance, sexe et lieu de naissance; - Des traits complémentaires provenant du Référentiel National d'IdentitoVigilance (RNIV) : premier prénom de l'acte de naissance, prénom utilisé et nom utilisé."
* idPersonnePriseCharge 0..* Identifiant "Identifiant secondaire de la personne prise en charge. (FHIR: Patient.identifier, OMOP V5.4: Person.person_id)"
* personne 0..1 PersonnePhysique "Identité civile de la personne prise en charge."
* preferenceCommunication 0..1 Code "Moyen de communication privilégié de la personne prise en charge."
* contact 0..* Contact "Coordonnées des personnes à contacter en cas de besoin. (FHIR: Patient.contact)"
* adresseCorrespondance 0..* Adresse "Adresse(s) de correspondance de la personne prise en charge. (FHIR: Patient.address, OMOP V5.4: Person.location_id)"
* telecommunication 0..* Telecommunication "Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, URL, etc.). (FHIR: Patient.telecom)"
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."
* professionnel 0..* Reference(Professionnel) "Professionnel de santé intervenant dans le suivi de la personne prise en charge."