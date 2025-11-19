# AutreActiviteSoumiseAutorisation - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AutreActiviteSoumiseAutorisation**

## Logical Model: AutreActiviteSoumiseAutorisation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutreActiviteSoumiseAutorisation | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:AutreActiviteSoumiseAutorisation |

 
On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «autres activités soumises à autorisation» (acronyme communément utilisé : AASA). Les AASA sont soumises à l’autorisation du Directeur Général de l’ARS selon des modalités et des durées différentes particulières. Elles sont au nombre de 5 (instruction n° DGOS/SR6/R3/R4/DREES/DMSI/2014/364 du 24décembre 2014) :1. Chirurgie esthétique2. Prélèvements d’organes, de tissus, de cellules3. Dépôts de sang4. Lieux de recherches de la personne humaine5. LactariumsLa nomenclature est articulée en trois niveaux systématiquement renseignés : ** Autre Activité.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe :** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des autres activités soumises à autorisation ; ** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS : ** Seules les autorisations non caduques sont transmises à FINESS par ARHGOS et sont donc publiées par l’ANS. Hormis les autorisations en attente de première mise en œuvre, toutes les autorisations publiées peuvent donc être considérées comme actives. ** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS. 

**Usages:**

* Use this Logical Model: [EntiteGeographique](StructureDefinition-EntiteGeographique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/AutreActiviteSoumiseAutorisation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AutreActiviteSoumiseAutorisation.csv), [Excel](StructureDefinition-AutreActiviteSoumiseAutorisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AutreActiviteSoumiseAutorisation",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutreActiviteSoumiseAutorisation",
  "version" : "0.1.0",
  "name" : "AutreActiviteSoumiseAutorisation",
  "title" : "AutreActiviteSoumiseAutorisation",
  "status" : "draft",
  "date" : "2025-11-19T09:46:11+00:00",
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
  "description" : "On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «autres activités soumises à autorisation» (acronyme communément utilisé : AASA). Les AASA sont soumises à l’autorisation du Directeur Général de l’ARS selon des modalités et des durées différentes particulières.  Elles sont au nombre de 5 (instruction n° DGOS/SR6/R3/R4/DREES/DMSI/2014/364 du 24décembre 2014) :1. Chirurgie esthétique2. Prélèvements d’organes, de tissus, de cellules3. Dépôts de sang4. Lieux de recherches de la personne humaine5. LactariumsLa nomenclature est articulée en trois niveaux systématiquement renseignés : ** Autre Activité.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe :** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des autres activités soumises à autorisation ; ** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :     ** Seules les autorisations non caduques sont transmises à FINESS par ARHGOS et sont donc publiées par l’ANS. Hormis les autorisations en attente de première mise en œuvre, toutes les autorisations publiées peuvent donc être considérées comme actives.     ** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutreActiviteSoumiseAutorisation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "AutreActiviteSoumiseAutorisation",
        "path" : "AutreActiviteSoumiseAutorisation",
        "short" : "On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «autres activités soumises à autorisation» (acronyme communément utilisé : AASA). Les AASA sont soumises à l’autorisation du Directeur Général de l’ARS selon des modalités et des durées différentes particulières.  Elles sont au nombre de 5 (instruction n° DGOS/SR6/R3/R4/DREES/DMSI/2014/364 du 24décembre 2014) :1. Chirurgie esthétique2. Prélèvements d’organes, de tissus, de cellules3. Dépôts de sang4. Lieux de recherches de la personne humaine5. LactariumsLa nomenclature est articulée en trois niveaux systématiquement renseignés : ** Autre Activité.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe :** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des autres activités soumises à autorisation ; ** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :     ** Seules les autorisations non caduques sont transmises à FINESS par ARHGOS et sont donc publiées par l’ANS. Hormis les autorisations en attente de première mise en œuvre, toutes les autorisations publiées peuvent donc être considérées comme actives.     ** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.",
        "definition" : "On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «autres activités soumises à autorisation» (acronyme communément utilisé : AASA). Les AASA sont soumises à l’autorisation du Directeur Général de l’ARS selon des modalités et des durées différentes particulières.  Elles sont au nombre de 5 (instruction n° DGOS/SR6/R3/R4/DREES/DMSI/2014/364 du 24décembre 2014) :1. Chirurgie esthétique2. Prélèvements d’organes, de tissus, de cellules3. Dépôts de sang4. Lieux de recherches de la personne humaine5. LactariumsLa nomenclature est articulée en trois niveaux systématiquement renseignés : ** Autre Activité.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe :** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des autres activités soumises à autorisation ; ** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :     ** Seules les autorisations non caduques sont transmises à FINESS par ARHGOS et sont donc publiées par l’ANS. Hormis les autorisations en attente de première mise en œuvre, toutes les autorisations publiées peuvent donc être considérées comme actives.     ** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS."
      },
      {
        "id" : "AutreActiviteSoumiseAutorisation.numeroAutorisationARHGOS",
        "path" : "AutreActiviteSoumiseAutorisation.numeroAutorisationARHGOS",
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
        "id" : "AutreActiviteSoumiseAutorisation.dateDecision",
        "path" : "AutreActiviteSoumiseAutorisation.dateDecision",
        "short" : "Date de décision du Directeur Général de l’ARS (date de l’arrête d’autorisation). Il s’agit donc de la date de délivrance de l’autorisation de l’activité.Synonyme FINESS : date d’autorisation.",
        "definition" : "Date de décision du Directeur Général de l’ARS (date de l’arrête d’autorisation). Il s’agit donc de la date de délivrance de l’autorisation de l’activité.Synonyme FINESS : date d’autorisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "AutreActiviteSoumiseAutorisation.activite",
        "path" : "AutreActiviteSoumiseAutorisation.activite",
        "short" : "Code définissant une activité soumise à autorisation autre que les activités de soins dans le CSP (AASA).",
        "definition" : "Code définissant une activité soumise à autorisation autre que les activités de soins dans le CSP (AASA).",
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
        "id" : "AutreActiviteSoumiseAutorisation.modalite",
        "path" : "AutreActiviteSoumiseAutorisation.modalite",
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
        "id" : "AutreActiviteSoumiseAutorisation.forme",
        "path" : "AutreActiviteSoumiseAutorisation.forme",
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
        "id" : "AutreActiviteSoumiseAutorisation.datePremiereMEO",
        "path" : "AutreActiviteSoumiseAutorisation.datePremiereMEO",
        "short" : "Date de première mise en œuvre de l’activité. Elle doit être postérieure ou égale à la date de décision.Synonyme FINESS : date de mise en œuvre",
        "definition" : "Date de première mise en œuvre de l’activité. Elle doit être postérieure ou égale à la date de décision.Synonyme FINESS : date de mise en œuvre",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "AutreActiviteSoumiseAutorisation.dateFin",
        "path" : "AutreActiviteSoumiseAutorisation.dateFin",
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
        "id" : "AutreActiviteSoumiseAutorisation.EntiteGeographique",
        "path" : "AutreActiviteSoumiseAutorisation.EntiteGeographique",
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
