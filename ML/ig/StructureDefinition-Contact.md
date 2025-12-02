# Contact - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Contact**

## Logical Model: Contact 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:Contact |

 
Personne ou service qui agit comme point de contact auprès d’une autre personne ou d’un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d’accueil, une source d’information, etc.). 

**Utilisations:**

* Utiliser ce Modèle logique: [Agenda](StructureDefinition-Agenda.md), [EntiteGeographique](StructureDefinition-EntiteGeographique.md), [EntiteJuridique](StructureDefinition-EntiteJuridique.md), [NoteLiaison](StructureDefinition-NoteLiaison.md)...Show 4 more,[OffreOperationnelle](StructureDefinition-OffreOperationnelle.md),[OrganisationInterne](StructureDefinition-OrganisationInterne.md),[PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md)and[RendezVous](StructureDefinition-RendezVous.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Contact)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Contact.csv), [Excel](StructureDefinition-Contact.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Contact",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact",
  "version" : "0.1.0",
  "name" : "Contact",
  "title" : "Contact",
  "status" : "draft",
  "date" : "2025-12-02T14:53:18+00:00",
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
  "description" : "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.).",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Contact",
        "path" : "Contact",
        "short" : "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.).",
        "definition" : "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.)."
      },
      {
        "id" : "Contact.IdContact",
        "path" : "Contact.IdContact",
        "short" : "Identifiant du contact.",
        "definition" : "Identifiant du contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Contact.nom",
        "path" : "Contact.nom",
        "short" : "Un nom de la personne ou du service à contacter.",
        "definition" : "Un nom de la personne ou du service à contacter.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Contact.fonction",
        "path" : "Contact.fonction",
        "short" : "Un titre, une position ou une fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.).",
        "definition" : "Un titre, une position ou une fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Contact.fonctionContact",
        "path" : "Contact.fonctionContact",
        "short" : "Code du titre, de la position ou de la fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.).",
        "definition" : "Code du titre, de la position ou de la fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R251-FonctionContact/FHIR/TRE-R251-FonctionContact?vs"
        }
      },
      {
        "id" : "Contact.natureContact",
        "path" : "Contact.natureContact",
        "short" : "Un service ou un guichet assurant le contact au sein de l'organisation (accueil, admission, etc.).",
        "definition" : "Un service ou un guichet assurant le contact au sein de l'organisation (accueil, admission, etc.).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R287-NatureContact/FHIR/TRE-R287-NatureContact?vs"
        }
      },
      {
        "id" : "Contact.description",
        "path" : "Contact.description",
        "short" : "Une description du contact.",
        "definition" : "Une description du contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Contact.type",
        "path" : "Contact.type",
        "short" : "Type du point de contact, c'est à dire un téléservice, un point de contact physique (une personne), un contact téléphonique, etc.",
        "definition" : "Type du point de contact, c'est à dire un téléservice, un point de contact physique (une personne), un contact téléphonique, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R206-TypeContact/FHIR/TRE-R206-TypeContact?vs"
        }
      },
      {
        "id" : "Contact.personne",
        "path" : "Contact.personne",
        "short" : "Informations détaillées de la personne point de contact.",
        "definition" : "Informations détaillées de la personne point de contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique"
          }
        ]
      },
      {
        "id" : "Contact.role",
        "path" : "Contact.role",
        "short" : "Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc.",
        "definition" : "Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass?vs"
        }
      },
      {
        "id" : "Contact.relation",
        "path" : "Contact.relation",
        "short" : "Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc.",
        "definition" : "Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/relation-vs"
        }
      },
      {
        "id" : "Contact.dateDebut",
        "path" : "Contact.dateDebut",
        "short" : "Date/heure à partir de laquelle le contact est effectif.",
        "definition" : "Date/heure à partir de laquelle le contact est effectif.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Contact.dateFin",
        "path" : "Contact.dateFin",
        "short" : "Date/heure à partir de laquelle le contact n'est plus effectif.",
        "definition" : "Date/heure à partir de laquelle le contact n'est plus effectif.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Contact.niveauConfidentialite",
        "path" : "Contact.niveauConfidentialite",
        "short" : "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact.",
        "definition" : "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite?vs"
        }
      },
      {
        "id" : "Contact.adresse",
        "path" : "Contact.adresse",
        "short" : "Adresse géopostale du point de contact.",
        "definition" : "Adresse géopostale du point de contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "Contact.lieu",
        "path" : "Contact.lieu",
        "short" : "Lieu(x) rattaché(s) au contact.",
        "definition" : "Lieu(x) rattaché(s) au contact.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu"
          }
        ]
      },
      {
        "id" : "Contact.telecommunication",
        "path" : "Contact.telecommunication",
        "short" : "Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.).",
        "definition" : "Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "Contact.NoteLiaison",
        "path" : "Contact.NoteLiaison",
        "short" : "Lien vers la classe NoteLiaison",
        "definition" : "Lien vers la classe NoteLiaison",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/NoteLiaison"
          }
        ]
      },
      {
        "id" : "Contact.Agenda",
        "path" : "Contact.Agenda",
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
        "id" : "Contact.RendezVous",
        "path" : "Contact.RendezVous",
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
