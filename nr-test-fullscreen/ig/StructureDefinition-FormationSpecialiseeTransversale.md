# FormationSpecialiseeTransversale - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FormationSpecialiseeTransversale**

## Logical Model: FormationSpecialiseeTransversale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/FormationSpecialiseeTransversale | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:FormationSpecialiseeTransversale |

 
La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.Dans le cadre du modèle, une formation spécialisée transversale est considérée comme un type de diplôme. La classe FormationSpecialiseeTransversale est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/FormationSpecialiseeTransversale)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FormationSpecialiseeTransversale.csv), [Excel](StructureDefinition-FormationSpecialiseeTransversale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FormationSpecialiseeTransversale",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/FormationSpecialiseeTransversale",
  "version" : "0.1.0",
  "name" : "FormationSpecialiseeTransversale",
  "title" : "FormationSpecialiseeTransversale",
  "status" : "draft",
  "date" : "2025-11-19T16:18:55+00:00",
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
  "description" : "La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.Dans le cadre du modèle, une formation spécialisée transversale est considérée comme un type de diplôme. La classe FormationSpecialiseeTransversale est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/FormationSpecialiseeTransversale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "FormationSpecialiseeTransversale",
        "path" : "FormationSpecialiseeTransversale",
        "short" : "La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.Dans le cadre du modèle, une formation spécialisée transversale est considérée comme un type de diplôme. La classe FormationSpecialiseeTransversale est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.Dans le cadre du modèle, une formation spécialisée transversale est considérée comme un type de diplôme. La classe FormationSpecialiseeTransversale est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "FormationSpecialiseeTransversale.formationSpecialiseeTransversale",
        "path" : "FormationSpecialiseeTransversale.formationSpecialiseeTransversale",
        "short" : "La Formation spécialisée transversale (FST) vient compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.",
        "definition" : "La Formation spécialisée transversale (FST) vient compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R348-FormationSpecialiseeTransversale/FHIR/TRE-R348-FormationSpecialiseeTransversale?vs"
        }
      }
    ]
  }
}

```
