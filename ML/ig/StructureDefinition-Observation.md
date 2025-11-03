# Observation - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation**

## Logical Model: Observation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Observation | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:Observation |

 
Une mesure ou une déclaration constitue une observation effectuée sur une personne. 

**Usages:**

* Use this Logical Model: [PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md), [Professionnel](StructureDefinition-Professionnel.md) and [ResultatObservation](StructureDefinition-ResultatObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Observation.csv), [Excel](StructureDefinition-Observation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Observation",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Observation",
  "version" : "0.1.0",
  "name" : "Observation",
  "title" : "Observation",
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
  "description" : "Une mesure ou une déclaration constitue une observation effectuée sur une personne.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "short" : "Une mesure ou une déclaration constitue une observation effectuée sur une personne.",
        "definition" : "Une mesure ou une déclaration constitue une observation effectuée sur une personne."
      },
      {
        "id" : "Observation.identifiant",
        "path" : "Observation.identifiant",
        "short" : "Identifiant de l’observation.",
        "definition" : "Identifiant de l’observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Observation.statut",
        "path" : "Observation.statut",
        "short" : "Statut de l'observation. Par exemple observation finale ou amendée.http://hl7.org/fhir/observation-status",
        "definition" : "Statut de l'observation. Par exemple observation finale ou amendée.http://hl7.org/fhir/observation-status",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.categorie",
        "path" : "Observation.categorie",
        "short" : "Catégorie de l'observation. Par exemple, une constante ou un résultat de laboratoire.http://www.hl7.org/fhir/valueset-observation-category.html",
        "definition" : "Catégorie de l'observation. Par exemple, une constante ou un résultat de laboratoire.http://www.hl7.org/fhir/valueset-observation-category.html",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.datePertinence",
        "path" : "Observation.datePertinence",
        "short" : "Date et heure à laquelle l'observation est pertinente : date de collecte, date de prélèvement, etc.",
        "definition" : "Date et heure à laquelle l'observation est pertinente : date de collecte, date de prélèvement, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.dateDisponibilite",
        "path" : "Observation.dateDisponibilite",
        "short" : "Date à laquelle de l'observation est disponible pour consultation.",
        "definition" : "Date à laquelle de l'observation est disponible pour consultation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.commentaire",
        "path" : "Observation.commentaire",
        "short" : "Commentaire relatif à l'observation.",
        "definition" : "Commentaire relatif à l'observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Observation.partieAnatomie",
        "path" : "Observation.partieAnatomie",
        "short" : "Partie de l’anatomie sur laquelle l’observation a été effectuée.",
        "definition" : "Partie de l’anatomie sur laquelle l’observation a été effectuée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.methode",
        "path" : "Observation.methode",
        "short" : "Procédé utilisé pour effectuer l'observation.",
        "definition" : "Procédé utilisé pour effectuer l'observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.raison",
        "path" : "Observation.raison",
        "short" : "Raison pour laquelle l'observation a été réalisée.Texte libre (ex. surpoids ou obésité, diabète, maladie du cœur et des vaisseaux, tabac, etc.)",
        "definition" : "Raison pour laquelle l'observation a été réalisée.Texte libre (ex. surpoids ou obésité, diabète, maladie du cœur et des vaisseaux, tabac, etc.)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Observation.positionCorps",
        "path" : "Observation.positionCorps",
        "short" : "Position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation.",
        "definition" : "Position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.momentMesure",
        "path" : "Observation.momentMesure",
        "short" : "Moment de la mesure.",
        "definition" : "Moment de la mesure.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.niveauEffort",
        "path" : "Observation.niveauEffort",
        "short" : "Définit le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire.",
        "definition" : "Définit le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.typeDiabete",
        "path" : "Observation.typeDiabete",
        "short" : "Type de diabète.",
        "definition" : "Type de diabète.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.nombreJours",
        "path" : "Observation.nombreJours",
        "short" : "Nombre de jours. Utilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie.",
        "definition" : "Nombre de jours. Utilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.Professionnel",
        "path" : "Observation.Professionnel",
        "short" : "Lien vers la classe Professionnel",
        "definition" : "Lien vers la classe Professionnel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel"
          }
        ]
      },
      {
        "id" : "Observation.PersonnePriseCharge",
        "path" : "Observation.PersonnePriseCharge",
        "short" : "Lien vers la classe PersonnePriseCharge",
        "definition" : "Lien vers la classe PersonnePriseCharge",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge"
          }
        ]
      },
      {
        "id" : "Observation.ResultatObservation",
        "path" : "Observation.ResultatObservation",
        "short" : "Lien vers la classe ResultatObservation",
        "definition" : "Lien vers la classe ResultatObservation",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ResultatObservation"
          }
        ]
      }
    ]
  }
}

```
