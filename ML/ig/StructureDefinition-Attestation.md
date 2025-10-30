# Attestation - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Attestation**

## Logical Model: Attestation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Attestation | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:Attestation |

 
L’attestation est attribuée au terme d’une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Attestation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Attestation.csv), [Excel](StructureDefinition-Attestation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Attestation",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Attestation",
  "version" : "0.1.0",
  "name" : "Attestation",
  "title" : "Attestation",
  "status" : "draft",
  "date" : "2025-10-30T16:36:55+00:00",
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
  "description" : "L’attestation est attribuée au terme d'une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Attestation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Attestation",
        "path" : "Attestation",
        "short" : "L’attestation est attribuée au terme d'une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe",
        "definition" : "L’attestation est attribuée au terme d'une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe"
      },
      {
        "id" : "Attestation.attestation",
        "path" : "Attestation.attestation",
        "short" : "Attestation de formation.",
        "definition" : "Attestation de formation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R56-Attestation/FHIR/TRE-R56-Attestation?vs"
        }
      }
    ]
  }
}

```
