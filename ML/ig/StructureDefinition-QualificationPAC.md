# QualificationPAC - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **QualificationPAC**

## Logical Model: QualificationPAC 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/QualificationPAC | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:QualificationPAC |

 
La qualification de praticien adjoint contractuel autorise à exercer en établissement sans être qualifié ni en médecine générale, ni en spécialité. Cela concerne des médecins à diplôme étranger dont la qualification a été reconnue avant l’instauration de l’autorisation d’exercice, et qui n’ont pas fait de démarche pour obtenir cette autorisation (environ 500 médecins concernés).Une qualification de praticien adjoint contractuel est un type de savoir-faire. La classe QualificationPAC est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/QualificationPAC)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-QualificationPAC.csv), [Excel](StructureDefinition-QualificationPAC.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "QualificationPAC",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/QualificationPAC",
  "version" : "0.1.0",
  "name" : "QualificationPAC",
  "title" : "QualificationPAC",
  "status" : "draft",
  "date" : "2025-11-03T13:49:33+00:00",
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
  "description" : "La qualification de praticien adjoint contractuel autorise à exercer en établissement sans être qualifié ni en médecine générale, ni en spécialité. Cela concerne des médecins à diplôme étranger dont la qualification a été reconnue avant l'instauration de l'autorisation d'exercice, et qui n'ont pas fait de démarche pour obtenir cette autorisation (environ 500 médecins concernés).Une qualification de praticien adjoint contractuel est un type de savoir-faire. La classe QualificationPAC est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/QualificationPAC",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "QualificationPAC",
        "path" : "QualificationPAC",
        "short" : "La qualification de praticien adjoint contractuel autorise à exercer en établissement sans être qualifié ni en médecine générale, ni en spécialité. Cela concerne des médecins à diplôme étranger dont la qualification a été reconnue avant l'instauration de l'autorisation d'exercice, et qui n'ont pas fait de démarche pour obtenir cette autorisation (environ 500 médecins concernés).Une qualification de praticien adjoint contractuel est un type de savoir-faire. La classe QualificationPAC est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "La qualification de praticien adjoint contractuel autorise à exercer en établissement sans être qualifié ni en médecine générale, ni en spécialité. Cela concerne des médecins à diplôme étranger dont la qualification a été reconnue avant l'instauration de l'autorisation d'exercice, et qui n'ont pas fait de démarche pour obtenir cette autorisation (environ 500 médecins concernés).Une qualification de praticien adjoint contractuel est un type de savoir-faire. La classe QualificationPAC est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "QualificationPAC.qualificationPAC",
        "path" : "QualificationPAC.qualificationPAC",
        "short" : "Qualification de praticien adjoint contractuel.",
        "definition" : "Qualification de praticien adjoint contractuel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/qualificationPAC-vs"
        }
      }
    ]
  }
}

```
