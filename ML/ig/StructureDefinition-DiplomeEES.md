# DiplomeEES - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiplomeEES**

## Logical Model: DiplomeEES 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEES | *Version*:0.1.0 |
| Draft as of 2025-11-05 | *Computable Name*:DiplomeEES |

 
Diplôme européen d’études spécialisées, d’un pays de l’espace économique européen (EEE), ouvrant l’accès à une spécialité, pour un professionnel s’inscrivant à l’ordre à compter de la date d’entrée du pays dans l’EEE (Directive européenne 2005-36 modifiée). L’annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes de spécialité au sein de l’EEE.Dans le cadre du modèle, un diplôme EES est un type de diplôme. La classe DiplomeEES est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DiplomeEES)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiplomeEES.csv), [Excel](StructureDefinition-DiplomeEES.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiplomeEES",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEES",
  "version" : "0.1.0",
  "name" : "DiplomeEES",
  "title" : "DiplomeEES",
  "status" : "draft",
  "date" : "2025-11-05T10:41:12+00:00",
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
  "description" : "Diplôme européen d'études spécialisées, d'un pays de l'espace économique européen (EEE), ouvrant l'accès à une spécialité, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes de spécialité au sein de l'EEE.Dans le cadre du modèle, un diplôme EES est un type de diplôme. La classe DiplomeEES est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEES",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DiplomeEES",
        "path" : "DiplomeEES",
        "short" : "Diplôme européen d'études spécialisées, d'un pays de l'espace économique européen (EEE), ouvrant l'accès à une spécialité, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes de spécialité au sein de l'EEE.Dans le cadre du modèle, un diplôme EES est un type de diplôme. La classe DiplomeEES est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Diplôme européen d'études spécialisées, d'un pays de l'espace économique européen (EEE), ouvrant l'accès à une spécialité, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes de spécialité au sein de l'EEE.Dans le cadre du modèle, un diplôme EES est un type de diplôme. La classe DiplomeEES est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DiplomeEES.diplomeEES",
        "path" : "DiplomeEES.diplomeEES",
        "short" : "Diplôme européen d'études spécialisées.",
        "definition" : "Diplôme européen d'études spécialisées.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R57-DiplomeEuropeenEtudeSpecialisee/FHIR/TRE-R57-DiplomeEuropeenEtudeSpecialisee?vs"
        }
      }
    ]
  }
}

```
