Logical: LangueParlee
Id: LangueParlee
Title: "LangueParlee"
Description: "Langue parlée par une personne ou dans un service."
* ^status = #draft
* . ^short = "Langue parlée par une personne ou dans un service."
* . ^definition = "Langue parlée par une personne ou dans un service."
* langueParlee 0..1 Coding "Langue parlée." "Langue parlée."
* langueParlee from https://mos.esante.gouv.fr/NOS/TRE_G00-Langue/FHIR/TRE-G00-Langue?vs (preferred)
* dateFin 0..1 date "Date à laquelle la personne renonce à être référent de cette langue." "Date à laquelle la personne renonce à être référent de cette langue."