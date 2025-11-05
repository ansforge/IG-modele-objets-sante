# DiplomeDivers - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiplomeDivers**

## Logical Model: DiplomeDivers 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeDivers | *Version*:0.1.0 |
| Draft as of 2025-11-05 | *Computable Name*:DiplomeDivers |

 
Cette classe regroupe les diplômes qui ne peuvent être classés dans un type de diplôme explicite (CES, DESC1, DESC2, etc.).La classe DiplomeDivers est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DiplomeDivers)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiplomeDivers.csv), [Excel](StructureDefinition-DiplomeDivers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiplomeDivers",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeDivers",
  "version" : "0.1.0",
  "name" : "DiplomeDivers",
  "title" : "DiplomeDivers",
  "status" : "draft",
  "date" : "2025-11-05T10:41:12+00:00",
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
  "description" : "Cette classe regroupe les diplômes qui ne peuvent être classés dans un type de diplôme explicite (CES, DESC1, DESC2, etc.).La classe DiplomeDivers est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeDivers",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DiplomeDivers",
        "path" : "DiplomeDivers",
        "short" : "Cette classe regroupe les diplômes qui ne peuvent être classés dans un type de diplôme explicite (CES, DESC1, DESC2, etc.).La classe DiplomeDivers est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Cette classe regroupe les diplômes qui ne peuvent être classés dans un type de diplôme explicite (CES, DESC1, DESC2, etc.).La classe DiplomeDivers est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DiplomeDivers.diplomeDivers",
        "path" : "DiplomeDivers.diplomeDivers",
        "short" : "Autre type de diplôme obtenu.",
        "definition" : "Autre type de diplôme obtenu.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R58-AutreTypeDiplome/FHIR/TRE-R58-AutreTypeDiplome?vs"
        }
      }
    ]
  }
}

```
