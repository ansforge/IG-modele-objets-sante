# DivisionTerritoriale - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DivisionTerritoriale**

## Logical Model: DivisionTerritoriale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DivisionTerritoriale | *Version*:0.1.0 |
| Draft as of 2025-11-04 | *Computable Name*:DivisionTerritoriale |

 
Une division territoriale est un territoire.Le territoire peut correspondre à une commune, un département, une région, un territoire, un pays, un canton ou un arrondissement au sens du référentiel administratif que représente le Code Officiel Géographique pour la France (INSEE). Pour les autres pays, cela peut être un état, un land, un comté, une province, etc. suivant leur découpage territorial.Autres zonages:Le territoire peut correspondre à un territoire de santé, un bassin de santé, une unité urbaine, un regroupement de communes, etc.Afin de distinguer les divisions territoriales, il est recommandé de toujours indiquer le type d’une division territoriale. 

**Usages:**

* Use this Logical Model: [EntiteGeographique](StructureDefinition-EntiteGeographique.md) and [OffreOperationnelle](StructureDefinition-OffreOperationnelle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DivisionTerritoriale)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DivisionTerritoriale.csv), [Excel](StructureDefinition-DivisionTerritoriale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DivisionTerritoriale",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DivisionTerritoriale",
  "version" : "0.1.0",
  "name" : "DivisionTerritoriale",
  "title" : "DivisionTerritoriale",
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
  "description" : "Une division territoriale est un territoire.Le territoire peut correspondre à une commune, un département, une région, un territoire, un pays, un canton ou un arrondissement au sens du référentiel administratif que représente le Code Officiel Géographique pour la France (INSEE). Pour les autres pays, cela peut être un état, un land, un comté, une province, etc. suivant leur découpage territorial.Autres zonages:Le territoire peut correspondre à un territoire de santé, un bassin de santé, une unité urbaine, un regroupement de communes, etc.Afin de distinguer les divisions territoriales, il est recommandé de toujours indiquer le type d'une division territoriale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DivisionTerritoriale",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DivisionTerritoriale",
        "path" : "DivisionTerritoriale",
        "short" : "Une division territoriale est un territoire.Le territoire peut correspondre à une commune, un département, une région, un territoire, un pays, un canton ou un arrondissement au sens du référentiel administratif que représente le Code Officiel Géographique pour la France (INSEE). Pour les autres pays, cela peut être un état, un land, un comté, une province, etc. suivant leur découpage territorial.Autres zonages:Le territoire peut correspondre à un territoire de santé, un bassin de santé, une unité urbaine, un regroupement de communes, etc.Afin de distinguer les divisions territoriales, il est recommandé de toujours indiquer le type d'une division territoriale.",
        "definition" : "Une division territoriale est un territoire.Le territoire peut correspondre à une commune, un département, une région, un territoire, un pays, un canton ou un arrondissement au sens du référentiel administratif que représente le Code Officiel Géographique pour la France (INSEE). Pour les autres pays, cela peut être un état, un land, un comté, une province, etc. suivant leur découpage territorial.Autres zonages:Le territoire peut correspondre à un territoire de santé, un bassin de santé, une unité urbaine, un regroupement de communes, etc.Afin de distinguer les divisions territoriales, il est recommandé de toujours indiquer le type d'une division territoriale."
      },
      {
        "id" : "DivisionTerritoriale.type",
        "path" : "DivisionTerritoriale.type",
        "short" : "Type de division territoriale.Les différents types de division territoriale sont notamment : ** Commune (France)** Département (France)** Région (France)** Territoire de santé (France)** Pays",
        "definition" : "Type de division territoriale.Les différents types de division territoriale sont notamment : ** Commune (France)** Département (France)** Région (France)** Territoire de santé (France)** Pays",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R201-TypeDivisionTerritoriale/FHIR/TRE-R201-TypeDivisionTerritoriale?vs"
        }
      },
      {
        "id" : "DivisionTerritoriale.code",
        "path" : "DivisionTerritoriale.code",
        "short" : "Selon son type (commune, région, territoire de santé, etc.), code de la division territoriale.Les valeurs de ce code sont répertoriées dans les nomenclatures associées aux types de division territoriale, par exemple:** les codes des communes (COG) répertoriés dans la nomenclature CodeSystem-TRE-R13-CommuneOM;** les codes des départements (COG) répertoriés dans la nomenclature CodeSystem-TRE-G09-DepartementOM;** les codes des régions (COG) répertoriés dans la nomenclature CodeSystem-TRE-R30-RegionOM;** les codes des territoires de santé définis par les ARS (loi HPST (Art. L. 1434-16. du code de la santé publique));** les codes des pays répertoriés dans la nomenclature CodeSystem-TRE-R20-Pays.",
        "definition" : "Selon son type (commune, région, territoire de santé, etc.), code de la division territoriale.Les valeurs de ce code sont répertoriées dans les nomenclatures associées aux types de division territoriale, par exemple:** les codes des communes (COG) répertoriés dans la nomenclature CodeSystem-TRE-R13-CommuneOM;** les codes des départements (COG) répertoriés dans la nomenclature CodeSystem-TRE-G09-DepartementOM;** les codes des régions (COG) répertoriés dans la nomenclature CodeSystem-TRE-R30-RegionOM;** les codes des territoires de santé définis par les ARS (loi HPST (Art. L. 1434-16. du code de la santé publique));** les codes des pays répertoriés dans la nomenclature CodeSystem-TRE-R20-Pays.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/code-vs"
        }
      }
    ]
  }
}

```
