# Competence - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Competence**

## Logical Model: Competence 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Competence | *Version*:0.1.0 |
| Draft as of 2025-11-04 | *Computable Name*:Competence |

 
Extrait du rapport de l’ONDPS sur la médecine générale (Tome 1 2006-2007): “La compétence était un titre délivré par l’ordre national des médecins en application du précédent règlement de qualification (Article 3 de l’arrêté du 4 septembre 1970), aux praticiens dits «ancien régime» ayant débuté leurs études médicales avant la réforme de 1982. Ce titre était accordé après avis d’une commission ordinale spécifique. Les compétences, dont la liste était fixée par arrêté, portaient soit sur des disciplines ne correspondant pas à des spécialités qualifiantes (médecine légale ou allergologie par exemple), soit sur des spécialités médicales, le praticien compétent ne pouvant l’exercer que dans le cadre de sa spécialité d’inscription à l’ordre. Les compétences ne peuvent plus être délivrées aux médecins issus du nouveau régime, c’est-à-dire ayant débuté leurs études à compter de l’année universitaire 1984-1985. Toutefois, pour ceux de l’ancien régime et à titre transitoire, le dépôt d’une demande de qualification était possible jusqu’au 31 décembre 2004 et ces praticiens peuvent s’en prévaloir jusqu’à la fin leur période d’activité professionnelle.Une compétence est un type de savoir-faire. La classe Competence est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Competence)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Competence.csv), [Excel](StructureDefinition-Competence.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Competence",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Competence",
  "version" : "0.1.0",
  "name" : "Competence",
  "title" : "Competence",
  "status" : "draft",
  "date" : "2025-11-04T13:35:30+00:00",
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
  "description" : "Extrait du rapport de l'ONDPS sur la médecine générale (Tome 1 2006-2007): \"La compétence était un titre délivré par l’ordre national des médecins en application du précédent règlement de qualification (Article 3 de l'arrêté du 4 septembre 1970), aux praticiens dits «ancien régime» ayant débuté leurs études médicales avant la réforme de 1982. Ce titre était accordé après avis d’une commission ordinale spécifique. Les compétences, dont la liste était fixée par arrêté, portaient soit sur des disciplines ne correspondant pas à des spécialités qualifiantes (médecine légale ou allergologie par exemple), soit sur des spécialités médicales, le praticien compétent ne pouvant l’exercer que dans le cadre de sa spécialité d’inscription à l’ordre. Les compétences ne peuvent plus être délivrées aux médecins issus du nouveau régime, c’est-à-dire ayant débuté leurs études à compter de l’année universitaire 1984-1985. Toutefois, pour ceux de l’ancien régime et à titre transitoire, le dépôt d’une demande de qualification était possible jusqu’au 31 décembre 2004 et ces praticiens peuvent s’en prévaloir jusqu’à la fin leur période d’activité professionnelle.Une compétence est un type de savoir-faire. La classe Competence est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Competence",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Competence",
        "path" : "Competence",
        "short" : "Extrait du rapport de l'ONDPS sur la médecine générale (Tome 1 2006-2007): \"La compétence était un titre délivré par l’ordre national des médecins en application du précédent règlement de qualification (Article 3 de l'arrêté du 4 septembre 1970), aux praticiens dits «ancien régime» ayant débuté leurs études médicales avant la réforme de 1982. Ce titre était accordé après avis d’une commission ordinale spécifique. Les compétences, dont la liste était fixée par arrêté, portaient soit sur des disciplines ne correspondant pas à des spécialités qualifiantes (médecine légale ou allergologie par exemple), soit sur des spécialités médicales, le praticien compétent ne pouvant l’exercer que dans le cadre de sa spécialité d’inscription à l’ordre. Les compétences ne peuvent plus être délivrées aux médecins issus du nouveau régime, c’est-à-dire ayant débuté leurs études à compter de l’année universitaire 1984-1985. Toutefois, pour ceux de l’ancien régime et à titre transitoire, le dépôt d’une demande de qualification était possible jusqu’au 31 décembre 2004 et ces praticiens peuvent s’en prévaloir jusqu’à la fin leur période d’activité professionnelle.Une compétence est un type de savoir-faire. La classe Competence est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Extrait du rapport de l'ONDPS sur la médecine générale (Tome 1 2006-2007): \"La compétence était un titre délivré par l’ordre national des médecins en application du précédent règlement de qualification (Article 3 de l'arrêté du 4 septembre 1970), aux praticiens dits «ancien régime» ayant débuté leurs études médicales avant la réforme de 1982. Ce titre était accordé après avis d’une commission ordinale spécifique. Les compétences, dont la liste était fixée par arrêté, portaient soit sur des disciplines ne correspondant pas à des spécialités qualifiantes (médecine légale ou allergologie par exemple), soit sur des spécialités médicales, le praticien compétent ne pouvant l’exercer que dans le cadre de sa spécialité d’inscription à l’ordre. Les compétences ne peuvent plus être délivrées aux médecins issus du nouveau régime, c’est-à-dire ayant débuté leurs études à compter de l’année universitaire 1984-1985. Toutefois, pour ceux de l’ancien régime et à titre transitoire, le dépôt d’une demande de qualification était possible jusqu’au 31 décembre 2004 et ces praticiens peuvent s’en prévaloir jusqu’à la fin leur période d’activité professionnelle.Une compétence est un type de savoir-faire. La classe Competence est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "Competence.competence",
        "path" : "Competence.competence",
        "short" : "Compétence acquise par le professionnel.",
        "definition" : "Compétence acquise par le professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/competence-vs"
        }
      }
    ]
  }
}

```
