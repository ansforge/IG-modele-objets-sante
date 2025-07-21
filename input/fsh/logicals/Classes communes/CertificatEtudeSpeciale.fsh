Logical: CertificatEtudeSpeciale
Parent: Diplome
Id: CertificatEtudeSpeciale
Title: "CertificatEtudeSpeciale"
* ^status = #draft
* . ^short = " Les Certificat d'études spéciales (CES) ont précédé les DES et ils ne sont plus délivrés depuis 1991.Dans le cadre du modèle, un certificat d'études spéciales est un type de diplôme. La classe CertificatEtudesSpeciales est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
* . ^definition = " Les Certificat d'études spéciales (CES) ont précédé les DES et ils ne sont plus délivrés depuis 1991.Dans le cadre du modèle, un certificat d'études spéciales est un type de diplôme. La classe CertificatEtudesSpeciales est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
* certificatEtudeSpeciale 0..1 Coding " Certificat d'études spéciales (CES)." " Certificat d'études spéciales (CES)."
* certificatEtudeSpeciale from https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R55-CertificatEtudeSpeciale?vs (preferred)