# PlageReference - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PlageReference**

## Logical Model: PlageReference 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PlageReference | *Version*:0.1.0 |
| Draft as of 2025-11-04 | *Computable Name*:PlageReference |

 
La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes. 

**Usages:**

* Use this Logical Model: [ResultatObservation](StructureDefinition-ResultatObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/PlageReference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PlageReference.csv), [Excel](StructureDefinition-PlageReference.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PlageReference",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PlageReference",
  "version" : "0.1.0",
  "name" : "PlageReference",
  "title" : "PlageReference",
  "status" : "draft",
  "date" : "2025-11-04T13:35:30+00:00",
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
  "description" : "La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PlageReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PlageReference",
        "path" : "PlageReference",
        "short" : "La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes.",
        "definition" : "La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes."
      },
      {
        "id" : "PlageReference.borneInferieure",
        "path" : "PlageReference.borneInferieure",
        "short" : "Borne inférieure de la plage.",
        "definition" : "Borne inférieure de la plage.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "PlageReference.borneSuperieure",
        "path" : "PlageReference.borneSuperieure",
        "short" : "Borne supérieure de la plage.",
        "definition" : "Borne supérieure de la plage.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "PlageReference.type",
        "path" : "PlageReference.type",
        "short" : "Type de plage de référence définie selon les critères s’appliquant à la personne sur laquelle porte l’observation. http://hl7.org/fhir/ValueSet/referencerange-meaning",
        "definition" : "Type de plage de référence définie selon les critères s’appliquant à la personne sur laquelle porte l’observation. http://hl7.org/fhir/ValueSet/referencerange-meaning",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PlageReference.trancheAge",
        "path" : "PlageReference.trancheAge",
        "short" : "Tranche d'âge pour laquelle la plage de référence est applicable.",
        "definition" : "Tranche d'âge pour laquelle la plage de référence est applicable.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele"
          }
        ]
      },
      {
        "id" : "PlageReference.guideTextuel",
        "path" : "PlageReference.guideTextuel",
        "short" : "Plage de référence exprimée sous la forme d’un texte pour interpréter la valeur.",
        "definition" : "Plage de référence exprimée sous la forme d’un texte pour interpréter la valeur.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PlageReference.ResultatObservation",
        "path" : "PlageReference.ResultatObservation",
        "short" : "Lien vers la classe ResultatObservation",
        "definition" : "Lien vers la classe ResultatObservation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ResultatObservation"
          }
        ]
      }
    ]
  }
}

```
