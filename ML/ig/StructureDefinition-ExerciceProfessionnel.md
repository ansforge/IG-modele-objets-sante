# ExerciceProfessionnel - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExerciceProfessionnel**

## Logical Model: ExerciceProfessionnel 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:ExerciceProfessionnel |

 
Informations décrivant notamment la profession exercée, l’identité d’exercice d’un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné. 

**Usages:**

* Use this Logical Model: [CarteProfessionnel](StructureDefinition-CarteProfessionnel.md), [Certificat](StructureDefinition-Certificat.md), [SavoirFaire](StructureDefinition-SavoirFaire.md), [SituationExercice](StructureDefinition-SituationExercice.md) and [SituationOperationnelle](StructureDefinition-SituationOperationnelle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/ExerciceProfessionnel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExerciceProfessionnel.csv), [Excel](StructureDefinition-ExerciceProfessionnel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExerciceProfessionnel",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel",
  "version" : "0.1.0",
  "name" : "ExerciceProfessionnel",
  "title" : "ExerciceProfessionnel",
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
  "description" : "Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ExerciceProfessionnel",
        "path" : "ExerciceProfessionnel",
        "short" : "Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné.",
        "definition" : "Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné."
      },
      {
        "id" : "ExerciceProfessionnel.civiliteExercice",
        "path" : "ExerciceProfessionnel.civiliteExercice",
        "short" : "Civilité d’exercice du professionnel.",
        "definition" : "Civilité d’exercice du professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R11-CiviliteExercice/FHIR/TRE-R11-CiviliteExercice?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.nomExercice",
        "path" : "ExerciceProfessionnel.nomExercice",
        "short" : "Nom sous lequel exerce le professionnel.",
        "definition" : "Nom sous lequel exerce le professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.prenomExercice",
        "path" : "ExerciceProfessionnel.prenomExercice",
        "short" : "Prénom sous lequel exerce le professionnel.",
        "definition" : "Prénom sous lequel exerce le professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.profession",
        "path" : "ExerciceProfessionnel.profession",
        "short" : "Profession exercée ou future profession de l'étudiant.",
        "definition" : "Profession exercée ou future profession de l'étudiant.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/profession-vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.typeProfession",
        "path" : "ExerciceProfessionnel.typeProfession",
        "short" : "Indique le type de profession de la personne.Exemples :** Professionnel de santé** Usager de titre** Professionnel secteur social** etc.",
        "definition" : "Indique le type de profession de la personne.Exemples :** Professionnel de santé** Usager de titre** Professionnel secteur social** etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/typeProfession-vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.categorieProfessionnelle",
        "path" : "ExerciceProfessionnel.categorieProfessionnelle",
        "short" : "Indique si le professionnel exerce sa profession en tant que :** M: Agent public** C: Civil** F: Fonctionnaire ** E: EtudiantL'autorité d'enregistrement du professionnel dépend de la catégorie de sa profession.",
        "definition" : "Indique si le professionnel exerce sa profession en tant que :** M: Agent public** C: Civil** F: Fonctionnaire ** E: EtudiantL'autorité d'enregistrement du professionnel dépend de la catégorie de sa profession.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R09-CategorieProfessionnelle/FHIR/TRE-R09-CategorieProfessionnelle?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.dateEffetExercice",
        "path" : "ExerciceProfessionnel.dateEffetExercice",
        "short" : "Date à partir de laquelle le professionnel exerce cette profession.",
        "definition" : "Date à partir de laquelle le professionnel exerce cette profession.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.dateFinEffetExercice",
        "path" : "ExerciceProfessionnel.dateFinEffetExercice",
        "short" : "Date à partir de laquelle le professionnel n’exerce plus cette profession.",
        "definition" : "Date à partir de laquelle le professionnel n’exerce plus cette profession.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.departementPremierReferencementAE",
        "path" : "ExerciceProfessionnel.departementPremierReferencementAE",
        "short" : "Code du département du premier référencement, pour un référencement de nature « inscription à l’ordre ».",
        "definition" : "Code du département du premier référencement, pour un référencement de nature « inscription à l’ordre ».",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G09-DepartementOM/FHIR/TRE-G09-DepartementOM?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.boiteLettresMSS",
        "path" : "ExerciceProfessionnel.boiteLettresMSS",
        "short" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'exercice professionnel du professionnel.",
        "definition" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'exercice professionnel du professionnel.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.InscriptionOrdre",
        "path" : "ExerciceProfessionnel.InscriptionOrdre",
        "short" : "Eléments permettant de retrouver les informations d'inscription à un ordre par rapport à la profession de la personne physique sur une période et un département donnéSynonymes RPPS : Inscription à ordre",
        "definition" : "Eléments permettant de retrouver les informations d'inscription à un ordre par rapport à la profession de la personne physique sur une période et un département donnéSynonymes RPPS : Inscription à ordre",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.InscriptionOrdre.ordre",
        "path" : "ExerciceProfessionnel.InscriptionOrdre.ordre",
        "short" : "Instance de régulation d'une profession de santé réglementée.",
        "definition" : "Instance de régulation d'une profession de santé réglementée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R82-Ordre/FHIR/TRE-R82-Ordre?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.InscriptionOrdre.dateDebutInscription",
        "path" : "ExerciceProfessionnel.InscriptionOrdre.dateDebutInscription",
        "short" : "Date d’inscription de la personne au tableau de l’ordre.",
        "definition" : "Date d’inscription de la personne au tableau de l’ordre.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.InscriptionOrdre.dateRadiation",
        "path" : "ExerciceProfessionnel.InscriptionOrdre.dateRadiation",
        "short" : "Date à partir de laquelle la personne n’est plus autorisée à exercer la profession pour laquelle elle a été inscrite.",
        "definition" : "Date à partir de laquelle la personne n’est plus autorisée à exercer la profession pour laquelle elle a été inscrite.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.InscriptionOrdre.statutInscription",
        "path" : "ExerciceProfessionnel.InscriptionOrdre.statutInscription",
        "short" : "Information indiquant l’avancement du traitement du dossier d'inscription de la personne.",
        "definition" : "Information indiquant l’avancement du traitement du dossier d'inscription de la personne.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R33-StatutInscription/FHIR/TRE-R33-StatutInscription?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.InscriptionOrdre.conseilDepartemental",
        "path" : "ExerciceProfessionnel.InscriptionOrdre.conseilDepartemental",
        "short" : "Département du Conseil départemental.",
        "definition" : "Département du Conseil départemental.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G09-DepartementOM/FHIR/TRE-G09-DepartementOM?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.AttributionParticuliere",
        "path" : "ExerciceProfessionnel.AttributionParticuliere",
        "short" : "Activités ponctuelles du professionnel de type expertise.",
        "definition" : "Activités ponctuelles du professionnel de type expertise.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.AttributionParticuliere.attributionParticuliere",
        "path" : "ExerciceProfessionnel.AttributionParticuliere.attributionParticuliere",
        "short" : "Attribution particulière.Par exemple : **Agrément : Autorisation d’un médecin généraliste ou spécialiste, formalisée par un agrément, à figurer sur une liste départementale établie par le Préfet sur proposition du directeur départemental de l'action sanitaire et sociale et après avis du conseil départemental de l'ordre des médecins et des syndicats départementaux des médecins.",
        "definition" : "Attribution particulière.Par exemple : **Agrément : Autorisation d’un médecin généraliste ou spécialiste, formalisée par un agrément, à figurer sur une liste départementale établie par le Préfet sur proposition du directeur départemental de l'action sanitaire et sociale et après avis du conseil départemental de l'ordre des médecins et des syndicats départementaux des médecins.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R03-AttributionParticuliere/FHIR/TRE-R03-AttributionParticuliere?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.AttributionParticuliere.dateDebutReconnaissance",
        "path" : "ExerciceProfessionnel.AttributionParticuliere.dateDebutReconnaissance",
        "short" : "Date à partir de laquelle l'attribution particulière prend effet.",
        "definition" : "Date à partir de laquelle l'attribution particulière prend effet.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.AttributionParticuliere.dateAbandon",
        "path" : "ExerciceProfessionnel.AttributionParticuliere.dateAbandon",
        "short" : "Date à laquelle le professionnel ne veut plus faire apparaître cette attribution.",
        "definition" : "Date à laquelle le professionnel ne veut plus faire apparaître cette attribution.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.NiveauFormation",
        "path" : "ExerciceProfessionnel.NiveauFormation",
        "short" : "Le niveau de formation décrit le niveau de formation de l’étudiant, comme demandé par le décret n°2010-701 et complété par le décret n°2011-462.",
        "definition" : "Le niveau de formation décrit le niveau de formation de l’étudiant, comme demandé par le décret n°2010-701 et complété par le décret n°2011-462.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.NiveauFormation.diplome",
        "path" : "ExerciceProfessionnel.NiveauFormation.diplome",
        "short" : "Diplôme acquis pour les cycles terminés (cas des diplômes de deuxième cycle pour étudiants qui font un troisième cycle) ou diplôme préparé pour les cycles en cours.",
        "definition" : "Diplôme acquis pour les cycles terminés (cas des diplômes de deuxième cycle pour étudiants qui font un troisième cycle) ou diplôme préparé pour les cycles en cours.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.NiveauFormation.natureCycleFormation",
        "path" : "ExerciceProfessionnel.NiveauFormation.natureCycleFormation",
        "short" : "Nature du cycle de formation:- Deuxième cycle,- Troisième cycle court,- Troisième cycle long/Internat.",
        "definition" : "Nature du cycle de formation:- Deuxième cycle,- Troisième cycle court,- Troisième cycle long/Internat.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R223-NatCycleForm/FHIR/TRE-R223-NatCycleForm?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.NiveauFormation.niveauFormationAcquis",
        "path" : "ExerciceProfessionnel.NiveauFormation.niveauFormationAcquis",
        "short" : "Niveau de validité dans le cycle de formation.",
        "definition" : "Niveau de validité dans le cycle de formation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R224-NiveauFormAcquis/FHIR/TRE-R224-NiveauFormAcquis?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.NiveauFormation.anneeUniversitaire",
        "path" : "ExerciceProfessionnel.NiveauFormation.anneeUniversitaire",
        "short" : "Année universitaire, exemple : 2015-2016.",
        "definition" : "Année universitaire, exemple : 2015-2016.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R225-AnneeUniversitaire/FHIR/TRE-R225-AnneeUniversitaire?vs"
        }
      },
      {
        "id" : "ExerciceProfessionnel.NiveauFormation.dateFin",
        "path" : "ExerciceProfessionnel.NiveauFormation.dateFin",
        "short" : "Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées). Cette date est renseignée par l’ordre à la clôture de l’exercice professionnel.",
        "definition" : "Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées). Cette date est renseignée par l’ordre à la clôture de l’exercice professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ExerciceProfessionnel.Professionnel",
        "path" : "ExerciceProfessionnel.Professionnel",
        "short" : "Lien vers la classe Professionnel",
        "definition" : "Lien vers la classe Professionnel",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel"
          }
        ]
      }
    ]
  }
}

```
