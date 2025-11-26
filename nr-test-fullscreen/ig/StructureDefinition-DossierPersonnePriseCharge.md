# DossierPersonnePriseCharge - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DossierPersonnePriseCharge**

## Logical Model: DossierPersonnePriseCharge 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DossierPersonnePriseCharge | *Version*:0.1.0 |
| Draft as of 2025-11-26 | *Computable Name*:DossierPersonnePriseCharge |

 
Un dossier regroupe l’ensemble des informations et des documents liés à une personne. 

**Usages:**

* Use this Logical Model: [Demande](StructureDefinition-Demande.md), [Document](StructureDefinition-Document.md) and [PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DossierPersonnePriseCharge)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DossierPersonnePriseCharge.csv), [Excel](StructureDefinition-DossierPersonnePriseCharge.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DossierPersonnePriseCharge",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DossierPersonnePriseCharge",
  "version" : "0.1.0",
  "name" : "DossierPersonnePriseCharge",
  "title" : "DossierPersonnePriseCharge",
  "status" : "draft",
  "date" : "2025-11-26T08:12:20+00:00",
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
  "description" : "Un dossier regroupe l'ensemble des informations et des documents liés à une personne.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DossierPersonnePriseCharge",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DossierPersonnePriseCharge",
        "path" : "DossierPersonnePriseCharge",
        "short" : "Un dossier regroupe l'ensemble des informations et des documents liés à une personne.",
        "definition" : "Un dossier regroupe l'ensemble des informations et des documents liés à une personne."
      },
      {
        "id" : "DossierPersonnePriseCharge.identifiantDossier",
        "path" : "DossierPersonnePriseCharge.identifiantDossier",
        "short" : "Identifiant du dossier de la personne prise en charge.",
        "definition" : "Identifiant du dossier de la personne prise en charge.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "DossierPersonnePriseCharge.PersonnePriseCharge",
        "path" : "DossierPersonnePriseCharge.PersonnePriseCharge",
        "short" : "Lien vers la classe PersonnePriseCharge",
        "definition" : "Lien vers la classe PersonnePriseCharge",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge"
          }
        ]
      },
      {
        "id" : "DossierPersonnePriseCharge.Demande",
        "path" : "DossierPersonnePriseCharge.Demande",
        "short" : "Lien vers la classe Demande",
        "definition" : "Lien vers la classe Demande",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande"
          }
        ]
      },
      {
        "id" : "DossierPersonnePriseCharge.Document",
        "path" : "DossierPersonnePriseCharge.Document",
        "short" : "Lien vers la classe Document",
        "definition" : "Lien vers la classe Document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document"
          }
        ]
      }
    ]
  }
}

```
