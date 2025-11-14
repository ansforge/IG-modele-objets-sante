Logical: MesureCapacite
Parent: $Base
Id: MesureCapacite
Title: "MesureCapacite"
Description: "Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil."
* ^status = #draft
* . ^short = "Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil."
* . ^definition = "Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil."
* natureCapacite 0..1 Coding "Indique si la capacité est exprimée en lits ou en places." "Indique si la capacité est exprimée en lits ou en places."
* natureCapacite from https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite?vs (preferred)
* statutCapacite 0..1 Coding "Permet de préciser le statut des lits ou places décrits." "Permet de préciser le statut des lits ou places décrits."
* statutCapacite from https://mos.esante.gouv.fr/NOS/TRE_R330-TypeStatutCapacite/FHIR/TRE-R330-TypeStatutCapacite?vs (preferred)
* temporaliteCapacite 0..1 Coding "Indique le moment où cette capacité sera effective. Il est ainsi possible de décrire la situation immédiate, ou de fournir des informations prospectives de capacités, prenant notamment en compte les entrées et sorties déjà identifiés de patients." "Indique le moment où cette capacité sera effective. Il est ainsi possible de décrire la situation immédiate, ou de fournir des informations prospectives de capacités, prenant notamment en compte les entrées et sorties déjà identifiés de patients."
* temporaliteCapacite from https://mos.esante.gouv.fr/NOS/TRE_R331-TemporaliteCapacite/FHIR/TRE-R331-TemporaliteCapacite?vs (preferred)
* nombreCapacite 0..1 integer "Quantité de lits ou places de la capacité exprimée." "Quantité de lits ou places de la capacité exprimée."
* precision 0..1 integer "Pourcentage." "Pourcentage."
* variation 0..1 integer "Variabilité de la capacité." "Variabilité de la capacité."
* typeSourceCapacite 0..1 Coding "Indique quel type de source est à l’origine de l’information de capacité." "Indique quel type de source est à l’origine de l’information de capacité."
* typeSourceCapacite from https://mos.esante.gouv.fr/NOS/TRE_R335-TypeSourceCapacite/FHIR/TRE-R335-TypeSourceCapacite?vs (preferred)
* dateMAJCapacite 0..1 dateTime "Date à laquelle la mesure de la capacité a été mise à jour dans la source." "Date à laquelle la mesure de la capacité a été mise à jour dans la source."
* dateConstatCapacite 0..1 dateTime "Date de constat de la mesure de la capacité." "Date de constat de la mesure de la capacité."
* CapaciteActiviteExercee 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteActiviteExercee "Lien vers la classe CapaciteActiviteExercee" "Lien vers la classe CapaciteActiviteExercee"
* CapacitePriseCharge 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapacitePriseCharge "Lien vers la classe CapacitePriseCharge" "Lien vers la classe CapacitePriseCharge"
* CapaciteAccueil 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteAccueil "Lien vers la classe CapaciteAccueil" "Lien vers la classe CapaciteAccueil"