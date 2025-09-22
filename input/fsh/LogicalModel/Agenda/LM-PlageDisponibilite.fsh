Logical: PlageDisponibilite
Id: PlageDisponibilite
Title: "Classe PlageDisponibilite du MOS"
Description: "Modèle logique pour représenter une plage de disponibilité dans un agenda du MOS."
Characteristics: #can-be-target
* plageDisponibilite 0..1 Horaire "Horaire définissant la plage de disponibilité de l'agenda."
* statutPlageDisponibilite 0..1 Code "Statut de la plage de disponibilité : Par défaut le statut est à 'disponible'. Par exception, il est possible de déclarer une indisponibilité. Le statut est alors à 'indisponible'."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."