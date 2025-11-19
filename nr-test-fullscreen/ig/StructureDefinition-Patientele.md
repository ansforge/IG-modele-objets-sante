# Patientele - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patientele**

## Logical Model: Patientele 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:Patientele |

 
Une patientèle est un ensemble de patients présentant des caractéristiques permettant d’orienter leur prise en charge par une structure de santé. 

**Usages:**

* Use this Logical Model: [ActiviteSociale](StructureDefinition-ActiviteSociale.md), [OffreOperationnelle](StructureDefinition-OffreOperationnelle.md) and [PlageReference](StructureDefinition-PlageReference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Patientele)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Patientele.csv), [Excel](StructureDefinition-Patientele.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Patientele",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele",
  "version" : "0.1.0",
  "name" : "Patientele",
  "title" : "Patientele",
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
  "description" : "Une patientèle est un ensemble de patients présentant des caractéristiques permettant d'orienter leur prise en charge par une structure de santé.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Patientele",
        "path" : "Patientele",
        "short" : "Une patientèle est un ensemble de patients présentant des caractéristiques permettant d'orienter leur prise en charge par une structure de santé.",
        "definition" : "Une patientèle est un ensemble de patients présentant des caractéristiques permettant d'orienter leur prise en charge par une structure de santé."
      },
      {
        "id" : "Patientele.ageMin",
        "path" : "Patientele.ageMin",
        "short" : "Age minimum (inclus) des personnes pouvant être accueillies.",
        "definition" : "Age minimum (inclus) des personnes pouvant être accueillies.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Patientele.ageMax",
        "path" : "Patientele.ageMax",
        "short" : "Age maximum (inclus) des personnes pouvant être accueillies.",
        "definition" : "Age maximum (inclus) des personnes pouvant être accueillies.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Patientele.classeAge",
        "path" : "Patientele.classeAge",
        "short" : "Code typant la classe d’âge d’un patient (Nouveau-né, Nourrisson, Enfant, Adolescent, Adulte, Senior).",
        "definition" : "Code typant la classe d’âge d’un patient (Nouveau-né, Nourrisson, Enfant, Adolescent, Adulte, Senior).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R208-ClasseAge/FHIR/TRE-R208-ClasseAge?vs"
        }
      },
      {
        "id" : "Patientele.publicPrisEnCharge",
        "path" : "Patientele.publicPrisEnCharge",
        "short" : "Personnes âgées en perte d'autonomie et/ou personnes en situation de handicap.",
        "definition" : "Personnes âgées en perte d'autonomie et/ou personnes en situation de handicap.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R239-PublicPrisEnCharge/FHIR/TRE-R239-PublicPrisEnCharge?vs"
        }
      },
      {
        "id" : "Patientele.OffreOperationnelle",
        "path" : "Patientele.OffreOperationnelle",
        "short" : "Lien vers la classe OffreOperationnelle",
        "definition" : "Lien vers la classe OffreOperationnelle",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle"
          }
        ]
      }
    ]
  }
}

```
