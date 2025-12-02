# Convention - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Convention**

## Logical Model: Convention 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Convention | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:Convention |

 
Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes. 

**Utilisations:**

* Utiliser ce Modèle logique: [EntiteGeographique](StructureDefinition-EntiteGeographique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Convention)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Convention.csv), [Excel](StructureDefinition-Convention.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Convention",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Convention",
  "version" : "0.1.0",
  "name" : "Convention",
  "title" : "Convention",
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
  "description" : "Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Convention",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Convention",
        "path" : "Convention",
        "short" : "Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes.",
        "definition" : "Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes."
      },
      {
        "id" : "Convention.numeroConvention",
        "path" : "Convention.numeroConvention",
        "short" : "Numéro de la convention.",
        "definition" : "Numéro de la convention.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Convention.titre",
        "path" : "Convention.titre",
        "short" : "Titre de la convention, par exemple \"Convention constitutive du groupement hospitalier de territoire des Bouches du Rhône\".",
        "definition" : "Titre de la convention, par exemple \"Convention constitutive du groupement hospitalier de territoire des Bouches du Rhône\".",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Convention.dateDebutConvention",
        "path" : "Convention.dateDebutConvention",
        "short" : "Date de début de la convention.",
        "definition" : "Date de début de la convention.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Convention.dateFinConvention",
        "path" : "Convention.dateFinConvention",
        "short" : "Date de fin de la convention.",
        "definition" : "Date de fin de la convention.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Convention.EntiteGeographique",
        "path" : "Convention.EntiteGeographique",
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
