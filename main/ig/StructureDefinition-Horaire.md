# Horaire - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Horaire**

## Logical Model: Horaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Horaire | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:Horaire |

 
La classe Horaire permet de définir les différentes plages d’un agenda d’une entité (jours et heures d’ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d’indisponibilités 

**Usages:**

* Use this Logical Model: [SituationOperationnelle](StructureDefinition-SituationOperationnelle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Horaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Horaire.csv), [Excel](StructureDefinition-Horaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Horaire",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Horaire",
  "version" : "0.1.0",
  "name" : "Horaire",
  "title" : "Horaire",
  "status" : "draft",
  "date" : "2025-11-03T16:45:30+00:00",
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
  "description" : "La classe Horaire permet de définir les différentes plages d'un agenda d'une entité (jours et heures d'ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d'indisponibilités",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Horaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Horaire",
        "path" : "Horaire",
        "short" : "La classe Horaire permet de définir les différentes plages d'un agenda d'une entité (jours et heures d'ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d'indisponibilités",
        "definition" : "La classe Horaire permet de définir les différentes plages d'un agenda d'une entité (jours et heures d'ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d'indisponibilités"
      },
      {
        "id" : "Horaire.idPlageHoraire",
        "path" : "Horaire.idPlageHoraire",
        "short" : "Identifiant de la plage horaire.",
        "definition" : "Identifiant de la plage horaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Horaire.typePlageHoraire",
        "path" : "Horaire.typePlageHoraire",
        "short" : "Un type de plage horaire apporte du contexte à la plage horaire définie par la suite. Par exemple horaire d'ouverture, horaire de garde, etc.",
        "definition" : "Un type de plage horaire apporte du contexte à la plage horaire définie par la suite. Par exemple horaire d'ouverture, horaire de garde, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire?vs"
        }
      },
      {
        "id" : "Horaire.ouvertureFermeture",
        "path" : "Horaire.ouvertureFermeture",
        "short" : "Indicateur d'ouverture ou de fermeture.Valeurs possibles : 0 = Organisation fermée 1 = Organisation ouverte",
        "definition" : "Indicateur d'ouverture ou de fermeture.Valeurs possibles : 0 = Organisation fermée 1 = Organisation ouverte",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Horaire.jourSemaine",
        "path" : "Horaire.jourSemaine",
        "short" : "Numéro du jour dans la semaine. D'après la norme ISO 8601, les jours de chaque semaine sont numérotés de 1 (un) pour le lundi, à 7 (sept) pour le dimanche.",
        "definition" : "Numéro du jour dans la semaine. D'après la norme ISO 8601, les jours de chaque semaine sont numérotés de 1 (un) pour le lundi, à 7 (sept) pour le dimanche.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Horaire.heureDebut",
        "path" : "Horaire.heureDebut",
        "short" : "Heure de début de la plage horaire.",
        "definition" : "Heure de début de la plage horaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "Horaire.heureFin",
        "path" : "Horaire.heureFin",
        "short" : "Heure de fin de la plage horaire.",
        "definition" : "Heure de fin de la plage horaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "Horaire.frequencePlageHoraire",
        "path" : "Horaire.frequencePlageHoraire",
        "short" : "Fréquence de la plage horaire.Exemple : toutes les semaines, toutes les deux semaines, tous les mois, etc.",
        "definition" : "Fréquence de la plage horaire.Exemple : toutes les semaines, toutes les deux semaines, tous les mois, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "Horaire.debutDateEffective",
        "path" : "Horaire.debutDateEffective",
        "short" : "Date effective de début de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle.",
        "definition" : "Date effective de début de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Horaire.finDateEffective",
        "path" : "Horaire.finDateEffective",
        "short" : "Date effective de fin de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle.",
        "definition" : "Date effective de fin de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Horaire.dateDeclarationPlageHoraire",
        "path" : "Horaire.dateDeclarationPlageHoraire",
        "short" : "Date de déclaration de la plage horaire.",
        "definition" : "Date de déclaration de la plage horaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Horaire.commentaire",
        "path" : "Horaire.commentaire",
        "short" : "Zone de commentaires contenant des informations relatives aux heures de fonctionnement, notamment des exceptions d'horaire, des raisons liées à la fermeture ou l'ouverture.",
        "definition" : "Zone de commentaires contenant des informations relatives aux heures de fonctionnement, notamment des exceptions d'horaire, des raisons liées à la fermeture ou l'ouverture.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
