Logical: Creneau
Parent: $Base
Id: Creneau
Title: "Creneau"
Description: "Un créneau d’un agenda est un intervalle de temps, disponible ou occupé."
* ^status = #draft
* . ^short = "Un créneau d’un agenda est un intervalle de temps, disponible ou occupé."
* . ^definition = "Un créneau d’un agenda est un intervalle de temps, disponible ou occupé."
* idCreneau 0..1 Identifier "Identifiant du créneau." "Identifiant du créneau."
* statut 0..1 Coding "Statut du créneau. Il est fixé à \"libre\"." "Statut du créneau. Il est fixé à \"libre\"."
* dateDebut 0..1 dateTime "Date et heure du début du créneau horaire." "Date et heure du début du créneau horaire."
* dateFin 0..1 dateTime "Date et heure de fin du créneau horaire." "Date et heure de fin du créneau horaire."
* informationComplementaire 0..1 string "Commentaire lié au créneau." "Commentaire lié au créneau."
* Agenda 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Agenda "Lien vers la classe Agenda" "Lien vers la classe Agenda"
* RendezVous 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/RendezVous "Lien vers la classe RendezVous" "Lien vers la classe RendezVous"