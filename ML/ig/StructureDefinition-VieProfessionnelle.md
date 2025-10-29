# VieProfessionnelle - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VieProfessionnelle**

## Logical Model: VieProfessionnelle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieProfessionnelle | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:VieProfessionnelle |

 
/!\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/VieProfessionnelle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VieProfessionnelle.csv), [Excel](StructureDefinition-VieProfessionnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VieProfessionnelle",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieProfessionnelle",
  "version" : "0.1.0",
  "name" : "VieProfessionnelle",
  "title" : "VieProfessionnelle",
  "status" : "draft",
  "date" : "2025-10-29T15:03:41+00:00",
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
  "description" : "/!\\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieProfessionnelle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "VieProfessionnelle",
        "path" : "VieProfessionnelle",
        "short" : "/!\\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge.",
        "definition" : "/!\\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge."
      },
      {
        "id" : "VieProfessionnelle.dejaTravaille",
        "path" : "VieProfessionnelle.dejaTravaille",
        "short" : "Indicateur afin de savoir si la personne a déjà travaillé.",
        "definition" : "Indicateur afin de savoir si la personne a déjà travaillé.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "VieProfessionnelle.diplome",
        "path" : "VieProfessionnelle.diplome",
        "short" : "Diplôme(s) obtenu(s) par la personne prise en charge.",
        "definition" : "Diplôme(s) obtenu(s) par la personne prise en charge.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome"
          }
        ]
      },
      {
        "id" : "VieProfessionnelle.situationVieProfessionnelle",
        "path" : "VieProfessionnelle.situationVieProfessionnelle",
        "short" : "Situation professionnelle de la personne.",
        "definition" : "Situation professionnelle de la personne.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R325-SituationProfessionnelle/FHIR/TRE-R325-SituationProfessionnelle?vs"
        }
      },
      {
        "id" : "VieProfessionnelle.situationSansEmploi",
        "path" : "VieProfessionnelle.situationSansEmploi",
        "short" : "Situation de la personne lorsqu'elle est sans emploi.",
        "definition" : "Situation de la personne lorsqu'elle est sans emploi.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R326-SituationSansEmploi/FHIR/TRE-R326-SituationSansEmploi?vs"
        }
      },
      {
        "id" : "VieProfessionnelle.besoinProfessionnel",
        "path" : "VieProfessionnelle.besoinProfessionnel",
        "short" : "Besoins de la personne dans sa vie professionnelle.",
        "definition" : "Besoins de la personne dans sa vie professionnelle.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R324-BesoinSoutienProjetProfessionnel/FHIR/TRE-R324-BesoinSoutienProjetProfessionnel?vs"
        }
      }
    ]
  }
}

```
