# CapaciteSavoirfaire - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapaciteSavoirfaire**

## Logical Model: CapaciteSavoirfaire 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteSavoirfaire | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:CapaciteSavoirfaire |

 
La capacité, en tant que savoir-faire, représente la reconnaissance par l’ordre d’un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Utilisations:**

* Ce Modèle logique nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CapaciteSavoirfaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CapaciteSavoirfaire.csv), [Excel](StructureDefinition-CapaciteSavoirfaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CapaciteSavoirfaire",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteSavoirfaire",
  "version" : "0.1.0",
  "name" : "CapaciteSavoirfaire",
  "title" : "CapaciteSavoirfaire",
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
  "description" : "La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteSavoirfaire",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CapaciteSavoirfaire",
        "path" : "CapaciteSavoirfaire",
        "short" : "La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "CapaciteSavoirfaire.capaciteSavoirFaire",
        "path" : "CapaciteSavoirfaire.capaciteSavoirFaire",
        "short" : "Savoir-faire de type capacité de médecine (diplôme permettant aux docteurs en médecine d'acquérir des compétences supplémentaires).",
        "definition" : "Savoir-faire de type capacité de médecine (diplôme permettant aux docteurs en médecine d'acquérir des compétences supplémentaires).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/capaciteSavoirFaire-vs"
        }
      }
    ]
  }
}

```
