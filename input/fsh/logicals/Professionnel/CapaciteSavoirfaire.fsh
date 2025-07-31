Logical: CapaciteSavoirfaire
Parent: SavoirFaire
Id: CapaciteSavoirfaire
Title: "CapaciteSavoirfaire"
Description: "La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
* ^status = #draft
* . ^short = "La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
* . ^definition = "La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
* capaciteSavoirFaire 0..1 Coding "Savoir-faire de type capacité de médecine (diplôme permettant aux docteurs en médecine d'acquérir des compétences supplémentaires)." "Savoir-faire de type capacité de médecine (diplôme permettant aux docteurs en médecine d'acquérir des compétences supplémentaires)."
* capaciteSavoirFaire from capaciteSavoirFaire-vs (preferred)