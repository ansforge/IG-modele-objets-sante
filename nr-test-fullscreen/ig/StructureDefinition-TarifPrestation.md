# TarifPrestation - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TarifPrestation**

## Logical Model: TarifPrestation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/TarifPrestation | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:TarifPrestation |

 
Prix des prestations et services d’une entité géographique. 

**Usages:**

* Use this Logical Model: [EntiteGeographique](StructureDefinition-EntiteGeographique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/TarifPrestation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-TarifPrestation.csv), [Excel](StructureDefinition-TarifPrestation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "TarifPrestation",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/TarifPrestation",
  "version" : "0.1.0",
  "name" : "TarifPrestation",
  "title" : "TarifPrestation",
  "status" : "draft",
  "date" : "2025-11-19T10:07:05+00:00",
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
  "description" : "Prix des prestations et services d'une entité géographique.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/TarifPrestation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "TarifPrestation",
        "path" : "TarifPrestation",
        "short" : "Prix des prestations et services d'une entité géographique.",
        "definition" : "Prix des prestations et services d'une entité géographique."
      },
      {
        "id" : "TarifPrestation.EntiteGeographique",
        "path" : "TarifPrestation.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      }
    ]
  }
}

```
