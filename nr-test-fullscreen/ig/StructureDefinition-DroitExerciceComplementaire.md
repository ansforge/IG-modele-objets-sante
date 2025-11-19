# DroitExerciceComplementaire - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DroitExerciceComplementaire**

## Logical Model: DroitExerciceComplementaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DroitExerciceComplementaire | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:DroitExerciceComplementaire |

 
Les docteurs en médecine initialement qualifiés comme médecins spécialistes peuvent obtenir un droit d’exercice dans l’une des spécialités définies par un des DESC de médecine du groupe I. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DroitExerciceComplementaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DroitExerciceComplementaire.csv), [Excel](StructureDefinition-DroitExerciceComplementaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DroitExerciceComplementaire",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DroitExerciceComplementaire",
  "version" : "0.1.0",
  "name" : "DroitExerciceComplementaire",
  "title" : "DroitExerciceComplementaire",
  "status" : "draft",
  "date" : "2025-11-19T10:11:28+00:00",
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
  "description" : "Les docteurs en médecine initialement qualifiés comme médecins spécialistes peuvent obtenir un droit d'exercice dans l'une des spécialités définies par un des DESC de médecine du groupe I.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DroitExerciceComplementaire",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DroitExerciceComplementaire",
        "path" : "DroitExerciceComplementaire",
        "short" : "Les docteurs en médecine initialement qualifiés comme médecins spécialistes peuvent obtenir un droit d'exercice dans l'une des spécialités définies par un des DESC de médecine du groupe I.",
        "definition" : "Les docteurs en médecine initialement qualifiés comme médecins spécialistes peuvent obtenir un droit d'exercice dans l'une des spécialités définies par un des DESC de médecine du groupe I."
      },
      {
        "id" : "DroitExerciceComplementaire.droitExerciceComplementaire",
        "path" : "DroitExerciceComplementaire.droitExerciceComplementaire",
        "short" : "Droit d'exercice complémentaire.",
        "definition" : "Droit d'exercice complémentaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/droitExerciceComplementaire-vs"
        }
      }
    ]
  }
}

```
