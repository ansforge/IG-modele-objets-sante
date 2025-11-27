# CapaciteAccueil - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapaciteAccueil**

## Logical Model: CapaciteAccueil 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteAccueil | *Version*:0.1.0 |
| Draft as of 2025-11-27 | *Computable Name*:CapaciteAccueil |

 
La capacité d’accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps. 

**Usages:**

* Use this Logical Model: [EntiteGeographique](StructureDefinition-EntiteGeographique.md) and [MesureCapacite](StructureDefinition-MesureCapacite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CapaciteAccueil)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CapaciteAccueil.csv), [Excel](StructureDefinition-CapaciteAccueil.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CapaciteAccueil",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteAccueil",
  "version" : "0.1.0",
  "name" : "CapaciteAccueil",
  "title" : "CapaciteAccueil",
  "status" : "draft",
  "date" : "2025-11-27T15:07:49+00:00",
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
  "description" : "La capacité d'accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteAccueil",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CapaciteAccueil",
        "path" : "CapaciteAccueil",
        "short" : "La capacité d'accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps.",
        "definition" : "La capacité d'accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps."
      },
      {
        "id" : "CapaciteAccueil.idCapaciteAccueil",
        "path" : "CapaciteAccueil.idCapaciteAccueil",
        "short" : "Identifiant de la capacité d'accueil.",
        "definition" : "Identifiant de la capacité d'accueil.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "CapaciteAccueil.MesureCapacite",
        "path" : "CapaciteAccueil.MesureCapacite",
        "short" : "Lien vers la classe MesureCapacite",
        "definition" : "Lien vers la classe MesureCapacite",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureCapacite"
          }
        ]
      },
      {
        "id" : "CapaciteAccueil.EntiteGeographique",
        "path" : "CapaciteAccueil.EntiteGeographique",
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
