# SurspecialiteTransversale - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SurspecialiteTransversale**

## Logical Model: SurspecialiteTransversale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SurspecialiteTransversale | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:SurspecialiteTransversale |

 
La surspécialité transversale est le droit d’exercice complémentaire au sein de la spécialité du médecin, donné par une formation spécialisée transversale (FST). La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/SurspecialiteTransversale)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SurspecialiteTransversale.csv), [Excel](StructureDefinition-SurspecialiteTransversale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SurspecialiteTransversale",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SurspecialiteTransversale",
  "version" : "0.1.0",
  "name" : "SurspecialiteTransversale",
  "title" : "SurspecialiteTransversale",
  "status" : "draft",
  "date" : "2025-10-23T10:03:30+00:00",
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
  "description" : "La surspécialité transversale est le droit d’exercice complémentaire au sein de la spécialité du médecin, donné par une formation spécialisée transversale (FST). La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SurspecialiteTransversale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "SurspecialiteTransversale",
        "path" : "SurspecialiteTransversale",
        "short" : "La surspécialité transversale est le droit d’exercice complémentaire au sein de la spécialité du médecin, donné par une formation spécialisée transversale (FST). La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.",
        "definition" : "La surspécialité transversale est le droit d’exercice complémentaire au sein de la spécialité du médecin, donné par une formation spécialisée transversale (FST). La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité."
      },
      {
        "id" : "SurspecialiteTransversale.surspecialiteTransversale",
        "path" : "SurspecialiteTransversale.surspecialiteTransversale",
        "short" : "Surspécialité acquise par le professionnel en supplément de la spécialité de DES.",
        "definition" : "Surspécialité acquise par le professionnel en supplément de la spécialité de DES.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/surspecialiteTransversale-vs"
        }
      }
    ]
  }
}

```
