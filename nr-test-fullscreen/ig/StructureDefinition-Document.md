# Document - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document**

## Logical Model: Document 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:Document |

 
Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative. 

**Usages:**

* Use this Logical Model: [Demande](StructureDefinition-Demande.md), [DossierPersonnePriseCharge](StructureDefinition-DossierPersonnePriseCharge.md) and [NoteLiaison](StructureDefinition-NoteLiaison.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Document)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Document.csv), [Excel](StructureDefinition-Document.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Document",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document",
  "version" : "0.1.0",
  "name" : "Document",
  "title" : "Document",
  "status" : "draft",
  "date" : "2025-11-19T09:20:07+00:00",
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
  "description" : "Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Document",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Document",
        "path" : "Document",
        "short" : "Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative.",
        "definition" : "Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative."
      },
      {
        "id" : "Document.typeDocument",
        "path" : "Document.typeDocument",
        "short" : "Type de document.",
        "definition" : "Type de document.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "Document.Demande",
        "path" : "Document.Demande",
        "short" : "Lien vers la classe Demande",
        "definition" : "Lien vers la classe Demande",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Demande"
          }
        ]
      },
      {
        "id" : "Document.DossierPersonnePriseCharge",
        "path" : "Document.DossierPersonnePriseCharge",
        "short" : "Lien vers la classe DossierPersonnePriseCharge",
        "definition" : "Lien vers la classe DossierPersonnePriseCharge",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DossierPersonnePriseCharge"
          }
        ]
      },
      {
        "id" : "Document.NoteLiaison",
        "path" : "Document.NoteLiaison",
        "short" : "Lien vers la classe NoteLiaison",
        "definition" : "Lien vers la classe NoteLiaison",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/NoteLiaison"
          }
        ]
      }
    ]
  }
}

```
