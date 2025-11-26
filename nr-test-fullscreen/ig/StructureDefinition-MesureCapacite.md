# MesureCapacite - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MesureCapacite**

## Logical Model: MesureCapacite 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureCapacite | *Version*:0.1.0 |
| Draft as of 2025-11-26 | *Computable Name*:MesureCapacite |

 
Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil. 

**Usages:**

* Use this Logical Model: [CapaciteAccueil](StructureDefinition-CapaciteAccueil.md), [CapaciteActiviteExercee](StructureDefinition-CapaciteActiviteExercee.md) and [CapacitePriseCharge](StructureDefinition-CapacitePriseCharge.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/MesureCapacite)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MesureCapacite.csv), [Excel](StructureDefinition-MesureCapacite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MesureCapacite",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureCapacite",
  "version" : "0.1.0",
  "name" : "MesureCapacite",
  "title" : "MesureCapacite",
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
  "description" : "Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureCapacite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "MesureCapacite",
        "path" : "MesureCapacite",
        "short" : "Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil.",
        "definition" : "Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil."
      },
      {
        "id" : "MesureCapacite.natureCapacite",
        "path" : "MesureCapacite.natureCapacite",
        "short" : "Indique si la capacité est exprimée en lits ou en places.",
        "definition" : "Indique si la capacité est exprimée en lits ou en places.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite?vs"
        }
      },
      {
        "id" : "MesureCapacite.statutCapacite",
        "path" : "MesureCapacite.statutCapacite",
        "short" : "Permet de préciser le statut des lits ou places décrits.",
        "definition" : "Permet de préciser le statut des lits ou places décrits.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R330-TypeStatutCapacite/FHIR/TRE-R330-TypeStatutCapacite?vs"
        }
      },
      {
        "id" : "MesureCapacite.temporaliteCapacite",
        "path" : "MesureCapacite.temporaliteCapacite",
        "short" : "Indique le moment où cette capacité sera effective. Il est ainsi possible de décrire la situation immédiate, ou de fournir des informations prospectives de capacités, prenant notamment en compte les entrées et sorties déjà identifiés de patients.",
        "definition" : "Indique le moment où cette capacité sera effective. Il est ainsi possible de décrire la situation immédiate, ou de fournir des informations prospectives de capacités, prenant notamment en compte les entrées et sorties déjà identifiés de patients.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R331-TemporaliteCapacite/FHIR/TRE-R331-TemporaliteCapacite?vs"
        }
      },
      {
        "id" : "MesureCapacite.nombreCapacite",
        "path" : "MesureCapacite.nombreCapacite",
        "short" : "Quantité de lits ou places de la capacité exprimée.",
        "definition" : "Quantité de lits ou places de la capacité exprimée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "MesureCapacite.precision",
        "path" : "MesureCapacite.precision",
        "short" : "Pourcentage.",
        "definition" : "Pourcentage.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "MesureCapacite.variation",
        "path" : "MesureCapacite.variation",
        "short" : "Variabilité de la capacité.",
        "definition" : "Variabilité de la capacité.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "MesureCapacite.typeSourceCapacite",
        "path" : "MesureCapacite.typeSourceCapacite",
        "short" : "Indique quel type de source est à l’origine de l’information de capacité.",
        "definition" : "Indique quel type de source est à l’origine de l’information de capacité.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R335-TypeSourceCapacite/FHIR/TRE-R335-TypeSourceCapacite?vs"
        }
      },
      {
        "id" : "MesureCapacite.dateMAJCapacite",
        "path" : "MesureCapacite.dateMAJCapacite",
        "short" : "Date à laquelle la mesure de la capacité a été mise à jour dans la source.",
        "definition" : "Date à laquelle la mesure de la capacité a été mise à jour dans la source.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "MesureCapacite.dateConstatCapacite",
        "path" : "MesureCapacite.dateConstatCapacite",
        "short" : "Date de constat de la mesure de la capacité.",
        "definition" : "Date de constat de la mesure de la capacité.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "MesureCapacite.CapaciteActiviteExercee",
        "path" : "MesureCapacite.CapaciteActiviteExercee",
        "short" : "Lien vers la classe CapaciteActiviteExercee",
        "definition" : "Lien vers la classe CapaciteActiviteExercee",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteActiviteExercee"
          }
        ]
      },
      {
        "id" : "MesureCapacite.CapacitePriseCharge",
        "path" : "MesureCapacite.CapacitePriseCharge",
        "short" : "Lien vers la classe CapacitePriseCharge",
        "definition" : "Lien vers la classe CapacitePriseCharge",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapacitePriseCharge"
          }
        ]
      },
      {
        "id" : "MesureCapacite.CapaciteAccueil",
        "path" : "MesureCapacite.CapaciteAccueil",
        "short" : "Lien vers la classe CapaciteAccueil",
        "definition" : "Lien vers la classe CapaciteAccueil",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteAccueil"
          }
        ]
      }
    ]
  }
}

```
