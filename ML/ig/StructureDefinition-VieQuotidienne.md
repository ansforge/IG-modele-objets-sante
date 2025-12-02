# VieQuotidienne - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VieQuotidienne**

## Logical Model: VieQuotidienne 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieQuotidienne | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:VieQuotidienne |

 
/!\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge. 

**Utilisations:**

* Utiliser ce Modèle logique: [PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/VieQuotidienne)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VieQuotidienne.csv), [Excel](StructureDefinition-VieQuotidienne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VieQuotidienne",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieQuotidienne",
  "version" : "0.1.0",
  "name" : "VieQuotidienne",
  "title" : "VieQuotidienne",
  "status" : "draft",
  "date" : "2025-12-02T14:07:59+00:00",
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
  "description" : "/!\\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieQuotidienne",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "VieQuotidienne",
        "path" : "VieQuotidienne",
        "short" : "/!\\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge.",
        "definition" : "/!\\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge."
      },
      {
        "id" : "VieQuotidienne.situationVieQuotidienne",
        "path" : "VieQuotidienne.situationVieQuotidienne",
        "short" : "Situation de vie de la personne : vit seule ou avec d'autres personnes",
        "definition" : "Situation de vie de la personne : vit seule ou avec d'autres personnes",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R317-SituationVieQuotidienne/FHIR/TRE-R317-SituationVieQuotidienne?vs"
        }
      },
      {
        "id" : "VieQuotidienne.besoinVieQuotidienne",
        "path" : "VieQuotidienne.besoinVieQuotidienne",
        "short" : "Besoins de la personne dans sa vie quotidienne.",
        "definition" : "Besoins de la personne dans sa vie quotidienne.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/besoinVieQuotidienne-vs"
        }
      },
      {
        "id" : "VieQuotidienne.compositionFoyer",
        "path" : "VieQuotidienne.compositionFoyer",
        "short" : "Désigne avec qui vit la personne prise en charge dans son logement.",
        "definition" : "Désigne avec qui vit la personne prise en charge dans son logement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "VieQuotidienne.PersonnePriseCharge",
        "path" : "VieQuotidienne.PersonnePriseCharge",
        "short" : "Lien vers la classe PersonnePriseCharge",
        "definition" : "Lien vers la classe PersonnePriseCharge",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge"
          }
        ]
      }
    ]
  }
}

```
