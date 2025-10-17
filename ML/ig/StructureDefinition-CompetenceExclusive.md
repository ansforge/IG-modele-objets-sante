# CompetenceExclusive - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CompetenceExclusive**

## Logical Model: CompetenceExclusive 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CompetenceExclusive | *Version*:0.1.0 |
| Draft as of 2025-10-17 | *Computable Name*:CompetenceExclusive |

 
La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CompetenceExclusive)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CompetenceExclusive.csv), [Excel](StructureDefinition-CompetenceExclusive.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CompetenceExclusive",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CompetenceExclusive",
  "version" : "0.1.0",
  "name" : "CompetenceExclusive",
  "title" : "CompetenceExclusive",
  "status" : "draft",
  "date" : "2025-10-17T12:47:41+00:00",
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
  "description" : "La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CompetenceExclusive",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CompetenceExclusive",
        "path" : "CompetenceExclusive",
        "short" : "La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "CompetenceExclusive.competenceExclusive",
        "path" : "CompetenceExclusive.competenceExclusive",
        "short" : "Compétence exclusive.",
        "definition" : "Compétence exclusive.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/competenceExclusive-vs"
        }
      }
    ]
  }
}

```
