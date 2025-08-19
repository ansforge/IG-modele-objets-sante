Logical: SavoirFaire
Id: SavoirFaire
Title: "SavoirFaire"
Description: "Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc."
* ^status = #draft
* . ^short = "Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc."
* . ^definition = "Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc."
* typeSavoirFaire 0..1 Coding "Le type de savoir-faire (qualifications/autres attributions) désigne par exemple:** une spécialité ordinale (S);** une compétence (C);** etc." "Le type de savoir-faire (qualifications/autres attributions) désigne par exemple:** une spécialité ordinale (S);** une compétence (C);** etc."
* typeSavoirFaire from https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire?vs (preferred)
* dateReconnaissance 0..1 date "Date à laquelle, l’organisme donnant l’autorisation d’exercer une qualification a reconnu cette qualification ou date à laquelle l'attribution a été donnée au professionnel." "Date à laquelle, l’organisme donnant l’autorisation d’exercer une qualification a reconnu cette qualification ou date à laquelle l'attribution a été donnée au professionnel."
* dateAbandon 0..1 date "Date à laquelle le professionnel a déclaré renoncer à l’exercice d’un savoir-faire ou date à laquelle il ne souhaite plus le faire apparaître." "Date à laquelle le professionnel a déclaré renoncer à l’exercice d’un savoir-faire ou date à laquelle il ne souhaite plus le faire apparaître."
* exerciceProfessionnel 1..1 Reference(ExerciceProfessionnel) "Lien vers la classe ExerciceProfessionnel."