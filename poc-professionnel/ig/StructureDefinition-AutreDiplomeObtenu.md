# AutreDiplomeObtenu - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AutreDiplomeObtenu**

## Logical Model: AutreDiplomeObtenu 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutreDiplomeObtenu | *Version*:0.1.0 |
| Draft as of 2025-10-13 | *Computable Name*:AutreDiplomeObtenu |

 
Diplôme autre qu’un diplôme d’Etat, une qualification, un diplôme d’études spécialisées, un DESC1, un DESC2, un diplôme de l’espace économique européen, un diplôme européen d’études spécialisées, une attestation, une capacité ou un diplôme de deuxième cycle non qualifiant. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/AutreDiplomeObtenu)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AutreDiplomeObtenu.csv), [Excel](StructureDefinition-AutreDiplomeObtenu.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AutreDiplomeObtenu",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutreDiplomeObtenu",
  "version" : "0.1.0",
  "name" : "AutreDiplomeObtenu",
  "title" : "AutreDiplomeObtenu",
  "status" : "draft",
  "date" : "2025-10-13T08:05:42+00:00",
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
  "description" : "Diplôme autre qu'un diplôme d'Etat, une qualification, un diplôme d'études spécialisées, un DESC1, un DESC2, un diplôme de l'espace économique européen, un diplôme européen d'études spécialisées, une attestation, une capacité ou un diplôme de deuxième cycle non qualifiant.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutreDiplomeObtenu",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "AutreDiplomeObtenu",
        "path" : "AutreDiplomeObtenu",
        "short" : "Diplôme autre qu'un diplôme d'Etat, une qualification, un diplôme d'études spécialisées, un DESC1, un DESC2, un diplôme de l'espace économique européen, un diplôme européen d'études spécialisées, une attestation, une capacité ou un diplôme de deuxième cycle non qualifiant.",
        "definition" : "Diplôme autre qu'un diplôme d'Etat, une qualification, un diplôme d'études spécialisées, un DESC1, un DESC2, un diplôme de l'espace économique européen, un diplôme européen d'études spécialisées, une attestation, une capacité ou un diplôme de deuxième cycle non qualifiant."
      },
      {
        "id" : "AutreDiplomeObtenu.autreDiplomeObtenu",
        "path" : "AutreDiplomeObtenu.autreDiplomeObtenu",
        "short" : "Autre diplôme obtenu.",
        "definition" : "Autre diplôme obtenu.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R36-AutreDiplomeObtenu/FHIR/TRE-R36-AutreDiplomeObtenu?vs"
        }
      }
    ]
  }
}

```
