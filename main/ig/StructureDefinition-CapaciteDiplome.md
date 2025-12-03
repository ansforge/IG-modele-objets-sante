# CapaciteDiplome - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapaciteDiplome**

## Logical Model: CapaciteDiplome 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteDiplome | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:CapaciteDiplome |

 
En France, la capacité de médecine est un diplôme (2 ans d’études) réservé aux docteurs en médecine (généralistes ou spécialistes), leur conférant certaines compétences supplémentaires dans leur exercice ou un champ d’exercice plus large (réf. décret du 29 avril 1988). Les capacités ne confèrent pas la qualification aux spécialistes auprès de l’Ordre des médecins, mais celui-ci les reconnait comme des titres auxquels peuvent prétendre les médecins (par exemple sur leur plaque) pour justifier de compétences supplémentaires auprès de leurs patients.Une capacité est un type de diplôme. La classe CapaciteDiplome est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Utilisations:**

* Ce Modèle logique nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CapaciteDiplome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CapaciteDiplome.csv), [Excel](StructureDefinition-CapaciteDiplome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CapaciteDiplome",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteDiplome",
  "version" : "0.1.0",
  "name" : "CapaciteDiplome",
  "title" : "CapaciteDiplome",
  "status" : "draft",
  "date" : "2025-12-03T08:56:12+00:00",
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
  "description" : "En France, la capacité de médecine est un diplôme (2 ans d'études) réservé aux docteurs en médecine (généralistes ou spécialistes), leur conférant certaines compétences supplémentaires dans leur exercice ou un champ d'exercice plus large (réf. décret du 29 avril 1988). Les capacités ne confèrent pas la qualification aux spécialistes auprès de l'Ordre des médecins, mais celui-ci les reconnait comme des titres auxquels peuvent prétendre les médecins (par exemple sur leur plaque) pour justifier de compétences supplémentaires auprès de leurs patients.Une capacité est un type de diplôme. La classe CapaciteDiplome est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteDiplome",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CapaciteDiplome",
        "path" : "CapaciteDiplome",
        "short" : "En France, la capacité de médecine est un diplôme (2 ans d'études) réservé aux docteurs en médecine (généralistes ou spécialistes), leur conférant certaines compétences supplémentaires dans leur exercice ou un champ d'exercice plus large (réf. décret du 29 avril 1988). Les capacités ne confèrent pas la qualification aux spécialistes auprès de l'Ordre des médecins, mais celui-ci les reconnait comme des titres auxquels peuvent prétendre les médecins (par exemple sur leur plaque) pour justifier de compétences supplémentaires auprès de leurs patients.Une capacité est un type de diplôme. La classe CapaciteDiplome est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "En France, la capacité de médecine est un diplôme (2 ans d'études) réservé aux docteurs en médecine (généralistes ou spécialistes), leur conférant certaines compétences supplémentaires dans leur exercice ou un champ d'exercice plus large (réf. décret du 29 avril 1988). Les capacités ne confèrent pas la qualification aux spécialistes auprès de l'Ordre des médecins, mais celui-ci les reconnait comme des titres auxquels peuvent prétendre les médecins (par exemple sur leur plaque) pour justifier de compétences supplémentaires auprès de leurs patients.Une capacité est un type de diplôme. La classe CapaciteDiplome est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "CapaciteDiplome.capaciteDiplome",
        "path" : "CapaciteDiplome.capaciteDiplome",
        "short" : "Diplôme de capacité de médecine.",
        "definition" : "Diplôme de capacité de médecine.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R52-CapaciteDiplome/FHIR/TRE-R52-CapaciteDiplome?vs"
        }
      }
    ]
  }
}

```
