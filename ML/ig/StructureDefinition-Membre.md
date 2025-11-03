# Membre - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Membre**

## Logical Model: Membre 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Membre | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:Membre |

 
Personne ou entité faisant partie d’un groupement. 

**Usages:**

* Use this Logical Model: [Groupement](StructureDefinition-Groupement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Membre)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Membre.csv), [Excel](StructureDefinition-Membre.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Membre",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Membre",
  "version" : "0.1.0",
  "name" : "Membre",
  "title" : "Membre",
  "status" : "draft",
  "date" : "2025-11-03T18:48:51+00:00",
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
  "description" : "Personne ou entité faisant partie d'un groupement.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Membre",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Membre",
        "path" : "Membre",
        "short" : "Personne ou entité faisant partie d'un groupement.",
        "definition" : "Personne ou entité faisant partie d'un groupement."
      },
      {
        "id" : "Membre.idMembre",
        "path" : "Membre.idMembre",
        "short" : "Identifiant du membre.",
        "definition" : "Identifiant du membre.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Membre.dateEntree",
        "path" : "Membre.dateEntree",
        "short" : "Date de début de participation.",
        "definition" : "Date de début de participation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Membre.dateSortie",
        "path" : "Membre.dateSortie",
        "short" : "Date de fin de participation.",
        "definition" : "Date de fin de participation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Membre.adresse",
        "path" : "Membre.adresse",
        "short" : "Adresse(s) géopostale(s)",
        "definition" : "Adresse(s) géopostale(s)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "Membre.telecommunication",
        "path" : "Membre.telecommunication",
        "short" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) rattachée(s) à la situation opérationnelle.",
        "definition" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) rattachée(s) à la situation opérationnelle.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "Membre.Groupement",
        "path" : "Membre.Groupement",
        "short" : "Lien vers la classe Groupement",
        "definition" : "Lien vers la classe Groupement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Groupement"
          }
        ]
      }
    ]
  }
}

```
