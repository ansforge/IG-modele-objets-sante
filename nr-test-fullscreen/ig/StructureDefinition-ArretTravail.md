# ArretTravail - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ArretTravail**

## Logical Model: ArretTravail 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ArretTravail | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:ArretTravail |

 
Selon le code du travail, l’arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale. 

**Usages:**

* Use this Logical Model: [VieProfessionnelle](StructureDefinition-VieProfessionnelle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/ArretTravail)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ArretTravail.csv), [Excel](StructureDefinition-ArretTravail.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ArretTravail",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ArretTravail",
  "version" : "0.1.0",
  "name" : "ArretTravail",
  "title" : "ArretTravail",
  "status" : "draft",
  "date" : "2025-11-19T09:33:27+00:00",
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
  "description" : "Selon le code du travail, l'arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ArretTravail",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ArretTravail",
        "path" : "ArretTravail",
        "short" : "Selon le code du travail, l'arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale.",
        "definition" : "Selon le code du travail, l'arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale."
      },
      {
        "id" : "ArretTravail.dateDebutArret",
        "path" : "ArretTravail.dateDebutArret",
        "short" : "Date de début de l'arrêt de travail.",
        "definition" : "Date de début de l'arrêt de travail.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ArretTravail.motifArret",
        "path" : "ArretTravail.motifArret",
        "short" : "Motif de l'arrêt de travail. Nomenclature soumise prochainement par la CNSA.",
        "definition" : "Motif de l'arrêt de travail. Nomenclature soumise prochainement par la CNSA.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "ArretTravail.rencontreServiceSocial",
        "path" : "ArretTravail.rencontreServiceSocial",
        "short" : "Indique que la personne prise en charge a rencontré le professionnel du service social de sa caisse de retraite.",
        "definition" : "Indique que la personne prise en charge a rencontré le professionnel du service social de sa caisse de retraite.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ArretTravail.dateRencontreServiceSocial",
        "path" : "ArretTravail.dateRencontreServiceSocial",
        "short" : "Date de rencontre de la personne prise en charge avec le professionnel du service social de sa caisse de retraite.",
        "definition" : "Date de rencontre de la personne prise en charge avec le professionnel du service social de sa caisse de retraite.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ArretTravail.rencontreMedecin",
        "path" : "ArretTravail.rencontreMedecin",
        "short" : "Indique que la personne prise en charge a rencontré le médecin de santé au travail en visite de pré-reprise.",
        "definition" : "Indique que la personne prise en charge a rencontré le médecin de santé au travail en visite de pré-reprise.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "ArretTravail.dateRencontreMedecin",
        "path" : "ArretTravail.dateRencontreMedecin",
        "short" : "Date de rencontre de la personne prise en charge avec le médecin de santé au travail en visite de pré-reprise.",
        "definition" : "Date de rencontre de la personne prise en charge avec le médecin de santé au travail en visite de pré-reprise.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "ArretTravail.VieProfessionnelle",
        "path" : "ArretTravail.VieProfessionnelle",
        "short" : "Lien vers la classe VieProfessionnelle",
        "definition" : "Lien vers la classe VieProfessionnelle",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/VieProfessionnelle"
          }
        ]
      }
    ]
  }
}

```
