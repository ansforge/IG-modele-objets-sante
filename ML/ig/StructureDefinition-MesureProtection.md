# MesureProtection - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MesureProtection**

## Logical Model: MesureProtection 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureProtection | *Version*:0.1.0 |
| Draft as of 2025-11-25 | *Computable Name*:MesureProtection |

 
La maladie, le handicap, l’accident peuvent altérer les facultés d’une personne et la rendre incapable de défendre ses intérêts. Le juge peut alors décider d’une mesure de protection juridique par laquelle une autre personne l’aide à protéger ses intérêts. La protection doit être la moins contraignante possible, et en priorité être exercée par la famille. Elle distingue aussi les cas où la personne conserve encore ses facultés, mais est en grande difficulté sociale. (service-public.fr) 

**Usages:**

* Use this Logical Model: [EntiteGeographique](StructureDefinition-EntiteGeographique.md) and [PersonnePhysique](StructureDefinition-PersonnePhysique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/MesureProtection)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MesureProtection.csv), [Excel](StructureDefinition-MesureProtection.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MesureProtection",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureProtection",
  "version" : "0.1.0",
  "name" : "MesureProtection",
  "title" : "MesureProtection",
  "status" : "draft",
  "date" : "2025-11-25T14:47:14+00:00",
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
  "description" : "La maladie, le handicap, l'accident peuvent altérer les facultés d'une personne et la rendre incapable de défendre ses intérêts. Le juge peut alors décider d'une mesure de protection juridique par laquelle une autre personne l'aide à protéger ses intérêts. La protection doit être la moins contraignante possible, et en priorité être exercée par la famille. Elle distingue aussi les cas où la personne conserve encore ses facultés, mais est en grande difficulté sociale. (service-public.fr)",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureProtection",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "MesureProtection",
        "path" : "MesureProtection",
        "short" : "La maladie, le handicap, l'accident peuvent altérer les facultés d'une personne et la rendre incapable de défendre ses intérêts. Le juge peut alors décider d'une mesure de protection juridique par laquelle une autre personne l'aide à protéger ses intérêts. La protection doit être la moins contraignante possible, et en priorité être exercée par la famille. Elle distingue aussi les cas où la personne conserve encore ses facultés, mais est en grande difficulté sociale. (service-public.fr)",
        "definition" : "La maladie, le handicap, l'accident peuvent altérer les facultés d'une personne et la rendre incapable de défendre ses intérêts. Le juge peut alors décider d'une mesure de protection juridique par laquelle une autre personne l'aide à protéger ses intérêts. La protection doit être la moins contraignante possible, et en priorité être exercée par la famille. Elle distingue aussi les cas où la personne conserve encore ses facultés, mais est en grande difficulté sociale. (service-public.fr)"
      },
      {
        "id" : "MesureProtection.typeMesureProtection",
        "path" : "MesureProtection.typeMesureProtection",
        "short" : "Type de la mesure de protection mise en place.Nomenclature en cours de création.",
        "definition" : "Type de la mesure de protection mise en place.Nomenclature en cours de création.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "MesureProtection.personneProtectrice",
        "path" : "MesureProtection.personneProtectrice",
        "short" : "Personne responsable de la mesure de protection.",
        "definition" : "Personne responsable de la mesure de protection.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique"
          }
        ]
      },
      {
        "id" : "MesureProtection.adresseMesureProtection",
        "path" : "MesureProtection.adresseMesureProtection",
        "short" : "Adresse(s) de correspondance de la mesure de protection.",
        "definition" : "Adresse(s) de correspondance de la mesure de protection.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "MesureProtection.telecommunicationMesureProtection",
        "path" : "MesureProtection.telecommunicationMesureProtection",
        "short" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) de la mesure de protection.",
        "definition" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) de la mesure de protection.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "MesureProtection.EntiteGeographique",
        "path" : "MesureProtection.EntiteGeographique",
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
        "id" : "MesureProtection.PersonnePhysique",
        "path" : "MesureProtection.PersonnePhysique",
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
