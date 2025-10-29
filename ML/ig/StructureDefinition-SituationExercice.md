# SituationExercice - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SituationExercice**

## Logical Model: SituationExercice 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationExercice | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:SituationExercice |

 
Caractéristiques de l’exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l’exception des remplaçants).Synonymes : Activité (RPPS). 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/SituationExercice)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SituationExercice.csv), [Excel](StructureDefinition-SituationExercice.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SituationExercice",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationExercice",
  "version" : "0.1.0",
  "name" : "SituationExercice",
  "title" : "SituationExercice",
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
  "description" : "Caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l'exception des remplaçants).Synonymes : Activité (RPPS).",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationExercice",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "SituationExercice",
        "path" : "SituationExercice",
        "short" : "Caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l'exception des remplaçants).Synonymes : Activité (RPPS).",
        "definition" : "Caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l'exception des remplaçants).Synonymes : Activité (RPPS)."
      },
      {
        "id" : "SituationExercice.role",
        "path" : "SituationExercice.role",
        "short" : "Rôle du professionnel au sein de la structure d’exercice. Par exemple, ** Titulaire de cabinet;** Titulaire d’officine;** Médecin scolaire;** etc.Synonyme : fonction",
        "definition" : "Rôle du professionnel au sein de la structure d’exercice. Par exemple, ** Titulaire de cabinet;** Titulaire d’officine;** Médecin scolaire;** etc.Synonyme : fonction",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/role-vs"
        }
      },
      {
        "id" : "SituationExercice.typeRole",
        "path" : "SituationExercice.typeRole",
        "short" : "Indique le type de rôle du professionnel au sein de la structure d’exercice.Synonyme : typeFonction",
        "definition" : "Indique le type de rôle du professionnel au sein de la structure d’exercice.Synonyme : typeFonction",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/typeRole-vs"
        }
      },
      {
        "id" : "SituationExercice.modeExercice",
        "path" : "SituationExercice.modeExercice",
        "short" : "Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel.Exemples : ** Libéral;** Salarié;** Bénévole.Les valeurs de ce code sont répertoriées dans la nomenclature CodeSystem-TRE-R23-ModeExercice.",
        "definition" : "Le mode d'exercice décrit selon quelle modalité une activité est exercée au regard de l'organisation de la rétribution du professionnel.Exemples : ** Libéral;** Salarié;** Bénévole.Les valeurs de ce code sont répertoriées dans la nomenclature CodeSystem-TRE-R23-ModeExercice.",
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
        "id" : "SituationExercice.numeroAM",
        "path" : "SituationExercice.numeroAM",
        "short" : "Identifiant d’activité, propre à l’Assurance Maladie. Cet identifiant est attribué lors de l’enregistrement de l’activité par l’Assurance Maladie. Un professionnel a autant de numéros AM que d’activités enregistrées à l’Assurance Maladie. Cet identifiant d’activité est utilisé pour la facturation à l’Assurance Maladie. Sa diffusion est restreinte aux entités choisies par l’Assurance Maladie.Format : 9 caractères numériques généralement identiques au n°ADELI ou pseudo ADELI du professionnel pour sa première activité.",
        "definition" : "Identifiant d’activité, propre à l’Assurance Maladie. Cet identifiant est attribué lors de l’enregistrement de l’activité par l’Assurance Maladie. Un professionnel a autant de numéros AM que d’activités enregistrées à l’Assurance Maladie. Cet identifiant d’activité est utilisé pour la facturation à l’Assurance Maladie. Sa diffusion est restreinte aux entités choisies par l’Assurance Maladie.Format : 9 caractères numériques généralement identiques au n°ADELI ou pseudo ADELI du professionnel pour sa première activité.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "SituationExercice.dateDebutActivite",
        "path" : "SituationExercice.dateDebutActivite",
        "short" : "Date de début de l’activité correspondant à la date d’installation en cabinet ou à la date d’embauche du salarié, etc.",
        "definition" : "Date de début de l’activité correspondant à la date d’installation en cabinet ou à la date d’embauche du salarié, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "SituationExercice.dateFinActivite",
        "path" : "SituationExercice.dateFinActivite",
        "short" : "Date de fin de l’activité.",
        "definition" : "Date de fin de l’activité.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "SituationExercice.genreActivite",
        "path" : "SituationExercice.genreActivite",
        "short" : "Le genre d'activité identifie les activités qui nécessitent l’application de règles de gestion spécifiques, par exemple, activité standard de soins ou de pharmacien, activité non soignante, activité non médicale, etc.",
        "definition" : "Le genre d'activité identifie les activités qui nécessitent l’application de règles de gestion spécifiques, par exemple, activité standard de soins ou de pharmacien, activité non soignante, activité non médicale, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite?vs"
        }
      },
      {
        "id" : "SituationExercice.motifFinActivite",
        "path" : "SituationExercice.motifFinActivite",
        "short" : "Motif de fin d'activité, par exemple:** Décès;** Retraite libérale;** Changement de profession;** etc.",
        "definition" : "Motif de fin d'activité, par exemple:** Décès;** Retraite libérale;** Changement de profession;** etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R25-MotifFinActivite/FHIR/TRE-R25-MotifFinActivite?vs"
        }
      },
      {
        "id" : "SituationExercice.statutHospitalier",
        "path" : "SituationExercice.statutHospitalier",
        "short" : "Statut hospitalier dans le cas d’une activité exercée en établissement public de santé, par exemple:** Professeur des universités - praticien hospitalier (PU-PH);** Assistant hospitalier universitaire (AHU);** etc.",
        "definition" : "Statut hospitalier dans le cas d’une activité exercée en établissement public de santé, par exemple:** Professeur des universités - praticien hospitalier (PU-PH);** Assistant hospitalier universitaire (AHU);** etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R32-StatutHospitalier/FHIR/TRE-R32-StatutHospitalier?vs"
        }
      },
      {
        "id" : "SituationExercice.sectionOrdrePharmacien",
        "path" : "SituationExercice.sectionOrdrePharmacien",
        "short" : "Section du tableau de l’Ordre des pharmaciens, par exemple:** Pharmacien titulaire d’officine;** Pharmacien biologiste;** etc.",
        "definition" : "Section du tableau de l’Ordre des pharmaciens, par exemple:** Pharmacien titulaire d’officine;** Pharmacien biologiste;** etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R06-SectionTableauCNOP/FHIR/TRE-R06-SectionTableauCNOP?vs"
        }
      },
      {
        "id" : "SituationExercice.sousSectionOrdrePharmacien",
        "path" : "SituationExercice.sousSectionOrdrePharmacien",
        "short" : "Sous-section ou à défaut section du tableau de l’Ordre des pharmaciens.",
        "definition" : "Sous-section ou à défaut section du tableau de l’Ordre des pharmaciens.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G05-SousSectionTableauCNOP/FHIR/TRE-G05-SousSectionTableauCNOP?vs"
        }
      },
      {
        "id" : "SituationExercice.typeActiviteLiberale",
        "path" : "SituationExercice.typeActiviteLiberale",
        "short" : "Type d’activité libérale, par exemple:** Cabinet;** Secteur privé à l'hôpital;** etc.",
        "definition" : "Type d’activité libérale, par exemple:** Cabinet;** Secteur privé à l'hôpital;** etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R24-TypeActiviteLiberale/FHIR/TRE-R24-TypeActiviteLiberale?vs"
        }
      },
      {
        "id" : "SituationExercice.statutPSSSA",
        "path" : "SituationExercice.statutPSSSA",
        "short" : "Statut du professionnel du Service de santé des armées, par exemple:** Praticien certifié;** Praticien confirmé;** etc.",
        "definition" : "Statut du professionnel du Service de santé des armées, par exemple:** Praticien certifié;** Praticien confirmé;** etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R34-StatutProfessionnelSSA/FHIR/TRE-R34-StatutProfessionnelSSA?vs"
        }
      },
      {
        "id" : "SituationExercice.telecommunication",
        "path" : "SituationExercice.telecommunication",
        "short" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) rattachée(s) à la situation d'exercice.",
        "definition" : "Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) rattachée(s) à la situation d'exercice.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "SituationExercice.adresseSE",
        "path" : "SituationExercice.adresseSE",
        "short" : "Adresse(s) géopostale(s) rattachée(s) à la situation d'exercice.",
        "definition" : "Adresse(s) géopostale(s) rattachée(s) à la situation d'exercice.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "SituationExercice.boiteLettresMSS",
        "path" : "SituationExercice.boiteLettresMSS",
        "short" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à la situation d'exercice.",
        "definition" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à la situation d'exercice.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS"
          }
        ]
      },
      {
        "id" : "SituationExercice.ExerciceProfessionnel",
        "path" : "SituationExercice.ExerciceProfessionnel",
        "short" : "Lien vers la classe ExerciceProfessionnel",
        "definition" : "Lien vers la classe ExerciceProfessionnel",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel"
          }
        ]
      },
      {
        "id" : "SituationExercice.EntiteGeographique",
        "path" : "SituationExercice.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 0,
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
