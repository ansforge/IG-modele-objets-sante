# CarteProfessionnel - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CarteProfessionnel**

## Logical Model: CarteProfessionnel 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CarteProfessionnel | *Version*:0.1.0 |
| Draft as of 2025-11-14 | *Computable Name*:CarteProfessionnel |

 
Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel. La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même. Un professionnel exerçant simultanément deux professions a deux cartes. 

**Usages:**

* Use this Logical Model: [Certificat](StructureDefinition-Certificat.md) and [ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CarteProfessionnel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CarteProfessionnel.csv), [Excel](StructureDefinition-CarteProfessionnel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CarteProfessionnel",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CarteProfessionnel",
  "version" : "0.1.0",
  "name" : "CarteProfessionnel",
  "title" : "CarteProfessionnel",
  "status" : "draft",
  "date" : "2025-11-14T16:42:42+00:00",
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
  "description" : "Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel. La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même. Un professionnel exerçant simultanément deux professions a deux cartes.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CarteProfessionnel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CarteProfessionnel",
        "path" : "CarteProfessionnel",
        "short" : "Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel. La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même. Un professionnel exerçant simultanément deux professions a deux cartes.",
        "definition" : "Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel. La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même. Un professionnel exerçant simultanément deux professions a deux cartes."
      },
      {
        "id" : "CarteProfessionnel.typeCarte",
        "path" : "CarteProfessionnel.typeCarte",
        "short" : "Type de carte de professionnel (CPx) :** Carte de Professionnel de Santé (CPS)** Carte de Professionnel de santé en Formation (CPF)** Carte de Personnel d’Etablissement (CDE/CPE)** Carte de Personnel Autorisé (CDA/CPA)",
        "definition" : "Type de carte de professionnel (CPx) :** Carte de Professionnel de Santé (CPS)** Carte de Professionnel de santé en Formation (CPF)** Carte de Personnel d’Etablissement (CDE/CPE)** Carte de Personnel Autorisé (CDA/CPA)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R87-TypeCarte/FHIR/TRE-R87-TypeCarte?vs"
        }
      },
      {
        "id" : "CarteProfessionnel.numeroCarte",
        "path" : "CarteProfessionnel.numeroCarte",
        "short" : "Numéro de la carte du professionnel.Codage des caractères en binaire codé en ASCII.",
        "definition" : "Numéro de la carte du professionnel.Codage des caractères en binaire codé en ASCII.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "CarteProfessionnel.dateDebutValidite",
        "path" : "CarteProfessionnel.dateDebutValidite",
        "short" : "Date et heure de début de validité de la carte. La date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "definition" : "Date et heure de début de validité de la carte. La date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "CarteProfessionnel.dateFinValidite",
        "path" : "CarteProfessionnel.dateFinValidite",
        "short" : "Date et heure de fin de validité de la carte. La date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "definition" : "Date et heure de fin de validité de la carte. La date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "CarteProfessionnel.dateOpposition",
        "path" : "CarteProfessionnel.dateOpposition",
        "short" : "Date de mise en opposition de la carte. Cette opposition implique la révocation des certifications embarquées dans la carte.",
        "definition" : "Date de mise en opposition de la carte. Cette opposition implique la révocation des certifications embarquées dans la carte.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "CarteProfessionnel.ExerciceProfessionnel",
        "path" : "CarteProfessionnel.ExerciceProfessionnel",
        "short" : "Lien vers la classe ExerciceProfessionnel",
        "definition" : "Lien vers la classe ExerciceProfessionnel",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel"
          }
        ]
      },
      {
        "id" : "CarteProfessionnel.Certificat",
        "path" : "CarteProfessionnel.Certificat",
        "short" : "Lien vers la classe Certificat",
        "definition" : "Lien vers la classe Certificat",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Certificat"
          }
        ]
      }
    ]
  }
}

```
