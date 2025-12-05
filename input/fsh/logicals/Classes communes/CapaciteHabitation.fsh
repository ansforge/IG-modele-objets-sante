Logical: CapaciteHabitation
Parent: $Base
Id: CapaciteHabitation
Title: "CapaciteHabitation"
Description: "La capacité d'habitation décrit des types d'habitation et le nombre d'habitations associées à ces types."
* ^status = #draft
* . ^short = "La capacité d'habitation décrit des types d'habitation et le nombre d'habitations associées à ces types."
* . ^definition = "La capacité d'habitation décrit des types d'habitation et le nombre d'habitations associées à ces types."
* typeHabitation 0..1 Coding "Le type d’habitation renseigne sur la taille et le nombre de pièces d’un logement." "Le type d’habitation renseigne sur la taille et le nombre de pièces d’un logement."
* typeHabitation from https://mos.esante.gouv.fr/NOS/TRE_R242-TypeHabitation/FHIR/TRE-R242-TypeHabitation?vs (preferred)
* nbHabitation 0..1 integer "Nombre d'habitations du même type." "Nombre d'habitations du même type."
* ActiviteSociale 0..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSociale "Lien vers la classe ActiviteSociale" "Lien vers la classe ActiviteSociale"
* LieuRealisationOffre 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LieuRealisationOffre "Lien vers la classe LieuRealisationOffre" "Lien vers la classe LieuRealisationOffre"
* EntiteGeographique 0..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique "Lien vers la classe EntiteGeographique" "Lien vers la classe EntiteGeographique"