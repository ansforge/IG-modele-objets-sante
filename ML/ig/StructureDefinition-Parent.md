# Parent - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parent**

## Logical Model: Parent 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Parent | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:Parent |

 
Personne liée par un lien de filiation à un enfant 

**Utilisations:**

* Utiliser ce Modèle logique: [PersonnePhysique](StructureDefinition-PersonnePhysique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Parent)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Parent.csv), [Excel](StructureDefinition-Parent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Parent",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Parent",
  "version" : "0.1.0",
  "name" : "Parent",
  "title" : "Parent",
  "status" : "draft",
  "date" : "2025-12-02T14:53:18+00:00",
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
  "description" : "Personne liée par un lien de filiation à un enfant",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Parent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Parent",
        "path" : "Parent",
        "short" : "Personne liée par un lien de filiation à un enfant",
        "definition" : "Personne liée par un lien de filiation à un enfant"
      },
      {
        "id" : "Parent.autoriteParentale",
        "path" : "Parent.autoriteParentale",
        "short" : "L'autorité parentale confère aux parents des droits et met à leur charge des devoirs vis-à-vis de leur enfant mineur. Ces droits et obligations se traduisent de différentes manières : veiller sur l'enfant, sa santé, son éducation, son patrimoine... Selon les cas, l'autorité parentale peut être exercée conjointement (par les 2 parents) ou par un seul parent. (service-public.fr)",
        "definition" : "L'autorité parentale confère aux parents des droits et met à leur charge des devoirs vis-à-vis de leur enfant mineur. Ces droits et obligations se traduisent de différentes manières : veiller sur l'enfant, sa santé, son éducation, son patrimoine... Selon les cas, l'autorité parentale peut être exercée conjointement (par les 2 parents) ou par un seul parent. (service-public.fr)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Parent.personne",
        "path" : "Parent.personne",
        "short" : "Identité civile du parent.",
        "definition" : "Identité civile du parent.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique"
          }
        ]
      },
      {
        "id" : "Parent.adresseCorrespondance",
        "path" : "Parent.adresseCorrespondance",
        "short" : "Adresse(s) de correspondance du parent.",
        "definition" : "Adresse(s) de correspondance du parent.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "Parent.telecommunication",
        "path" : "Parent.telecommunication",
        "short" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) du parent.",
        "definition" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) du parent.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "Parent.PersonnePhysique",
        "path" : "Parent.PersonnePhysique",
        "short" : "Lien vers la classe PersonnePhysique",
        "definition" : "Lien vers la classe PersonnePhysique",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique"
          }
        ]
      }
    ]
  }
}

```
