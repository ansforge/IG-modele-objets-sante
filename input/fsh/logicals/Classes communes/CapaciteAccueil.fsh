Logical: CapaciteAccueil
Parent: $Base
Id: CapaciteAccueil
Title: "CapaciteAccueil"
Description: "La capacité d'accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps."
* ^status = #draft
* . ^short = "La capacité d'accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps."
* . ^definition = "La capacité d'accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps."
* idCapaciteAccueil 0..1 Identifier "Identifiant de la capacité d'accueil." "Identifiant de la capacité d'accueil."
* MesureCapacite 1..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureCapacite "Lien vers la classe MesureCapacite" "Lien vers la classe MesureCapacite"
* EntiteGeographique 0..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique "Lien vers la classe EntiteGeographique" "Lien vers la classe EntiteGeographique"