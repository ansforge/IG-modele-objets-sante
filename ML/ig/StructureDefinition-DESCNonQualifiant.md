# DESCNonQualifiant - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DESCNonQualifiant**

## Logical Model: DESCNonQualifiant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESCNonQualifiant | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:DESCNonQualifiant |

 
Un professionnel peut faire valoir, en complément de sa spécialité, un ou plusieurs savoir-faire de type DESC non qualifiant, en fonction du ou des DESC de groupe I, qu’il a obtenu(s).Un DESC non qualifiant est un type de savoir-faire. La classe DiplomeEtudesSpécialiseesNonQualifiant est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DESCNonQualifiant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DESCNonQualifiant.csv), [Excel](StructureDefinition-DESCNonQualifiant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DESCNonQualifiant",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESCNonQualifiant",
  "version" : "0.1.0",
  "name" : "DESCNonQualifiant",
  "title" : "DESCNonQualifiant",
  "status" : "draft",
  "date" : "2025-10-23T07:38:48+00:00",
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
  "description" : "Un professionnel peut faire valoir, en complément de sa spécialité, un ou plusieurs savoir-faire de type DESC non qualifiant, en fonction du ou des DESC de groupe I, qu'il a obtenu(s).Un DESC non qualifiant est un type de savoir-faire. La classe DiplomeEtudesSpécialiseesNonQualifiant est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESCNonQualifiant",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DESCNonQualifiant",
        "path" : "DESCNonQualifiant",
        "short" : "Un professionnel peut faire valoir, en complément de sa spécialité, un ou plusieurs savoir-faire de type DESC non qualifiant, en fonction du ou des DESC de groupe I, qu'il a obtenu(s).Un DESC non qualifiant est un type de savoir-faire. La classe DiplomeEtudesSpécialiseesNonQualifiant est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Un professionnel peut faire valoir, en complément de sa spécialité, un ou plusieurs savoir-faire de type DESC non qualifiant, en fonction du ou des DESC de groupe I, qu'il a obtenu(s).Un DESC non qualifiant est un type de savoir-faire. La classe DiplomeEtudesSpécialiseesNonQualifiant est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DESCNonQualifiant.DESCNonQualifiant",
        "path" : "DESCNonQualifiant.DESCNonQualifiant",
        "short" : "Diplôme d'études spécialisées complémentaires (DESC).",
        "definition" : "Diplôme d'études spécialisées complémentaires (DESC).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/DESCNonQualifiant-vs"
        }
      }
    ]
  }
}

```
