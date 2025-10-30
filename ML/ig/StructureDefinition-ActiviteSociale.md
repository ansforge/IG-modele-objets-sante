# ActiviteSociale - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActiviteSociale**

## Logical Model: ActiviteSociale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSociale | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:ActiviteSociale |

 
Les équipements sociaux représentent les activités des établissements du domaine social et médico-social enregistrés dans FINESS.Le champ de FINESS comprend l’ensemble des établissements et services sociaux et médico-sociaux (ESSMS), soumis à autorisation préalable, ainsi que quelques catégories d’établissements n’entrant pas dans le régime de l’autorisation.Pour indiquer les services offerts, FINESS identifie ceux-ci à l’aide d’un triplet composé des éléments suivants : discipline d’équipement, mode de fonctionnement (appelé aussi type d’activité) et clientèle. 

**Usages:**

* Use this Logical Model: [CapaciteActiviteExercee](StructureDefinition-CapaciteActiviteExercee.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/ActiviteSociale)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ActiviteSociale.csv), [Excel](StructureDefinition-ActiviteSociale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ActiviteSociale",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSociale",
  "version" : "0.1.0",
  "name" : "ActiviteSociale",
  "title" : "ActiviteSociale",
  "status" : "draft",
  "date" : "2025-10-30T16:59:08+00:00",
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
  "description" : "Les équipements sociaux représentent les activités des établissements du domaine social et médico-social enregistrés dans FINESS.Le champ de FINESS comprend l’ensemble des établissements et services sociaux et médico-sociaux (ESSMS), soumis à autorisation préalable, ainsi que quelques catégories d’établissements n’entrant pas dans le régime de l’autorisation.Pour indiquer les services offerts, FINESS identifie ceux-ci à l'aide d'un triplet composé des éléments suivants : discipline d’équipement, mode de fonctionnement (appelé aussi type d’activité) et clientèle.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSociale",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ActiviteSociale",
        "path" : "ActiviteSociale",
        "short" : "Les équipements sociaux représentent les activités des établissements du domaine social et médico-social enregistrés dans FINESS.Le champ de FINESS comprend l’ensemble des établissements et services sociaux et médico-sociaux (ESSMS), soumis à autorisation préalable, ainsi que quelques catégories d’établissements n’entrant pas dans le régime de l’autorisation.Pour indiquer les services offerts, FINESS identifie ceux-ci à l'aide d'un triplet composé des éléments suivants : discipline d’équipement, mode de fonctionnement (appelé aussi type d’activité) et clientèle.",
        "definition" : "Les équipements sociaux représentent les activités des établissements du domaine social et médico-social enregistrés dans FINESS.Le champ de FINESS comprend l’ensemble des établissements et services sociaux et médico-sociaux (ESSMS), soumis à autorisation préalable, ainsi que quelques catégories d’établissements n’entrant pas dans le régime de l’autorisation.Pour indiquer les services offerts, FINESS identifie ceux-ci à l'aide d'un triplet composé des éléments suivants : discipline d’équipement, mode de fonctionnement (appelé aussi type d’activité) et clientèle."
      },
      {
        "id" : "ActiviteSociale.dateAutorisation",
        "path" : "ActiviteSociale.dateAutorisation",
        "short" : "Date de délivrance de l'autorisation de la discipline sociale.",
        "definition" : "Date de délivrance de l'autorisation de la discipline sociale.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.dateMajAutorisation",
        "path" : "ActiviteSociale.dateMajAutorisation",
        "short" : "Date de dernière mise à jour de l’autorisation.",
        "definition" : "Date de dernière mise à jour de l’autorisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.dateDerniereInstallation",
        "path" : "ActiviteSociale.dateDerniereInstallation",
        "short" : "Date à laquelle le dernier constat d’installation des places est réalisé.",
        "definition" : "Date à laquelle le dernier constat d’installation des places est réalisé.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.agregatDisciplineEquipementSocialeNiv1",
        "path" : "ActiviteSociale.agregatDisciplineEquipementSocialeNiv1",
        "short" : "Agrégat de discipline d'équipement sociale de niveau 1. L'agrégat de niveau 1 représente des regroupements d'agrégat de niveau 2.",
        "definition" : "Agrégat de discipline d'équipement sociale de niveau 1. L'agrégat de niveau 1 représente des regroupements d'agrégat de niveau 2.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R298-AgregatDisciplineEquipSocNiv1/FHIR/TRE-R298-AgregatDisciplineEquipSocNiv1?vs"
        }
      },
      {
        "id" : "ActiviteSociale.agregatDisciplineEquipementSocialeNiv2",
        "path" : "ActiviteSociale.agregatDisciplineEquipementSocialeNiv2",
        "short" : "Agrégat de discipline d'équipement sociale de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégat de niveau 3.",
        "definition" : "Agrégat de discipline d'équipement sociale de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégat de niveau 3.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R299-AgregatDisciplineEquipSocNiv2/FHIR/TRE-R299-AgregatDisciplineEquipSocNiv2?vs"
        }
      },
      {
        "id" : "ActiviteSociale.agregatDisciplineEquipementSocialeNiv3",
        "path" : "ActiviteSociale.agregatDisciplineEquipementSocialeNiv3",
        "short" : "Agrégat de discipline d'équipement sociale de niveau 3. L'agrégat de niveau 3 représente des regroupements de disciplines d'équipement.",
        "definition" : "Agrégat de discipline d'équipement sociale de niveau 3. L'agrégat de niveau 3 représente des regroupements de disciplines d'équipement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R300-AgregatDisciplineEquipSocNiv3/FHIR/TRE-R300-AgregatDisciplineEquipSocNiv3?vs"
        }
      },
      {
        "id" : "ActiviteSociale.disciplineEquipementSociale",
        "path" : "ActiviteSociale.disciplineEquipementSociale",
        "short" : "La discipline détermine la nature de l’activité.",
        "definition" : "La discipline détermine la nature de l’activité.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R280-DisciplineEquipementSocial/FHIR/TRE-R280-DisciplineEquipementSocial?vs"
        }
      },
      {
        "id" : "ActiviteSociale.modeFonctionnement",
        "path" : "ActiviteSociale.modeFonctionnement",
        "short" : "Le mode de fonctionnement précise la modalité d’accueil, d’hébergement et/ou d’ouverture de l’activité associée à la discipline (hébergement complet, externat, accueil de nuit…)Synonyme : type d'activité",
        "definition" : "Le mode de fonctionnement précise la modalité d’accueil, d’hébergement et/ou d’ouverture de l’activité associée à la discipline (hébergement complet, externat, accueil de nuit…)Synonyme : type d'activité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R209-TypeActivite/FHIR/TRE-R209-TypeActivite?vs"
        }
      },
      {
        "id" : "ActiviteSociale.agregatClienteleNiv2",
        "path" : "ActiviteSociale.agregatClienteleNiv2",
        "short" : "Agrégat de clientèle de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégat de niveau 3.",
        "definition" : "Agrégat de clientèle de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégat de niveau 3.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R293-AgregatClienteleNiv2/FHIR/TRE-R293-AgregatClienteleNiv2?vs"
        }
      },
      {
        "id" : "ActiviteSociale.agregatClienteleNiv3",
        "path" : "ActiviteSociale.agregatClienteleNiv3",
        "short" : "Agrégat de clientèle de niveau 3. L'agrégat de niveau 3 représente des regroupements de clientèles.",
        "definition" : "Agrégat de clientèle de niveau 3. L'agrégat de niveau 3 représente des regroupements de clientèles.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R294-AgregatClienteleNiv3/FHIR/TRE-R294-AgregatClienteleNiv3?vs"
        }
      },
      {
        "id" : "ActiviteSociale.clientele",
        "path" : "ActiviteSociale.clientele",
        "short" : "Population prise en charge par l’établissement dans le cadre de l’activité associée à la discipline.Synonyme : public, patientèle",
        "definition" : "Population prise en charge par l’établissement dans le cadre de l’activité associée à la discipline.Synonyme : public, patientèle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R279-Clientele/FHIR/TRE-R279-Clientele?vs"
        }
      },
      {
        "id" : "ActiviteSociale.ageMinAutorise",
        "path" : "ActiviteSociale.ageMinAutorise",
        "short" : "Age minimum de la clientèle autorisée.",
        "definition" : "Age minimum de la clientèle autorisée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.ageMaxAutorise",
        "path" : "ActiviteSociale.ageMaxAutorise",
        "short" : "Age maximum de la clientèle autorisée.",
        "definition" : "Age maximum de la clientèle autorisée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.ageMinInstalle",
        "path" : "ActiviteSociale.ageMinInstalle",
        "short" : "Age minimum de la clientèle installée.",
        "definition" : "Age minimum de la clientèle installée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.ageMaxInstalle",
        "path" : "ActiviteSociale.ageMaxInstalle",
        "short" : "Age maximum de la clientèle installée.",
        "definition" : "Age maximum de la clientèle installée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.suppressionAutorisation",
        "path" : "ActiviteSociale.suppressionAutorisation",
        "short" : "Indicateur de suppression de l'autorisation de l'activité sociale.",
        "definition" : "Indicateur de suppression de l'autorisation de l'activité sociale.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.suppressionInstallation",
        "path" : "ActiviteSociale.suppressionInstallation",
        "short" : "Indicateur de suppression de l’installation de l'activité sociale.",
        "definition" : "Indicateur de suppression de l’installation de l'activité sociale.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ActiviteSociale.sourceInformationInstallation",
        "path" : "ActiviteSociale.sourceInformationInstallation",
        "short" : "Source ayant permis le constat.",
        "definition" : "Source ayant permis le constat.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R301-SourceInformationInstallation/FHIR/TRE-R301-SourceInformationInstallation?vs"
        }
      },
      {
        "id" : "ActiviteSociale.EntiteGeographique",
        "path" : "ActiviteSociale.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      }
    ]
  }
}

```
