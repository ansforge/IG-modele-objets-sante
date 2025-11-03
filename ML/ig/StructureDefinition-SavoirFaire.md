# SavoirFaire - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SavoirFaire**

## Logical Model: SavoirFaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:SavoirFaire |

 
Prérogatives d’exercice d’un professionnel reconnues par une autorité d’enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc. 

**Usages:**

* Derived from this Logical Model: [CapaciteSavoirfaire](StructureDefinition-CapaciteSavoirfaire.md), [Competence](StructureDefinition-Competence.md), [CompetenceExclusive](StructureDefinition-CompetenceExclusive.md), [CompetenceMetier](StructureDefinition-CompetenceMetier.md)...Show 7 more,[DESCNonQualifiant](StructureDefinition-DESCNonQualifiant.md),[DroitExerciceComplementaire](StructureDefinition-DroitExerciceComplementaire.md),[FonctionQualifiee](StructureDefinition-FonctionQualifiee.md),[OrientationParticuliere](StructureDefinition-OrientationParticuliere.md),[QualificationPAC](StructureDefinition-QualificationPAC.md),[Specialite](StructureDefinition-Specialite.md)and[SurspecialiteTransversale](StructureDefinition-SurspecialiteTransversale.md)
* Use this Logical Model: [ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/SavoirFaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SavoirFaire.csv), [Excel](StructureDefinition-SavoirFaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SavoirFaire",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "version" : "0.1.0",
  "name" : "SavoirFaire",
  "title" : "SavoirFaire",
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
  "description" : "Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "SavoirFaire",
        "path" : "SavoirFaire",
        "short" : "Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc.",
        "definition" : "Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc."
      },
      {
        "id" : "SavoirFaire.typeSavoirFaire",
        "path" : "SavoirFaire.typeSavoirFaire",
        "short" : "Le type de savoir-faire (qualifications/autres attributions) désigne par exemple:** une spécialité ordinale (S);** une compétence (C);** etc.",
        "definition" : "Le type de savoir-faire (qualifications/autres attributions) désigne par exemple:** une spécialité ordinale (S);** une compétence (C);** etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire?vs"
        }
      },
      {
        "id" : "SavoirFaire.dateReconnaissance",
        "path" : "SavoirFaire.dateReconnaissance",
        "short" : "Date à laquelle, l’organisme donnant l’autorisation d’exercer une qualification a reconnu cette qualification ou date à laquelle l'attribution a été donnée au professionnel.",
        "definition" : "Date à laquelle, l’organisme donnant l’autorisation d’exercer une qualification a reconnu cette qualification ou date à laquelle l'attribution a été donnée au professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "SavoirFaire.dateAbandon",
        "path" : "SavoirFaire.dateAbandon",
        "short" : "Date à laquelle le professionnel a déclaré renoncer à l’exercice d’un savoir-faire ou date à laquelle il ne souhaite plus le faire apparaître.",
        "definition" : "Date à laquelle le professionnel a déclaré renoncer à l’exercice d’un savoir-faire ou date à laquelle il ne souhaite plus le faire apparaître.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "SavoirFaire.ExerciceProfessionnel",
        "path" : "SavoirFaire.ExerciceProfessionnel",
        "short" : "Lien vers la classe ExerciceProfessionnel",
        "definition" : "Lien vers la classe ExerciceProfessionnel",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel"
          }
        ]
      }
    ]
  }
}

```
