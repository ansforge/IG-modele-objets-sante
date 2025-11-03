Logical: LieuRealisationOffre
Parent: $Base
Id: LieuRealisationOffre
Title: "LieuRealisationOffre"
Description: "Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge."
* ^status = #draft
* . ^short = "Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge."
* . ^definition = "Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge."
* idExterneSynchro 0..1 Identifier "L’identifiant externe de synchronisation est l’identifiant défini par le porteur d’offre pour la zone d’hébergement des lits." "L’identifiant externe de synchronisation est l’identifiant défini par le porteur d’offre pour la zone d’hébergement des lits."
* nomExterneSynchro 0..1 string "Nom de la zone d’hébergement des lits." "Nom de la zone d’hébergement des lits."
* OffreOperationnelle 1..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle "Lien vers la classe OffreOperationnelle" "Lien vers la classe OffreOperationnelle"
* CapacitePriseCharge 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapacitePriseCharge "Lien vers la classe CapacitePriseCharge" "Lien vers la classe CapacitePriseCharge"
* Lieu 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu "Lien vers la classe Lieu" "Lien vers la classe Lieu"
* EquipementSpecifique 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementSpecifique "Lien vers la classe EquipementSpecifique" "Lien vers la classe EquipementSpecifique"
* CapaciteHabitation 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteHabitation "Lien vers la classe CapaciteHabitation" "Lien vers la classe CapaciteHabitation"