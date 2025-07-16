Profile: Telecommunication
Parent: ContactPoint
Id: Telecommunication
Title: "Telecommunication"
Description: "Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée  (téléphone, fax, e-mail, URL, etc.)."

* system ^short = "canal : Code spécifiant le canal ou la manière dont s'établit la communication (téléphone, e-mail, URL, etc.). Quelques exemples de codes: ** MOB: Téléphone mobile; ** FIX: Téléphone fixe; ** EML: Courrier électronique; ** URL: Uniform Resource Location; ** FTP: File Transfer Protocol; ** FAX: Télécopie."
* value ^short = "adresseTelecom : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication, par exemple un numéro de téléphone, une adresse de courrier électronique, une adresse URL, etc."
* use ^short = "Précise l'utilisation du canal de communication (par exemple à des fins professionnelles, privées, etc.)."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    TypeMessagerie named TypeMessagerie 0..1 and
    NiveauConfidentialite named NiveauConfidentialite 0..1
* extension[TypeMessagerie] ^short = "Type de messagerie électronique rassemblant des acteurs (personne physique, personne morale ou système) identifiés et enregistrés selon des règles qui garantissent leur légitimité à l'utiliser. L'échange de messages obéit à des spécifications fonctionnelles et techniques propres à ce type de messagerie."
* extension[NiveauConfidentialite] ^short = "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Telecommunication."