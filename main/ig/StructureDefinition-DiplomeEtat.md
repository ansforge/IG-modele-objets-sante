# DiplomeEtat - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiplomeEtat**

## Logical Model: DiplomeEtat 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEtat | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:DiplomeEtat |

 
Un diplôme d’État, abrégé DE, est un diplôme français qui est souvent requis pour l’exercice de professions règlementées, notamment dans le champ de la santé.L’Etat intervient dans la définition du programme et la pédagogie du cursus diplômant.Cette classe comprend également des diplômes anciens existant avant la création du diplôme d’Etat de la profession et qui étaient requis, à cette époque, pour l’exercice de la profession.Par exemple, le diplôme d’Etat de docteur en chirurgie dentaire est requis depuis 1972 pour exercer la profession de chirurgien-dentiste. Avant 1972, le diplôme d’Etat de chirurgien-dentiste était requis. Ces deux diplômes sont donc présents dans la nomenclature des diplômes d’Etat français.Dans le cadre du modèle, un Diplôme d’Etat est considéré comme un type de diplôme. La classe DiplomeEtat est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DiplomeEtat)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiplomeEtat.csv), [Excel](StructureDefinition-DiplomeEtat.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiplomeEtat",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEtat",
  "version" : "0.1.0",
  "name" : "DiplomeEtat",
  "title" : "DiplomeEtat",
  "status" : "draft",
  "date" : "2025-10-13T08:07:44+00:00",
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
  "description" : "Un diplôme d'État, abrégé DE, est un diplôme français qui est souvent requis pour l'exercice de professions règlementées, notamment dans le champ de la santé.L'Etat intervient dans la définition du programme et la pédagogie du cursus diplômant.Cette classe comprend également des diplômes anciens existant avant la création du diplôme d'Etat de la profession et qui étaient requis, à cette époque, pour l'exercice de la profession.Par exemple, le diplôme d'Etat de docteur en chirurgie dentaire est requis depuis 1972 pour exercer la profession de chirurgien-dentiste. Avant 1972, le diplôme d'Etat de chirurgien-dentiste était requis. Ces deux diplômes sont donc présents dans la nomenclature des diplômes d'Etat français.Dans le cadre du modèle, un Diplôme d'Etat est considéré comme un type de diplôme. La classe DiplomeEtat est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEtat",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DiplomeEtat",
        "path" : "DiplomeEtat",
        "short" : "Un diplôme d'État, abrégé DE, est un diplôme français qui est souvent requis pour l'exercice de professions règlementées, notamment dans le champ de la santé.L'Etat intervient dans la définition du programme et la pédagogie du cursus diplômant.Cette classe comprend également des diplômes anciens existant avant la création du diplôme d'Etat de la profession et qui étaient requis, à cette époque, pour l'exercice de la profession.Par exemple, le diplôme d'Etat de docteur en chirurgie dentaire est requis depuis 1972 pour exercer la profession de chirurgien-dentiste. Avant 1972, le diplôme d'Etat de chirurgien-dentiste était requis. Ces deux diplômes sont donc présents dans la nomenclature des diplômes d'Etat français.Dans le cadre du modèle, un Diplôme d'Etat est considéré comme un type de diplôme. La classe DiplomeEtat est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Un diplôme d'État, abrégé DE, est un diplôme français qui est souvent requis pour l'exercice de professions règlementées, notamment dans le champ de la santé.L'Etat intervient dans la définition du programme et la pédagogie du cursus diplômant.Cette classe comprend également des diplômes anciens existant avant la création du diplôme d'Etat de la profession et qui étaient requis, à cette époque, pour l'exercice de la profession.Par exemple, le diplôme d'Etat de docteur en chirurgie dentaire est requis depuis 1972 pour exercer la profession de chirurgien-dentiste. Avant 1972, le diplôme d'Etat de chirurgien-dentiste était requis. Ces deux diplômes sont donc présents dans la nomenclature des diplômes d'Etat français.Dans le cadre du modèle, un Diplôme d'Etat est considéré comme un type de diplôme. La classe DiplomeEtat est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DiplomeEtat.diplomeEtat",
        "path" : "DiplomeEtat.diplomeEtat",
        "short" : "Diplôme d'Etat français.",
        "definition" : "Diplôme d'Etat français.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R48-DiplomeEtatFrancais/FHIR/TRE-R48-DiplomeEtatFrancais?vs"
        }
      }
    ]
  }
}

```
