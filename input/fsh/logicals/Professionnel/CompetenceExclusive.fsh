Logical: CompetenceExclusive
Parent: SavoirFaire
Id: CompetenceExclusive
Title: "CompetenceExclusive"
* ^status = #draft
* . ^short = "La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
* . ^definition = "La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
* competenceExclusive 0..1 Coding "Compétence exclusive." "Compétence exclusive."
* competenceExclusive from competenceExclusive-vs (preferred)