# FonctionQualifiee - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FonctionQualifiee**

## Logical Model: FonctionQualifiee 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/FonctionQualifiee | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:FonctionQualifiee |

 
Expérience pratique exigée par le code de la santé publique (art R5124-16) pour exercer certaines fonctions dans l’industrie pharmaceutique et la distribution en gros. Ces dispositions s’appliquent uniquement à la profession de pharmacien.L’expérience pratique est en liaison avec les activités de l’établissement pharmaceutique telles que définies par l’ANSM ou l’ANSES.A ce jour, cinq expériences pratiques sont identifiées dont trois sont imbriquées. L’expérience pratique de “Fabricant” inclut celle d’”Exploitant” qui inclut celle de “Distribution”. Une fonction qualifiée est un type de savoir-faire. La classe FonctionQualifiee est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/FonctionQualifiee)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FonctionQualifiee.csv), [Excel](StructureDefinition-FonctionQualifiee.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FonctionQualifiee",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/FonctionQualifiee",
  "version" : "0.1.0",
  "name" : "FonctionQualifiee",
  "title" : "FonctionQualifiee",
  "status" : "draft",
  "date" : "2025-10-30T13:09:51+00:00",
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
  "description" : "Expérience pratique exigée par le code de la santé publique (art R5124-16) pour exercer certaines fonctions dans l’industrie pharmaceutique et la distribution en gros. Ces dispositions s’appliquent uniquement à la profession de pharmacien.L’expérience pratique est en liaison avec les activités de l’établissement pharmaceutique telles que définies par l’ANSM ou l’ANSES.A ce jour, cinq expériences pratiques sont identifiées dont trois sont imbriquées. L’expérience pratique de \"Fabricant\" inclut celle d’\"Exploitant\" qui inclut celle de \"Distribution\".  Une fonction qualifiée est un type de savoir-faire. La classe FonctionQualifiee est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/FonctionQualifiee",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FonctionQualifiee",
        "path" : "FonctionQualifiee",
        "short" : "Expérience pratique exigée par le code de la santé publique (art R5124-16) pour exercer certaines fonctions dans l’industrie pharmaceutique et la distribution en gros. Ces dispositions s’appliquent uniquement à la profession de pharmacien.L’expérience pratique est en liaison avec les activités de l’établissement pharmaceutique telles que définies par l’ANSM ou l’ANSES.A ce jour, cinq expériences pratiques sont identifiées dont trois sont imbriquées. L’expérience pratique de \"Fabricant\" inclut celle d’\"Exploitant\" qui inclut celle de \"Distribution\".  Une fonction qualifiée est un type de savoir-faire. La classe FonctionQualifiee est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Expérience pratique exigée par le code de la santé publique (art R5124-16) pour exercer certaines fonctions dans l’industrie pharmaceutique et la distribution en gros. Ces dispositions s’appliquent uniquement à la profession de pharmacien.L’expérience pratique est en liaison avec les activités de l’établissement pharmaceutique telles que définies par l’ANSM ou l’ANSES.A ce jour, cinq expériences pratiques sont identifiées dont trois sont imbriquées. L’expérience pratique de \"Fabricant\" inclut celle d’\"Exploitant\" qui inclut celle de \"Distribution\".  Une fonction qualifiée est un type de savoir-faire. La classe FonctionQualifiee est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "FonctionQualifiee.fonctionQualifiee",
        "path" : "FonctionQualifiee.fonctionQualifiee",
        "short" : "Fonction qualifiée.",
        "definition" : "Fonction qualifiée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/fonctionQualifiee-vs"
        }
      }
    ]
  }
}

```
