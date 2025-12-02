# CoordonneeGeographique - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CoordonneeGeographique**

## Logical Model: CoordonneeGeographique 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CoordonneeGeographique | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:CoordonneeGeographique |

 
Ensemble des coordonnées géographiques d’un point spécifique telles que la longitude, la latitude et l’altitude, exprimées suivant un système géodésique choisi. Il convient de distinguer les coordonnées géographiques des coordonnées projetées suivant différents systèmes de projection.Note complémentaire sur l’usage de la classe :1) Usage d’un autre méridien que Greenwich : Le méridien origine peut être celui de Greenwich (méridien international), ou encore celui propre à la géodésie d’un pays (historiquement méridien de Paris pour la France). Mais chaque méridien origine est défini numériquement par sa longitude par rapport au méridien international.2) Les normes OGC n’imposent pas de choix sur les systèmes : Situation sur le terrain: Systèmes les plus couramment utilisés en France métropolitaine et dans les départements d’Outre-mer:• France métropolitaine : 21 systèmes• Guadeloupe : 6 systèmes• Martinique : 4 systèmes• Guyane : 5 systèmes• Réunion : 4 systèmes3) Systèmes géographiques, planimétriques et altimétriques : Voir décret simple 2006-272 du 03 mars 2006 modifiant le décret n° 2000-1276 du 26 décembre 2000. 

**Utilisations:**

