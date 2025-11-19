# TyperoleVs - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TyperoleVs**

## ValueSet: TyperoleVs 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/ValueSet/typeRole-vs | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:TyperoleVs |

 **References** 

* [SituationExercice](StructureDefinition-SituationExercice.md)

### Logical Definition (CLD)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R289-TypeFonction/FHIR/TRE-R289-TypeFonction`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R289-TypeFonction.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R37-TypeProfessionFonction/FHIR/TRE-R37-TypeProfessionFonction`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R37-TypeProfessionFonction.html)version 📦20231215120000

 

### Expansion

Ce jeu de valeur (ValueSet) contient 17 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "typeRole-vs",
  "url" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/typeRole-vs",
  "version" : "0.1.0",
  "name" : "TyperoleVs",
  "status" : "draft",
  "date" : "2025-11-19T09:46:11+00:00",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R289-TypeFonction/FHIR/TRE-R289-TypeFonction"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R37-TypeProfessionFonction/FHIR/TRE-R37-TypeProfessionFonction"
      }
    ]
  }
}

```
