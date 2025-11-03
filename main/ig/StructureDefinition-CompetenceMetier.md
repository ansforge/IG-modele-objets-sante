# CompetenceMetier - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CompetenceMetier**

## Logical Model: CompetenceMetier 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CompetenceMetier | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:CompetenceMetier |

 
La compétence métier désigne un type de savoir-faire opérationnel, transversal ou spécifique, acquis et exercé à titre non exclusif dans le cadre d’une activité professionnelle reconnue. Elle reflète une expertise fonctionnelle ou technique mobilisée dans l’exercice quotidien du professionnel de santé.Contrairement aux spécialités ordinales ou compétences de médecines, la compétence métier n’est pas nécessairement encadrée par un diplôme ou une qualification ordinale, mais elle peut être attestée par l’expérience, des formations spécifiques, ou une reconnaissance institutionnelle (ex. : missions ANS, ARS, établissements de santé, etc.).Dans le cadre du modèle, la classe CompétenceMetier est représentée comme une spécialisation de la classe SavoirFaire, i-e un TypeDeSavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. Elle se distingue des autres types de savoir-faire par son ancrage dans les pratiques professionnelles et organisationnelles, plutôt que dans une logique de qualification médicale ou réglementaire. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CompetenceMetier)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CompetenceMetier.csv), [Excel](StructureDefinition-CompetenceMetier.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CompetenceMetier",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CompetenceMetier",
  "version" : "0.1.0",
  "name" : "CompetenceMetier",
  "title" : "CompetenceMetier",
  "status" : "draft",
  "date" : "2025-11-03T16:45:30+00:00",
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
  "description" : "La compétence métier désigne un type de savoir-faire opérationnel, transversal ou spécifique, acquis et exercé à titre non exclusif dans le cadre d’une activité professionnelle reconnue. Elle reflète une expertise fonctionnelle ou technique mobilisée dans l’exercice quotidien du professionnel de santé.Contrairement aux spécialités ordinales ou compétences de médecines, la compétence métier n’est pas nécessairement encadrée par un diplôme ou une qualification ordinale, mais elle peut être attestée par l’expérience, des formations spécifiques, ou une reconnaissance institutionnelle (ex. : missions ANS, ARS, établissements de santé, etc.).Dans le cadre du modèle, la classe CompétenceMetier est représentée comme une spécialisation de la classe SavoirFaire, i-e un TypeDeSavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. Elle se distingue des autres types de savoir-faire par son ancrage dans les pratiques professionnelles et organisationnelles, plutôt que dans une logique de qualification médicale ou réglementaire.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CompetenceMetier",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CompetenceMetier",
        "path" : "CompetenceMetier",
        "short" : "La compétence métier désigne un type de savoir-faire opérationnel, transversal ou spécifique, acquis et exercé à titre non exclusif dans le cadre d’une activité professionnelle reconnue. Elle reflète une expertise fonctionnelle ou technique mobilisée dans l’exercice quotidien du professionnel de santé.Contrairement aux spécialités ordinales ou compétences de médecines, la compétence métier n’est pas nécessairement encadrée par un diplôme ou une qualification ordinale, mais elle peut être attestée par l’expérience, des formations spécifiques, ou une reconnaissance institutionnelle (ex. : missions ANS, ARS, établissements de santé, etc.).Dans le cadre du modèle, la classe CompétenceMetier est représentée comme une spécialisation de la classe SavoirFaire, i-e un TypeDeSavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. Elle se distingue des autres types de savoir-faire par son ancrage dans les pratiques professionnelles et organisationnelles, plutôt que dans une logique de qualification médicale ou réglementaire.",
        "definition" : "La compétence métier désigne un type de savoir-faire opérationnel, transversal ou spécifique, acquis et exercé à titre non exclusif dans le cadre d’une activité professionnelle reconnue. Elle reflète une expertise fonctionnelle ou technique mobilisée dans l’exercice quotidien du professionnel de santé.Contrairement aux spécialités ordinales ou compétences de médecines, la compétence métier n’est pas nécessairement encadrée par un diplôme ou une qualification ordinale, mais elle peut être attestée par l’expérience, des formations spécifiques, ou une reconnaissance institutionnelle (ex. : missions ANS, ARS, établissements de santé, etc.).Dans le cadre du modèle, la classe CompétenceMetier est représentée comme une spécialisation de la classe SavoirFaire, i-e un TypeDeSavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. Elle se distingue des autres types de savoir-faire par son ancrage dans les pratiques professionnelles et organisationnelles, plutôt que dans une logique de qualification médicale ou réglementaire."
      },
      {
        "id" : "CompetenceMetier.competenceMetier",
        "path" : "CompetenceMetier.competenceMetier",
        "short" : "Compétence métier acquise par le professionnel",
        "definition" : "Compétence métier acquise par le professionnel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R01-EnsembleSavoirFaire-CISIS/FHIR/TRE-R01-EnsembleSavoirFaire-CISIS?vs"
        }
      }
    ]
  }
}

```
