Logical: CapaciteActiviteExercee
Parent: $Base
Id: CapaciteActiviteExercee
Title: "CapaciteActiviteExercee"
Description: "Capacité définie au regard de l'activité."
* ^status = #draft
* . ^short = "Capacité définie au regard de l'activité."
* . ^definition = "Capacité définie au regard de l'activité."
* habilitationAideSociale 0..1 Coding "Habilitation à l'aide sociale d'état." "Habilitation à l'aide sociale d'état."
* modeFinacement 0..1 Coding "Mode de financement de centres d'accueil et d'hébergement." "Mode de financement de centres d'accueil et d'hébergement."
* EntiteGeographique 0..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique "Lien vers la classe EntiteGeographique" "Lien vers la classe EntiteGeographique"
* ActiviteSociale 0..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSociale "Lien vers la classe ActiviteSociale" "Lien vers la classe ActiviteSociale"