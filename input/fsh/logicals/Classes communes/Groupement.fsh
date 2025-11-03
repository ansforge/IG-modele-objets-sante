Logical: Groupement
Parent: $Base
Id: Groupement
Title: "Groupement"
Description: "Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés."
* ^status = #draft
* . ^short = "Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés."
* . ^definition = "Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés."
* idGroupement 0..1 Identifier "Identifiant du groupement." "Identifiant du groupement."
* dateCreation 0..1 date "Date de création du groupement." "Date de création du groupement."
* dateMAJ 0..* date "Date de mise à jour du groupement." "Date de mise à jour du groupement."
* dateFin 0..1 date "Date de fin d'existence du groupement." "Date de fin d'existence du groupement."
* Membre 0..* https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Membre "Lien vers la classe Membre" "Lien vers la classe Membre"