Logical: Creneau
Id: Creneau
Title: "Classe Creneau du MOS"
Description: "Modèle logique pour représenter la classe Creneau du MOS."
Characteristics: #can-be-target
* idCreneau 0..1 Identifiant "Identifiant du créneau. (FHIR: Slot.identifier)"
* statut 0..1 Code "Statut du créneau, fixé à « libre ». (FHIR: Slot.status)"
* dateDebut 0..1 DateHeure "Date et heure du début du créneau horaire. (FHIR: Slot.start)"
* dateFin 0..1 DateHeure "Date et heure de fin du créneau horaire. (FHIR: Slot.end)"
* informationComplementaire 0..1 Texte "Commentaire lié au créneau. (FHIR: Slot.comment)"
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."