Logical: Agenda
Parent: $Base
Id: Agenda
Title: "Agenda"
Description: "Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie."
* ^status = #draft
* . ^short = "Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie."
* . ^definition = "Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie."
* idAgenda 0..1 Identifier "Identifiant de l'agenda." "Identifiant de l'agenda."
* nomAgenda 0..1 string "Nom de l'agenda." "Nom de l'agenda."
* dateCreation 0..1 date "Date de création de l'agenda." "Date de création de l'agenda."
* dateDebutPlanification 0..1 dateTime "Date de début de validité de l'agenda." "Date de début de validité de l'agenda."
* dateFinPlanification 0..1 dateTime "Date de fin de validité de l'agenda." "Date de fin de validité de l'agenda."
* PersonnePriseCharge 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge "Lien vers la classe PersonnePriseCharge" "Lien vers la classe PersonnePriseCharge"
* Professionnel 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel "Lien vers la classe Professionnel" "Lien vers la classe Professionnel"
* Lieu 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu "Lien vers la classe Lieu" "Lien vers la classe Lieu"
* Contact 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact "Lien vers la classe Contact" "Lien vers la classe Contact"
* EntiteGeographique 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique "Lien vers la classe EntiteGeographique" "Lien vers la classe EntiteGeographique"
* EquipementSpecifique 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementSpecifique "Lien vers la classe EquipementSpecifique" "Lien vers la classe EquipementSpecifique"
* OrganisationInterne 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne "Lien vers la classe OrganisationInterne" "Lien vers la classe OrganisationInterne"
* Creneau 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Creneau "Lien vers la classe Creneau" "Lien vers la classe Creneau"
* PlageDisponibilite 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PlageDisponibilite "Lien vers la classe PlageDisponibilite" "Lien vers la classe PlageDisponibilite"