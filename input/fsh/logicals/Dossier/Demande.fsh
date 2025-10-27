Logical: Demande
Parent: $Base
Id: Demande
Title: "Demande"
Description: "Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes."
* ^status = #draft
* . ^short = "Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes."
* . ^definition = "Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes."
* identifiantDemande 0..1 Identifier "Identifiant de la demande." "Identifiant de la demande."
* dateDemande 0..1 date "Date à laquelle la demande a été réalisée." "Date à laquelle la demande a été réalisée."
* demandeUrgente 0..1 boolean "Indique que la demande est considérée comme urgente ou non." "Indique que la demande est considérée comme urgente ou non."