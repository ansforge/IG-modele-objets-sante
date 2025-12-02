# OrganisationInterne - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganisationInterne**

## Logical Model: OrganisationInterne 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:OrganisationInterne |

 
La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l’organisation opérationnelle interne d’une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l’EG n’est pas obligatoire. Lorsqu’elle est décrite cette organisation porte les ressources opérationnelles. 

**Utilisations:**

* Utiliser ce Modèle logique: [Agenda](StructureDefinition-Agenda.md), [EntiteGeographique](StructureDefinition-EntiteGeographique.md), [OffreOperationnelle](StructureDefinition-OffreOperationnelle.md), [OrganisationInterne](StructureDefinition-OrganisationInterne.md) and [RendezVous](StructureDefinition-RendezVous.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/OrganisationInterne)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OrganisationInterne.csv), [Excel](StructureDefinition-OrganisationInterne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OrganisationInterne",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne",
  "version" : "0.1.0",
  "name" : "OrganisationInterne",
  "title" : "OrganisationInterne",
  "status" : "draft",
  "date" : "2025-12-02T14:23:57+00:00",
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
  "description" : "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l'organisation opérationnelle interne d'une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l'EG n'est pas obligatoire. Lorsqu'elle est décrite cette organisation porte les ressources opérationnelles.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "OrganisationInterne",
        "path" : "OrganisationInterne",
        "short" : "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l'organisation opérationnelle interne d'une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l'EG n'est pas obligatoire. Lorsqu'elle est décrite cette organisation porte les ressources opérationnelles.",
        "definition" : "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l'organisation opérationnelle interne d'une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l'EG n'est pas obligatoire. Lorsqu'elle est décrite cette organisation porte les ressources opérationnelles."
      },
      {
        "id" : "OrganisationInterne.identifiantOI",
        "path" : "OrganisationInterne.identifiantOI",
        "short" : "Identifiant de l'organisation interne, unique et persistant au niveau national.",
        "definition" : "Identifiant de l'organisation interne, unique et persistant au niveau national.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.nomOI",
        "path" : "OrganisationInterne.nomOI",
        "short" : "Nom de l'organisation interne.",
        "definition" : "Nom de l'organisation interne.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.typeOI",
        "path" : "OrganisationInterne.typeOI",
        "short" : "Type d'organisation interne (pôle, structure interne ou service, unité fonctionnelle, unité élémentaire, etc.).",
        "definition" : "Type d'organisation interne (pôle, structure interne ou service, unité fonctionnelle, unité élémentaire, etc.).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R207-TypeOrganisationInterne/FHIR/TRE-R207-TypeOrganisationInterne?vs"
        }
      },
      {
        "id" : "OrganisationInterne.contact",
        "path" : "OrganisationInterne.contact",
        "short" : "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service. Les moyens de contact sont précisés (numéro de téléphone, fax, email, site internet).",
        "definition" : "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service. Les moyens de contact sont précisés (numéro de téléphone, fax, email, site internet).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.boiteLettresMSS",
        "path" : "OrganisationInterne.boiteLettresMSS",
        "short" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'organisation interne.",
        "definition" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'organisation interne.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.dateOuverture",
        "path" : "OrganisationInterne.dateOuverture",
        "short" : "Date d'ouverture administrative de l'organisation interne.",
        "definition" : "Date d'ouverture administrative de l'organisation interne.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.dateFermeture",
        "path" : "OrganisationInterne.dateFermeture",
        "short" : "La date de fermeture d'un niveau organisationnel correspond à la date à partir de laquelle un niveau organisationnel n'assure plus aucune prestation. Cette date de fermeture est caractérisée par un type de fermeture. A partir de cette date, les prestations des niveaux organisationnels inférieurs ne sont plus assurées. Lorsqu'il s'agit d'une fermeture temporaire, la date est remise à nulle lorsque le niveau organisationnel est ouvert de nouveau.",
        "definition" : "La date de fermeture d'un niveau organisationnel correspond à la date à partir de laquelle un niveau organisationnel n'assure plus aucune prestation. Cette date de fermeture est caractérisée par un type de fermeture. A partir de cette date, les prestations des niveaux organisationnels inférieurs ne sont plus assurées. Lorsqu'il s'agit d'une fermeture temporaire, la date est remise à nulle lorsque le niveau organisationnel est ouvert de nouveau.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.typeFermeture",
        "path" : "OrganisationInterne.typeFermeture",
        "short" : "Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture. Le type de fermeture s'applique au niveau organisationnel sur lequel la fermeture est déclarée, ainsi que tous les niveaux inférieurs rattachés à ce niveau organisationnel. Par exemple, si un service est fermé temporairement, toutes les unités fonctionnelles qui lui sont rattachées sont également fermées temporairement.",
        "definition" : "Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture. Le type de fermeture s'applique au niveau organisationnel sur lequel la fermeture est déclarée, ainsi que tous les niveaux inférieurs rattachés à ce niveau organisationnel. Par exemple, si un service est fermé temporairement, toutes les unités fonctionnelles qui lui sont rattachées sont également fermées temporairement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture?vs"
        }
      },
      {
        "id" : "OrganisationInterne.datePrevisionnelleReouverture",
        "path" : "OrganisationInterne.datePrevisionnelleReouverture",
        "short" : "La date de réouverture correspond à la date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée. Elle s'applique lors d'une période de fermeture temporaire.",
        "definition" : "La date de réouverture correspond à la date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée. Elle s'applique lors d'une période de fermeture temporaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.EntiteGeographique",
        "path" : "OrganisationInterne.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.OrganisationInterne",
        "path" : "OrganisationInterne.OrganisationInterne",
        "short" : "Lien vers la classe OrganisationInterne",
        "definition" : "Lien vers la classe OrganisationInterne",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.OffreOperationnelle",
        "path" : "OrganisationInterne.OffreOperationnelle",
        "short" : "Lien vers la classe OffreOperationnelle",
        "definition" : "Lien vers la classe OffreOperationnelle",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.Agenda",
        "path" : "OrganisationInterne.Agenda",
        "short" : "Lien vers la classe Agenda",
        "definition" : "Lien vers la classe Agenda",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Agenda"
          }
        ]
      },
      {
        "id" : "OrganisationInterne.RendezVous",
        "path" : "OrganisationInterne.RendezVous",
        "short" : "Lien vers la classe RendezVous",
        "definition" : "Lien vers la classe RendezVous",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/RendezVous"
          }
        ]
      }
    ]
  }
}

```
