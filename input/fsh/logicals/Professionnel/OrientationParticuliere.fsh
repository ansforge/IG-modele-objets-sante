Logical: OrientationParticuliere
Parent: SavoirFaire
Id: OrientationParticuliere
Title: "OrientationParticuliere"
* ^status = #draft
* . ^short = "Caractérise une orientation d'exercice: acupuncture ou homéopathie.Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
* . ^definition = "Caractérise une orientation d'exercice: acupuncture ou homéopathie.Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
* orientationParticuliere 0..1 Coding "Orientation particulière." "Orientation particulière."
* orientationParticuliere from https://interop.esante.gouv.fr/ig/mos/ValueSet/orientationParticuliere-vs (preferred)