# UniteFonctionnelle - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UniteFonctionnelle**

## Logical Model: UniteFonctionnelle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/UniteFonctionnelle | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:UniteFonctionnelle |

 
L’unité fonctionnelle (UF) désigne la plus petite unité compatible avec les contraintes de gestion qui présente une activité médicale homogène. 

**Utilisations:**

* Ce Modèle logique nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/UniteFonctionnelle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-UniteFonctionnelle.csv), [Excel](StructureDefinition-UniteFonctionnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "UniteFonctionnelle",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/UniteFonctionnelle",
  "version" : "0.1.0",
  "name" : "UniteFonctionnelle",
  "title" : "UniteFonctionnelle",
  "status" : "draft",
  "date" : "2025-12-02T09:57:01+00:00",
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
  "description" : "L'unité fonctionnelle (UF) désigne la plus petite unité compatible avec les contraintes de gestion qui présente une activité médicale homogène.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/UniteFonctionnelle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "UniteFonctionnelle",
        "path" : "UniteFonctionnelle",
        "short" : "L'unité fonctionnelle (UF) désigne la plus petite unité compatible avec les contraintes de gestion qui présente une activité médicale homogène.",
        "definition" : "L'unité fonctionnelle (UF) désigne la plus petite unité compatible avec les contraintes de gestion qui présente une activité médicale homogène."
      }
    ]
  }
}

```
