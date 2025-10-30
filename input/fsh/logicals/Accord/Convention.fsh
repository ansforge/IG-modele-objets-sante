Logical: Convention
Parent: $Base
Id: Convention
Title: "Convention"
Description: "Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes."
* ^status = #draft
* . ^short = "Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes."
* . ^definition = "Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes."
* numeroConvention 0..1 Identifier "Numéro de la convention." "Numéro de la convention."
* titre 0..1 string "Titre de la convention, par exemple \"Convention constitutive du groupement hospitalier de territoire des Bouches du Rhône\"." "Titre de la convention, par exemple \"Convention constitutive du groupement hospitalier de territoire des Bouches du Rhône\"."
* dateDebutConvention 0..1 date "Date de début de la convention." "Date de début de la convention."
* dateFinConvention 0..1 date "Date de fin de la convention." "Date de fin de la convention."
* EntiteGeographique 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique "Lien vers la classe EntiteGeographique" "Lien vers la classe EntiteGeographique"