# PoleActivite - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PoleActivite**

## Logical Model: PoleActivite 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PoleActivite | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:PoleActivite |

 
Loi HPST, art.13: “Pour les établissements publics de santé, le directeur définit l’organisation de l’établissement en pôles d’activité conformément au projet médical d’établissement, après avis […]. Le directeur général de l’agence régionale de santé peut autoriser un établissement à ne pas créer de pôles d’activité quand l’effectif médical de l’établissement le justifie.Les pôles d’activité peuvent comporter des structures internes de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques ainsi que les structures médico-techniques qui leur sont associées”.Extrait de “La loi HPST à l’hôpital, les clés pour comprendre - Ministère de la Santé- ANAP”: “Les pôles d’activité clinique et médico-technique peuvent comporter des “structures internes” de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques”.Les pôles peuvent être multi-sites, c’est à dire qu’un même pôle peut comporter des structures internes situées dans différentes entités géographiques d’une même entité juridique. 

**Utilisations:**

* Ce Modèle logique nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/PoleActivite)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PoleActivite.csv), [Excel](StructureDefinition-PoleActivite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PoleActivite",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PoleActivite",
  "version" : "0.1.0",
  "name" : "PoleActivite",
  "title" : "PoleActivite",
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
  "description" : "Loi HPST, art.13: \"Pour les établissements publics de santé, le directeur définit l'organisation de l'établissement en pôles d'activité conformément au projet médical d'établissement, après avis [...]. Le directeur général de l'agence régionale de santé peut autoriser un établissement à ne pas créer de pôles d'activité quand l'effectif médical de l'établissement le justifie.Les pôles d'activité peuvent comporter des structures internes de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques ainsi que les structures médico-techniques qui leur sont associées\".Extrait de \"La loi HPST à l'hôpital, les clés pour comprendre - Ministère de la Santé- ANAP\": \"Les pôles d’activité clinique et médico-technique peuvent comporter des \"structures internes\" de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques\".Les pôles peuvent être multi-sites, c'est à dire qu'un même pôle peut comporter des structures internes situées dans différentes entités géographiques d'une même entité juridique.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PoleActivite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PoleActivite",
        "path" : "PoleActivite",
        "short" : "Loi HPST, art.13: \"Pour les établissements publics de santé, le directeur définit l'organisation de l'établissement en pôles d'activité conformément au projet médical d'établissement, après avis [...]. Le directeur général de l'agence régionale de santé peut autoriser un établissement à ne pas créer de pôles d'activité quand l'effectif médical de l'établissement le justifie.Les pôles d'activité peuvent comporter des structures internes de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques ainsi que les structures médico-techniques qui leur sont associées\".Extrait de \"La loi HPST à l'hôpital, les clés pour comprendre - Ministère de la Santé- ANAP\": \"Les pôles d’activité clinique et médico-technique peuvent comporter des \"structures internes\" de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques\".Les pôles peuvent être multi-sites, c'est à dire qu'un même pôle peut comporter des structures internes situées dans différentes entités géographiques d'une même entité juridique.",
        "definition" : "Loi HPST, art.13: \"Pour les établissements publics de santé, le directeur définit l'organisation de l'établissement en pôles d'activité conformément au projet médical d'établissement, après avis [...]. Le directeur général de l'agence régionale de santé peut autoriser un établissement à ne pas créer de pôles d'activité quand l'effectif médical de l'établissement le justifie.Les pôles d'activité peuvent comporter des structures internes de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques ainsi que les structures médico-techniques qui leur sont associées\".Extrait de \"La loi HPST à l'hôpital, les clés pour comprendre - Ministère de la Santé- ANAP\": \"Les pôles d’activité clinique et médico-technique peuvent comporter des \"structures internes\" de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques\".Les pôles peuvent être multi-sites, c'est à dire qu'un même pôle peut comporter des structures internes situées dans différentes entités géographiques d'une même entité juridique."
      }
    ]
  }
}

```
