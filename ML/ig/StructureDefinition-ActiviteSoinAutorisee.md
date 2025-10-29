# ActiviteSoinAutorisee - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActiviteSoinAutorisee**

## Logical Model: ActiviteSoinAutorisee 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSoinAutorisee | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:ActiviteSoinAutorisee |

 
On distingue plusieurs types d’activités sanitaires rattachées aux établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités de soins» (acronyme communément utilisé : AS).Les activités de soins sont les activités des établissements sanitaires autorisées par arrêté du Directeur Général de l’ARS dans le cadre de l’article L. 6122-1 du CSP, pour une durée de 7 ans, durée fixe par voie réglementaire.D’après l’article L. 6122-1 du CSP, sont soumis à l’autorisation de l’agence régionale de santé les projets relatifs à la création de tout établissement de santé, la création, la conversion et le regroupement des activités de soins, y compris sous la forme d’alternatives à l’hospitalisation ou d’hospitalisation à domicile. La liste des activités de soins est fixée par décret en Conseil d’État. L’article R. 6122-25 du CSP référence ces activités de soins.Toute activité de soins fait l’objet d’un arrêté qui mentionne sa nature (triplet activité, modalité, forme, cf. plus bas), le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattachée juridiquement à l’EJ dans FINESS.La nomenclature est articulée en trois niveaux systématiquement renseignés : ** Activité de soins.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe : ** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités de soins.** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS : ** Une autorisation est « active » à la date du jour si : ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour; ** sa date d’échéance est supérieure ou égale à la date du jour. ** Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. ** De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des activités de soins présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n’est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives: ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour, ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas : a- Le renouvellement est en cours d’instruction (cas le plus courant), b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier, c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS; Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l’ANS). En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives. Les autorisations caduques ou retirées ne sont pas présentes dans FINESS. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/ActiviteSoinAutorisee)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ActiviteSoinAutorisee.csv), [Excel](StructureDefinition-ActiviteSoinAutorisee.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ActiviteSoinAutorisee",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSoinAutorisee",
  "version" : "0.1.0",
  "name" : "ActiviteSoinAutorisee",
  "title" : "ActiviteSoinAutorisee",
  "status" : "draft",
  "date" : "2025-10-29T10:18:40+00:00",
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
  "description" : "On distingue plusieurs types d’activités sanitaires rattachées aux établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités de soins» (acronyme communément utilisé : AS).Les activités de soins sont les activités des établissements sanitaires autorisées par arrêté du Directeur Général de l’ARS dans le cadre de l’article L. 6122-1 du CSP, pour une durée de 7 ans, durée fixe par voie réglementaire.D’après l’article L. 6122-1 du CSP, sont soumis à l’autorisation de l’agence régionale de santé les projets relatifs à la création de tout établissement de santé, la création, la conversion et le regroupement des activités de soins, y compris sous la forme d’alternatives à l’hospitalisation ou d’hospitalisation à domicile. La liste des activités de soins est fixée par décret en Conseil d’État. L’article R. 6122-25 du CSP référence ces activités de soins.Toute activité de soins fait l’objet d’un arrêté qui mentionne sa nature (triplet activité, modalité, forme, cf. plus bas), le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattachée juridiquement à l’EJ dans FINESS.La nomenclature est articulée en trois niveaux systématiquement renseignés : ** Activité de soins.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe : ** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités de soins.** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :     ** Une autorisation est « active » à la date du jour si :          ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour;          ** sa date d'échéance est supérieure ou égale à la date du jour.     ** Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.     ** De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des activités de soins présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives:      ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour,     ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas :     a- Le renouvellement est en cours d’instruction (cas le plus courant),     b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier,     c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS;     Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS).     En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives.     Les autorisations caduques ou retirées ne sont pas présentes dans FINESS.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSoinAutorisee",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ActiviteSoinAutorisee",
        "path" : "ActiviteSoinAutorisee",
        "short" : "On distingue plusieurs types d’activités sanitaires rattachées aux établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités de soins» (acronyme communément utilisé : AS).Les activités de soins sont les activités des établissements sanitaires autorisées par arrêté du Directeur Général de l’ARS dans le cadre de l’article L. 6122-1 du CSP, pour une durée de 7 ans, durée fixe par voie réglementaire.D’après l’article L. 6122-1 du CSP, sont soumis à l’autorisation de l’agence régionale de santé les projets relatifs à la création de tout établissement de santé, la création, la conversion et le regroupement des activités de soins, y compris sous la forme d’alternatives à l’hospitalisation ou d’hospitalisation à domicile. La liste des activités de soins est fixée par décret en Conseil d’État. L’article R. 6122-25 du CSP référence ces activités de soins.Toute activité de soins fait l’objet d’un arrêté qui mentionne sa nature (triplet activité, modalité, forme, cf. plus bas), le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattachée juridiquement à l’EJ dans FINESS.La nomenclature est articulée en trois niveaux systématiquement renseignés : ** Activité de soins.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe : ** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités de soins.** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :     ** Une autorisation est « active » à la date du jour si :          ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour;          ** sa date d'échéance est supérieure ou égale à la date du jour.     ** Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.     ** De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des activités de soins présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives:      ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour,     ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas :     a- Le renouvellement est en cours d’instruction (cas le plus courant),     b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier,     c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS;     Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS).     En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives.     Les autorisations caduques ou retirées ne sont pas présentes dans FINESS.",
        "definition" : "On distingue plusieurs types d’activités sanitaires rattachées aux établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités de soins» (acronyme communément utilisé : AS).Les activités de soins sont les activités des établissements sanitaires autorisées par arrêté du Directeur Général de l’ARS dans le cadre de l’article L. 6122-1 du CSP, pour une durée de 7 ans, durée fixe par voie réglementaire.D’après l’article L. 6122-1 du CSP, sont soumis à l’autorisation de l’agence régionale de santé les projets relatifs à la création de tout établissement de santé, la création, la conversion et le regroupement des activités de soins, y compris sous la forme d’alternatives à l’hospitalisation ou d’hospitalisation à domicile. La liste des activités de soins est fixée par décret en Conseil d’État. L’article R. 6122-25 du CSP référence ces activités de soins.Toute activité de soins fait l’objet d’un arrêté qui mentionne sa nature (triplet activité, modalité, forme, cf. plus bas), le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattachée juridiquement à l’EJ dans FINESS.La nomenclature est articulée en trois niveaux systématiquement renseignés : ** Activité de soins.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe : ** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités de soins.** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :     ** Une autorisation est « active » à la date du jour si :          ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour;          ** sa date d'échéance est supérieure ou égale à la date du jour.     ** Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.     ** De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des activités de soins présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives:      ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour,     ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas :     a- Le renouvellement est en cours d’instruction (cas le plus courant),     b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier,     c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS;     Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS).     En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives.     Les autorisations caduques ou retirées ne sont pas présentes dans FINESS."
      },
      {
        "id" : "ActiviteSoinAutorisee.numeroAutorisationARHGOS",
        "path" : "ActiviteSoinAutorisee.numeroAutorisationARHGOS",
        "short" : "Identifiant fonctionnel, numéro d'autorisation ARHGOS.",
        "definition" : "Identifiant fonctionnel, numéro d'autorisation ARHGOS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ActiviteSoinAutorisee.dateDecision",
        "path" : "ActiviteSoinAutorisee.dateDecision",
        "short" : "Date de décision du Directeur Général de l’ARS (date de l’arrête d’autorisation). Il s’agit donc de la date de délivrance de l’autorisation de l’activité de soins.Synonyme FINESS : date d’autorisation",
        "definition" : "Date de décision du Directeur Général de l’ARS (date de l’arrête d’autorisation). Il s’agit donc de la date de délivrance de l’autorisation de l’activité de soins.Synonyme FINESS : date d’autorisation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteSoinAutorisee.activite",
        "path" : "ActiviteSoinAutorisee.activite",
        "short" : "Code définissant l'activité de soins autorisée -AS- (article L.6122-1 du CSP), la liste des activités de soins soumises à autorisation est fixée par décret en Conseil d'Etat (article L.6122-25 du CSP).",
        "definition" : "Code définissant l'activité de soins autorisée -AS- (article L.6122-1 du CSP), la liste des activités de soins soumises à autorisation est fixée par décret en Conseil d'Etat (article L.6122-25 du CSP).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R274-ActiviteSanitaireRegulee/FHIR/TRE-R274-ActiviteSanitaireRegulee?vs"
        }
      },
      {
        "id" : "ActiviteSoinAutorisee.modalite",
        "path" : "ActiviteSoinAutorisee.modalite",
        "short" : "Les modalités sont des modes d’application ou des types de soins prévus par les textes réglementaires encadrant chaque activité de soins. Ce sont des pratiques thérapeutiques. Une activité de soins peut ou non avoir des modalités (dans ce cas, le code de la modalité est \"00\"). Les modalités peuvent être communes à plusieurs activités de soins ou spécifiques à une seule.",
        "definition" : "Les modalités sont des modes d’application ou des types de soins prévus par les textes réglementaires encadrant chaque activité de soins. Ce sont des pratiques thérapeutiques. Une activité de soins peut ou non avoir des modalités (dans ce cas, le code de la modalité est \"00\"). Les modalités peuvent être communes à plusieurs activités de soins ou spécifiques à une seule.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R275-ModaliteActivite/FHIR/TRE-R275-ModaliteActivite?vs"
        }
      },
      {
        "id" : "ActiviteSoinAutorisee.forme",
        "path" : "ActiviteSoinAutorisee.forme",
        "short" : "Une forme est un type d’organisation de prise en charge (exemples: hospitalisation à temps complet, hospitalisation à domicile, chirurgie ambulatoire, etc.).",
        "definition" : "Une forme est un type d’organisation de prise en charge (exemples: hospitalisation à temps complet, hospitalisation à domicile, chirurgie ambulatoire, etc.).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R276-FormeActivite/FHIR/TRE-R276-FormeActivite?vs"
        }
      },
      {
        "id" : "ActiviteSoinAutorisee.datePremiereMEO",
        "path" : "ActiviteSoinAutorisee.datePremiereMEO",
        "short" : "Date de première mise en œuvre de l’activité de soins. Elle doit être postérieure ou égale à la date de décision.Synonyme FINESS : date de mise en œuvre",
        "definition" : "Date de première mise en œuvre de l’activité de soins. Elle doit être postérieure ou égale à la date de décision.Synonyme FINESS : date de mise en œuvre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteSoinAutorisee.dateFin",
        "path" : "ActiviteSoinAutorisee.dateFin",
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
        "id" : "ActiviteSoinAutorisee.suppressionAutorisation",
        "path" : "ActiviteSoinAutorisee.suppressionAutorisation",
        "short" : "Indicateur de suppression de l'autorisation de l'activité de soins.Donnée propre à FINESS.",
        "definition" : "Indicateur de suppression de l'autorisation de l'activité de soins.Donnée propre à FINESS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ActiviteSoinAutorisee.suppressionImplantation",
        "path" : "ActiviteSoinAutorisee.suppressionImplantation",
        "short" : "Indicateur de suppression de l’implantation de l'activité de soins.Donnée propre à FINESS.",
        "definition" : "Indicateur de suppression de l’implantation de l'activité de soins.Donnée propre à FINESS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
