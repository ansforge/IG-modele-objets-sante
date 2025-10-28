# VieScolaire - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VieScolaire**

## Logical Model: VieScolaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieScolaire | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:VieScolaire |

 
/!\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/VieScolaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VieScolaire.csv), [Excel](StructureDefinition-VieScolaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VieScolaire",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieScolaire",
  "version" : "0.1.0",
  "name" : "VieScolaire",
  "title" : "VieScolaire",
  "status" : "draft",
  "date" : "2025-10-28T14:16:13+00:00",
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
  "description" : "/!\\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieScolaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "VieScolaire",
        "path" : "VieScolaire",
        "short" : "/!\\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge.",
        "definition" : "/!\\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge."
      },
      {
        "id" : "VieScolaire.typeScolarisation",
        "path" : "VieScolaire.typeScolarisation",
        "short" : "Type de scolarisation de la personne.",
        "definition" : "Type de scolarisation de la personne.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R328-TypeScolarisation/FHIR/TRE-R328-TypeScolarisation?vs"
        }
      },
      {
        "id" : "VieScolaire.besoinScolarite",
        "path" : "VieScolaire.besoinScolarite",
        "short" : "Besoins de la personne dans sa vie scolaire.",
        "definition" : "Besoins de la personne dans sa vie scolaire.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/besoinScolarite-vs"
        }
      }
    ]
  }
}

```
