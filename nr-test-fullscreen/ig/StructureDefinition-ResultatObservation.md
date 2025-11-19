# ResultatObservation - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultatObservation**

## Logical Model: ResultatObservation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ResultatObservation | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:ResultatObservation |

 
Résultat de la mesure ou de l’observation effectuée sur un personne. 

**Usages:**

* Use this Logical Model: [Observation](StructureDefinition-Observation.md) and [PlageReference](StructureDefinition-PlageReference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/ResultatObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ResultatObservation.csv), [Excel](StructureDefinition-ResultatObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ResultatObservation",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ResultatObservation",
  "version" : "0.1.0",
  "name" : "ResultatObservation",
  "title" : "ResultatObservation",
  "status" : "draft",
  "date" : "2025-11-19T09:46:11+00:00",
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
  "description" : "Résultat de la mesure ou de l’observation effectuée sur un personne.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ResultatObservation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ResultatObservation",
        "path" : "ResultatObservation",
        "short" : "Résultat de la mesure ou de l’observation effectuée sur un personne.",
        "definition" : "Résultat de la mesure ou de l’observation effectuée sur un personne."
      },
      {
        "id" : "ResultatObservation.type",
        "path" : "ResultatObservation.type",
        "short" : "Un type d’observation peut être composé de plusieurs sous-types d’observation.Par exemple, pour mesurer une mesure de la pression artérielle il est nécessaire d'utiliser les deux valeurs :**85354-9 Pression arterielle**8480-6 Systolique**8462-4 Diastoliquehttps://loinc.org/",
        "definition" : "Un type d’observation peut être composé de plusieurs sous-types d’observation.Par exemple, pour mesurer une mesure de la pression artérielle il est nécessaire d'utiliser les deux valeurs :**85354-9 Pression arterielle**8480-6 Systolique**8462-4 Diastoliquehttps://loinc.org/",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ResultatObservation.valeur",
        "path" : "ResultatObservation.valeur",
        "short" : "Résultat, valeur mesurée de l'observation. L'observation peut ne pas avoir de valeur si une raison justifie cette absence ou si elle représente un groupe d'observations.",
        "definition" : "Résultat, valeur mesurée de l'observation. L'observation peut ne pas avoir de valeur si une raison justifie cette absence ou si elle représente un groupe d'observations.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "ResultatObservation.interpretation",
        "path" : "ResultatObservation.interpretation",
        "short" : "Pour certains résultats, notamment les résultats numériques, une interprétation est nécessaire pour bien comprendre la signification d'un résultat.http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "definition" : "Pour certains résultats, notamment les résultats numériques, une interprétation est nécessaire pour bien comprendre la signification d'un résultat.http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ResultatObservation.raisonAbsence",
        "path" : "ResultatObservation.raisonAbsence",
        "short" : "Raison de l'absence de résultat.https://www.hl7.org/fhir/codesystem-data-absent-reason.html",
        "definition" : "Raison de l'absence de résultat.https://www.hl7.org/fhir/codesystem-data-absent-reason.html",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ResultatObservation.Observation",
        "path" : "ResultatObservation.Observation",
        "short" : "Lien vers la classe Observation",
        "definition" : "Lien vers la classe Observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Observation"
          }
        ]
      },
      {
        "id" : "ResultatObservation.PlageReference",
        "path" : "ResultatObservation.PlageReference",
        "short" : "Lien vers la classe PlageReference",
        "definition" : "Lien vers la classe PlageReference",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PlageReference"
          }
        ]
      }
    ]
  }
}

```
