# Lieu - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lieu**

## Logical Model: Lieu 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:Lieu |

 
Informations relatives à une portion déterminée de l’espace, fixe ou mobile du point de vue de son affectation ou de ce qui s’y passe.Cas particulier de l’entité géographique : plusieurs lieux peuvent être associés à une même EG, ils peuvent décrire, à la fois, son addresse et des lieux spécifiques à l’EG. 

**Usages:**

* Use this Logical Model: [Contact](StructureDefinition-Contact.md) and [EntiteGeographique](StructureDefinition-EntiteGeographique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Lieu)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Lieu.csv), [Excel](StructureDefinition-Lieu.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Lieu",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu",
  "version" : "0.1.0",
  "name" : "Lieu",
  "title" : "Lieu",
  "status" : "draft",
  "date" : "2025-10-29T11:46:56+00:00",
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
  "description" : "Informations relatives à une portion déterminée de l'espace, fixe ou mobile du point de vue de son affectation ou de ce qui s'y passe.Cas particulier de l'entité géographique : plusieurs lieux peuvent être associés à une même EG, ils peuvent décrire, à la fois, son addresse et des lieux spécifiques à l'EG.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Lieu",
        "path" : "Lieu",
        "short" : "Informations relatives à une portion déterminée de l'espace, fixe ou mobile du point de vue de son affectation ou de ce qui s'y passe.Cas particulier de l'entité géographique : plusieurs lieux peuvent être associés à une même EG, ils peuvent décrire, à la fois, son addresse et des lieux spécifiques à l'EG.",
        "definition" : "Informations relatives à une portion déterminée de l'espace, fixe ou mobile du point de vue de son affectation ou de ce qui s'y passe.Cas particulier de l'entité géographique : plusieurs lieux peuvent être associés à une même EG, ils peuvent décrire, à la fois, son addresse et des lieux spécifiques à l'EG."
      },
      {
        "id" : "Lieu.identifiant",
        "path" : "Lieu.identifiant",
        "short" : "Identifiant(s) métier du lieu.",
        "definition" : "Identifiant(s) métier du lieu.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Lieu.nom",
        "path" : "Lieu.nom",
        "short" : "Nom, exprimé sous la forme de texte, du lieu.",
        "definition" : "Nom, exprimé sous la forme de texte, du lieu.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Lieu.description",
        "path" : "Lieu.description",
        "short" : "Description textuelle du lieu, indiquant comment l'atteindre.",
        "definition" : "Description textuelle du lieu, indiquant comment l'atteindre.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Lieu.typeLieu",
        "path" : "Lieu.typeLieu",
        "short" : "Information catégorisant physiquement le lieu, par exemple un bâtiment, un véhicule, une chambre, une route, etc.",
        "definition" : "Information catégorisant physiquement le lieu, par exemple un bâtiment, un véhicule, une chambre, une route, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "Lieu.fonctionLieu",
        "path" : "Lieu.fonctionLieu",
        "short" : "Fonction à laquelle le lieu est dédié. Par exemple, le lieu d'implantation d'une entité géographique ou la salle de prélévements dans un service.",
        "definition" : "Fonction à laquelle le lieu est dédié. Par exemple, le lieu d'implantation d'une entité géographique ou la salle de prélévements dans un service.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "Lieu.statut",
        "path" : "Lieu.statut",
        "short" : "Le statut indique si le lieu est opérationnel, fermé temporairement ou fermé définitivement.Quelques exemples de codes :** FD : Fermé définitivement;** FT : Fermé temporairement;** OP : Opérationnel.",
        "definition" : "Le statut indique si le lieu est opérationnel, fermé temporairement ou fermé définitivement.Quelques exemples de codes :** FD : Fermé définitivement;** FT : Fermé temporairement;** OP : Opérationnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R203-StatutLieu/FHIR/TRE-R203-StatutLieu?vs"
        }
      },
      {
        "id" : "Lieu.accessibiliteLieu",
        "path" : "Lieu.accessibiliteLieu",
        "short" : "Information précisant dans quelle mesure le lieu est conforme aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public (ex : accessible, non accessible, sur demande, non communiqué, etc.).Rappel sur l'obligation d'accessibilité des établissements recevant du public (ERP) aux personnes handicapées (service-public.fr):Les établissements ouverts au public (magasin, bureau, hôtel, etc.) doivent être accessibles aux personnes handicapées. Les établissements recevant du public (ERP) non conformes aux règles d'accessibilité sont tenus de s'inscrire à un Agenda d'Accessibilité Programmée (Ad'AP) qui permet d'engager les travaux nécessaires dans un délai limité.Règles d'accessibilité:Les normes d'accessibilité doivent permettre aux personnes handicapées de circuler avec la plus grande autonomie possible, d'accéder aux locaux et équipements, d'utiliser les équipements et les prestations, de se repérer et de communiquer.L'accès concerne tout type de handicap (moteur, visuel, auditif, mental...).Les conditions d'accès doivent être les mêmes que pour les personnes valides ou, à défaut, présenter une qualité d'usage équivalente.L'accessibilité de ces établissements et de leurs abords concerne :** les cheminements extérieurs,** le stationnement des véhicules,** les conditions d'accès et d'accueil dans les bâtiments,** les circulations horizontales et verticales à l'intérieur des bâtiments,** les locaux intérieurs et les sanitaires ouverts au public,** les portes, les sas intérieurs et les sorties,** les revêtements des sols et des parois,** les équipements et mobiliers intérieurs et extérieurs susceptibles d'y être installés (dispositifs d'éclairage et d'information des usagers, par exemple).",
        "definition" : "Information précisant dans quelle mesure le lieu est conforme aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public (ex : accessible, non accessible, sur demande, non communiqué, etc.).Rappel sur l'obligation d'accessibilité des établissements recevant du public (ERP) aux personnes handicapées (service-public.fr):Les établissements ouverts au public (magasin, bureau, hôtel, etc.) doivent être accessibles aux personnes handicapées. Les établissements recevant du public (ERP) non conformes aux règles d'accessibilité sont tenus de s'inscrire à un Agenda d'Accessibilité Programmée (Ad'AP) qui permet d'engager les travaux nécessaires dans un délai limité.Règles d'accessibilité:Les normes d'accessibilité doivent permettre aux personnes handicapées de circuler avec la plus grande autonomie possible, d'accéder aux locaux et équipements, d'utiliser les équipements et les prestations, de se repérer et de communiquer.L'accès concerne tout type de handicap (moteur, visuel, auditif, mental...).Les conditions d'accès doivent être les mêmes que pour les personnes valides ou, à défaut, présenter une qualité d'usage équivalente.L'accessibilité de ces établissements et de leurs abords concerne :** les cheminements extérieurs,** le stationnement des véhicules,** les conditions d'accès et d'accueil dans les bâtiments,** les circulations horizontales et verticales à l'intérieur des bâtiments,** les locaux intérieurs et les sanitaires ouverts au public,** les portes, les sas intérieurs et les sorties,** les revêtements des sols et des parois,** les équipements et mobiliers intérieurs et extérieurs susceptibles d'y être installés (dispositifs d'éclairage et d'information des usagers, par exemple).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R202-AccessibiliteLieu/FHIR/TRE-R202-AccessibiliteLieu?vs"
        }
      },
      {
        "id" : "Lieu.communeCOG",
        "path" : "Lieu.communeCOG",
        "short" : "Code officiel géographique (COG) de la commune dans laquelle le lieu est situé.",
        "definition" : "Code officiel géographique (COG) de la commune dans laquelle le lieu est situé.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM?vs"
        }
      },
      {
        "id" : "Lieu.adresse",
        "path" : "Lieu.adresse",
        "short" : "Adresse géopostale du lieu.",
        "definition" : "Adresse géopostale du lieu.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "Lieu.coordonneeGeographique",
        "path" : "Lieu.coordonneeGeographique",
        "short" : "Coordonnées géographiques du lieu.",
        "definition" : "Coordonnées géographiques du lieu.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CoordonneeGeographique"
          }
        ]
      },
      {
        "id" : "Lieu.telecommunication",
        "path" : "Lieu.telecommunication",
        "short" : "Adresse(s) de télécommunication du lieu (numéro de téléphone, adresse email, URL, etc.).",
        "definition" : "Adresse(s) de télécommunication du lieu (numéro de téléphone, adresse email, URL, etc.).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      }
    ]
  }
}

```
