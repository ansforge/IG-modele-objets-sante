# ActiviteEnseignement - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActiviteEnseignement**

## Logical Model: ActiviteEnseignement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteEnseignement | *Version*:0.1.0 |
| Draft as of 2025-11-27 | *Computable Name*:ActiviteEnseignement |

 
Les activités d’enseignement aux professions sanitaires et sociales sont enregistrées dans FINESS et rattachées aux établissements de formation (EG). Le périmètre comprend les formations sanitaires et sociales préparant à un diplôme d’état délivré par l’administration sanitaire et sociale. Sont exclues les formations aux professions médicales préparées en université, hormis les formations et écoles de sages-femmes.Ces formations sont soumises à un arrêté d’agrément de la Région. 

**Usages:**

* Use this Logical Model: [CapaciteActiviteExercee](StructureDefinition-CapaciteActiviteExercee.md) and [EntiteGeographique](StructureDefinition-EntiteGeographique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/ActiviteEnseignement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ActiviteEnseignement.csv), [Excel](StructureDefinition-ActiviteEnseignement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ActiviteEnseignement",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteEnseignement",
  "version" : "0.1.0",
  "name" : "ActiviteEnseignement",
  "title" : "ActiviteEnseignement",
  "status" : "draft",
  "date" : "2025-11-27T15:07:49+00:00",
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
  "description" : "Les activités d’enseignement aux professions sanitaires et sociales sont enregistrées dans FINESS et rattachées aux établissements de formation (EG). Le périmètre comprend les formations sanitaires et sociales préparant à un diplôme d’état délivré par l’administration sanitaire et sociale. Sont exclues les formations aux professions médicales préparées en université, hormis les formations et écoles de sages-femmes.Ces formations sont soumises à un arrêté d’agrément de la Région.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteEnseignement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ActiviteEnseignement",
        "path" : "ActiviteEnseignement",
        "short" : "Les activités d’enseignement aux professions sanitaires et sociales sont enregistrées dans FINESS et rattachées aux établissements de formation (EG). Le périmètre comprend les formations sanitaires et sociales préparant à un diplôme d’état délivré par l’administration sanitaire et sociale. Sont exclues les formations aux professions médicales préparées en université, hormis les formations et écoles de sages-femmes.Ces formations sont soumises à un arrêté d’agrément de la Région.",
        "definition" : "Les activités d’enseignement aux professions sanitaires et sociales sont enregistrées dans FINESS et rattachées aux établissements de formation (EG). Le périmètre comprend les formations sanitaires et sociales préparant à un diplôme d’état délivré par l’administration sanitaire et sociale. Sont exclues les formations aux professions médicales préparées en université, hormis les formations et écoles de sages-femmes.Ces formations sont soumises à un arrêté d’agrément de la Région."
      },
      {
        "id" : "ActiviteEnseignement.agregatDisciplineEnseignementNiv1",
        "path" : "ActiviteEnseignement.agregatDisciplineEnseignementNiv1",
        "short" : "Agrégat de discipline d'enseignement de niveau 1. L'agrégat de niveau 1 représente des regroupements d'agrégat de niveau 2.",
        "definition" : "Agrégat de discipline d'enseignement de niveau 1. L'agrégat de niveau 1 représente des regroupements d'agrégat de niveau 2.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R295-AgregatDisciplineEnseignNiv1/FHIR/TRE-R295-AgregatDisciplineEnseignNiv1?vs"
        }
      },
      {
        "id" : "ActiviteEnseignement.agregatDisciplineEnseignementNiv2",
        "path" : "ActiviteEnseignement.agregatDisciplineEnseignementNiv2",
        "short" : "Agrégat de discipline d'enseignement de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégat de niveau 3.",
        "definition" : "Agrégat de discipline d'enseignement de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégat de niveau 3.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R296-AgregatDisciplineEnseignNiv2/FHIR/TRE-R296-AgregatDisciplineEnseignNiv2?vs"
        }
      },
      {
        "id" : "ActiviteEnseignement.agregatDisciplineEnseignementNiv3",
        "path" : "ActiviteEnseignement.agregatDisciplineEnseignementNiv3",
        "short" : "Agrégat de discipline d'enseignement de niveau 3. L'agrégat de niveau 3 représente des regroupements de disciplines d'équipement.",
        "definition" : "Agrégat de discipline d'enseignement de niveau 3. L'agrégat de niveau 3 représente des regroupements de disciplines d'équipement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R297-AgregatDisciplineEnseignNiv3/FHIR/TRE-R297-AgregatDisciplineEnseignNiv3?vs"
        }
      },
      {
        "id" : "ActiviteEnseignement.disciplineEnseignement",
        "path" : "ActiviteEnseignement.disciplineEnseignement",
        "short" : "Formation sanitaire et sociale préparant à un diplôme d’état délivré par l’administration sanitaire et sociale. Sont exclues les formations aux professions médicales préparées en université, hormis les formations et écoles de sages-femmes.",
        "definition" : "Formation sanitaire et sociale préparant à un diplôme d’état délivré par l’administration sanitaire et sociale. Sont exclues les formations aux professions médicales préparées en université, hormis les formations et écoles de sages-femmes.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R281-DisciplineEnseignement/FHIR/TRE-R281-DisciplineEnseignement?vs"
        }
      },
      {
        "id" : "ActiviteEnseignement.modeFonctionnement",
        "path" : "ActiviteEnseignement.modeFonctionnement",
        "short" : "Le mode de fonctionnement précise la modalité d’accueil, d’hébergement et/ou d’ouverture de l’activité associée à la discipline (hébergement complet, externat, accueil de nuit, etc.). Par défaut, il est systématiquement renseigné avec la valeur 34 (Enseignement) provenant de la CodeSystem-TRE-R209-TypeActivite.",
        "definition" : "Le mode de fonctionnement précise la modalité d’accueil, d’hébergement et/ou d’ouverture de l’activité associée à la discipline (hébergement complet, externat, accueil de nuit, etc.). Par défaut, il est systématiquement renseigné avec la valeur 34 (Enseignement) provenant de la CodeSystem-TRE-R209-TypeActivite.",
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
        "id" : "ActiviteEnseignement.dateAutorisation",
        "path" : "ActiviteEnseignement.dateAutorisation",
        "short" : "Date de l’arrêté autorisant l’exercice de l’activité décrite.",
        "definition" : "Date de l’arrêté autorisant l’exercice de l’activité décrite.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteEnseignement.suppressionAutorisation",
        "path" : "ActiviteEnseignement.suppressionAutorisation",
        "short" : "Indicateur de suppression de l'autorisation d’activité d’enseignement.",
        "definition" : "Indicateur de suppression de l'autorisation d’activité d’enseignement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ActiviteEnseignement.EntiteGeographique",
        "path" : "ActiviteEnseignement.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      },
      {
        "id" : "ActiviteEnseignement.CapaciteActiviteExercee",
        "path" : "ActiviteEnseignement.CapaciteActiviteExercee",
        "short" : "Lien vers la classe CapaciteActiviteExercee",
        "definition" : "Lien vers la classe CapaciteActiviteExercee",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteActiviteExercee"
          }
        ]
      }
    ]
  }
}

```