* Utiliser ce Modèle logique: [Lieu](StructureDefinition-Lieu.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/CoordonneeGeographique)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CoordonneeGeographique.csv), [Excel](StructureDefinition-CoordonneeGeographique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CoordonneeGeographique",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CoordonneeGeographique",
  "version" : "0.1.0",
  "name" : "CoordonneeGeographique",
  "title" : "CoordonneeGeographique",
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
  "description" : "Ensemble des coordonnées géographiques d'un point spécifique telles que la longitude, la latitude et l'altitude, exprimées suivant un système géodésique choisi. Il convient de distinguer les coordonnées géographiques des coordonnées projetées suivant différents systèmes de projection.Note complémentaire sur l'usage de la classe :1) Usage d'un autre méridien que Greenwich : Le méridien origine peut être celui de Greenwich (méridien international), ou encore celui propre à la géodésie d'un pays (historiquement méridien de Paris pour la France). Mais chaque méridien origine est défini numériquement par sa longitude par rapport au méridien international.2) Les normes OGC n'imposent pas de choix sur les systèmes : Situation sur le terrain: Systèmes les plus couramment utilisés en France métropolitaine et dans les départements d'Outre-mer:• France métropolitaine : 21 systèmes• Guadeloupe : 6 systèmes• Martinique : 4 systèmes• Guyane : 5 systèmes• Réunion : 4 systèmes3) Systèmes géographiques, planimétriques et altimétriques : Voir décret simple 2006-272 du 03 mars 2006 modifiant le décret n° 2000-1276 du 26 décembre 2000.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CoordonneeGeographique",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CoordonneeGeographique",
        "path" : "CoordonneeGeographique",
        "short" : "Ensemble des coordonnées géographiques d'un point spécifique telles que la longitude, la latitude et l'altitude, exprimées suivant un système géodésique choisi. Il convient de distinguer les coordonnées géographiques des coordonnées projetées suivant différents systèmes de projection.Note complémentaire sur l'usage de la classe :1) Usage d'un autre méridien que Greenwich : Le méridien origine peut être celui de Greenwich (méridien international), ou encore celui propre à la géodésie d'un pays (historiquement méridien de Paris pour la France). Mais chaque méridien origine est défini numériquement par sa longitude par rapport au méridien international.2) Les normes OGC n'imposent pas de choix sur les systèmes : Situation sur le terrain: Systèmes les plus couramment utilisés en France métropolitaine et dans les départements d'Outre-mer:• France métropolitaine : 21 systèmes• Guadeloupe : 6 systèmes• Martinique : 4 systèmes• Guyane : 5 systèmes• Réunion : 4 systèmes3) Systèmes géographiques, planimétriques et altimétriques : Voir décret simple 2006-272 du 03 mars 2006 modifiant le décret n° 2000-1276 du 26 décembre 2000.",
        "definition" : "Ensemble des coordonnées géographiques d'un point spécifique telles que la longitude, la latitude et l'altitude, exprimées suivant un système géodésique choisi. Il convient de distinguer les coordonnées géographiques des coordonnées projetées suivant différents systèmes de projection.Note complémentaire sur l'usage de la classe :1) Usage d'un autre méridien que Greenwich : Le méridien origine peut être celui de Greenwich (méridien international), ou encore celui propre à la géodésie d'un pays (historiquement méridien de Paris pour la France). Mais chaque méridien origine est défini numériquement par sa longitude par rapport au méridien international.2) Les normes OGC n'imposent pas de choix sur les systèmes : Situation sur le terrain: Systèmes les plus couramment utilisés en France métropolitaine et dans les départements d'Outre-mer:• France métropolitaine : 21 systèmes• Guadeloupe : 6 systèmes• Martinique : 4 systèmes• Guyane : 5 systèmes• Réunion : 4 systèmes3) Systèmes géographiques, planimétriques et altimétriques : Voir décret simple 2006-272 du 03 mars 2006 modifiant le décret n° 2000-1276 du 26 décembre 2000."
      },
      {
        "id" : "CoordonneeGeographique.systemeGeodesique",
        "path" : "CoordonneeGeographique.systemeGeodesique",
        "short" : "Une identification du système de référence fixant les règles de mesure des positions géographiques. Le système géodésique intègre la description de l'ellipsoïde choisie.Exemple :- RGF93 pour la France métropolitaine fixé par le décret no 2000-1276 du 26 décembre 2000 ;- WGS 84, World Geodetic System 1984, système géodésique utilisé notamment par le système GPS.",
        "definition" : "Une identification du système de référence fixant les règles de mesure des positions géographiques. Le système géodésique intègre la description de l'ellipsoïde choisie.Exemple :- RGF93 pour la France métropolitaine fixé par le décret no 2000-1276 du 26 décembre 2000 ;- WGS 84, World Geodetic System 1984, système géodésique utilisé notamment par le système GPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "CoordonneeGeographique.latitude",
        "path" : "CoordonneeGeographique.latitude",
        "short" : "Une mesure de la distance angulaire nord ou sud depuis l'équateur jusqu'au parallèle du spécifique.L'unité de mesure est spécifiée dans le type \"Mesure\". Le choix est possible entre le Degré Décimal (DD) et le Degré Minute Seconde (DMS), l'unité de mesure est obligatoire dans l'échange.",
        "definition" : "Une mesure de la distance angulaire nord ou sud depuis l'équateur jusqu'au parallèle du spécifique.L'unité de mesure est spécifiée dans le type \"Mesure\". Le choix est possible entre le Degré Décimal (DD) et le Degré Minute Seconde (DMS), l'unité de mesure est obligatoire dans l'échange.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "CoordonneeGeographique.directionLatitude",
        "path" : "CoordonneeGeographique.directionLatitude",
        "short" : "Indicateur spécifiant la direction Nord (+) ou (N) et la direction Sud (-) ou (S) depuis l'équateur jusqu'au parallèle du point spécifique.",
        "definition" : "Indicateur spécifiant la direction Nord (+) ou (N) et la direction Sud (-) ou (S) depuis l'équateur jusqu'au parallèle du point spécifique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R205-DirectionLatitude/FHIR/TRE-R205-DirectionLatitude?vs"
        }
      },
      {
        "id" : "CoordonneeGeographique.longitude",
        "path" : "CoordonneeGeographique.longitude",
        "short" : "Une mesure de la distance angulaire est ou ouest depuis le méridien de Greenwich jusqu'au méridien du point spécifiqueL'unité de mesure est spécifiée dans le type \"Mesure\". Le choix est possible entre le Degré Décimal (DD) et le Degré Minute Seconde (DMS), l'unité de mesure est obligatoire dans l'échange.",
        "definition" : "Une mesure de la distance angulaire est ou ouest depuis le méridien de Greenwich jusqu'au méridien du point spécifiqueL'unité de mesure est spécifiée dans le type \"Mesure\". Le choix est possible entre le Degré Décimal (DD) et le Degré Minute Seconde (DMS), l'unité de mesure est obligatoire dans l'échange.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "CoordonneeGeographique.directionLongitude",
        "path" : "CoordonneeGeographique.directionLongitude",
        "short" : "Indicateur spécifiant la direction Ouest (-) ou (W) et la direction Est (+) ou (E) depuis le méridien de Greenwich jusqu'au méridien du point spécifique.",
        "definition" : "Indicateur spécifiant la direction Ouest (-) ou (W) et la direction Est (+) ou (E) depuis le méridien de Greenwich jusqu'au méridien du point spécifique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R204-DirectionLongitude/FHIR/TRE-R204-DirectionLongitude?vs"
        }
      },
      {
        "id" : "CoordonneeGeographique.systemeAltimetrique",
        "path" : "CoordonneeGeographique.systemeAltimetrique",
        "short" : "Une identification du système de référence fixant les règles de mesure de l'altitude.",
        "definition" : "Une identification du système de référence fixant les règles de mesure de l'altitude.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "CoordonneeGeographique.altitude",
        "path" : "CoordonneeGeographique.altitude",
        "short" : "Une mesure de la hauteur du point spécifique par rapport au niveau de la mer. L'unité de mesure est spécifiée dans le type \"Mesure\". En général, l'unité de mesure choisie est le mètre.",
        "definition" : "Une mesure de la hauteur du point spécifique par rapport au niveau de la mer. L'unité de mesure est spécifiée dans le type \"Mesure\". En général, l'unité de mesure choisie est le mètre.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "CoordonneeGeographique.typePrecision",
        "path" : "CoordonneeGeographique.typePrecision",
        "short" : "Type de précision peut prendre par exemple les valeurs suivantes :** «Numéro de rue» : type de précision au numéro près (donc la plus fine);** «Rue» : type de précision à la voie (donc moins précise);** «Ville» : type de précision à la ville (donc la plus grossière).",
        "definition" : "Type de précision peut prendre par exemple les valeurs suivantes :** «Numéro de rue» : type de précision au numéro près (donc la plus fine);** «Rue» : type de précision à la voie (donc moins précise);** «Ville» : type de précision à la ville (donc la plus grossière).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "CoordonneeGeographique.precision",
        "path" : "CoordonneeGeographique.precision",
        "short" : "La précision est un numérique indiquant le degré de qualité de la valeur retournée dans le type (par exemple la valeur  1.0 pour une précision exacte).Les adresses déjà géolocalisées avec une précision différente de 1.0 seront prises en compte dans le processus initial pour tenter une nouvelle géolocalisation.",
        "definition" : "La précision est un numérique indiquant le degré de qualité de la valeur retournée dans le type (par exemple la valeur  1.0 pour une précision exacte).Les adresses déjà géolocalisées avec une précision différente de 1.0 seront prises en compte dans le processus initial pour tenter une nouvelle géolocalisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "CoordonneeGeographique.coordonneeFiable",
        "path" : "CoordonneeGeographique.coordonneeFiable",
        "short" : "Cet attribut permet de signaler que les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité.Valeurs possibles :- 1 = les coordonnées géographiques sont fiables- 0 = les coordonnées géographiques ne sont pas fiables",
        "definition" : "Cet attribut permet de signaler que les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité.Valeurs possibles :- 1 = les coordonnées géographiques sont fiables- 0 = les coordonnées géographiques ne sont pas fiables",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
