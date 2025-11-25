# ActiviteSoumiseReconnaissance - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActiviteSoumiseReconnaissance**

## Logical Model: ActiviteSoumiseReconnaissance 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSoumiseReconnaissance | *Version*:0.1.0 |
| Draft as of 2025-11-25 | *Computable Name*:ActiviteSoumiseReconnaissance |

 
On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités soumises à reconnaissance contractuelle» (acronyme communément utilisé : ASR).Une ASR est une activité non soumise à autorisation du DG ARS mais soumise à reconnaissance contractuelle dans le cadre et la durée du CPOM (contrat pluriannuel d’objectif et de moyens).La nomenclature est articulée en trois niveaux systématiquement renseignés : ** Activité reconnue contractuellement communément appelée reconnaissance.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe, les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités soumises à reconnaissance contractuelle.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS. Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.Une reconnaissance contractuelle est nécessairement rattachée à un contrat CPOM. Au sens ARHGOS, un contrat CPOM correspond à un couple unique entité juridique (EJ)/établissement (EG).A noter qu’initialement il existait une distinction entre les reconnaissances dites nationales (issues du guide méthodologique CPOM de la DGOS) et les reconnaissances dites régionales. Depuis 2019, toutes les reconnaissances contractuelles sont de type national. 

**Usages:**

