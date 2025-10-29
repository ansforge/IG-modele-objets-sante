# EquipementMaterielLourd - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EquipementMaterielLourd**

## Logical Model: EquipementMaterielLourd 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementMaterielLourd | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:EquipementMaterielLourd |

 
Les équipements matériels lourds (EML) sont mis en œuvre au sein d’établissements. Ce sont des équipements mobiliers destinés à pourvoir soit au diagnostic, soit à la thérapeutique, et dont les conditions d’installation et de fonctionnement sont particulièrement onéreuses. Exemples : scanographes, caméras à scintillation, etc.Ils sont soumis à l’autorisation du Directeur Général de l’ARS et leur liste est fixée par décret en Conseil d’Etat. L’article R. 6122-2 du CSP référence ces équipements matériels lourds.L’arrêté du DG ARS mentionne le type d’EML, le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattaché juridiquement à l’EJ dans FINESS.Les attributs de classe sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des EML.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :** Une autorisation est « active » à la date du jour si : ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour ** sa date d’échéance est supérieure ou égale à la date du jour.** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des équipements matériels lourds présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n’est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives: ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour, ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas : a- Le renouvellement est en cours d’instruction (cas le plus courant); b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier; c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS; Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l’ANS). En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives. Les autorisations caduques ou retirées ne sont pas présentes dans FINESS. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/EquipementMaterielLourd)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EquipementMaterielLourd.csv), [Excel](StructureDefinition-EquipementMaterielLourd.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EquipementMaterielLourd",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementMaterielLourd",
  "version" : "0.1.0",
  "name" : "EquipementMaterielLourd",
  "title" : "EquipementMaterielLourd",
  "status" : "draft",
  "date" : "2025-10-29T12:55:39+00:00",
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
  "description" : "Les équipements matériels lourds (EML) sont mis en œuvre au sein d’établissements. Ce sont des équipements mobiliers destinés à pourvoir soit au diagnostic, soit à la thérapeutique, et dont les conditions d’installation et de fonctionnement sont particulièrement onéreuses. Exemples : scanographes, caméras à scintillation, etc.Ils sont soumis à l'autorisation du Directeur Général de l’ARS et leur liste est fixée par décret en Conseil d'Etat. L’article R. 6122-2 du CSP référence ces équipements matériels lourds.L’arrêté du DG ARS mentionne le type d’EML, le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattaché juridiquement à l’EJ dans FINESS.Les attributs de classe sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des EML.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :** Une autorisation est « active » à la date du jour si :    ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour    ** sa date d'échéance est supérieure ou égale à la date du jour.** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des équipements matériels lourds présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives:      ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour,     ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas :        a- Le renouvellement est en cours d’instruction (cas le plus courant);        b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier;        c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS;        Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS). En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives.        Les autorisations caduques ou retirées ne sont pas présentes dans FINESS.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementMaterielLourd",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EquipementMaterielLourd",
        "path" : "EquipementMaterielLourd",
        "short" : "Les équipements matériels lourds (EML) sont mis en œuvre au sein d’établissements. Ce sont des équipements mobiliers destinés à pourvoir soit au diagnostic, soit à la thérapeutique, et dont les conditions d’installation et de fonctionnement sont particulièrement onéreuses. Exemples : scanographes, caméras à scintillation, etc.Ils sont soumis à l'autorisation du Directeur Général de l’ARS et leur liste est fixée par décret en Conseil d'Etat. L’article R. 6122-2 du CSP référence ces équipements matériels lourds.L’arrêté du DG ARS mentionne le type d’EML, le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattaché juridiquement à l’EJ dans FINESS.Les attributs de classe sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des EML.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :** Une autorisation est « active » à la date du jour si :    ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour    ** sa date d'échéance est supérieure ou égale à la date du jour.** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des équipements matériels lourds présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives:      ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour,     ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas :        a- Le renouvellement est en cours d’instruction (cas le plus courant);        b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier;        c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS;        Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS). En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives.        Les autorisations caduques ou retirées ne sont pas présentes dans FINESS.",
        "definition" : "Les équipements matériels lourds (EML) sont mis en œuvre au sein d’établissements. Ce sont des équipements mobiliers destinés à pourvoir soit au diagnostic, soit à la thérapeutique, et dont les conditions d’installation et de fonctionnement sont particulièrement onéreuses. Exemples : scanographes, caméras à scintillation, etc.Ils sont soumis à l'autorisation du Directeur Général de l’ARS et leur liste est fixée par décret en Conseil d'Etat. L’article R. 6122-2 du CSP référence ces équipements matériels lourds.L’arrêté du DG ARS mentionne le type d’EML, le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattaché juridiquement à l’EJ dans FINESS.Les attributs de classe sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des EML.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :** Une autorisation est « active » à la date du jour si :    ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour    ** sa date d'échéance est supérieure ou égale à la date du jour.** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des équipements matériels lourds présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives:      ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour,     ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas :        a- Le renouvellement est en cours d’instruction (cas le plus courant);        b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier;        c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS;        Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS). En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives.        Les autorisations caduques ou retirées ne sont pas présentes dans FINESS."
      },
      {
        "id" : "EquipementMaterielLourd.numeroAutorisationARHGOS",
        "path" : "EquipementMaterielLourd.numeroAutorisationARHGOS",
        "short" : "Identifiant fonctionnel de l'autorisation ARHGOS de l'EML.",
        "definition" : "Identifiant fonctionnel de l'autorisation ARHGOS de l'EML.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EquipementMaterielLourd.equipementMaterielLourd",
        "path" : "EquipementMaterielLourd.equipementMaterielLourd",
        "short" : "Code définissant l'équipement matériel lourd (EML) soumis à autorisation.",
        "definition" : "Code définissant l'équipement matériel lourd (EML) soumis à autorisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R272-EquipementMaterielLourd/FHIR/TRE-R272-EquipementMaterielLourd?vs"
        }
      },
      {
        "id" : "EquipementMaterielLourd.dateDecision",
        "path" : "EquipementMaterielLourd.dateDecision",
        "short" : "Date de décision du Directeur Général de l’ARS (date de l’arrête d’autorisation).Il s’agit donc de la date de délivrance de l’autorisation d’EML.Synonyme FINESS : date d’autorisation.",
        "definition" : "Date de décision du Directeur Général de l’ARS (date de l’arrête d’autorisation).Il s’agit donc de la date de délivrance de l’autorisation d’EML.Synonyme FINESS : date d’autorisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EquipementMaterielLourd.datePremiereMEO",
        "path" : "EquipementMaterielLourd.datePremiereMEO",
        "short" : "Date de mise en œuvre. Elle doit être postérieure à la date de l’arrêté d'autorisation. La mise en oeuvre est déclenchée à la réception par l’ARS du courrier du directeur de l’établissement.Synonyme FINESS : date de mise en œuvre",
        "definition" : "Date de mise en œuvre. Elle doit être postérieure à la date de l’arrêté d'autorisation. La mise en oeuvre est déclenchée à la réception par l’ARS du courrier du directeur de l’établissement.Synonyme FINESS : date de mise en œuvre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EquipementMaterielLourd.dateFin",
        "path" : "EquipementMaterielLourd.dateFin",
        "short" : "Date d'échéance de l'autorisation.Synonyme FINESS : date de fin de mise en œuvre",
        "definition" : "Date d'échéance de l'autorisation.Synonyme FINESS : date de fin de mise en œuvre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EquipementMaterielLourd.suppressionAutorisation",
        "path" : "EquipementMaterielLourd.suppressionAutorisation",
        "short" : "Indicateur de suppression de l'autorisation de l'EML. Donnée propre à FINESS.",
        "definition" : "Indicateur de suppression de l'autorisation de l'EML. Donnée propre à FINESS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EquipementMaterielLourd.marque",
        "path" : "EquipementMaterielLourd.marque",
        "short" : "Marque de l'équipement matériel lourd (EML).",
        "definition" : "Marque de l'équipement matériel lourd (EML).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EquipementMaterielLourd.numeroSerie",
        "path" : "EquipementMaterielLourd.numeroSerie",
        "short" : "Numéro de série de l'équipement matériel lourd (EML).",
        "definition" : "Numéro de série de l'équipement matériel lourd (EML).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
