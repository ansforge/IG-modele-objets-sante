# Telecommunication - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telecommunication**

## Logical Model: Telecommunication 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:Telecommunication |

 
Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée (téléphone, fax, e-mail, URL, etc.). 

**Usages:**

* Use this Logical Model: [AidantDemarche](StructureDefinition-AidantDemarche.md), [BoiteLettreMSS](StructureDefinition-BoiteLettreMSS.md), [Certificat](StructureDefinition-Certificat.md), [Contact](StructureDefinition-Contact.md)...Show 10 more,[EntiteGeographique](StructureDefinition-EntiteGeographique.md),[EntiteJuridique](StructureDefinition-EntiteJuridique.md),[Lieu](StructureDefinition-Lieu.md),[Membre](StructureDefinition-Membre.md),[MesureProtection](StructureDefinition-MesureProtection.md),[Parent](StructureDefinition-Parent.md),[PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md),[Professionnel](StructureDefinition-Professionnel.md),[SituationExercice](StructureDefinition-SituationExercice.md)and[SituationOperationnelle](StructureDefinition-SituationOperationnelle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Telecommunication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Telecommunication.csv), [Excel](StructureDefinition-Telecommunication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Telecommunication",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication",
  "version" : "0.1.0",
  "name" : "Telecommunication",
  "title" : "Telecommunication",
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
  "description" : "Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée  (téléphone, fax, e-mail, URL, etc.).",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Telecommunication",
        "path" : "Telecommunication",
        "short" : "Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée  (téléphone, fax, e-mail, URL, etc.).",
        "definition" : "Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée  (téléphone, fax, e-mail, URL, etc.)."
      },
      {
        "id" : "Telecommunication.canal",
        "path" : "Telecommunication.canal",
        "short" : "Code spécifiant le canal ou la manière dont s'établit la communication (téléphone, e-mail, URL, etc.).Quelques exemples de codes:** MOB: Téléphone mobile;** FIX: Téléphone fixe;** EML: Courrier électronique;** URL: Uniform Resource Location;** FTP: File Transfer Protocol;** FAX: Télécopie.",
        "definition" : "Code spécifiant le canal ou la manière dont s'établit la communication (téléphone, e-mail, URL, etc.).Quelques exemples de codes:** MOB: Téléphone mobile;** FIX: Téléphone fixe;** EML: Courrier électronique;** URL: Uniform Resource Location;** FTP: File Transfer Protocol;** FAX: Télécopie.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication?vs"
        }
      },
      {
        "id" : "Telecommunication.adresseTelecom",
        "path" : "Telecommunication.adresseTelecom",
        "short" : "Valeur de l'adresse de télécommunication dans le format induit par le canal de communication, par exemple un numéro de téléphone, une adresse de courrier électronique, une adresse URL, etc.",
        "definition" : "Valeur de l'adresse de télécommunication dans le format induit par le canal de communication, par exemple un numéro de téléphone, une adresse de courrier électronique, une adresse URL, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Telecommunication.typeMessagerie",
        "path" : "Telecommunication.typeMessagerie",
        "short" : "Type de messagerie électronique rassemblant des acteurs (personne physique, personne morale ou système) identifiés et enregistrés selon des règles qui garantissent leur légitimité à l'utiliser. L'échange de messages obéit à des spécifications fonctionnelles et techniques propres à ce type de messagerie.",
        "definition" : "Type de messagerie électronique rassemblant des acteurs (personne physique, personne morale ou système) identifiés et enregistrés selon des règles qui garantissent leur légitimité à l'utiliser. L'échange de messages obéit à des spécifications fonctionnelles et techniques propres à ce type de messagerie.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R256-TypeMessagerie/FHIR/TRE-R256-TypeMessagerie?vs"
        }
      },
      {
        "id" : "Telecommunication.utilisation",
        "path" : "Telecommunication.utilisation",
        "short" : "Précise l'utilisation du canal de communication (par exemple à des fins professionnelles, privées, etc.).",
        "definition" : "Précise l'utilisation du canal de communication (par exemple à des fins professionnelles, privées, etc.).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Telecommunication.niveauConfidentialite",
        "path" : "Telecommunication.niveauConfidentialite",
        "short" : "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Telecommunication.",
        "definition" : "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Telecommunication.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite?vs"
        }
      }
    ]
  }
}

```
