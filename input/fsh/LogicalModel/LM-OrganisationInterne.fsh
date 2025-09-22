// ---------------------------------------------
// Logical Model: Organisation Interne (OI)
// ---------------------------------------------
Logical: OrganisationInterne
Id: OrganisationInterne
Title: "Organisation Interne (OI)"
Description: "Modèle logique pour représenter une organisation interne (pôle, service, UF, etc.)."
Characteristics: #can-be-target
* identifiantOI 0..1 Identifiant "Identifiant OI - Identifiant de l'organisation interne, unique et persistant au niveau national."
* nomOI 0..1 Texte "Nom de l'organisation interne"
* typeOI 0..1 Code "Type d'organisation interne (pôle, structure interne ou service, unité fonctionnelle, unité élémentaire, etc.).
Mise en correspondance FHIR R4: Organization.type"
* typeOI from VS_TRE_R207_TypeOrganisationInterne
//
* contact 0..* Contact "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.
Les moyens de contact sont précisés (numéro de téléphone, fax, email, site internet)."
//
* boiteLettresMSS 0..* BoiteLettreMSS "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'organisation interne."
* dateOuverture 0..1 Date "Date d'ouverture administrative de l'organisation interne."
* dateFermeture 0..1 Date "La date de fermeture d'un niveau organisationnel correspond à la date à partir de laquelle un niveau organisationnel n'assure plus aucune prestation. Cette date de fermeture est caractérisée par un type de fermeture.
A partir de cette date, les prestations des niveaux organisationnels inférieurs ne sont plus assurées.
Lorsqu'il s'agit d'une fermeture temporaire, la date est remise à nulle lorsque le niveau organisationnel est ouvert de nouveau."
//
* typeFermeture 0..1 Code "Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture. 
Le type de fermeture s'applique au niveau organisationnel sur lequel la fermeture est déclarée, ainsi que tous les niveaux inférieurs rattachés à ce niveau organisationnel. Par exemple, si un service est fermé temporairement, toutes les unités fonctionnelles qui lui sont rattachées sont également fermées temporairement."
* typeFermeture from VS_TRE_R286_TypeFermeture
//
* datePrevisionnelleReouverture 0..1 Date "La date de réouverture correspond à la date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée. 
Elle s'applique lors d'une période de fermeture temporaire."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."
