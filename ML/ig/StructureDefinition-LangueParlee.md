# LangueParlee - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LangueParlee**

## Logical Model: LangueParlee 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LangueParlee | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:LangueParlee |

 
Langue parlée par une personne ou dans un service. 

**Usages:**

* Use this Logical Model: [PersonnePhysique](StructureDefinition-PersonnePhysique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/LangueParlee)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LangueParlee.csv), [Excel](StructureDefinition-LangueParlee.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LangueParlee",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LangueParlee",
  "version" : "0.1.0",
  "name" : "LangueParlee",
  "title" : "LangueParlee",
  "status" : "draft",
  "date" : "2025-10-30T16:36:55+00:00",
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
  "description" : "Langue parlée par une personne ou dans un service.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LangueParlee",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "LangueParlee",
        "path" : "LangueParlee",
        "short" : "Langue parlée par une personne ou dans un service.",
        "definition" : "Langue parlée par une personne ou dans un service."
      },
      {
        "id" : "LangueParlee.langueParlee",
        "path" : "LangueParlee.langueParlee",
        "short" : "Langue parlée.",
        "definition" : "Langue parlée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G00-Langue/FHIR/TRE-G00-Langue?vs"
        }
      },
      {
        "id" : "LangueParlee.dateFin",
        "path" : "LangueParlee.dateFin",
        "short" : "Date à laquelle la personne renonce à être référent de cette langue.",
        "definition" : "Date à laquelle la personne renonce à être référent de cette langue.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
