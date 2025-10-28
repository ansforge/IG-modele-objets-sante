# CertificatEtudeSpeciale - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CertificatEtudeSpeciale**

## Logical Model: CertificatEtudeSpeciale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CertificatEtudeSpeciale | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:CertificatEtudeSpeciale |

 
Les Certificat d’études spéciales (CES) ont précédé les DES et ils ne sont plus délivrés depuis 1991.Dans le cadre du modèle, un certificat d’études spéciales est un type de diplôme. La classe CertificatEtudesSpeciales est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CertificatEtudeSpeciale)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CertificatEtudeSpeciale.csv), [Excel](StructureDefinition-CertificatEtudeSpeciale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CertificatEtudeSpeciale",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CertificatEtudeSpeciale",
  "version" : "0.1.0",
  "name" : "CertificatEtudeSpeciale",
  "title" : "CertificatEtudeSpeciale",
  "status" : "draft",
  "date" : "2025-10-28T09:35:07+00:00",
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
  "description" : "Les Certificat d'études spéciales (CES) ont précédé les DES et ils ne sont plus délivrés depuis 1991.Dans le cadre du modèle, un certificat d'études spéciales est un type de diplôme. La classe CertificatEtudesSpeciales est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CertificatEtudeSpeciale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CertificatEtudeSpeciale",
        "path" : "CertificatEtudeSpeciale",
        "short" : "Les Certificat d'études spéciales (CES) ont précédé les DES et ils ne sont plus délivrés depuis 1991.Dans le cadre du modèle, un certificat d'études spéciales est un type de diplôme. La classe CertificatEtudesSpeciales est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "definition" : "Les Certificat d'études spéciales (CES) ont précédé les DES et ils ne sont plus délivrés depuis 1991.Dans le cadre du modèle, un certificat d'études spéciales est un type de diplôme. La classe CertificatEtudesSpeciales est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe."
      },
      {
        "id" : "CertificatEtudeSpeciale.certificatEtudeSpeciale",
        "path" : "CertificatEtudeSpeciale.certificatEtudeSpeciale",
        "short" : "Certificat d'études spéciales (CES).",
        "definition" : "Certificat d'études spéciales (CES).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R55-CertificatEtudeSpeciale/FHIR/TRE-R55-CertificatEtudeSpeciale?vs"
        }
      }
    ]
  }
}

```
