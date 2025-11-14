Logical: Patientele
Parent: $Base
Id: Patientele
Title: "Patientele"
Description: "Une patientèle est un ensemble de patients présentant des caractéristiques permettant d'orienter leur prise en charge par une structure de santé."
* ^status = #draft
* . ^short = "Une patientèle est un ensemble de patients présentant des caractéristiques permettant d'orienter leur prise en charge par une structure de santé."
* . ^definition = "Une patientèle est un ensemble de patients présentant des caractéristiques permettant d'orienter leur prise en charge par une structure de santé."
* ageMin 0..1 Quantity "Age minimum (inclus) des personnes pouvant être accueillies." "Age minimum (inclus) des personnes pouvant être accueillies."
* ageMax 0..1 Quantity "Age maximum (inclus) des personnes pouvant être accueillies." "Age maximum (inclus) des personnes pouvant être accueillies."
* classeAge 0..* Coding "Code typant la classe d’âge d’un patient (Nouveau-né, Nourrisson, Enfant, Adolescent, Adulte, Senior)." "Code typant la classe d’âge d’un patient (Nouveau-né, Nourrisson, Enfant, Adolescent, Adulte, Senior)."
* classeAge from https://mos.esante.gouv.fr/NOS/TRE_R208-ClasseAge/FHIR/TRE-R208-ClasseAge?vs (preferred)
* publicPrisEnCharge 0..* Coding "Personnes âgées en perte d'autonomie et/ou personnes en situation de handicap." "Personnes âgées en perte d'autonomie et/ou personnes en situation de handicap."
* publicPrisEnCharge from https://mos.esante.gouv.fr/NOS/TRE_R239-PublicPrisEnCharge/FHIR/TRE-R239-PublicPrisEnCharge?vs (preferred)
* OffreOperationnelle 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle "Lien vers la classe OffreOperationnelle" "Lien vers la classe OffreOperationnelle"