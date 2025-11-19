# Decision - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decision**

## Logical Model: Decision 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Decision | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:Decision |

 
Acte par lequel une autorité prend parti après examen d’une demande. 

**Usages:**

* Use this Logical Model: [Demande](StructureDefinition-Demande.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Decision)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Decision.csv), [Excel](StructureDefinition-Decision.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Decision",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Decision",
  "version" : "0.1.0",
  "name" : "Decision",
  "title" : "Decision",
  "status" : "draft",
  "date" : "2025-11-19T16:18:55+00:00",
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
  "description" : "Acte par lequel une autorité prend parti après examen d'une demande.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Decision",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Decision",
        "path" : "Decision",
        "short" : "Acte par lequel une autorité prend parti après examen d'une demande.",
        "definition" : "Acte par lequel une autorité prend parti après examen d'une demande."
      },
      {
        "id" : "Decision.dateDecision",
        "path" : "Decision.dateDecision",
        "short" : "Date à laquelle la décision a été rendue.",
        "definition" : "Date à laquelle la décision a été rendue.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Decision.typeDecision",
        "path" : "Decision.typeDecision",
        "short" : "Type de décision.",
        "definition" : "Type de décision.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R327-TypeDecision/FHIR/TRE-R327-TypeDecision?vs"
        }
      },
      {
        "id" : "Decision.Demande",
        "path" : "Decision.Demande",
        "short" : "Lien vers la classe Demande",
        "definition" : "Lien vers la classe Demande",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande"
          }
        ]
      }
    ]
  }
}

```
