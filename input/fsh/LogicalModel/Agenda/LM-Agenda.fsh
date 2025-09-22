Logical: Agenda
Id: Agenda
Title: "Classe Agenda du MOS"
Description: "Modèle logique pour représenter la classe Agenda du MOS."
Characteristics: #can-be-target
* idAgenda 0..1 Identifiant "Identifiant de l'agenda. (FHIR: Schedule.identifier)"
* nomAgenda 0..1 Texte "Nom de l'agenda."
* dateCreation 0..1 Date "Date de création de l'agenda."
* dateDebutPlanification 0..1 DateHeure "Date de début de validité de l'agenda. (FHIR: Schedule.planningHorizon.start)"
* dateFinPlanification 0..1 DateHeure "Date de fin de validité de l'agenda. (FHIR: Schedule.planningHorizon.end)"
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."
* creneaux 1..* Reference(Creneau) "Liste des créneaux horaires associés à l'agenda."
* plagesDisponibilites 1..* Reference(PlageDisponibilite) "Liste des plages de disponibilité associées à l'agenda."
* professionnel 0..* Reference(Professionnel) "Liste des professionnels associés à l'agenda."
* personnePriseCharge 0..* Reference(PersonnePriseCharge) "Liste des personnes prises en charge associées à l'agenda."
* equipementSpecifique 0..* Reference(EquipementSpecifique) "Liste des équipements spécifiques associés à l'agenda."
* organisationInterne 0..* Reference(OrganisationInterne) "Liste des organisations internes associées à l'agenda."
* entiteGeographique 0..* Reference(EntiteGeographique) "Liste des entités géographiques associées à l'agenda."