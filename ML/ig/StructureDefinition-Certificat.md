# Certificat - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Certificat**

## Logical Model: Certificat 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Certificat | *Version*:0.1.0 |
| Draft as of 2025-11-05 | *Computable Name*:Certificat |

 
Données descriptives du moyen d’identification par certificat. Il s’agit des certificats utilisés par les professionnels et les structures. 

**Usages:**

* Use this Logical Model: [CarteProfessionnel](StructureDefinition-CarteProfessionnel.md), [EntiteGeographique](StructureDefinition-EntiteGeographique.md), [EntiteJuridique](StructureDefinition-EntiteJuridique.md) and [ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Certificat)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Certificat.csv), [Excel](StructureDefinition-Certificat.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Certificat",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Certificat",
  "version" : "0.1.0",
  "name" : "Certificat",
  "title" : "Certificat",
  "status" : "draft",
  "date" : "2025-11-05T10:41:12+00:00",
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
  "description" : "Données descriptives du moyen d’identification par certificat. Il s'agit des certificats utilisés par les professionnels et les structures.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Certificat",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Certificat",
        "path" : "Certificat",
        "short" : "Données descriptives du moyen d’identification par certificat. Il s'agit des certificats utilisés par les professionnels et les structures.",
        "definition" : "Données descriptives du moyen d’identification par certificat. Il s'agit des certificats utilisés par les professionnels et les structures."
      },
      {
        "id" : "Certificat.numeroSerie",
        "path" : "Certificat.numeroSerie",
        "short" : "Numéro de série du certificat.Format de codage des caractères en binaire codé en ASCII.",
        "definition" : "Numéro de série du certificat.Format de codage des caractères en binaire codé en ASCII.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Certificat.dNEmetteur",
        "path" : "Certificat.dNEmetteur",
        "short" : "DN (Distinguished Name - Nom distinctif) de l’autorité de certification (AC) émettrice du certificat, le format respecte le standard RFC-4514, avec un codage des caractères en UTF8.",
        "definition" : "DN (Distinguished Name - Nom distinctif) de l’autorité de certification (AC) émettrice du certificat, le format respecte le standard RFC-4514, avec un codage des caractères en UTF8.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Certificat.dNSujet",
        "path" : "Certificat.dNSujet",
        "short" : "DN (Distinguished Name - Nom distinctif) du porteur du certificat.Codage des caractères en UTF8.",
        "definition" : "DN (Distinguished Name - Nom distinctif) du porteur du certificat.Codage des caractères en UTF8.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Certificat.dateDebutValidite",
        "path" : "Certificat.dateDebutValidite",
        "short" : "Date et heure (en heure, minute, seconde) de début de validité du certificat. La date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "definition" : "Date et heure (en heure, minute, seconde) de début de validité du certificat. La date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Certificat.dateFinValidite",
        "path" : "Certificat.dateFinValidite",
        "short" : "Date et heure (en heure, minute, seconde) de fin de validité du certificat.  La date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "definition" : "Date et heure (en heure, minute, seconde) de fin de validité du certificat.  La date est en UTC (avec translation de l'heure locale en heure UTC par ajout du décalage négatif ou retranchement du décalage positif).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Certificat.usage",
        "path" : "Certificat.usage",
        "short" : "La clé d’usage (Keyusage) qui détermine l’usage autorisé du certificat.Codage des caractères en binaire codé en ASCII.",
        "definition" : "La clé d’usage (Keyusage) qui détermine l’usage autorisé du certificat.Codage des caractères en binaire codé en ASCII.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Certificat.domaine",
        "path" : "Certificat.domaine",
        "short" : "Renseigné uniquement pour les certificats logiciels de portée Structure. Ce champ correspond au CN du DNSujet, il contient soit un \"FQDN\" pour les certificats de type serveur \"SSL\", soit un nom applicatif pour les autres certificats.",
        "definition" : "Renseigné uniquement pour les certificats logiciels de portée Structure. Ce champ correspond au CN du DNSujet, il contient soit un \"FQDN\" pour les certificats de type serveur \"SSL\", soit un nom applicatif pour les autres certificats.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Certificat.adresseEmail",
        "path" : "Certificat.adresseEmail",
        "short" : "Adresse mail du professionnel ou de la structure, si présente dans le certificat (SUBALTNAME).",
        "definition" : "Adresse mail du professionnel ou de la structure, si présente dans le certificat (SUBALTNAME).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "Certificat.categorieProduit",
        "path" : "Certificat.categorieProduit",
        "short" : "Caractérise les modalités de mise en oeuvre de la clé privée et du certificat.Exemples :** Carte de professionnel ou de personnel de santé** Module de sécurité** Certificat logiciel",
        "definition" : "Caractérise les modalités de mise en oeuvre de la clé privée et du certificat.Exemples :** Carte de professionnel ou de personnel de santé** Module de sécurité** Certificat logiciel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G01-CategorieProduit/FHIR/TRE-G01-CategorieProduit?vs"
        }
      },
      {
        "id" : "Certificat.typeCarte",
        "path" : "Certificat.typeCarte",
        "short" : "Type de carte renseigné obligatoirement pour les certificats embarqués dans les cartes de professionnel (CPx).Exemples :** Carte de Professionnel de Santé (CPS)** Carte de Professionnel de santé en Formation (CPF)** Carte de Personnel d’Etablissement (CDE/CPE)** Carte de Personnel Autorisé (CDA/CPA)",
        "definition" : "Type de carte renseigné obligatoirement pour les certificats embarqués dans les cartes de professionnel (CPx).Exemples :** Carte de Professionnel de Santé (CPS)** Carte de Professionnel de santé en Formation (CPF)** Carte de Personnel d’Etablissement (CDE/CPE)** Carte de Personnel Autorisé (CDA/CPA)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R87-TypeCarte/FHIR/TRE-R87-TypeCarte?vs"
        }
      },
      {
        "id" : "Certificat.tokenId",
        "path" : "Certificat.tokenId",
        "short" : "Identification de l'émetteur du token complété du numéro de série de la carte.Cet attribut est renseigné obligatoirement pour les certificats embarqués dans les cartes CPS et optionnellement pour les modules de sécurité physique.Exemple : \"8025000001/9999999999\"  '8025000001' : Identifiant national de l'ANS'9999999999' : N° de série de la carte sur 10 chiffres",
        "definition" : "Identification de l'émetteur du token complété du numéro de série de la carte.Cet attribut est renseigné obligatoirement pour les certificats embarqués dans les cartes CPS et optionnellement pour les modules de sécurité physique.Exemple : \"8025000001/9999999999\"  '8025000001' : Identifiant national de l'ANS'9999999999' : N° de série de la carte sur 10 chiffres",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Certificat.valeurBinaire",
        "path" : "Certificat.valeurBinaire",
        "short" : "Valeur binaire du certificat (format .crt en hexadécimal, codé en ASCII).",
        "definition" : "Valeur binaire du certificat (format .crt en hexadécimal, codé en ASCII).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "base64Binary"
          }
        ]
      },
      {
        "id" : "Certificat.statutPublication",
        "path" : "Certificat.statutPublication",
        "short" : "Le statut de publication indique si l’autorisation a été donnée ou pas de publier le certificat dans l’annuaire de publication des certificats.",
        "definition" : "Le statut de publication indique si l’autorisation a été donnée ou pas de publier le certificat dans l’annuaire de publication des certificats.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Certificat.ExerciceProfessionnel",
        "path" : "Certificat.ExerciceProfessionnel",
        "short" : "Lien vers la classe ExerciceProfessionnel",
        "definition" : "Lien vers la classe ExerciceProfessionnel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel"
          }
        ]
      },
      {
        "id" : "Certificat.CarteProfessionnel",
        "path" : "Certificat.CarteProfessionnel",
        "short" : "Lien vers la classe CarteProfessionnel",
        "definition" : "Lien vers la classe CarteProfessionnel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CarteProfessionnel"
          }
        ]
      },
      {
        "id" : "Certificat.EntiteGeographique",
        "path" : "Certificat.EntiteGeographique",
        "short" : "Lien vers la classe EntiteGeographique",
        "definition" : "Lien vers la classe EntiteGeographique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique"
          }
        ]
      },
      {
        "id" : "Certificat.EntiteJuridique",
        "path" : "Certificat.EntiteJuridique",
        "short" : "Lien vers la classe EntiteJuridique",
        "definition" : "Lien vers la classe EntiteJuridique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique"
          }
        ]
      }
    ]
  }
}

```
