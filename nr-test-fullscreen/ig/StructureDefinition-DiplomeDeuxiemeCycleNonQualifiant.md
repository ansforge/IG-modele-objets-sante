# DiplomeDeuxiemeCycleNonQualifiant - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiplomeDeuxiemeCycleNonQualifiant**

## Logical Model: DiplomeDeuxiemeCycleNonQualifiant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeDeuxiemeCycleNonQualifiant | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:DiplomeDeuxiemeCycleNonQualifiant |

 
Le diplôme de deuxième cycle non qualifiant enregistre un niveau de formation de fin de deuxième cycle, qui sanctionne une partie des études requises à l’exercice de la profession.Il ne donne pas droit à l’exercice de la profession et son obtention ne change pas la qualification à venir des titulaires lorsqu’ils exerceront. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DiplomeDeuxiemeCycleNonQualifiant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiplomeDeuxiemeCycleNonQualifiant.csv), [Excel](StructureDefinition-DiplomeDeuxiemeCycleNonQualifiant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiplomeDeuxiemeCycleNonQualifiant",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeDeuxiemeCycleNonQualifiant",
  "version" : "0.1.0",
  "name" : "DiplomeDeuxiemeCycleNonQualifiant",
  "title" : "DiplomeDeuxiemeCycleNonQualifiant",
  "status" : "draft",
  "date" : "2025-11-19T09:46:11+00:00",
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
  "description" : "Le diplôme de deuxième cycle non qualifiant enregistre un niveau de formation de fin de deuxième cycle, qui sanctionne une partie des études requises à l’exercice de la profession.Il ne donne pas droit à l’exercice de la profession  et son obtention ne change pas la qualification à venir des titulaires lorsqu’ils exerceront.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeDeuxiemeCycleNonQualifiant",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DiplomeDeuxiemeCycleNonQualifiant",
        "path" : "DiplomeDeuxiemeCycleNonQualifiant",
        "short" : "Le diplôme de deuxième cycle non qualifiant enregistre un niveau de formation de fin de deuxième cycle, qui sanctionne une partie des études requises à l’exercice de la profession.Il ne donne pas droit à l’exercice de la profession  et son obtention ne change pas la qualification à venir des titulaires lorsqu’ils exerceront.",
        "definition" : "Le diplôme de deuxième cycle non qualifiant enregistre un niveau de formation de fin de deuxième cycle, qui sanctionne une partie des études requises à l’exercice de la profession.Il ne donne pas droit à l’exercice de la profession  et son obtention ne change pas la qualification à venir des titulaires lorsqu’ils exerceront."
      },
      {
        "id" : "DiplomeDeuxiemeCycleNonQualifiant.diplomeDeuxiemeCycleNonQualifiant",
        "path" : "DiplomeDeuxiemeCycleNonQualifiant.diplomeDeuxiemeCycleNonQualifiant",
        "short" : "Diplôme de deuxième cycle non qualifiant.",
        "definition" : "Diplôme de deuxième cycle non qualifiant.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R226-Dip2iemeCycleNQ/FHIR/TRE-R226-Dip2iemeCycleNQ?vs"
        }
      }
    ]
  }
}

```
