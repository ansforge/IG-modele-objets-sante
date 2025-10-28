# Emploi - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Emploi**

## Logical Model: Emploi 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Emploi | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:Emploi |

 
L’emploi définit l’exercice d’une profession dans le cadre d’une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Emploi)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Emploi.csv), [Excel](StructureDefinition-Emploi.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Emploi",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Emploi",
  "version" : "0.1.0",
  "name" : "Emploi",
  "title" : "Emploi",
  "status" : "draft",
  "date" : "2025-10-28T15:15:51+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "L'emploi définit l'exercice d'une profession dans le cadre d'une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Emploi",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Emploi",
        "path" : "Emploi",
        "short" : "L'emploi définit l'exercice d'une profession dans le cadre d'une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé.",
        "definition" : "L'emploi définit l'exercice d'une profession dans le cadre d'une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé."
      },
      {
        "id" : "Emploi.libelleEmploi",
        "path" : "Emploi.libelleEmploi",
        "short" : "Libellé de l'emploi.",
        "definition" : "Libellé de l'emploi.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Emploi.dateDebutEmploi",
        "path" : "Emploi.dateDebutEmploi",
        "short" : "Date de début de l'emploi.",
        "definition" : "Date de début de l'emploi.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Emploi.dateFinEmploi",
        "path" : "Emploi.dateFinEmploi",
        "short" : "Date de fin de l'emploi.",
        "definition" : "Date de fin de l'emploi.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Emploi.emploiRemunere",
        "path" : "Emploi.emploiRemunere",
        "short" : "Indique que l’emploi est rémunéré ou non.",
        "definition" : "Indique que l’emploi est rémunéré ou non.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Emploi.emploiAdapteHandicape",
        "path" : "Emploi.emploiAdapteHandicape",
        "short" : "Indique que l’emploi est adapté à la personne en situation de handicap ou non.",
        "definition" : "Indique que l’emploi est adapté à la personne en situation de handicap ou non.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
