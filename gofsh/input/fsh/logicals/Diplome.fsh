Logical: Diplome
Id: Diplome
Title: "Diplome"
* ^status = #draft
* . ^short = " Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d'Etat.La classe \"Diplome\" est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu"
* . ^definition = " Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d'Etat.La classe \"Diplome\" est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu"
* . ^type.code = "Element"
* typeDiplome 0..1 Coding " Type de diplôme, par exemple:** DE : Diplôme d’Etat français** CES : Certificat d’Etudes Spéciales** DES : Diplôme d'Etudes Spécialisées** etc." " Type de diplôme, par exemple:** DE : Diplôme d’Etat français** CES : Certificat d’Etudes Spéciales** DES : Diplôme d'Etudes Spécialisées** etc."
* typeDiplome from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/TypeDiplome-vs (preferred)
* lieuFormation 0..1 Coding " Lieu de formation pour l'obtention du diplôme. Par exemple:** U37 : Université de Tours (Université François Rabelais)** UP5 : Université de Paris 05 (Université René Descartes)." " Lieu de formation pour l'obtention du diplôme. Par exemple:** U37 : Université de Tours (Université François Rabelais)** UP5 : Université de Paris 05 (Université René Descartes)."
* lieuFormation from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/LieuFormation-vs (preferred)
* dateDiplome 0..1 date " Date d’obtention du diplôme." " Date d’obtention du diplôme."
* numeroDiplome 0..1 string " Numéro du diplôme." " Numéro du diplôme."