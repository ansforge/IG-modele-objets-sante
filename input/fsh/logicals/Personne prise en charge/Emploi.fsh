Logical: Emploi
Parent: $Base
Id: Emploi
Title: "Emploi"
Description: "L'emploi définit l'exercice d'une profession dans le cadre d'une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé."
* ^status = #draft
* . ^short = "L'emploi définit l'exercice d'une profession dans le cadre d'une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé."
* . ^definition = "L'emploi définit l'exercice d'une profession dans le cadre d'une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé."
* libelleEmploi 0..1 string "Libellé de l'emploi." "Libellé de l'emploi."
* dateDebutEmploi 0..1 date "Date de début de l'emploi." "Date de début de l'emploi."
* dateFinEmploi 0..1 date "Date de fin de l'emploi." "Date de fin de l'emploi."
* emploiRemunere 0..1 boolean "Indique que l’emploi est rémunéré ou non." "Indique que l’emploi est rémunéré ou non."
* emploiAdapteHandicape 0..1 boolean "Indique que l’emploi est adapté à la personne en situation de handicap ou non." "Indique que l’emploi est adapté à la personne en situation de handicap ou non."