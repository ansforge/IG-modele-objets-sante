# CategorieetablissementVs - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CategorieetablissementVs**

## ValueSet: CategorieetablissementVs 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/ValueSet/categorieEtablissement-vs | *Version*:0.1.0 |
| Draft as of 2026-03-12 | *Computable Name*:CategorieetablissementVs |

 **References** 

* [EntiteGeographique](StructureDefinition-EntiteGeographique.md)

### Définition logique (CLD)

 

### Expansion

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
  "id" : "categorieEtablissement-vs",
  "url" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/categorieEtablissement-vs",
  "version" : "0.1.0",
  "name" : "CategorieetablissementVs",
  "status" : "draft",
  "date" : "2026-03-12T13:42:24+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement"
    },
    {
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R316-AutreCategorieEtablissement/FHIR/TRE-R316-AutreCategorieEtablissement"
    }]
  }
}

```
