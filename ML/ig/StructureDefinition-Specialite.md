# Specialite - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specialite**

## Logical Model: Specialite 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Specialite | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:Specialite |

 
Spécialité médicale ou odontologique, reconnue par une autorité d’enregistrement (Ordre ou SSA), soit sur la base d’un diplôme de spécialité (DES ou DESC de groupe II, CES jusqu’en 1991), soit via une commission de qualification.En France, l’exercice d’une spécialité est exclusif, c’est-à-dire qu’on ne peut exercer qu’une seule spécialité, celle qui fait l’objet d’une qualification par le Conseil de l’ordre. Un médecin titulaire d’un DESC de type II qui s’ajoute à son DES, a donc 2 qualifications possibles. Lorsqu’il s’inscrit au tableau de l’ordre des médecins, il doit déclarer sa spécialité d’exercice. S’il choisit celle de son DESC, il ne peut pas exercer la spécialité de son DES. Toutefois, il peut, dans le futur, choisir le retour à la spécialité originelle portée par le DES. Ainsi, la création en 2004 du DESC de Gériatrie a marqué la naissance de la qualification de spécialiste en gériatrie (la gériatrie étant auparavant un mode d’exercice particulier de la médecine, concernant des généralistes et des spécialistes).Dans le cadre du modèle, une spécialité est un type de savoir-faire. La classe Specialite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Specialite)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Specialite.csv), [Excel](StructureDefinition-Specialite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Specialite",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Specialite",
  "version" : "0.1.0",
  "name" : "Specialite",
  "title" : "Specialite",
  "status" : "draft",
  "date" : "2025-10-29T10:18:40+00:00",
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
  "description" : "Spécialité médicale ou odontologique, reconnue par une autorité d'enregistrement (Ordre ou SSA), soit sur la base d'un diplôme de spécialité (DES ou DESC de groupe II, CES jusqu'en 1991), soit via une commission de qualification.En France, l'exercice d'une spécialité est exclusif, c'est-à-dire qu'on ne peut exercer qu'une seule spécialité, celle qui fait l'objet d'une qualification par le Conseil de l'ordre. Un médecin titulaire d'un DESC de type II qui s'ajoute à son DES, a donc 2 qualifications possibles. Lorsqu'il s'inscrit au tableau de l'ordre des médecins, il doit déclarer sa spécialité d'exercice. S'il choisit celle de son DESC, il ne peut pas exercer la spécialité de son DES. Toutefois, il peut, dans le futur, choisir le retour à la spécialité originelle portée par le DES. Ainsi, la création en 2004 du DESC de Gériatrie a marqué la naissance de la qualification de spécialiste en gériatrie (la gériatrie étant auparavant un mode d'exercice particulier de la médecine, concernant des généralistes et des spécialistes).Dans le cadre du modèle, une spécialité est un type de savoir-faire. La classe Specialite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Specialite",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Specialite",
        "path" : "Specialite",
        "short" : "Spécialité médicale ou odontologique, reconnue par une autorité d'enregistrement (Ordre ou SSA), soit sur la base d'un diplôme de spécialité (DES ou DESC de groupe II, CES jusqu'en 1991), soit via une commission de qualification.En France, l'exercice d'une spécialité est exclusif, c'est-à-dire qu'on ne peut exercer qu'une seule spécialité, celle qui fait l'objet d'une qualification par le Conseil de l'ordre. Un médecin titulaire d'un DESC de type II qui s'ajoute à son DES, a donc 2 qualifications possibles. Lorsqu'il s'inscrit au tableau de l'ordre des médecins, il doit déclarer sa spécialité d'exercice. S'il choisit celle de son DESC, il ne peut pas exercer la spécialité de son DES. Toutefois, il peut, dans le futur, choisir le retour à la spécialité originelle portée par le DES. Ainsi, la création en 2004 du DESC de Gériatrie a marqué la naissance de la qualification de spécialiste en gériatrie (la gériatrie étant auparavant un mode d'exercice particulier de la médecine, concernant des généralistes et des spécialistes).Dans le cadre du modèle, une spécialité est un type de savoir-faire. La classe Specialite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Spécialité médicale ou odontologique, reconnue par une autorité d'enregistrement (Ordre ou SSA), soit sur la base d'un diplôme de spécialité (DES ou DESC de groupe II, CES jusqu'en 1991), soit via une commission de qualification.En France, l'exercice d'une spécialité est exclusif, c'est-à-dire qu'on ne peut exercer qu'une seule spécialité, celle qui fait l'objet d'une qualification par le Conseil de l'ordre. Un médecin titulaire d'un DESC de type II qui s'ajoute à son DES, a donc 2 qualifications possibles. Lorsqu'il s'inscrit au tableau de l'ordre des médecins, il doit déclarer sa spécialité d'exercice. S'il choisit celle de son DESC, il ne peut pas exercer la spécialité de son DES. Toutefois, il peut, dans le futur, choisir le retour à la spécialité originelle portée par le DES. Ainsi, la création en 2004 du DESC de Gériatrie a marqué la naissance de la qualification de spécialiste en gériatrie (la gériatrie étant auparavant un mode d'exercice particulier de la médecine, concernant des généralistes et des spécialistes).Dans le cadre du modèle, une spécialité est un type de savoir-faire. La classe Specialite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "Specialite.specialite",
        "path" : "Specialite.specialite",
        "short" : "Spécialité ordinale.",
        "definition" : "Spécialité ordinale.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/specialite-vs"
        }
      }
    ]
  }
}

```
