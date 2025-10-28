# LieuRealisationOffre - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LieuRealisationOffre**

## Logical Model: LieuRealisationOffre 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LieuRealisationOffre | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:LieuRealisationOffre |

 
Espace disposant d’un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l’offre sont mobiles, le lieu de réalisation de l’offre correspond au lieu administratif où est organisée la prise en charge. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/LieuRealisationOffre)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LieuRealisationOffre.csv), [Excel](StructureDefinition-LieuRealisationOffre.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LieuRealisationOffre",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LieuRealisationOffre",
  "version" : "0.1.0",
  "name" : "LieuRealisationOffre",
  "title" : "LieuRealisationOffre",
  "status" : "draft",
  "date" : "2025-10-28T11:41:28+00:00",
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
  "description" : "Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LieuRealisationOffre",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "LieuRealisationOffre",
        "path" : "LieuRealisationOffre",
        "short" : "Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge.",
        "definition" : "Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge."
      },
      {
        "id" : "LieuRealisationOffre.idExterneSynchro",
        "path" : "LieuRealisationOffre.idExterneSynchro",
        "short" : "L’identifiant externe de synchronisation est l’identifiant défini par le porteur d’offre pour la zone d’hébergement des lits.",
        "definition" : "L’identifiant externe de synchronisation est l’identifiant défini par le porteur d’offre pour la zone d’hébergement des lits.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "LieuRealisationOffre.nomExterneSynchro",
        "path" : "LieuRealisationOffre.nomExterneSynchro",
        "short" : "Nom de la zone d’hébergement des lits.",
        "definition" : "Nom de la zone d’hébergement des lits.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
