# OrientationParticuliere - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrientationParticuliere**

## Logical Model: OrientationParticuliere 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrientationParticuliere | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:OrientationParticuliere |

 
Caractérise une orientation d’exercice: acupuncture ou homéopathie.Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/OrientationParticuliere)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OrientationParticuliere.csv), [Excel](StructureDefinition-OrientationParticuliere.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OrientationParticuliere",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrientationParticuliere",
  "version" : "0.1.0",
  "name" : "OrientationParticuliere",
  "title" : "OrientationParticuliere",
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
  "description" : "Caractérise une orientation d'exercice: acupuncture ou homéopathie.Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrientationParticuliere",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "OrientationParticuliere",
        "path" : "OrientationParticuliere",
        "short" : "Caractérise une orientation d'exercice: acupuncture ou homéopathie.Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Caractérise une orientation d'exercice: acupuncture ou homéopathie.Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "OrientationParticuliere.orientationParticuliere",
        "path" : "OrientationParticuliere.orientationParticuliere",
        "short" : "Orientation particulière.",
        "definition" : "Orientation particulière.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/orientationParticuliere-vs"
        }
      }
    ]
  }
}

```
