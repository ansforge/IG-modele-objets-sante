# StructureInterne - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StructureInterne**

## Logical Model: StructureInterne 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/StructureInterne | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:StructureInterne |

 
Une structure interne peut être composée d’une ou plusieurs unités médicales fonctionnelles.L’appellation des structures internes des pôles est aussi laissée à la libre appréciation des établissements : il peut s’agir de services, d’unités, de centres, d’instituts, de départements, ou de toute autre appellation. Lorsque les services demeurent, les chefs de service sont placés sous l’autorité fonctionnelle du chef de pôle (cf. “La loi HPST à l’hôpital, les clés pour comprendre” - Ministère de la Santé - ANAP).Synonyme : Service, unité, centre, institut, département, etc. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/StructureInterne)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-StructureInterne.csv), [Excel](StructureDefinition-StructureInterne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "StructureInterne",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/StructureInterne",
  "version" : "0.1.0",
  "name" : "StructureInterne",
  "title" : "StructureInterne",
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
  "description" : "Une structure interne peut être composée d'une ou plusieurs unités médicales fonctionnelles.L’appellation des structures internes des pôles est aussi laissée à la libre appréciation des établissements : il peut s’agir de services, d’unités, de centres, d’instituts, de départements, ou de toute autre appellation. Lorsque les services demeurent, les chefs de service sont placés sous l’autorité fonctionnelle du chef de pôle (cf. \"La loi HPST à l'hôpital, les clés pour comprendre\" - Ministère de la Santé - ANAP).Synonyme : Service, unité, centre, institut, département, etc.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/StructureInterne",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "StructureInterne",
        "path" : "StructureInterne",
        "short" : "Une structure interne peut être composée d'une ou plusieurs unités médicales fonctionnelles.L’appellation des structures internes des pôles est aussi laissée à la libre appréciation des établissements : il peut s’agir de services, d’unités, de centres, d’instituts, de départements, ou de toute autre appellation. Lorsque les services demeurent, les chefs de service sont placés sous l’autorité fonctionnelle du chef de pôle (cf. \"La loi HPST à l'hôpital, les clés pour comprendre\" - Ministère de la Santé - ANAP).Synonyme : Service, unité, centre, institut, département, etc.",
        "definition" : "Une structure interne peut être composée d'une ou plusieurs unités médicales fonctionnelles.L’appellation des structures internes des pôles est aussi laissée à la libre appréciation des établissements : il peut s’agir de services, d’unités, de centres, d’instituts, de départements, ou de toute autre appellation. Lorsque les services demeurent, les chefs de service sont placés sous l’autorité fonctionnelle du chef de pôle (cf. \"La loi HPST à l'hôpital, les clés pour comprendre\" - Ministère de la Santé - ANAP).Synonyme : Service, unité, centre, institut, département, etc."
      }
    ]
  }
}

```