* Use this Logical Model: [CapaciteActiviteExercee](StructureDefinition-CapaciteActiviteExercee.md) and [EntiteGeographique](StructureDefinition-EntiteGeographique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/ActiviteSoumiseReconnaissance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ActiviteSoumiseReconnaissance.csv), [Excel](StructureDefinition-ActiviteSoumiseReconnaissance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ActiviteSoumiseReconnaissance",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSoumiseReconnaissance",
  "version" : "0.1.0",
  "name" : "ActiviteSoumiseReconnaissance",
  "title" : "ActiviteSoumiseReconnaissance",
  "status" : "draft",
  "date" : "2025-11-25T14:31:44+00:00",
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
  "description" : "On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités soumises à reconnaissance contractuelle» (acronyme communément utilisé : ASR).Une ASR est une activité non soumise à autorisation du DG ARS mais soumise à reconnaissance contractuelle dans le cadre et la durée du CPOM (contrat pluriannuel d’objectif et de moyens).La nomenclature est articulée en trois niveaux systématiquement renseignés : **  Activité reconnue contractuellement communément appelée reconnaissance.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe, les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités soumises à reconnaissance contractuelle.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS. Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.Une reconnaissance contractuelle est nécessairement rattachée à un contrat CPOM. Au sens ARHGOS, un contrat CPOM correspond à un couple unique entité juridique (EJ)/établissement (EG).A noter qu’initialement il existait une distinction entre les reconnaissances dites nationales (issues du guide méthodologique CPOM de la DGOS) et les reconnaissances dites régionales. Depuis 2019, toutes les reconnaissances contractuelles sont de type national.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ActiviteSoumiseReconnaissance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ActiviteSoumiseReconnaissance",
        "path" : "ActiviteSoumiseReconnaissance",
        "short" : "On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités soumises à reconnaissance contractuelle» (acronyme communément utilisé : ASR).Une ASR est une activité non soumise à autorisation du DG ARS mais soumise à reconnaissance contractuelle dans le cadre et la durée du CPOM (contrat pluriannuel d’objectif et de moyens).La nomenclature est articulée en trois niveaux systématiquement renseignés : **  Activité reconnue contractuellement communément appelée reconnaissance.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe, les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités soumises à reconnaissance contractuelle.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS. Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.Une reconnaissance contractuelle est nécessairement rattachée à un contrat CPOM. Au sens ARHGOS, un contrat CPOM correspond à un couple unique entité juridique (EJ)/établissement (EG).A noter qu’initialement il existait une distinction entre les reconnaissances dites nationales (issues du guide méthodologique CPOM de la DGOS) et les reconnaissances dites régionales. Depuis 2019, toutes les reconnaissances contractuelles sont de type national.",
        "definition" : "On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités soumises à reconnaissance contractuelle» (acronyme communément utilisé : ASR).Une ASR est une activité non soumise à autorisation du DG ARS mais soumise à reconnaissance contractuelle dans le cadre et la durée du CPOM (contrat pluriannuel d’objectif et de moyens).La nomenclature est articulée en trois niveaux systématiquement renseignés : **  Activité reconnue contractuellement communément appelée reconnaissance.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe, les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités soumises à reconnaissance contractuelle.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS. Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.Une reconnaissance contractuelle est nécessairement rattachée à un contrat CPOM. Au sens ARHGOS, un contrat CPOM correspond à un couple unique entité juridique (EJ)/établissement (EG).A noter qu’initialement il existait une distinction entre les reconnaissances dites nationales (issues du guide méthodologique CPOM de la DGOS) et les reconnaissances dites régionales. Depuis 2019, toutes les reconnaissances contractuelles sont de type national."
      },
      {
        "id" : "ActiviteSoumiseReconnaissance.numeroRCARHGOS",
        "path" : "ActiviteSoumiseReconnaissance.numeroRCARHGOS",
        "short" : "Identifiant fonctionnel, numéro ARHGOS de la reconnaissance contractuelle.Synonyme FINESS : numéro d’autorisation",
        "definition" : "Identifiant fonctionnel, numéro ARHGOS de la reconnaissance contractuelle.Synonyme FINESS : numéro d’autorisation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ActiviteSoumiseReconnaissance.activite",
        "path" : "ActiviteSoumiseReconnaissance.activite",
        "short" : "Code définissant une activité soumise à reconnaissance contractuelle (ASR) dans les contrats pluriannuels d'objectifs et de moyens (CPOM).",
        "definition" : "Code définissant une activité soumise à reconnaissance contractuelle (ASR) dans les contrats pluriannuels d'objectifs et de moyens (CPOM).",
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
        "id" : "ActiviteSoumiseReconnaissance.modalite",
        "path" : "ActiviteSoumiseReconnaissance.modalite",
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
        "id" : "ActiviteSoumiseReconnaissance.forme",
        "path" : "ActiviteSoumiseReconnaissance.forme",
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
        "id" : "ActiviteSoumiseReconnaissance.numeroContratCPOM",
        "path" : "ActiviteSoumiseReconnaissance.numeroContratCPOM",
        "short" : "Identifiant fonctionnel du contrat, numéro ARHGOS du contrat CPOM.Une ou plusieurs autorisations ASR (numeroRCAHRGOS) peuvent être rattachées à un même contrat CPOM (numeroContratCPOM).",
        "definition" : "Identifiant fonctionnel du contrat, numéro ARHGOS du contrat CPOM.Une ou plusieurs autorisations ASR (numeroRCAHRGOS) peuvent être rattachées à un même contrat CPOM (numeroContratCPOM).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "ActiviteSoumiseReconnaissance.dateEffetCPOM",
        "path" : "ActiviteSoumiseReconnaissance.dateEffetCPOM",
        "short" : "Date d'effet du contrat pluriannuel d'objectifs et de moyens (CPOM).",
        "definition" : "Date d'effet du contrat pluriannuel d'objectifs et de moyens (CPOM).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteSoumiseReconnaissance.dateFinCPOM",
        "path" : "ActiviteSoumiseReconnaissance.dateFinCPOM",
        "short" : "Date d’échéance du contrat pluriannuel d'objectifs et de moyens (CPOM).",
        "definition" : "Date d’échéance du contrat pluriannuel d'objectifs et de moyens (CPOM).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteSoumiseReconnaissance.dateReconnaissance",
        "path" : "ActiviteSoumiseReconnaissance.dateReconnaissance",
        "short" : "Date de reconnaissance de l’activité par le Directeur Général de l’ARS.Synonyme FINESS : date d’effet de l’ASR",
        "definition" : "Date de reconnaissance de l’activité par le Directeur Général de l’ARS.Synonyme FINESS : date d’effet de l’ASR",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ActiviteSoumiseReconnaissance.indicateurReconnaissanceRegionale",
        "path" : "ActiviteSoumiseReconnaissance.indicateurReconnaissanceRegionale",
        "short" : "Distinction entre les reconnaissances dites nationales (issues du guide méthodologique CPOM de la DGOS) et les reconnaissances dites régionales. Depuis 2019 toutes les reconnaissances contractuelles sont de type national (valeur = ‘N’).",
        "definition" : "Distinction entre les reconnaissances dites nationales (issues du guide méthodologique CPOM de la DGOS) et les reconnaissances dites régionales. Depuis 2019 toutes les reconnaissances contractuelles sont de type national (valeur = ‘N’).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ActiviteSoumiseReconnaissance.EntiteGeographique",
        "path" : "ActiviteSoumiseReconnaissance.EntiteGeographique",
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
        "id" : "ActiviteSoumiseReconnaissance.CapaciteActiviteExercee",
        "path" : "ActiviteSoumiseReconnaissance.CapaciteActiviteExercee",
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
