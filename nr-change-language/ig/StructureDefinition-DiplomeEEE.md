# DiplomeEEE - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiplomeEEE**

## Logical Model: DiplomeEEE 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEEE | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:DiplomeEEE |

 
Diplôme d’un pays de l’espace économique européen (EEE), requis pour l’accès à la profession en France, pour un professionnel s’inscrivant à l’ordre à compter de la date d’entrée du pays dans l’EEE (Directive européenne 2005-36 modifiée). L’annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes au sein de l’EEE.Dans le cadre du modèle, un diplôme EEE est un type de diplôme. La classe DiplomeEEE est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Utilisations:**

* Ce Modèle logique nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DiplomeEEE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiplomeEEE.csv), [Excel](StructureDefinition-DiplomeEEE.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiplomeEEE",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEEE",
  "version" : "0.1.0",
  "name" : "DiplomeEEE",
  "title" : "DiplomeEEE",
  "status" : "draft",
  "date" : "2025-12-03T08:52:03+00:00",
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
  "description" : "Diplôme d'un pays de l'espace économique européen (EEE), requis pour l'accès à la profession en France, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes au sein de l'EEE.Dans le cadre du modèle, un diplôme EEE est un type de diplôme. La classe DiplomeEEE est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEEE",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DiplomeEEE",
        "path" : "DiplomeEEE",
        "short" : "Diplôme d'un pays de l'espace économique européen (EEE), requis pour l'accès à la profession en France, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes au sein de l'EEE.Dans le cadre du modèle, un diplôme EEE est un type de diplôme. La classe DiplomeEEE est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Diplôme d'un pays de l'espace économique européen (EEE), requis pour l'accès à la profession en France, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes au sein de l'EEE.Dans le cadre du modèle, un diplôme EEE est un type de diplôme. La classe DiplomeEEE est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DiplomeEEE.diplomeEEE",
        "path" : "DiplomeEEE.diplomeEEE",
        "short" : "Diplôme d'un pays de l'espace économique européen.",
        "definition" : "Diplôme d'un pays de l'espace économique européen.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R53-DiplomePaysEEE/FHIR/TRE-R53-DiplomePaysEEE?vs"
        }
      }
    ]
  }
}

```
