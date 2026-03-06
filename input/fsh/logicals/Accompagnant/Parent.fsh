Logical: Parent
Parent: $Base
Id: Parent
Title: "Parent"
Description: "Personne liée par un lien de filiation à un enfant"
* ^status = #draft
* . ^short = "Personne liée par un lien de filiation à un enfant"
* . ^definition = "Personne liée par un lien de filiation à un enfant"
* autoriteParentale 0..1 boolean "L'autorité parentale confère aux parents des droits et met à leur charge des devoirs vis-à-vis de leur enfant mineur. Ces droits et obligations se traduisent de différentes manières : veiller sur l'enfant, sa santé, son éducation, son patrimoine... Selon les cas, l'autorité parentale peut être exercée conjointement (par les 2 parents) ou par un seul parent. (service-public.fr)" "L'autorité parentale confère aux parents des droits et met à leur charge des devoirs vis-à-vis de leur enfant mineur. Ces droits et obligations se traduisent de différentes manières : veiller sur l'enfant, sa santé, son éducation, son patrimoine... Selon les cas, l'autorité parentale peut être exercée conjointement (par les 2 parents) ou par un seul parent. (service-public.fr)"
* personne 0..1 PersonnePhysique "Identité civile du parent." "Identité civile du parent."
* adresseCorrespondance 0..1 Adresse "Adresse(s) de correspondance du parent." "Adresse(s) de correspondance du parent."
* telecommunication 0..* Telecommunication "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) du parent." "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) du parent."
* PersonnePhysique 1..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique "Lien vers la classe PersonnePhysique" "Lien vers la classe PersonnePhysique"