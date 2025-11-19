# Creneau - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Creneau**

## Logical Model: Creneau 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Creneau | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:Creneau |

 
Un créneau d’un agenda est un intervalle de temps, disponible ou occupé. 

**Usages:**

* Use this Logical Model: [Agenda](StructureDefinition-Agenda.md) and [RendezVous](StructureDefinition-RendezVous.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Creneau)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Creneau.csv), [Excel](StructureDefinition-Creneau.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Creneau",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Creneau",
  "version" : "0.1.0",
  "name" : "Creneau",
  "title" : "Creneau",
  "status" : "draft",
  "date" : "2025-11-19T16:18:55+00:00",
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
  "description" : "Un créneau d’un agenda est un intervalle de temps, disponible ou occupé.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Creneau",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Creneau",
        "path" : "Creneau",
        "short" : "Un créneau d’un agenda est un intervalle de temps, disponible ou occupé.",
        "definition" : "Un créneau d’un agenda est un intervalle de temps, disponible ou occupé."
      },
      {
        "id" : "Creneau.idCreneau",
        "path" : "Creneau.idCreneau",
        "short" : "Identifiant du créneau.",
        "definition" : "Identifiant du créneau.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Creneau.statut",
        "path" : "Creneau.statut",
        "short" : "Statut du créneau. Il est fixé à \"libre\".",
        "definition" : "Statut du créneau. Il est fixé à \"libre\".",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "Creneau.dateDebut",
        "path" : "Creneau.dateDebut",
        "short" : "Date et heure du début du créneau horaire.",
        "definition" : "Date et heure du début du créneau horaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Creneau.dateFin",
        "path" : "Creneau.dateFin",
        "short" : "Date et heure de fin du créneau horaire.",
        "definition" : "Date et heure de fin du créneau horaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Creneau.informationComplementaire",
        "path" : "Creneau.informationComplementaire",
        "short" : "Commentaire lié au créneau.",
        "definition" : "Commentaire lié au créneau.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Creneau.Agenda",
        "path" : "Creneau.Agenda",
        "short" : "Lien vers la classe Agenda",
        "definition" : "Lien vers la classe Agenda",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Agenda"
          }
        ]
      },
      {
        "id" : "Creneau.RendezVous",
        "path" : "Creneau.RendezVous",
        "short" : "Lien vers la classe RendezVous",
        "definition" : "Lien vers la classe RendezVous",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/RendezVous"
          }
        ]
      }
    ]
  }
}

```
