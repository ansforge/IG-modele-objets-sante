# SituationOperationnelle - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SituationOperationnelle**

## Logical Model: SituationOperationnelle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationOperationnelle | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:SituationOperationnelle |

 
Caractérise les conditions d’exercice du professionnel dans la mise en œuvre cadre de l’offre opérationnelle. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/SituationOperationnelle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SituationOperationnelle.csv), [Excel](StructureDefinition-SituationOperationnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SituationOperationnelle",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationOperationnelle",
  "version" : "0.1.0",
  "name" : "SituationOperationnelle",
  "title" : "SituationOperationnelle",
  "status" : "draft",
  "date" : "2025-10-23T09:27:39+00:00",
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
  "description" : "Caractérise les conditions d'exercice du professionnel dans la mise en œuvre cadre de l’offre opérationnelle.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationOperationnelle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "SituationOperationnelle",
        "path" : "SituationOperationnelle",
        "short" : "Caractérise les conditions d'exercice du professionnel dans la mise en œuvre cadre de l’offre opérationnelle.",
        "definition" : "Caractérise les conditions d'exercice du professionnel dans la mise en œuvre cadre de l’offre opérationnelle."
      },
      {
        "id" : "SituationOperationnelle.identifiantSituationOperationnelle",
        "path" : "SituationOperationnelle.identifiantSituationOperationnelle",
        "short" : "Identifiant de la situation opérationnelle, unique et persistant au niveau national, obtenu par l’association de l’identifiant de l’offre opérationnelle suivi du caractère « / » puis de l’identifiant du professionnel.",
        "definition" : "Identifiant de la situation opérationnelle, unique et persistant au niveau national, obtenu par l’association de l’identifiant de l’offre opérationnelle suivi du caractère « / » puis de l’identifiant du professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "SituationOperationnelle.modeExerciceOffre",
        "path" : "SituationOperationnelle.modeExerciceOffre",
        "short" : "Le mode d'exercice correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite.",
        "definition" : "Le mode d'exercice correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice?vs"
        }
      },
      {
        "id" : "SituationOperationnelle.competenceSpecifique",
        "path" : "SituationOperationnelle.competenceSpecifique",
        "short" : "La compétence spécifique correspond à une capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne. La compétence spécifique n’est ni une spécialité ordinale, ni une profession.",
        "definition" : "La compétence spécifique correspond à une capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne. La compétence spécifique n’est ni une spécialité ordinale, ni une profession.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R243-CompetenceSpecifique/FHIR/TRE-R243-CompetenceSpecifique?vs"
        }
      },
      {
        "id" : "SituationOperationnelle.precisionHoraire",
        "path" : "SituationOperationnelle.precisionHoraire",
        "short" : "Décrit le planning d'activité du professionnel.",
        "definition" : "Décrit le planning d'activité du professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Horaire"
          }
        ]
      },
      {
        "id" : "SituationOperationnelle.secteurConventionnement",
        "path" : "SituationOperationnelle.secteurConventionnement",
        "short" : "Secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie.",
        "definition" : "Secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R282-CNAMAmeliSecteurConventionnement/FHIR/TRE-R282-CNAMAmeliSecteurConventionnement?vs"
        }
      },
      {
        "id" : "SituationOperationnelle.optionContratAccesAuxSoins",
        "path" : "SituationOperationnelle.optionContratAccesAuxSoins",
        "short" : "L'Option pratique tarifaire maîtrisée (OPTAM) a remplacé le Contrat d'accès aux soins (CAS) en 2017.L’Option pratique tarifaire maîtrisée (OPTAM) est un dispositif proposé par l’Assurance Maladie aux médecins conventionnés ayant pour objectif principal de faciliter l’accès aux soins en limitant, sans les supprimer, les dépassements d’honoraires.Les médecins exerçant une spécialité chirurgicale ou de chirurgie obstétrique, qui ont réalisé au moins 50 actes de chirurgie ou d'obstérique ont la possibilité d'adhérer à l'Option pratique tarifaire maîtrisée chirurgie et obstétrique (OPTAM-CO).Synonyme : optionPratiqueTarifaireMaîtrisée",
        "definition" : "L'Option pratique tarifaire maîtrisée (OPTAM) a remplacé le Contrat d'accès aux soins (CAS) en 2017.L’Option pratique tarifaire maîtrisée (OPTAM) est un dispositif proposé par l’Assurance Maladie aux médecins conventionnés ayant pour objectif principal de faciliter l’accès aux soins en limitant, sans les supprimer, les dépassements d’honoraires.Les médecins exerçant une spécialité chirurgicale ou de chirurgie obstétrique, qui ont réalisé au moins 50 actes de chirurgie ou d'obstérique ont la possibilité d'adhérer à l'Option pratique tarifaire maîtrisée chirurgie et obstétrique (OPTAM-CO).Synonyme : optionPratiqueTarifaireMaîtrisée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "SituationOperationnelle.carteVitaleAcceptee",
        "path" : "SituationOperationnelle.carteVitaleAcceptee",
        "short" : "L’indicateur Carte Vitale acceptée précise si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas. 0 : pas de prise en charge de la carte vitale1 : prise en charge de la carte vitale.",
        "definition" : "L’indicateur Carte Vitale acceptée précise si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas. 0 : pas de prise en charge de la carte vitale1 : prise en charge de la carte vitale.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "SituationOperationnelle.telecommunication",
        "path" : "SituationOperationnelle.telecommunication",
        "short" : "Adresse de télécommunication du professionnel dans le cadre de l'offre décrite.",
        "definition" : "Adresse de télécommunication du professionnel dans le cadre de l'offre décrite.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "SituationOperationnelle.exerciceProfessionnel",
        "path" : "SituationOperationnelle.exerciceProfessionnel",
        "short" : "Lien vers la classe ExerciceProfessionnel.",
        "definition" : "Lien vers la classe ExerciceProfessionnel.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel"
            ]
          }
        ]
      }
    ]
  }
}

```
