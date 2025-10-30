# DiplomeEtudeSpecialisee - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiplomeEtudeSpecialisee**

## Logical Model: DiplomeEtudeSpecialisee 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEtudeSpecialisee | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:DiplomeEtudeSpecialisee |

 
Le diplôme d’études spécialisées (DES) est délivré aux médecins, pharmaciens ou dentistes ayant effectué une formation de 3e cycle de 3 à 5 ans en fonction des spécialités et soutenu un mémoire. Cette formation correspond à l’internat. Avec les réformes successives adoptées depuis la fin des années 1990 (dont la création de l’internat et du DES de médecine générale), tous les nouveaux docteurs en médecine sont titulaires d’un DES, accompagnant leur diplôme d’État de docteur en médecine (commun à tous les médecins) et précisant leur spécialité.Le DES peut être complété par un diplôme d’études spécialisées complémentaires (DESC). Les DESC se décomposent en deux groupes: ** DESC non qualifiants (groupe 1) d’une durée de 2 ans : 1 an pendant l’internat et 1 an après la fin de l’internat (clinicat);** DESC qualifiants (groupe 2) ou DESCQ d’une durée de 3 ans : 2 ans pendant l’internat et 1 an après la fin de l’internat (clinicat).Dans le cadre du modèle, un DES est un type de diplôme. La classe DiplomeEtudesSpecialisees est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DiplomeEtudeSpecialisee)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiplomeEtudeSpecialisee.csv), [Excel](StructureDefinition-DiplomeEtudeSpecialisee.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiplomeEtudeSpecialisee",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEtudeSpecialisee",
  "version" : "0.1.0",
  "name" : "DiplomeEtudeSpecialisee",
  "title" : "DiplomeEtudeSpecialisee",
  "status" : "draft",
  "date" : "2025-10-30T16:36:55+00:00",
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
  "description" : "Le diplôme d'études spécialisées (DES) est délivré aux médecins, pharmaciens ou dentistes ayant effectué une formation de 3e cycle de 3 à 5 ans en fonction des spécialités et soutenu un mémoire. Cette formation correspond à l'internat. Avec les réformes successives adoptées depuis la fin des années 1990 (dont la création de l'internat et du DES de médecine générale), tous les nouveaux docteurs en médecine sont titulaires d'un DES, accompagnant leur diplôme d'État de docteur en médecine (commun à tous les médecins) et précisant leur spécialité.Le DES peut être complété par un diplôme d'études spécialisées complémentaires (DESC). Les DESC se décomposent en deux groupes: ** DESC non qualifiants (groupe 1) d’une durée de 2 ans : 1 an pendant l’internat et 1 an après la fin de l’internat (clinicat);** DESC qualifiants (groupe 2) ou DESCQ d’une durée de 3 ans : 2 ans pendant l’internat et 1 an après la fin de l’internat (clinicat).Dans le cadre du modèle, un DES est un type de diplôme. La classe DiplomeEtudesSpecialisees est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DiplomeEtudeSpecialisee",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DiplomeEtudeSpecialisee",
        "path" : "DiplomeEtudeSpecialisee",
        "short" : "Le diplôme d'études spécialisées (DES) est délivré aux médecins, pharmaciens ou dentistes ayant effectué une formation de 3e cycle de 3 à 5 ans en fonction des spécialités et soutenu un mémoire. Cette formation correspond à l'internat. Avec les réformes successives adoptées depuis la fin des années 1990 (dont la création de l'internat et du DES de médecine générale), tous les nouveaux docteurs en médecine sont titulaires d'un DES, accompagnant leur diplôme d'État de docteur en médecine (commun à tous les médecins) et précisant leur spécialité.Le DES peut être complété par un diplôme d'études spécialisées complémentaires (DESC). Les DESC se décomposent en deux groupes: ** DESC non qualifiants (groupe 1) d’une durée de 2 ans : 1 an pendant l’internat et 1 an après la fin de l’internat (clinicat);** DESC qualifiants (groupe 2) ou DESCQ d’une durée de 3 ans : 2 ans pendant l’internat et 1 an après la fin de l’internat (clinicat).Dans le cadre du modèle, un DES est un type de diplôme. La classe DiplomeEtudesSpecialisees est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Le diplôme d'études spécialisées (DES) est délivré aux médecins, pharmaciens ou dentistes ayant effectué une formation de 3e cycle de 3 à 5 ans en fonction des spécialités et soutenu un mémoire. Cette formation correspond à l'internat. Avec les réformes successives adoptées depuis la fin des années 1990 (dont la création de l'internat et du DES de médecine générale), tous les nouveaux docteurs en médecine sont titulaires d'un DES, accompagnant leur diplôme d'État de docteur en médecine (commun à tous les médecins) et précisant leur spécialité.Le DES peut être complété par un diplôme d'études spécialisées complémentaires (DESC). Les DESC se décomposent en deux groupes: ** DESC non qualifiants (groupe 1) d’une durée de 2 ans : 1 an pendant l’internat et 1 an après la fin de l’internat (clinicat);** DESC qualifiants (groupe 2) ou DESCQ d’une durée de 3 ans : 2 ans pendant l’internat et 1 an après la fin de l’internat (clinicat).Dans le cadre du modèle, un DES est un type de diplôme. La classe DiplomeEtudesSpecialisees est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "DiplomeEtudeSpecialisee.diplomeEtudeSpecialisee",
        "path" : "DiplomeEtudeSpecialisee.diplomeEtudeSpecialisee",
        "short" : "Diplôme d'études spécialisées (DES).",
        "definition" : "Diplôme d'études spécialisées (DES).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R49-DiplomeEtudeSpecialisee/FHIR/TRE-R49-DiplomeEtudeSpecialisee?vs"
        }
      }
    ]
  }
}

```
