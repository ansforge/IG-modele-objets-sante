# Agenda - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Agenda**

## Logical Model: Agenda 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Agenda | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:Agenda |

 
Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Agenda)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Agenda.csv), [Excel](StructureDefinition-Agenda.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Agenda",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Agenda",
  "version" : "0.1.0",
  "name" : "Agenda",
  "title" : "Agenda",
  "status" : "draft",
  "date" : "2025-10-30T14:07:11+00:00",
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
  "description" : "Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Agenda",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Agenda",
        "path" : "Agenda",
        "short" : "Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie.",
        "definition" : "Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie."
      },
      {
        "id" : "Agenda.idAgenda",
        "path" : "Agenda.idAgenda",
        "short" : "Identifiant de l'agenda.",
        "definition" : "Identifiant de l'agenda.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Agenda.nomAgenda",
        "path" : "Agenda.nomAgenda",
        "short" : "Nom de l'agenda.",
        "definition" : "Nom de l'agenda.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Agenda.dateCreation",
        "path" : "Agenda.dateCreation",
        "short" : "Date de création de l'agenda.",
        "definition" : "Date de création de l'agenda.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Agenda.dateDebutPlanification",
        "path" : "Agenda.dateDebutPlanification",
        "short" : "Date de début de validité de l'agenda.",
        "definition" : "Date de début de validité de l'agenda.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Agenda.dateFinPlanification",
        "path" : "Agenda.dateFinPlanification",
        "short" : "Date de fin de validité de l'agenda.",
        "definition" : "Date de fin de validité de l'agenda.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
