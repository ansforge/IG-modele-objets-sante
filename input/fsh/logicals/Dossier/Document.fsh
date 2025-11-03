Logical: Document
Parent: $Base
Id: Document
Title: "Document"
Description: "Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative."
* ^status = #draft
* . ^short = "Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative."
* . ^definition = "Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative."
* typeDocument 0..1 Coding "Type de document." "Type de document."
* Demande 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande "Lien vers la classe Demande" "Lien vers la classe Demande"
* DossierPersonnePriseCharge 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DossierPersonnePriseCharge "Lien vers la classe DossierPersonnePriseCharge" "Lien vers la classe DossierPersonnePriseCharge"
* NoteLiaison 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/NoteLiaison "Lien vers la classe NoteLiaison" "Lien vers la classe NoteLiaison"