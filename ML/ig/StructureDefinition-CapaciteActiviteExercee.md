# CapaciteActiviteExercee - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapaciteActiviteExercee**

## Logical Model: CapaciteActiviteExercee 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteActiviteExercee | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:CapaciteActiviteExercee |

 
Capacité définie au regard de l’activité. 

**Usages:**

* Use this Logical Model: [ActiviteEnseignement](StructureDefinition-ActiviteEnseignement.md), [ActiviteSociale](StructureDefinition-ActiviteSociale.md), [ActiviteSoumiseReconnaissance](StructureDefinition-ActiviteSoumiseReconnaissance.md), [EntiteGeographique](StructureDefinition-EntiteGeographique.md) and [MesureCapacite](StructureDefinition-MesureCapacite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CapaciteActiviteExercee)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CapaciteActiviteExercee.csv), [Excel](StructureDefinition-CapaciteActiviteExercee.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CapaciteActiviteExercee",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteActiviteExercee",
  "version" : "0.1.0",
  "name" : "CapaciteActiviteExercee",
  "title" : "CapaciteActiviteExercee",
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
  "description" : "Capacité définie au regard de l'activité.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteActiviteExercee",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CapaciteActiviteExercee",
        "path" : "CapaciteActiviteExercee",
        "short" : "Capacité définie au regard de l'activité.",
        "definition" : "Capacité définie au regard de l'activité."
      },
      {
        "id" : "CapaciteActiviteExercee.habilitationAideSociale",
        "path" : "CapaciteActiviteExercee.habilitationAideSociale",
        "short" : "Habilitation à l'aide sociale d'état.",
        "definition" : "Habilitation à l'aide sociale d'état.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "CapaciteActiviteExercee.modeFinacement",
        "path" : "CapaciteActiviteExercee.modeFinacement",
        "short" : "Mode de financement de centres d'accueil et d'hébergement.",
        "definition" : "Mode de financement de centres d'accueil et d'hébergement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "CapaciteActiviteExercee.ActiviteSoumiseReconnaissance",
        "path" : "CapaciteActiviteExercee.ActiviteSoumiseReconnaissance",
        "short" : "Lien vers la classe ActiviteSoumiseReconnaissance",
        "definition" : "Lien vers la classe ActiviteSoumiseReconnaissance",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSoumiseReconnaissance"
          }
        ]
      },
      {
        "id" : "CapaciteActiviteExercee.ActiviteSociale",
        "path" : "CapaciteActiviteExercee.ActiviteSociale",
        "short" : "Lien vers la classe ActiviteSociale",
        "definition" : "Lien vers la classe ActiviteSociale",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSociale"
          }
        ]
      },
      {
        "id" : "CapaciteActiviteExercee.ActiviteEnseignement",
        "path" : "CapaciteActiviteExercee.ActiviteEnseignement",
        "short" : "Lien vers la classe ActiviteEnseignement",
        "definition" : "Lien vers la classe ActiviteEnseignement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteEnseignement"
          }
        ]
      },
      {
        "id" : "CapaciteActiviteExercee.MesureCapacite",
        "path" : "CapaciteActiviteExercee.MesureCapacite",
        "short" : "Lien vers la classe MesureCapacite",
        "definition" : "Lien vers la classe MesureCapacite",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureCapacite"
          }
        ]
      },
      {
        "id" : "CapaciteActiviteExercee.EntiteGeographique",
        "path" : "CapaciteActiviteExercee.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      }
    ]
  }
}

```
