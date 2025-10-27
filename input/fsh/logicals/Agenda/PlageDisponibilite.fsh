Logical: PlageDisponibilite
Parent: $Base
Id: PlageDisponibilite
Title: "PlageDisponibilite"
Description: "Horaires de disponibilité pour la prise de rendez - vous de l'agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l'agenda est indisponible à la prise de rendez - vous."
* ^status = #draft
* . ^short = "Horaires de disponibilité pour la prise de rendez - vous de l'agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l'agenda est indisponible à la prise de rendez - vous."
* . ^definition = "Horaires de disponibilité pour la prise de rendez - vous de l'agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l'agenda est indisponible à la prise de rendez - vous."
* plageDisponibilite 0..1 Horaire "Horaire définissant la plage de disponibilité de l'agenda." "Horaire définissant la plage de disponibilité de l'agenda."
* statutPlageDisponibilite 0..1 Coding "Statut de la plage de disponibilité : Par défaut le statut est à \"disponible\". Par exception, il est possible de déclarer une indisponibilité. Le statut est alors à \"indisponible\"." "Statut de la plage de disponibilité : Par défaut le statut est à \"disponible\". Par exception, il est possible de déclarer une indisponibilité. Le statut est alors à \"indisponible\"."