# AidantDemarche - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AidantDemarche**

## Logical Model: AidantDemarche 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AidantDemarche | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:AidantDemarche |

 
Personne physique ou morale aidant l’individu dans ses démarches. 

**Usages:**

* Use this Logical Model: [EntiteGeographique](StructureDefinition-EntiteGeographique.md) and [PersonnePhysique](StructureDefinition-PersonnePhysique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/AidantDemarche)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AidantDemarche.csv), [Excel](StructureDefinition-AidantDemarche.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AidantDemarche",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AidantDemarche",
  "version" : "0.1.0",
  "name" : "AidantDemarche",
  "title" : "AidantDemarche",
  "status" : "draft",
  "date" : "2025-11-19T09:24:34+00:00",
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
  "description" : "Personne physique ou morale aidant l'individu dans ses démarches.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AidantDemarche",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "AidantDemarche",
        "path" : "AidantDemarche",
        "short" : "Personne physique ou morale aidant l'individu dans ses démarches.",
        "definition" : "Personne physique ou morale aidant l'individu dans ses démarches."
      },
      {
        "id" : "AidantDemarche.typeAidantDemarche",
        "path" : "AidantDemarche.typeAidantDemarche",
        "short" : "Type d'aidant dans la démarche réalisée.Création nomenclature en cours.",
        "definition" : "Type d'aidant dans la démarche réalisée.Création nomenclature en cours.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "AidantDemarche.aidantDemarche",
        "path" : "AidantDemarche.aidantDemarche",
        "short" : "Personne physique aidant la personne prise en charge à réaliser ses démarches.",
        "definition" : "Personne physique aidant la personne prise en charge à réaliser ses démarches.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique"
          }
        ]
      },
      {
        "id" : "AidantDemarche.adresseAidantDemarche",
        "path" : "AidantDemarche.adresseAidantDemarche",
        "short" : "Adresse(s) de correspondance de l'aidant.",
        "definition" : "Adresse(s) de correspondance de l'aidant.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "AidantDemarche.telecommunicationAidantDemarche",
        "path" : "AidantDemarche.telecommunicationAidantDemarche",
        "short" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) de l'aidant.",
        "definition" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) de l'aidant.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "AidantDemarche.EntiteGeographique",
        "path" : "AidantDemarche.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      },
      {
        "id" : "AidantDemarche.PersonnePhysique",
        "path" : "AidantDemarche.PersonnePhysique",
        "short" : "Lien vers la classe PersonnePhysique",
        "definition" : "Lien vers la classe PersonnePhysique",
        "min" : 0,
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
