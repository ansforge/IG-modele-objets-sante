Logical: Observation
Parent: $Base
Id: Observation
Title: "Observation"
Description: "Une mesure ou une déclaration constitue une observation effectuée sur une personne."
* ^status = #draft
* . ^short = "Une mesure ou une déclaration constitue une observation effectuée sur une personne."
* . ^definition = "Une mesure ou une déclaration constitue une observation effectuée sur une personne."
* identifiant 0..1 Identifier "Identifiant de l’observation." "Identifiant de l’observation."
* statut 0..1 CodeableConcept "Statut de l'observation. Par exemple observation finale ou amendée.http://hl7.org/fhir/observation-status" "Statut de l'observation. Par exemple observation finale ou amendée.http://hl7.org/fhir/observation-status"
* categorie 0..1 CodeableConcept "Catégorie de l'observation. Par exemple, une constante ou un résultat de laboratoire.http://www.hl7.org/fhir/valueset-observation-category.html" "Catégorie de l'observation. Par exemple, une constante ou un résultat de laboratoire.http://www.hl7.org/fhir/valueset-observation-category.html"
* datePertinence 0..1 dateTime "Date et heure à laquelle l'observation est pertinente : date de collecte, date de prélèvement, etc." "Date et heure à laquelle l'observation est pertinente : date de collecte, date de prélèvement, etc."
* dateDisponibilite 0..1 dateTime "Date à laquelle de l'observation est disponible pour consultation." "Date à laquelle de l'observation est disponible pour consultation."
* commentaire 0..1 string "Commentaire relatif à l'observation." "Commentaire relatif à l'observation."
* partieAnatomie 0..1 CodeableConcept "Partie de l’anatomie sur laquelle l’observation a été effectuée." "Partie de l’anatomie sur laquelle l’observation a été effectuée."
* methode 0..1 CodeableConcept "Procédé utilisé pour effectuer l'observation." "Procédé utilisé pour effectuer l'observation."
* raison 0..1 string "Raison pour laquelle l'observation a été réalisée.Texte libre (ex. surpoids ou obésité, diabète, maladie du cœur et des vaisseaux, tabac, etc.)" "Raison pour laquelle l'observation a été réalisée.Texte libre (ex. surpoids ou obésité, diabète, maladie du cœur et des vaisseaux, tabac, etc.)"
* positionCorps 0..1 CodeableConcept "Position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation." "Position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."
* momentMesure 0..1 CodeableConcept "Moment de la mesure." "Moment de la mesure."
* niveauEffort 0..1 CodeableConcept "Définit le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire." "Définit le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire."
* typeDiabete 0..1 CodeableConcept "Type de diabète." "Type de diabète."
* nombreJours 0..1 CodeableConcept "Nombre de jours. Utilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie." "Nombre de jours. Utilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie."