# Demande - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Demande**

## Logical Model: Demande 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:Demande |

 
Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Demande)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Demande.csv), [Excel](StructureDefinition-Demande.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Demande",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande",
  "version" : "0.1.0",
  "name" : "Demande",
  "title" : "Demande",
  "status" : "draft",
  "date" : "2025-11-03T11:12:25+00:00",
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
  "description" : "Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Demande",
        "path" : "Demande",
        "short" : "Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes.",
        "definition" : "Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes."
      },
      {
        "id" : "Demande.identifiantDemande",
        "path" : "Demande.identifiantDemande",
        "short" : "Identifiant de la demande.",
        "definition" : "Identifiant de la demande.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Demande.dateDemande",
        "path" : "Demande.dateDemande",
        "short" : "Date à laquelle la demande a été réalisée.",
        "definition" : "Date à laquelle la demande a été réalisée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Demande.demandeUrgente",
        "path" : "Demande.demandeUrgente",
        "short" : "Indique que la demande est considérée comme urgente ou non.",
        "definition" : "Indique que la demande est considérée comme urgente ou non.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
