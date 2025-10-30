Logical: ArretTravail
Parent: $Base
Id: ArretTravail
Title: "ArretTravail"
Description: "Selon le code du travail, l'arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale."
* ^status = #draft
* . ^short = "Selon le code du travail, l'arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale."
* . ^definition = "Selon le code du travail, l'arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale."
* dateDebutArret 0..1 date "Date de début de l'arrêt de travail." "Date de début de l'arrêt de travail."
* motifArret 0..1 Coding "Motif de l'arrêt de travail. Nomenclature soumise prochainement par la CNSA." "Motif de l'arrêt de travail. Nomenclature soumise prochainement par la CNSA."
* rencontreServiceSocial 0..1 boolean "Indique que la personne prise en charge a rencontré le professionnel du service social de sa caisse de retraite." "Indique que la personne prise en charge a rencontré le professionnel du service social de sa caisse de retraite."
* dateRencontreServiceSocial 0..1 date "Date de rencontre de la personne prise en charge avec le professionnel du service social de sa caisse de retraite." "Date de rencontre de la personne prise en charge avec le professionnel du service social de sa caisse de retraite."
* rencontreMedecin 0..1 boolean "Indique que la personne prise en charge a rencontré le médecin de santé au travail en visite de pré-reprise." "Indique que la personne prise en charge a rencontré le médecin de santé au travail en visite de pré-reprise."
* dateRencontreMedecin 0..1 date "Date de rencontre de la personne prise en charge avec le médecin de santé au travail en visite de pré-reprise." "Date de rencontre de la personne prise en charge avec le médecin de santé au travail en visite de pré-reprise."
* VieProfessionnelle 1..1 https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieProfessionnelle "Lien vers la classe VieProfessionnelle" "Lien vers la classe VieProfessionnelle"