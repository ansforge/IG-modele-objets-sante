# CapaciteHabitation - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapaciteHabitation**

## Logical Model: CapaciteHabitation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteHabitation | *Version*:0.1.0 |
| Draft as of 2025-11-04 | *Computable Name*:CapaciteHabitation |

 
La capacité d’habitation décrit des types d’habitation et le nombre d’habitations associées à ces types. 

**Usages:**

* Use this Logical Model: [ActiviteSociale](StructureDefinition-ActiviteSociale.md), [EntiteGeographique](StructureDefinition-EntiteGeographique.md) and [LieuRealisationOffre](StructureDefinition-LieuRealisationOffre.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CapaciteHabitation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CapaciteHabitation.csv), [Excel](StructureDefinition-CapaciteHabitation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CapaciteHabitation",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteHabitation",
  "version" : "0.1.0",
  "name" : "CapaciteHabitation",
  "title" : "CapaciteHabitation",
  "status" : "draft",
  "date" : "2025-11-04T14:33:37+00:00",
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
  "description" : "La capacité d'habitation décrit des types d'habitation et le nombre d'habitations associées à ces types.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteHabitation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CapaciteHabitation",
        "path" : "CapaciteHabitation",
        "short" : "La capacité d'habitation décrit des types d'habitation et le nombre d'habitations associées à ces types.",
        "definition" : "La capacité d'habitation décrit des types d'habitation et le nombre d'habitations associées à ces types."
      },
      {
        "id" : "CapaciteHabitation.typeHabitation",
        "path" : "CapaciteHabitation.typeHabitation",
        "short" : "Le type d’habitation renseigne sur la taille et le nombre de pièces d’un logement.",
        "definition" : "Le type d’habitation renseigne sur la taille et le nombre de pièces d’un logement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R242-TypeHabitation/FHIR/TRE-R242-TypeHabitation?vs"
        }
      },
      {
        "id" : "CapaciteHabitation.nbHabitation",
        "path" : "CapaciteHabitation.nbHabitation",
        "short" : "Nombre d'habitations du même type.",
        "definition" : "Nombre d'habitations du même type.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "CapaciteHabitation.ActiviteSociale",
        "path" : "CapaciteHabitation.ActiviteSociale",
        "short" : "Lien vers la classe ActiviteSociale",
        "definition" : "Lien vers la classe ActiviteSociale",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSociale"
          }
        ]
      },
      {
        "id" : "CapaciteHabitation.LieuRealisationOffre",
        "path" : "CapaciteHabitation.LieuRealisationOffre",
        "short" : "Lien vers la classe LieuRealisationOffre",
        "definition" : "Lien vers la classe LieuRealisationOffre",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LieuRealisationOffre"
          }
        ]
      },
      {
        "id" : "CapaciteHabitation.EntiteGeographique",
        "path" : "CapaciteHabitation.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 0,
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
