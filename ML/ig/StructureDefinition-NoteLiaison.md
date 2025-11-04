# NoteLiaison - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoteLiaison**

## Logical Model: NoteLiaison 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/NoteLiaison | *Version*:0.1.0 |
| Draft as of 2025-11-04 | *Computable Name*:NoteLiaison |

 
Les notes de liaison permet d’assurer un suivi « terrain » de la personne prise en charge et de garder en temps réel, une vue précise de la situation de cette personne prise en charge.Les notes peuvent concerner, par exemple, des symptômes observés, des résultats d’analyses, des avis et observations, etc.Les notes sont créées automatiquement ou manuellement, par des professionnels, des dispositifs médicaux, des logiciels métier, une personne tierce en contact direct ou indirect avec la personne prise en charge, ou bien par la personne prise en charge elle-même. Note : les logiciels métier et systèmes ne sont pas représentés dans le MOS. 

**Usages:**

* Use this Logical Model: [Contact](StructureDefinition-Contact.md), [DispositifMedical](StructureDefinition-DispositifMedical.md), [Document](StructureDefinition-Document.md), [EntiteGeographique](StructureDefinition-EntiteGeographique.md)...Show 2 more,[PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md)and[Professionnel](StructureDefinition-Professionnel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/NoteLiaison)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoteLiaison.csv), [Excel](StructureDefinition-NoteLiaison.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoteLiaison",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/NoteLiaison",
  "version" : "0.1.0",
  "name" : "NoteLiaison",
  "title" : "NoteLiaison",
  "status" : "draft",
  "date" : "2025-11-04T14:33:37+00:00",
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
  "description" : "Les notes de liaison permet d’assurer un suivi « terrain » de la personne prise en charge et de garder en temps réel, une vue précise de la situation de cette personne prise en charge.Les notes peuvent concerner, par exemple, des symptômes observés, des résultats d’analyses, des avis et observations, etc.Les notes sont créées automatiquement ou manuellement, par des professionnels, des dispositifs médicaux, des logiciels métier, une personne tierce en contact direct ou indirect avec la personne prise en charge, ou bien par la personne prise en charge elle-même. Note : les logiciels métier et systèmes ne sont pas représentés dans le MOS.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/NoteLiaison",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "NoteLiaison",
        "path" : "NoteLiaison",
        "short" : "Les notes de liaison permet d’assurer un suivi « terrain » de la personne prise en charge et de garder en temps réel, une vue précise de la situation de cette personne prise en charge.Les notes peuvent concerner, par exemple, des symptômes observés, des résultats d’analyses, des avis et observations, etc.Les notes sont créées automatiquement ou manuellement, par des professionnels, des dispositifs médicaux, des logiciels métier, une personne tierce en contact direct ou indirect avec la personne prise en charge, ou bien par la personne prise en charge elle-même. Note : les logiciels métier et systèmes ne sont pas représentés dans le MOS.",
        "definition" : "Les notes de liaison permet d’assurer un suivi « terrain » de la personne prise en charge et de garder en temps réel, une vue précise de la situation de cette personne prise en charge.Les notes peuvent concerner, par exemple, des symptômes observés, des résultats d’analyses, des avis et observations, etc.Les notes sont créées automatiquement ou manuellement, par des professionnels, des dispositifs médicaux, des logiciels métier, une personne tierce en contact direct ou indirect avec la personne prise en charge, ou bien par la personne prise en charge elle-même. Note : les logiciels métier et systèmes ne sont pas représentés dans le MOS."
      },
      {
        "id" : "NoteLiaison.idNote",
        "path" : "NoteLiaison.idNote",
        "short" : "Identifiant de la note dans le cahier de liaison.",
        "definition" : "Identifiant de la note dans le cahier de liaison.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "NoteLiaison.typeNote",
        "path" : "NoteLiaison.typeNote",
        "short" : "Type de la note: dépôt de document, sortie d’hôpital, etc.",
        "definition" : "Type de la note: dépôt de document, sortie d’hôpital, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "NoteLiaison.restrictionAudience",
        "path" : "NoteLiaison.restrictionAudience",
        "short" : "Le type d’audience autorisé à accéder à la note (professionnels de santé, personnes tierces, etc.)",
        "definition" : "Le type d’audience autorisé à accéder à la note (professionnels de santé, personnes tierces, etc.)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "NoteLiaison.dateHeureCreation",
        "path" : "NoteLiaison.dateHeureCreation",
        "short" : "Date à laquelle la note est déclarée.",
        "definition" : "Date à laquelle la note est déclarée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "NoteLiaison.description",
        "path" : "NoteLiaison.description",
        "short" : "Il s’agit d’une description ou du titre de la note.",
        "definition" : "Il s’agit d’une description ou du titre de la note.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "NoteLiaison.urgenceNote",
        "path" : "NoteLiaison.urgenceNote",
        "short" : "Indique l’urgence de la note afin d’identifier la façon dont elle sera prise en charge.",
        "definition" : "Indique l’urgence de la note afin d’identifier la façon dont elle sera prise en charge.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "NoteLiaison.Professionnel",
        "path" : "NoteLiaison.Professionnel",
        "short" : "Lien vers la classe Professionnel",
        "definition" : "Lien vers la classe Professionnel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel"
          }
        ]
      },
      {
        "id" : "NoteLiaison.PersonnePriseCharge",
        "path" : "NoteLiaison.PersonnePriseCharge",
        "short" : "Lien vers la classe PersonnePriseCharge",
        "definition" : "Lien vers la classe PersonnePriseCharge",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge"
          }
        ]
      },
      {
        "id" : "NoteLiaison.Document",
        "path" : "NoteLiaison.Document",
        "short" : "Lien vers la classe Document",
        "definition" : "Lien vers la classe Document",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document"
          }
        ]
      },
      {
        "id" : "NoteLiaison.EntiteGeographique",
        "path" : "NoteLiaison.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      },
      {
        "id" : "NoteLiaison.Contact",
        "path" : "NoteLiaison.Contact",
        "short" : "Lien vers la classe Contact",
        "definition" : "Lien vers la classe Contact",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact"
          }
        ]
      },
      {
        "id" : "NoteLiaison.DispositifMedical",
        "path" : "NoteLiaison.DispositifMedical",
        "short" : "Lien vers la classe DispositifMedical",
        "definition" : "Lien vers la classe DispositifMedical",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DispositifMedical"
          }
        ]
      }
    ]
  }
}

```
