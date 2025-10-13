# DiplomeUniversitaire - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiplomeUniversitaire**

## Logical Model: DiplomeUniversitaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeUniversitaire | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:DiplomeUniversitaire |

 
En France, un diplôme universitaire (DU) ou interuniversitaire (DIU) est un diplôme délivré par une université française, un grand établissement ou autre établissement public à caractère scientifique, culturel et professionnel, ou plusieurs établissements conjointement, contrairement aux diplômes nationaux qui sont délivrés au nom du ministère. Chaque ordre maintient une liste des DU reconnus.Dans le cadre du modèle, un diplôme universitaire est un type de diplôme. La classe DiplomeUniversitaire est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DiplomeUniversitaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiplomeUniversitaire.csv), [Excel](StructureDefinition-DiplomeUniversitaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiplomeUniversitaire",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeUniversitaire",
  "version" : "0.1.0",
  "name" : "DiplomeUniversitaire",
  "title" : "DiplomeUniversitaire",
  "status" : "draft",
  "date" : "2025-10-13T08:05:42+00:00",
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
  "description" : "En France, un diplôme universitaire (DU) ou interuniversitaire (DIU) est un diplôme délivré par une université française, un grand établissement ou autre établissement public à caractère scientifique, culturel et professionnel, ou plusieurs établissements conjointement, contrairement aux diplômes nationaux qui sont délivrés au nom du ministère. Chaque ordre maintient une liste des DU reconnus.Dans le cadre du modèle, un diplôme universitaire est un type de diplôme. La classe DiplomeUniversitaire est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeUniversitaire",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DiplomeUniversitaire",
        "path" : "DiplomeUniversitaire",
        "short" : "En France, un diplôme universitaire (DU) ou interuniversitaire (DIU) est un diplôme délivré par une université française, un grand établissement ou autre établissement public à caractère scientifique, culturel et professionnel, ou plusieurs établissements conjointement, contrairement aux diplômes nationaux qui sont délivrés au nom du ministère. Chaque ordre maintient une liste des DU reconnus.Dans le cadre du modèle, un diplôme universitaire est un type de diplôme. La classe DiplomeUniversitaire est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "En France, un diplôme universitaire (DU) ou interuniversitaire (DIU) est un diplôme délivré par une université française, un grand établissement ou autre établissement public à caractère scientifique, culturel et professionnel, ou plusieurs établissements conjointement, contrairement aux diplômes nationaux qui sont délivrés au nom du ministère. Chaque ordre maintient une liste des DU reconnus.Dans le cadre du modèle, un diplôme universitaire est un type de diplôme. La classe DiplomeUniversitaire est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DiplomeUniversitaire.diplomeUniversitaire",
        "path" : "DiplomeUniversitaire.diplomeUniversitaire",
        "short" : "Diplôme universitaire ou interuniversitaire.",
        "definition" : "Diplôme universitaire ou interuniversitaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R54-DiplomeUniversiteInterUniversitaire/FHIR/TRE-R54-DiplomeUniversiteInterUniversitaire?vs"
        }
      }
    ]
  }
}

```
