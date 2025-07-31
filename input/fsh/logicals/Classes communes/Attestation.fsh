Logical: Attestation
Parent: Diplome
Id: Attestation
Title: "Attestation"
Description: "L’attestation est attribuée au terme d'une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe"
* ^status = #draft
* . ^short = "L’attestation est attribuée au terme d'une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe"
* . ^definition = "L’attestation est attribuée au terme d'une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe"
* attestation 0..1 Coding "Attestation de formation." "Attestation de formation."
* attestation from https://mos.esante.gouv.fr/NOS/TRE_R56-Attestation/FHIR/TRE-R56-Attestation?vs (preferred)