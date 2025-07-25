Logical: DiplomeDivers
Parent: Diplome
Id: DiplomeDivers
Title: "DiplomeDivers"
* ^status = #draft
* . ^short = "Cette classe regroupe les diplômes qui ne peuvent être classés dans un type de diplôme explicite (CES, DESC1, DESC2, etc.).La classe DiplomeDivers est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
* . ^definition = "Cette classe regroupe les diplômes qui ne peuvent être classés dans un type de diplôme explicite (CES, DESC1, DESC2, etc.).La classe DiplomeDivers est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
* diplomeDivers 0..1 Coding "Autre type de diplôme obtenu." "Autre type de diplôme obtenu."
* diplomeDivers from https://mos.esante.gouv.fr/NOS/TRE_R58-AutreTypeDiplome/FHIR/TRE-R58-AutreTypeDiplome?vs (preferred)