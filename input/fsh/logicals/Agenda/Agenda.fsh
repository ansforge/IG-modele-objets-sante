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