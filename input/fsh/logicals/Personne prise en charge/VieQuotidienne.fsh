Logical: VieQuotidienne
Parent: $Base
Id: VieQuotidienne
Title: "VieQuotidienne"
Description: "/!\\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge."
* ^status = #draft
* . ^short = "/!\\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge."
* . ^definition = "/!\\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge."
* situationVieQuotidienne 0..* Coding "Situation de vie de la personne : vit seule ou avec d'autres personnes" "Situation de vie de la personne : vit seule ou avec d'autres personnes"
* situationVieQuotidienne from https://mos.esante.gouv.fr/NOS/TRE_R317-SituationVieQuotidienne/FHIR/TRE-R317-SituationVieQuotidienne?vs (preferred)
* besoinVieQuotidienne 0..* Coding "Besoins de la personne dans sa vie quotidienne." "Besoins de la personne dans sa vie quotidienne."
* besoinVieQuotidienne from besoinVieQuotidienne-vs (preferred)
* compositionFoyer 0..1 Coding "Désigne avec qui vit la personne prise en charge dans son logement." "Désigne avec qui vit la personne prise en charge dans son logement."