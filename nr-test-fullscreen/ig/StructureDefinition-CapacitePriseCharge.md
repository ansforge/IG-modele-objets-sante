# CapacitePriseCharge - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapacitePriseCharge**

## Logical Model: CapacitePriseCharge 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapacitePriseCharge | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:CapacitePriseCharge |

 
La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l’offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise. 

**Usages:**

* Use this Logical Model: [LieuRealisationOffre](StructureDefinition-LieuRealisationOffre.md) and [MesureCapacite](StructureDefinition-MesureCapacite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CapacitePriseCharge)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CapacitePriseCharge.csv), [Excel](StructureDefinition-CapacitePriseCharge.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CapacitePriseCharge",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapacitePriseCharge",
  "version" : "0.1.0",
  "name" : "CapacitePriseCharge",
  "title" : "CapacitePriseCharge",
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
  "description" : "La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapacitePriseCharge",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CapacitePriseCharge",
        "path" : "CapacitePriseCharge",
        "short" : "La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise.",
        "definition" : "La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise."
      },
      {
        "id" : "CapacitePriseCharge.affectationTemporaire",
        "path" : "CapacitePriseCharge.affectationTemporaire",
        "short" : "L’affectation temporaire permet de réserver tout ou partie des lits d’une zone d’hébergement pour des patients selon qu’ils soient –ou non- concernés par une pathologie (Covid+, Covid-, …) ou un évènement (catastrophe naturelle, attentat, …).",
        "definition" : "L’affectation temporaire permet de réserver tout ou partie des lits d’une zone d’hébergement pour des patients selon qu’ils soient –ou non- concernés par une pathologie (Covid+, Covid-, …) ou un évènement (catastrophe naturelle, attentat, …).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite?vs"
        }
      },
      {
        "id" : "CapacitePriseCharge.LieuRealisationOffre",
        "path" : "CapacitePriseCharge.LieuRealisationOffre",
        "short" : "Lien vers la classe LieuRealisationOffre",
        "definition" : "Lien vers la classe LieuRealisationOffre",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LieuRealisationOffre"
          }
        ]
      },
      {
        "id" : "CapacitePriseCharge.MesureCapacite",
        "path" : "CapacitePriseCharge.MesureCapacite",
        "short" : "Lien vers la classe MesureCapacite",
        "definition" : "Lien vers la classe MesureCapacite",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureCapacite"
          }
        ]
      }
    ]
  }
}

```
