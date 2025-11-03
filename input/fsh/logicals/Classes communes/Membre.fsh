Logical: Membre
Parent: $Base
Id: Membre
Title: "Membre"
Description: "Personne ou entité faisant partie d'un groupement."
* ^status = #draft
* . ^short = "Personne ou entité faisant partie d'un groupement."
* . ^definition = "Personne ou entité faisant partie d'un groupement."
* idMembre 0..1 Identifier "Identifiant du membre." "Identifiant du membre."
* dateEntree 0..* date "Date de début de participation." "Date de début de participation."
* dateSortie 0..* date "Date de fin de participation." "Date de fin de participation."
* adresse 0..* Adresse "Adresse(s) géopostale(s)" "Adresse(s) géopostale(s)"
* telecommunication 0..* Telecommunication "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) rattachée(s) à la situation opérationnelle." "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) rattachée(s) à la situation opérationnelle."
* Groupement 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Groupement "Lien vers la classe Groupement" "Lien vers la classe Groupement"