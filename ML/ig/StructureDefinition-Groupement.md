# Groupement - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Groupement**

## Logical Model: Groupement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Groupement | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:Groupement |

 
Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés. 

**Utilisations:**

* Utiliser ce Modèle logique: [Membre](StructureDefinition-Membre.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Groupement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Groupement.csv), [Excel](StructureDefinition-Groupement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Groupement",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Groupement",
  "version" : "0.1.0",
  "name" : "Groupement",
  "title" : "Groupement",
  "status" : "draft",
  "date" : "2025-12-02T14:23:57+00:00",
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
  "description" : "Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Groupement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Groupement",
        "path" : "Groupement",
        "short" : "Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés.",
        "definition" : "Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés."
      },
      {
        "id" : "Groupement.idGroupement",
        "path" : "Groupement.idGroupement",
        "short" : "Identifiant du groupement.",
        "definition" : "Identifiant du groupement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Groupement.dateCreation",
        "path" : "Groupement.dateCreation",
        "short" : "Date de création du groupement.",
        "definition" : "Date de création du groupement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Groupement.dateMAJ",
        "path" : "Groupement.dateMAJ",
        "short" : "Date de mise à jour du groupement.",
        "definition" : "Date de mise à jour du groupement.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Groupement.dateFin",
        "path" : "Groupement.dateFin",
        "short" : "Date de fin d'existence du groupement.",
        "definition" : "Date de fin d'existence du groupement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Groupement.Membre",
        "path" : "Groupement.Membre",
        "short" : "Lien vers la classe Membre",
        "definition" : "Lien vers la classe Membre",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Membre"
          }
        ]
      }
    ]
  }
}

```
