# BoiteLettreMSS - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BoiteLettreMSS**

## Logical Model: BoiteLettreMSS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS | *Version*:0.1.0 |
| Draft as of 2025-11-26 | *Computable Name*:BoiteLettreMSS |

 
Informations descriptives des boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures.Synonyme: BAL MSS 

**Usages:**

* Use this Logical Model: [EntiteGeographique](StructureDefinition-EntiteGeographique.md), [EntiteJuridique](StructureDefinition-EntiteJuridique.md), [ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md), [OffreOperationnelle](StructureDefinition-OffreOperationnelle.md)...Show 3 more,[OrganisationInterne](StructureDefinition-OrganisationInterne.md),[Professionnel](StructureDefinition-Professionnel.md)and[SituationExercice](StructureDefinition-SituationExercice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/BoiteLettreMSS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BoiteLettreMSS.csv), [Excel](StructureDefinition-BoiteLettreMSS.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BoiteLettreMSS",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS",
  "version" : "0.1.0",
  "name" : "BoiteLettreMSS",
  "title" : "BoiteLettreMSS",
  "status" : "draft",
  "date" : "2025-11-26T08:12:20+00:00",
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
  "description" : "Informations descriptives des boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures.Synonyme: BAL MSS",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BoiteLettreMSS",
        "path" : "BoiteLettreMSS",
        "short" : "Informations descriptives des boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures.Synonyme: BAL MSS",
        "definition" : "Informations descriptives des boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures.Synonyme: BAL MSS"
      },
      {
        "id" : "BoiteLettreMSS.adresseMSS",
        "path" : "BoiteLettreMSS.adresseMSS",
        "short" : "Adresse unique de messagerie sécurisée dans un domaine de messagerie MSSanté.",
        "definition" : "Adresse unique de messagerie sécurisée dans un domaine de messagerie MSSanté.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "BoiteLettreMSS.typeBAL",
        "path" : "BoiteLettreMSS.typeBAL",
        "short" : "Type de boîte aux lettres.Valeurs possibles :** ORG pour une BAL organisationnelle** APP pour une BAL applicative** PER pour une BAL personnelle, rattachée à une personne physiqueUne BAL de type ORG ou APP est rattachée à une personne morale (entité géographique ou entité juridique) et son usage s’effectue sous la responsabilité d’un ou plusieurs professionnels habilités à échanger des données de santé personnelles.",
        "definition" : "Type de boîte aux lettres.Valeurs possibles :** ORG pour une BAL organisationnelle** APP pour une BAL applicative** PER pour une BAL personnelle, rattachée à une personne physiqueUne BAL de type ORG ou APP est rattachée à une personne morale (entité géographique ou entité juridique) et son usage s’effectue sous la responsabilité d’un ou plusieurs professionnels habilités à échanger des données de santé personnelles.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R257-TypeBAL/FHIR/TRE-R257-TypeBAL?vs"
        }
      },
      {
        "id" : "BoiteLettreMSS.description",
        "path" : "BoiteLettreMSS.description",
        "short" : "Description fonctionnelle de la boîte aux lettres.",
        "definition" : "Description fonctionnelle de la boîte aux lettres.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BoiteLettreMSS.responsable",
        "path" : "BoiteLettreMSS.responsable",
        "short" : "Texte libre donnant les coordonnées de la (ou des) personne(s) responsable(s) au niveau opérationnel de la boîte aux lettres. Non renseigné pour les types de boîte aux lettres \"PER\".",
        "definition" : "Texte libre donnant les coordonnées de la (ou des) personne(s) responsable(s) au niveau opérationnel de la boîte aux lettres. Non renseigné pour les types de boîte aux lettres \"PER\".",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BoiteLettreMSS.serviceRattachement",
        "path" : "BoiteLettreMSS.serviceRattachement",
        "short" : "Nom et description du service de rattachement de l’utilisateur de la boîte aux lettres dans l’organisation.",
        "definition" : "Nom et description du service de rattachement de l’utilisateur de la boîte aux lettres dans l’organisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BoiteLettreMSS.telephone",
        "path" : "BoiteLettreMSS.telephone",
        "short" : "Coordonnées téléphoniques spécifiques à l’usage de la boîte aux lettres MSSanté.",
        "definition" : "Coordonnées téléphoniques spécifiques à l’usage de la boîte aux lettres MSSanté.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "BoiteLettreMSS.dematerialisation",
        "path" : "BoiteLettreMSS.dematerialisation",
        "short" : "Indicateur d’acceptation de la dématérialisation (ou « Zéro papier »).Un utilisateur peut porter à la connaissance des autres utilisateurs du système MSSanté, via l’Annuaire national MSSanté son souhait de ne plus recevoir par voie papier des documents d’ores et déjà reçus par voie électronique dans le cadre du système MSSanté. Cette option s’applique également pour les BAL applicatives ou organisationnelles.Valeurs possibles : - O : Dématérialisation acceptée - N : Dématérialisation refusée",
        "definition" : "Indicateur d’acceptation de la dématérialisation (ou « Zéro papier »).Un utilisateur peut porter à la connaissance des autres utilisateurs du système MSSanté, via l’Annuaire national MSSanté son souhait de ne plus recevoir par voie papier des documents d’ores et déjà reçus par voie électronique dans le cadre du système MSSanté. Cette option s’applique également pour les BAL applicatives ou organisationnelles.Valeurs possibles : - O : Dématérialisation acceptée - N : Dématérialisation refusée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "BoiteLettreMSS.listeRouge",
        "path" : "BoiteLettreMSS.listeRouge",
        "short" : "Indicateur liste rougeValeurs possibles :** O: Boîte aux lettres en liste rouge** N: La boîte aux lettres peut être publiée",
        "definition" : "Indicateur liste rougeValeurs possibles :** O: Boîte aux lettres en liste rouge** N: La boîte aux lettres peut être publiée",
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
