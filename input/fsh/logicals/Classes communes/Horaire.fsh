Logical: Horaire
Id: Horaire
Title: "Horaire"
* ^status = #draft
* . ^short = "La classe Horaire permet de définir les différentes plages d'un agenda d'une entité (jours et heures d'ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d'indisponibilités"
* . ^definition = "La classe Horaire permet de définir les différentes plages d'un agenda d'une entité (jours et heures d'ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d'indisponibilités"
* idPlageHoraire 0..1 Identifier "Identifiant de la plage horaire." "Identifiant de la plage horaire."
* typePlageHoraire 0..1 Coding "Un type de plage horaire apporte du contexte à la plage horaire définie par la suite. Par exemple horaire d'ouverture, horaire de garde, etc." "Un type de plage horaire apporte du contexte à la plage horaire définie par la suite. Par exemple horaire d'ouverture, horaire de garde, etc."
* typePlageHoraire from https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R252-TypeHoraire?vs (preferred)
* ouvertureFermeture 0..1 boolean "Indicateur d'ouverture ou de fermeture.Valeurs possibles : 0 = Organisation fermée 1 = Organisation ouverte" "Indicateur d'ouverture ou de fermeture.Valeurs possibles : 0 = Organisation fermée 1 = Organisation ouverte"
* jourSemaine 0..1 integer "Numéro du jour dans la semaine. D'après la norme ISO 8601, les jours de chaque semaine sont numérotés de 1 (un) pour le lundi, à 7 (sept) pour le dimanche." "Numéro du jour dans la semaine. D'après la norme ISO 8601, les jours de chaque semaine sont numérotés de 1 (un) pour le lundi, à 7 (sept) pour le dimanche."
* heureDebut 0..1 time "Heure de début de la plage horaire." "Heure de début de la plage horaire."
* heureFin 0..1 time "Heure de fin de la plage horaire." "Heure de fin de la plage horaire."
* frequencePlageHoraire 0..1 Coding "Fréquence de la plage horaire.Exemple : toutes les semaines, toutes les deux semaines, tous les mois, etc." "Fréquence de la plage horaire.Exemple : toutes les semaines, toutes les deux semaines, tous les mois, etc."
* debutDateEffective 0..1 date "Date effective de début de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle." "Date effective de début de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle."
* finDateEffective 0..1 date "Date effective de fin de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle." "Date effective de fin de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle."
* dateDeclarationPlageHoraire 0..1 date "Date de déclaration de la plage horaire." "Date de déclaration de la plage horaire."
* commentaire 0..* string "Zone de commentaires contenant des informations relatives aux heures de fonctionnement, notamment des exceptions d'horaire, des raisons liées à la fermeture ou l'ouverture." "Zone de commentaires contenant des informations relatives aux heures de fonctionnement, notamment des exceptions d'horaire, des raisons liées à la fermeture ou l'ouverture."