# EquipementSpecifique - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EquipementSpecifique**

## Logical Model: EquipementSpecifique 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementSpecifique | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:EquipementSpecifique |

 
Un équipement spécifique est une ressource matérielle discriminante pour la réalisation d’une prestation et sert à faciliter l’orientation du patient. Un équipement spécifique est une ressource propre de la structure ou mise à disposition dans le cadre d’une convention à la condition qu’elle soit utilisée sur site.Les équipements décrits dans cette classe concernent des actes spécifiques ou non. Seules les ressources discriminantes sont retenues, c’est-à-dire que les seuls équipements décrits concernent les équipements qui ne sont pas implicites pour un acte donné. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/EquipementSpecifique)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EquipementSpecifique.csv), [Excel](StructureDefinition-EquipementSpecifique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EquipementSpecifique",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementSpecifique",
  "version" : "0.1.0",
  "name" : "EquipementSpecifique",
  "title" : "EquipementSpecifique",
  "status" : "draft",
  "date" : "2025-10-30T14:07:11+00:00",
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
  "description" : "Un équipement spécifique est une ressource matérielle discriminante pour la réalisation d'une prestation et sert à faciliter l’orientation du patient. Un équipement spécifique est une ressource propre de la structure ou mise à disposition dans le cadre d'une convention à la condition qu’elle soit utilisée sur site.Les équipements décrits dans cette classe concernent des actes spécifiques ou non. Seules les ressources discriminantes sont retenues, c’est-à-dire que les seuls équipements décrits concernent les équipements qui ne sont pas implicites pour un acte donné.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementSpecifique",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EquipementSpecifique",
        "path" : "EquipementSpecifique",
        "short" : "Un équipement spécifique est une ressource matérielle discriminante pour la réalisation d'une prestation et sert à faciliter l’orientation du patient. Un équipement spécifique est une ressource propre de la structure ou mise à disposition dans le cadre d'une convention à la condition qu’elle soit utilisée sur site.Les équipements décrits dans cette classe concernent des actes spécifiques ou non. Seules les ressources discriminantes sont retenues, c’est-à-dire que les seuls équipements décrits concernent les équipements qui ne sont pas implicites pour un acte donné.",
        "definition" : "Un équipement spécifique est une ressource matérielle discriminante pour la réalisation d'une prestation et sert à faciliter l’orientation du patient. Un équipement spécifique est une ressource propre de la structure ou mise à disposition dans le cadre d'une convention à la condition qu’elle soit utilisée sur site.Les équipements décrits dans cette classe concernent des actes spécifiques ou non. Seules les ressources discriminantes sont retenues, c’est-à-dire que les seuls équipements décrits concernent les équipements qui ne sont pas implicites pour un acte donné."
      },
      {
        "id" : "EquipementSpecifique.typeEquipement",
        "path" : "EquipementSpecifique.typeEquipement",
        "short" : "Un type d'équipement correspond à une ressource matérielle médicotechnique spécialisée, qui permet la réalisation d’une prestation. Les équipements ordinaires utilisés pour réaliser les activités proposées par une organisation ne sont pas des équipements spécifiques.Les équipements spécifiques décrits sont des ressources propres de la structure ou mises à disposition dans le cadre d’une convention à la condition qu'elles soient utilisées sur site.",
        "definition" : "Un type d'équipement correspond à une ressource matérielle médicotechnique spécialisée, qui permet la réalisation d’une prestation. Les équipements ordinaires utilisés pour réaliser les activités proposées par une organisation ne sont pas des équipements spécifiques.Les équipements spécifiques décrits sont des ressources propres de la structure ou mises à disposition dans le cadre d’une convention à la condition qu'elles soient utilisées sur site.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R212-Equipement/FHIR/TRE-R212-Equipement?vs"
        }
      },
      {
        "id" : "EquipementSpecifique.nbEquipementEnService",
        "path" : "EquipementSpecifique.nbEquipementEnService",
        "short" : "Nombre d'équipement du même type en état de fonctionnement.",
        "definition" : "Nombre d'équipement du même type en état de fonctionnement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EquipementSpecifique.LimiteCaracteristiqueEquipement",
        "path" : "EquipementSpecifique.LimiteCaracteristiqueEquipement",
        "short" : "Précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation.Par exemple, si une organisation possède 3 tables de bloc opératoire pouvant accueillir des patients d'un poids maximum de 180kg, 190kg et 200Kg, seule la valeur limite de 200Kg sera identifiée dans cette classe.",
        "definition" : "Précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation.Par exemple, si une organisation possède 3 tables de bloc opératoire pouvant accueillir des patients d'un poids maximum de 180kg, 190kg et 200Kg, seule la valeur limite de 200Kg sera identifiée dans cette classe.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EquipementSpecifique.LimiteCaracteristiqueEquipement.typeCaracteristique",
        "path" : "EquipementSpecifique.LimiteCaracteristiqueEquipement.typeCaracteristique",
        "short" : "Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.",
        "definition" : "Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R340-TypeCaracteristiqueEquipement/FHIR/TRE-R340-TypeCaracteristiqueEquipement?vs"
        }
      },
      {
        "id" : "EquipementSpecifique.LimiteCaracteristiqueEquipement.valeurLimite",
        "path" : "EquipementSpecifique.LimiteCaracteristiqueEquipement.valeurLimite",
        "short" : "Correspond à la valeur extrême associée à une caractéristique de l'équipement.",
        "definition" : "Correspond à la valeur extrême associée à une caractéristique de l'équipement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
