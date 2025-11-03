# PlageDisponibilite - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PlageDisponibilite**

## Logical Model: PlageDisponibilite 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PlageDisponibilite | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:PlageDisponibilite |

 
Horaires de disponibilité pour la prise de rendez - vous de l’agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l’agenda est indisponible à la prise de rendez - vous. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/PlageDisponibilite)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PlageDisponibilite.csv), [Excel](StructureDefinition-PlageDisponibilite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PlageDisponibilite",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PlageDisponibilite",
  "version" : "0.1.0",
  "name" : "PlageDisponibilite",
  "title" : "PlageDisponibilite",
  "status" : "draft",
  "date" : "2025-11-03T13:49:33+00:00",
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
  "description" : "Horaires de disponibilité pour la prise de rendez - vous de l'agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l'agenda est indisponible à la prise de rendez - vous.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PlageDisponibilite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PlageDisponibilite",
        "path" : "PlageDisponibilite",
        "short" : "Horaires de disponibilité pour la prise de rendez - vous de l'agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l'agenda est indisponible à la prise de rendez - vous.",
        "definition" : "Horaires de disponibilité pour la prise de rendez - vous de l'agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l'agenda est indisponible à la prise de rendez - vous."
      },
      {
        "id" : "PlageDisponibilite.plageDisponibilite",
        "path" : "PlageDisponibilite.plageDisponibilite",
        "short" : "Horaire définissant la plage de disponibilité de l'agenda.",
        "definition" : "Horaire définissant la plage de disponibilité de l'agenda.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Horaire"
          }
        ]
      },
      {
        "id" : "PlageDisponibilite.statutPlageDisponibilite",
        "path" : "PlageDisponibilite.statutPlageDisponibilite",
        "short" : "Statut de la plage de disponibilité : Par défaut le statut est à \"disponible\". Par exception, il est possible de déclarer une indisponibilité. Le statut est alors à \"indisponible\".",
        "definition" : "Statut de la plage de disponibilité : Par défaut le statut est à \"disponible\". Par exception, il est possible de déclarer une indisponibilité. Le statut est alors à \"indisponible\".",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      }
    ]
  }
}

```
