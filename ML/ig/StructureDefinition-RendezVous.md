# RendezVous - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RendezVous**

## Logical Model: RendezVous 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/RendezVous | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:RendezVous |

 
Rencontre prévue entre au moins deux personnes à une heure et dans un lieu déterminé. Par exemple, une entrevue entre un patient et un professionnel qui peut nécessiter la réservation d’une salle de consultation à une heure définie. Un rendez-vous peut occuper un ou plusieurs créneaux. 

**Usages:**

* Use this Logical Model: [Contact](StructureDefinition-Contact.md), [Creneau](StructureDefinition-Creneau.md), [EntiteGeographique](StructureDefinition-EntiteGeographique.md), [EquipementSpecifique](StructureDefinition-EquipementSpecifique.md)...Show 4 more,[Lieu](StructureDefinition-Lieu.md),[OrganisationInterne](StructureDefinition-OrganisationInterne.md),[PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md)and[Professionnel](StructureDefinition-Professionnel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/RendezVous)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RendezVous.csv), [Excel](StructureDefinition-RendezVous.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RendezVous",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/RendezVous",
  "version" : "0.1.0",
  "name" : "RendezVous",
  "title" : "RendezVous",
  "status" : "draft",
  "date" : "2025-11-03T18:48:51+00:00",
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
  "description" : "Rencontre prévue entre au moins deux personnes à une heure et dans un lieu déterminé. Par exemple, une entrevue entre un patient et un professionnel qui peut nécessiter la réservation d’une salle de consultation à une heure définie. Un rendez-vous peut occuper un ou plusieurs créneaux.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/RendezVous",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "RendezVous",
        "path" : "RendezVous",
        "short" : "Rencontre prévue entre au moins deux personnes à une heure et dans un lieu déterminé. Par exemple, une entrevue entre un patient et un professionnel qui peut nécessiter la réservation d’une salle de consultation à une heure définie. Un rendez-vous peut occuper un ou plusieurs créneaux.",
        "definition" : "Rencontre prévue entre au moins deux personnes à une heure et dans un lieu déterminé. Par exemple, une entrevue entre un patient et un professionnel qui peut nécessiter la réservation d’une salle de consultation à une heure définie. Un rendez-vous peut occuper un ou plusieurs créneaux."
      },
      {
        "id" : "RendezVous.idRdv",
        "path" : "RendezVous.idRdv",
        "short" : "Identifiant du rendez-vous",
        "definition" : "Identifiant du rendez-vous",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "RendezVous.typeRdv",
        "path" : "RendezVous.typeRdv",
        "short" : "Type de rendez-vous.",
        "definition" : "Type de rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "RendezVous.datePriseRdv",
        "path" : "RendezVous.datePriseRdv",
        "short" : "Date de la prise de rendez-vous.",
        "definition" : "Date de la prise de rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "RendezVous.dateDebutRdv",
        "path" : "RendezVous.dateDebutRdv",
        "short" : "Date de début du rendez-vous.",
        "definition" : "Date de début du rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "RendezVous.dateFinRdv",
        "path" : "RendezVous.dateFinRdv",
        "short" : "Date de fin du rendez-vous.",
        "definition" : "Date de fin du rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "RendezVous.dateAnnulationRdv",
        "path" : "RendezVous.dateAnnulationRdv",
        "short" : "Date d'annulation du rendez-vous.",
        "definition" : "Date d'annulation du rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "RendezVous.pieceJointe",
        "path" : "RendezVous.pieceJointe",
        "short" : "Informations supplémentaires à l'appui du rendez-vous fournies lors de la prise de rendez-vous.Cet élément peut être utilisé pour référencer un document représentant une prescription ou n'importe quelle autre pièce jointe.",
        "definition" : "Informations supplémentaires à l'appui du rendez-vous fournies lors de la prise de rendez-vous.Cet élément peut être utilisé pour référencer un document représentant une prescription ou n'importe quelle autre pièce jointe.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "base64Binary"
          }
        ]
      },
      {
        "id" : "RendezVous.priorite",
        "path" : "RendezVous.priorite",
        "short" : "Degré d'urgence du rendez-vous.",
        "definition" : "Degré d'urgence du rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "RendezVous.titreRdv",
        "path" : "RendezVous.titreRdv",
        "short" : "Titre du rendez-vous.",
        "definition" : "Titre du rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "RendezVous.statutRdv",
        "path" : "RendezVous.statutRdv",
        "short" : "Statut du rendez-vous (en attente, accepté, refusé).",
        "definition" : "Statut du rendez-vous (en attente, accepté, refusé).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "RendezVous.descriptionRdv",
        "path" : "RendezVous.descriptionRdv",
        "short" : "Description du rendez-vous.",
        "definition" : "Description du rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "RendezVous.motifRdv",
        "path" : "RendezVous.motifRdv",
        "short" : "Motif pour lequel le rendez–vous est pris.",
        "definition" : "Motif pour lequel le rendez–vous est pris.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "RendezVous.commentaire",
        "path" : "RendezVous.commentaire",
        "short" : "Détails sur le rendez-vous.",
        "definition" : "Détails sur le rendez-vous.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "RendezVous.PersonnePriseCharge",
        "path" : "RendezVous.PersonnePriseCharge",
        "short" : "Lien vers la classe PersonnePriseCharge",
        "definition" : "Lien vers la classe PersonnePriseCharge",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge"
          }
        ]
      },
      {
        "id" : "RendezVous.Creneau",
        "path" : "RendezVous.Creneau",
        "short" : "Lien vers la classe Creneau",
        "definition" : "Lien vers la classe Creneau",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Creneau"
          }
        ]
      },
      {
        "id" : "RendezVous.EntiteGeographique",
        "path" : "RendezVous.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      },
      {
        "id" : "RendezVous.Professionnel",
        "path" : "RendezVous.Professionnel",
        "short" : "Lien vers la classe Professionnel",
        "definition" : "Lien vers la classe Professionnel",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel"
          }
        ]
      },
      {
        "id" : "RendezVous.EquipementSpecifique",
        "path" : "RendezVous.EquipementSpecifique",
        "short" : "Lien vers la classe EquipementSpecifique",
        "definition" : "Lien vers la classe EquipementSpecifique",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementSpecifique"
          }
        ]
      },
      {
        "id" : "RendezVous.OrganisationInterne",
        "path" : "RendezVous.OrganisationInterne",
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
        "id" : "RendezVous.Contact",
        "path" : "RendezVous.Contact",
        "short" : "Lien vers la classe Contact",
        "definition" : "Lien vers la classe Contact",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact"
          }
        ]
      },
      {
        "id" : "RendezVous.Lieu",
        "path" : "RendezVous.Lieu",
        "short" : "Lien vers la classe Lieu",
        "definition" : "Lien vers la classe Lieu",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu"
          }
        ]
      }
    ]
  }
}

```
