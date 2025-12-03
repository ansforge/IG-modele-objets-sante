# RoleVs - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RoleVs**

## ValueSet: RoleVs 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/ValueSet/role-vs | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:RoleVs |

 **References** 

* [SituationExercice](StructureDefinition-SituationExercice.md)

### Définition logique (CLD)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R21-Fonction.html)version 📦20250623120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R96-AutreFonctionSanitaire/FHIR/TRE-R96-AutreFonctionSanitaire`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R96-AutreFonctionSanitaire.html)version 📦20231215120000
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge`](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R85-RolePriseCharge.html)version 📦20250328120000

 

### Expansion

Expansion effectuée en interne basée sur :

* [codesystem TRE_R21_Fonction v20250623120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R21-Fonction.html)
* [codesystem TRE_R85_RolePriseCharge v20250328120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R85-RolePriseCharge.html)
* [codesystem TRE_R96_AutreFonctionSanitaire v20231215120000 (CodeSystem)](https://interop.esante.gouv.fr/terminologies/1.1.0/CodeSystem-TRE-R96-AutreFonctionSanitaire.html)

Ce jeu de valeur (ValueSet) contient 137 concepts

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
  "id" : "role-vs",
  "url" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/role-vs",
  "version" : "0.1.0",
  "name" : "RoleVs",
  "status" : "draft",
  "date" : "2025-12-03T08:21:22+00:00",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R96-AutreFonctionSanitaire/FHIR/TRE-R96-AutreFonctionSanitaire"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R85-RolePriseCharge/FHIR/TRE-R85-RolePriseCharge"
      }
    ]
  }
}

```
