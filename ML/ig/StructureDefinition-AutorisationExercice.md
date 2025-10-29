# AutorisationExercice - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AutorisationExercice**

## Logical Model: AutorisationExercice 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutorisationExercice | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:AutorisationExercice |

 
L’accès aux professions de santé est soumis à des conditions concernant les diplômes obtenus : généralement est requis un diplôme français (DE de médecine, etc. ou européen (dans les professions pour lesquelles il existe des accords de reconnaissance mutuelle des diplômes).Pour les personnes ne remplissant pas ces conditions (diplômes hors UE, par exemple), les diplômes obtenus doivent être complétés d’une autorisation afin de permettre l’entrée dans la profession.Il peut s’agir:** d’une autorisation délivrée par le Ministère de la Santé,** d’une autorisation délivrée par l’Ordre au vu de la jurisprudence (Hochsmann, etc.). 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/AutorisationExercice)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AutorisationExercice.csv), [Excel](StructureDefinition-AutorisationExercice.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AutorisationExercice",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutorisationExercice",
  "version" : "0.1.0",
  "name" : "AutorisationExercice",
  "title" : "AutorisationExercice",
  "status" : "draft",
  "date" : "2025-10-29T15:03:41+00:00",
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
  "description" : "L'accès aux professions de santé est soumis à des conditions concernant les diplômes obtenus : généralement est requis un diplôme français (DE de médecine, etc. ou européen (dans les professions pour lesquelles il existe des accords de reconnaissance mutuelle des diplômes).Pour les personnes ne remplissant pas ces conditions (diplômes hors UE, par exemple), les diplômes obtenus doivent être complétés d'une autorisation afin de permettre l'entrée dans la profession.Il peut s'agir:** d'une autorisation délivrée par le Ministère de la Santé,** d'une autorisation délivrée par l'Ordre au vu de la jurisprudence (Hochsmann, etc.).",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutorisationExercice",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "AutorisationExercice",
        "path" : "AutorisationExercice",
        "short" : "L'accès aux professions de santé est soumis à des conditions concernant les diplômes obtenus : généralement est requis un diplôme français (DE de médecine, etc. ou européen (dans les professions pour lesquelles il existe des accords de reconnaissance mutuelle des diplômes).Pour les personnes ne remplissant pas ces conditions (diplômes hors UE, par exemple), les diplômes obtenus doivent être complétés d'une autorisation afin de permettre l'entrée dans la profession.Il peut s'agir:** d'une autorisation délivrée par le Ministère de la Santé,** d'une autorisation délivrée par l'Ordre au vu de la jurisprudence (Hochsmann, etc.).",
        "definition" : "L'accès aux professions de santé est soumis à des conditions concernant les diplômes obtenus : généralement est requis un diplôme français (DE de médecine, etc. ou européen (dans les professions pour lesquelles il existe des accords de reconnaissance mutuelle des diplômes).Pour les personnes ne remplissant pas ces conditions (diplômes hors UE, par exemple), les diplômes obtenus doivent être complétés d'une autorisation afin de permettre l'entrée dans la profession.Il peut s'agir:** d'une autorisation délivrée par le Ministère de la Santé,** d'une autorisation délivrée par l'Ordre au vu de la jurisprudence (Hochsmann, etc.)."
      },
      {
        "id" : "AutorisationExercice.typeAutorisation",
        "path" : "AutorisationExercice.typeAutorisation",
        "short" : "Type d’autorisation (ex. Autorisation ministérielle de plein exercice, etc.).",
        "definition" : "Type d’autorisation (ex. Autorisation ministérielle de plein exercice, etc.).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R17-TypeAutorisation/FHIR/TRE-R17-TypeAutorisation?vs"
        }
      },
      {
        "id" : "AutorisationExercice.disciplineAutorisee",
        "path" : "AutorisationExercice.disciplineAutorisee",
        "short" : "Discipline à laquelle l'autorisation d'exercice est restreinte, le cas échéant.",
        "definition" : "Discipline à laquelle l'autorisation d'exercice est restreinte, le cas échéant.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R18-DisciplineAutorisation/FHIR/TRE-R18-DisciplineAutorisation?vs"
        }
      },
      {
        "id" : "AutorisationExercice.dateDebutAutorisation",
        "path" : "AutorisationExercice.dateDebutAutorisation",
        "short" : "Date à partir de laquelle l’autorisation s’applique.",
        "definition" : "Date à partir de laquelle l’autorisation s’applique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "AutorisationExercice.dateFinAutorisation",
        "path" : "AutorisationExercice.dateFinAutorisation",
        "short" : "Date de fin de validité de l'autorisation.",
        "definition" : "Date de fin de validité de l'autorisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "AutorisationExercice.profession",
        "path" : "AutorisationExercice.profession",
        "short" : "Profession pour laquelle l'autorisation est délivrée.",
        "definition" : "Profession pour laquelle l'autorisation est délivrée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante?vs"
        }
      }
    ]
  }
}

```
