Logical: AidantDemarche
Parent: $Base
Id: AidantDemarche
Title: "AidantDemarche"
Description: "Personne physique ou morale aidant l'individu dans ses démarches."
* ^status = #draft
* . ^short = "Personne physique ou morale aidant l'individu dans ses démarches."
* . ^definition = "Personne physique ou morale aidant l'individu dans ses démarches."
* typeAidantDemarche 0..1 Coding "Type d'aidant dans la démarche réalisée.Création nomenclature en cours." "Type d'aidant dans la démarche réalisée.Création nomenclature en cours."
* aidantDemarche 0..1 PersonnePhysique "Personne physique aidant la personne prise en charge à réaliser ses démarches." "Personne physique aidant la personne prise en charge à réaliser ses démarches."
* adresseAidantDemarche 0..1 Adresse "Adresse(s) de correspondance de l'aidant." "Adresse(s) de correspondance de l'aidant."
* telecommunicationAidantDemarche 0..* Telecommunication "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) de l'aidant." "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) de l'aidant."
* EntiteGeographique 0..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique "Lien vers la classe EntiteGeographique" "Lien vers la classe EntiteGeographique"
* PersonnePhysique 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique "Lien vers la classe PersonnePhysique" "Lien vers la classe PersonnePhysique"