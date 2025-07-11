Profile: Telecommunication
Parent: ContactPoint
Id: Telecommunication
Title: "Telecommunication"
Description: "Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée  (téléphone, fax, e-mail, URL, etc.)."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    TypeMessagerie named TypeMessagerie 0..1 and
    NiveauConfidentialite named NiveauConfidentialite 0..1 