# CodeVs - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CodeVs**

## ValueSet: CodeVs 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/ValueSet/code-vs | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:CodeVs |

 **References** 

* [DivisionTerritoriale](StructureDefinition-DivisionTerritoriale.md)

### Logical Definition (CLD)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R13-CommuneOM.html)version Not Stated (use latest from terminology server)
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R30-RegionOM.html)version 📦20240628120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_G09-DepartementOM/FHIR/TRE-G09-DepartementOM`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-G09-DepartementOM.html)version 📦20240628120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R20-Pays.html)version 📦20250328120000

 

### Expansion

Expansion from smt.esante.gouv.fr based on:

* [codesystem TRE_G09_DepartementOM v20240628120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-G09-DepartementOM.html)
* [codesystem TRE_R20_Pays v20250328120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R20-Pays.html)
* [codesystem TRE_R30_RegionOM v20240628120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R30-RegionOM.html)
* [system TRE_R13_CommuneOM v20240628120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R13-CommuneOM.html)

Ce jeu de valeurs (ValueSet) a 39,691 codes. Pour garder la publication gérable, seulement une selection (1,000 codes) de lensemble des codes est affiché.

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
  "id" : "code-vs",
  "url" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/code-vs",
  "version" : "0.1.0",
  "name" : "CodeVs",
  "status" : "draft",
  "date" : "2025-10-30T13:09:51+00:00",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R30-RegionOM/FHIR/TRE-R30-RegionOM"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_G09-DepartementOM/FHIR/TRE-G09-DepartementOM"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays"
      }
    ]
  }
}

```
