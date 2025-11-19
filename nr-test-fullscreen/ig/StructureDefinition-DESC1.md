# DESC1 - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DESC1**

## Logical Model: DESC1 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESC1 | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:DESC1 |

 
Les DESC de groupe I ou non qualifiants (2 ans d’études) offrent une compétence supplémentaire ou un champ d’exercice plus large que celui ouvert par le DES, mais ne changent pas la qualification officielle de leurs titulaires auprès de l’Ordre des Médecins. Ils peuvent aussi apporter à des spécialistes des connaissances générales intéressant plusieurs spécialités (allergologie, cancérologie, etc.). Certains de ces DESC sont redondants avec des capacités de médecine, obtenues par la formation continue des médecins déjà diplômés, par exemple la capacité de médecine d’urgence. Il est cependant probable que les capacités disparaissent au profit des DESC équivalents dans un avenir proche.Dans le cadre du modèle, un DESC de groupe I est un type de diplôme. La classe DESC1 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DESC1)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DESC1.csv), [Excel](StructureDefinition-DESC1.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DESC1",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESC1",
  "version" : "0.1.0",
  "name" : "DESC1",
  "title" : "DESC1",
  "status" : "draft",
  "date" : "2025-11-19T10:11:08+00:00",
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
  "description" : "Les DESC de groupe I ou non qualifiants (2 ans d'études) offrent une compétence supplémentaire ou un champ d'exercice plus large que celui ouvert par le DES, mais ne changent pas la qualification officielle de leurs titulaires auprès de l'Ordre des Médecins. Ils peuvent aussi apporter à des spécialistes des connaissances générales intéressant plusieurs spécialités (allergologie, cancérologie, etc.). Certains de ces DESC sont redondants avec des capacités de médecine, obtenues par la formation continue des médecins déjà diplômés, par exemple la capacité de médecine d'urgence. Il est cependant probable que les capacités disparaissent au profit des DESC équivalents dans un avenir proche.Dans le cadre du modèle, un DESC de groupe I est un type de diplôme. La classe DESC1 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESC1",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DESC1",
        "path" : "DESC1",
        "short" : "Les DESC de groupe I ou non qualifiants (2 ans d'études) offrent une compétence supplémentaire ou un champ d'exercice plus large que celui ouvert par le DES, mais ne changent pas la qualification officielle de leurs titulaires auprès de l'Ordre des Médecins. Ils peuvent aussi apporter à des spécialistes des connaissances générales intéressant plusieurs spécialités (allergologie, cancérologie, etc.). Certains de ces DESC sont redondants avec des capacités de médecine, obtenues par la formation continue des médecins déjà diplômés, par exemple la capacité de médecine d'urgence. Il est cependant probable que les capacités disparaissent au profit des DESC équivalents dans un avenir proche.Dans le cadre du modèle, un DESC de groupe I est un type de diplôme. La classe DESC1 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Les DESC de groupe I ou non qualifiants (2 ans d'études) offrent une compétence supplémentaire ou un champ d'exercice plus large que celui ouvert par le DES, mais ne changent pas la qualification officielle de leurs titulaires auprès de l'Ordre des Médecins. Ils peuvent aussi apporter à des spécialistes des connaissances générales intéressant plusieurs spécialités (allergologie, cancérologie, etc.). Certains de ces DESC sont redondants avec des capacités de médecine, obtenues par la formation continue des médecins déjà diplômés, par exemple la capacité de médecine d'urgence. Il est cependant probable que les capacités disparaissent au profit des DESC équivalents dans un avenir proche.Dans le cadre du modèle, un DESC de groupe I est un type de diplôme. La classe DESC1 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DESC1.DESC1",
        "path" : "DESC1.DESC1",
        "short" : "Diplôme d'études spécialisées complémentaires non qualifiants (DESC I).",
        "definition" : "Diplôme d'études spécialisées complémentaires non qualifiants (DESC I).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R50-DESCGroupe1Diplome/FHIR/TRE-R50-DESCGroupe1Diplome?vs"
        }
      }
    ]
  }
}

```
