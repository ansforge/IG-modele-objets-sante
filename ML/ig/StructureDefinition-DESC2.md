# DESC2 - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DESC2**

## Logical Model: DESC2 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESC2 | *Version*:0.1.0 |
| Draft as of 2025-10-17 | *Computable Name*:DESC2 |

 
Les DESC de groupe II ou qualifiants (3 ans d’études) représentent des spécialités par eux-mêmes. Dans le cadre du modèle, un DESC de groupe II est un type de diplôme. La classe DESC2 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DESC2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DESC2.csv), [Excel](StructureDefinition-DESC2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DESC2",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESC2",
  "version" : "0.1.0",
  "name" : "DESC2",
  "title" : "DESC2",
  "status" : "draft",
  "date" : "2025-10-17T12:45:54+00:00",
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
  "description" : "Les DESC de groupe II ou qualifiants (3 ans d'études) représentent des spécialités par eux-mêmes. Dans le cadre du modèle, un DESC de groupe II est un type de diplôme. La classe DESC2 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESC2",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DESC2",
        "path" : "DESC2",
        "short" : "Les DESC de groupe II ou qualifiants (3 ans d'études) représentent des spécialités par eux-mêmes. Dans le cadre du modèle, un DESC de groupe II est un type de diplôme. La classe DESC2 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Les DESC de groupe II ou qualifiants (3 ans d'études) représentent des spécialités par eux-mêmes. Dans le cadre du modèle, un DESC de groupe II est un type de diplôme. La classe DESC2 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DESC2.DESC2",
        "path" : "DESC2.DESC2",
        "short" : "Diplôme d'études spécialisées complémentaires qualifiants (DESC II).",
        "definition" : "Diplôme d'études spécialisées complémentaires qualifiants (DESC II).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R51-DESCGroupe2Diplome/FHIR/TRE-R51-DESCGroupe2Diplome?vs"
        }
      }
    ]
  }
}

```
