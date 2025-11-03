# Diplome - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diplome**

## Logical Model: Diplome 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:Diplome |

 
Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d’Etat.La classe “Diplome” est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu 

**Usages:**

* Derived from this Logical Model: [Attestation](StructureDefinition-Attestation.md), [AutreDiplomeObtenu](StructureDefinition-AutreDiplomeObtenu.md), [CapaciteDiplome](StructureDefinition-CapaciteDiplome.md), [CertificatEtudeSpeciale](StructureDefinition-CertificatEtudeSpeciale.md)...Show 10 more,[DESC1](StructureDefinition-DESC1.md),[DESC2](StructureDefinition-DESC2.md),[DiplomeDeuxiemeCycleNonQualifiant](StructureDefinition-DiplomeDeuxiemeCycleNonQualifiant.md),[DiplomeDivers](StructureDefinition-DiplomeDivers.md),[DiplomeEEE](StructureDefinition-DiplomeEEE.md),[DiplomeEES](StructureDefinition-DiplomeEES.md),[DiplomeEtat](StructureDefinition-DiplomeEtat.md),[DiplomeEtudeSpecialisee](StructureDefinition-DiplomeEtudeSpecialisee.md),[DiplomeUniversitaire](StructureDefinition-DiplomeUniversitaire.md)and[FormationSpecialiseeTransversale](StructureDefinition-FormationSpecialiseeTransversale.md)
* Use this Logical Model: [ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md), [Professionnel](StructureDefinition-Professionnel.md) and [VieProfessionnelle](StructureDefinition-VieProfessionnelle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Diplome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Diplome.csv), [Excel](StructureDefinition-Diplome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Diplome",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "version" : "0.1.0",
  "name" : "Diplome",
  "title" : "Diplome",
  "status" : "draft",
  "date" : "2025-11-03T11:12:25+00:00",
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
  "description" : "Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d'Etat.La classe \"Diplome\" est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Diplome",
        "path" : "Diplome",
        "short" : "Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d'Etat.La classe \"Diplome\" est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu",
        "definition" : "Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d'Etat.La classe \"Diplome\" est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu"
      },
      {
        "id" : "Diplome.typeDiplome",
        "path" : "Diplome.typeDiplome",
        "short" : "Type de diplôme, par exemple:** DE : Diplôme d’Etat français** CES : Certificat d’Etudes Spéciales** DES : Diplôme d'Etudes Spécialisées** etc.",
        "definition" : "Type de diplôme, par exemple:** DE : Diplôme d’Etat français** CES : Certificat d’Etudes Spéciales** DES : Diplôme d'Etudes Spécialisées** etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R14-TypeDiplome/FHIR/TRE-R14-TypeDiplome?vs"
        }
      },
      {
        "id" : "Diplome.lieuFormation",
        "path" : "Diplome.lieuFormation",
        "short" : "Lieu de formation pour l'obtention du diplôme. Par exemple:** U37 : Université de Tours (Université François Rabelais)** UP5 : Université de Paris 05 (Université René Descartes).",
        "definition" : "Lieu de formation pour l'obtention du diplôme. Par exemple:** U37 : Université de Tours (Université François Rabelais)** UP5 : Université de Paris 05 (Université René Descartes).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R16-LieuFormation/FHIR/TRE-R16-LieuFormation?vs"
        }
      },
      {
        "id" : "Diplome.dateDiplome",
        "path" : "Diplome.dateDiplome",
        "short" : "Date d’obtention du diplôme.",
        "definition" : "Date d’obtention du diplôme.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Diplome.numeroDiplome",
        "path" : "Diplome.numeroDiplome",
        "short" : "Numéro du diplôme.",
        "definition" : "Numéro du diplôme.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
