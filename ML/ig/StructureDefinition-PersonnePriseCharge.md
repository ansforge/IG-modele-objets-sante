# PersonnePriseCharge - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PersonnePriseCharge**

## Logical Model: PersonnePriseCharge 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge | *Version*:0.1.0 |
| Draft as of 2025-11-03 | *Computable Name*:PersonnePriseCharge |

 
Personne physique bénéficiaire de soins, d’examens, d’actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager. 

**Usages:**

* Use this Logical Model: [NoteLiaison](StructureDefinition-NoteLiaison.md), [Professionnel](StructureDefinition-Professionnel.md), [VieProfessionnelle](StructureDefinition-VieProfessionnelle.md) and [VieQuotidienne](StructureDefinition-VieQuotidienne.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/PersonnePriseCharge)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PersonnePriseCharge.csv), [Excel](StructureDefinition-PersonnePriseCharge.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PersonnePriseCharge",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge",
  "version" : "0.1.0",
  "name" : "PersonnePriseCharge",
  "title" : "PersonnePriseCharge",
  "status" : "draft",
  "date" : "2025-11-03T11:12:25+00:00",
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
  "description" : "Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PersonnePriseCharge",
        "path" : "PersonnePriseCharge",
        "short" : "Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager.",
        "definition" : "Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager."
      },
      {
        "id" : "PersonnePriseCharge.idPersonnePriseCharge",
        "path" : "PersonnePriseCharge.idPersonnePriseCharge",
        "short" : "Identifiant secondaire de la personne prise en charge.",
        "definition" : "Identifiant secondaire de la personne prise en charge.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.personne",
        "path" : "PersonnePriseCharge.personne",
        "short" : "Identité civile de la personne prise en charge.",
        "definition" : "Identité civile de la personne prise en charge.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.preferenceCommunication",
        "path" : "PersonnePriseCharge.preferenceCommunication",
        "short" : "Moyen de communication privilégié de la personne prise en charge.",
        "definition" : "Moyen de communication privilégié de la personne prise en charge.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.contact",
        "path" : "PersonnePriseCharge.contact",
        "short" : "Coordonnées des personnes à contacter en cas de besoin.",
        "definition" : "Coordonnées des personnes à contacter en cas de besoin.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.adresseCorrespondance",
        "path" : "PersonnePriseCharge.adresseCorrespondance",
        "short" : "Adresse(s) de correspondance de la personne prise en charge.",
        "definition" : "Adresse(s) de correspondance de la personne prise en charge.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.telecommunication",
        "path" : "PersonnePriseCharge.telecommunication",
        "short" : "Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, URL, etc.).",
        "definition" : "Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, URL, etc.).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS",
        "path" : "PersonnePriseCharge.INS",
        "short" : "L'INS a pour signification « Identité Nationale de Santé »Préambule : Les informations constituant l'INS sont délibérément disjointes des informations de la personne physique qui sont utilisées dans des contextes différents de celui de l'INS.Les informations de l'INS permettent de  : ** sécuriser le référencement des données de santé;** favoriser l'échange et le partage;** améliorer la qualité et la sécurité de la prise en charge.Seuls les acteurs de la santé et du médico-social concourant à la prise en charge de l’usager, au suivi médico-social de la personne, ou menant des actions de prévention sont tenus d’utiliser l’INS.  L'INS référence les données de santé et se compose des éléments suivants: ** un matricule INS : le numéro d’inscription au répertoire national d’identification des personnes physiques (NIR) ou le numéro identifiant d’attente (NIA) pour les personnes en instance d’attribution d’un NIR (Art. R. 1111-8-1.-I du CSP); ** des traits d'identité de l'état civil : nom de naissance, prénom (liste des prénoms de naissance), date de naissance, sexe et lieu de naissance; ** des traits complémentaires provenant du Référentiel National d'Identitovigilance (RNIV) : premier prénom de l'acte de naissance, prénom utilisé et nom utilisé. Toute personne née sur le sol français et/ou bénéficiaire de l'assurance maladie dispose de son INS, unique et propre à chaque usage.",
        "definition" : "L'INS a pour signification « Identité Nationale de Santé »Préambule : Les informations constituant l'INS sont délibérément disjointes des informations de la personne physique qui sont utilisées dans des contextes différents de celui de l'INS.Les informations de l'INS permettent de  : ** sécuriser le référencement des données de santé;** favoriser l'échange et le partage;** améliorer la qualité et la sécurité de la prise en charge.Seuls les acteurs de la santé et du médico-social concourant à la prise en charge de l’usager, au suivi médico-social de la personne, ou menant des actions de prévention sont tenus d’utiliser l’INS.  L'INS référence les données de santé et se compose des éléments suivants: ** un matricule INS : le numéro d’inscription au répertoire national d’identification des personnes physiques (NIR) ou le numéro identifiant d’attente (NIA) pour les personnes en instance d’attribution d’un NIR (Art. R. 1111-8-1.-I du CSP); ** des traits d'identité de l'état civil : nom de naissance, prénom (liste des prénoms de naissance), date de naissance, sexe et lieu de naissance; ** des traits complémentaires provenant du Référentiel National d'Identitovigilance (RNIV) : premier prénom de l'acte de naissance, prénom utilisé et nom utilisé. Toute personne née sur le sol français et/ou bénéficiaire de l'assurance maladie dispose de son INS, unique et propre à chaque usage.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.matricule",
        "path" : "PersonnePriseCharge.INS.matricule",
        "short" : "La loi consacre comme matricule INS, le NIR et à défaut le NIA.Communément appelé numéro de sécurité sociale, le numéro d’inscription au répertoire (NIR) est un identifiant unique attribué à toute personne inscrite au répertoire national d'identification des personnes physiques (RNIPP). La forme du NIR est spécifiée par le décret n° 82-103 du 22 janvier 1982 [D82-103]. Il est formé de 13 caractères (chiffres ou lettres) et de la clé de contrôle.Le numéro identifiant d’attente (NIA) doit être utilisé comme matricule INS pour toute personne qui ne dispose pas encore de NIR et pour laquelle une procédure d’affectation de NIR est en cours.Dans la très grande majorité des cas, le NIA est identique au NIR qui sera affecté à la personne. Dans le cas exceptionnel où la procédure de vérification des pièces justificatives fait apparaître la nécessité de correction de éléments d’identité ayant un impact sur le NIR, le NIR attribué est différent du NIA.Dans tous les cas, le lien entre le NIR et le NIA est conservé dans les bases de référence.(Référentiel Identifiant national de santé)L’OID d’affection de l’identifiant utilisé doit représenter la personne morale responsable de la collecte de l’identité véhiculée : ** 1.2.250.1.213.1.4.8 - autorité d'affectation INS-NIR** 1.2.250.1.213.1.4.9 - autorité d'affectation INS-NIAL'OID est véhiculé dans l'identifiant par l'attribut identifiantSystem.",
        "definition" : "La loi consacre comme matricule INS, le NIR et à défaut le NIA.Communément appelé numéro de sécurité sociale, le numéro d’inscription au répertoire (NIR) est un identifiant unique attribué à toute personne inscrite au répertoire national d'identification des personnes physiques (RNIPP). La forme du NIR est spécifiée par le décret n° 82-103 du 22 janvier 1982 [D82-103]. Il est formé de 13 caractères (chiffres ou lettres) et de la clé de contrôle.Le numéro identifiant d’attente (NIA) doit être utilisé comme matricule INS pour toute personne qui ne dispose pas encore de NIR et pour laquelle une procédure d’affectation de NIR est en cours.Dans la très grande majorité des cas, le NIA est identique au NIR qui sera affecté à la personne. Dans le cas exceptionnel où la procédure de vérification des pièces justificatives fait apparaître la nécessité de correction de éléments d’identité ayant un impact sur le NIR, le NIR attribué est différent du NIA.Dans tous les cas, le lien entre le NIR et le NIA est conservé dans les bases de référence.(Référentiel Identifiant national de santé)L’OID d’affection de l’identifiant utilisé doit représenter la personne morale responsable de la collecte de l’identité véhiculée : ** 1.2.250.1.213.1.4.8 - autorité d'affectation INS-NIR** 1.2.250.1.213.1.4.9 - autorité d'affectation INS-NIAL'OID est véhiculé dans l'identifiant par l'attribut identifiantSystem.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.nomNaissance",
        "path" : "PersonnePriseCharge.INS.nomNaissance",
        "short" : "Le nom de  naissance est un élément d’identité mentionné à l’article R. 1111-8-6 du CSP.C'est  un trait \"strict\" d'identité de la personne dans l'INS ( Référentiel Identité Nationale de Santé)synonyme moins précis : nom de famille",
        "definition" : "Le nom de  naissance est un élément d’identité mentionné à l’article R. 1111-8-6 du CSP.C'est  un trait \"strict\" d'identité de la personne dans l'INS ( Référentiel Identité Nationale de Santé)synonyme moins précis : nom de famille",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.listePrenomsNaissance",
        "path" : "PersonnePriseCharge.INS.listePrenomsNaissance",
        "short" : "Liste des prénoms de naissance indiqués sur l'acte de naissance. Ce sont des éléments d’identité mentionnés à l’article R. 1111-8-6 du CSP.La liste des prénoms de naissance est un trait d'identité \"strict\" de la personne dans l'INS ( Référentiel Identité Nationale de Santé)  Ce champ peut comporter plusieurs prénoms, simples ou composés.(avec ou sans tiret d’union entre les prénoms).",
        "definition" : "Liste des prénoms de naissance indiqués sur l'acte de naissance. Ce sont des éléments d’identité mentionnés à l’article R. 1111-8-6 du CSP.La liste des prénoms de naissance est un trait d'identité \"strict\" de la personne dans l'INS ( Référentiel Identité Nationale de Santé)  Ce champ peut comporter plusieurs prénoms, simples ou composés.(avec ou sans tiret d’union entre les prénoms).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.sexe",
        "path" : "PersonnePriseCharge.INS.sexe",
        "short" : "Le sexe est un élément d’identité mentionné à l’article R. 1111-8-6 du CSP. L’identité INS ne peut comporter que des valeurs F (féminin) ou M (masculin).",
        "definition" : "Le sexe est un élément d’identité mentionné à l’article R. 1111-8-6 du CSP. L’identité INS ne peut comporter que des valeurs F (féminin) ou M (masculin).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.dateNaissance",
        "path" : "PersonnePriseCharge.INS.dateNaissance",
        "short" : "Date de naissance de la personne, modifiée selon les règles du RNIV dans le cas des dates exceptionnelles. C'est un élément d’identité mentionné à l’article R. 1111-8-6 du CSP.",
        "definition" : "Date de naissance de la personne, modifiée selon les règles du RNIV dans le cas des dates exceptionnelles. C'est un élément d’identité mentionné à l’article R. 1111-8-6 du CSP.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.lieuNaissance",
        "path" : "PersonnePriseCharge.INS.lieuNaissance",
        "short" : "Code officiel géographique (COG) de la commune (France) ou du pays. C'est un élément d’identité mentionné à l’article R. 1111-8-6 du CSP.",
        "definition" : "Code officiel géographique (COG) de la commune (France) ou du pays. C'est un élément d’identité mentionné à l’article R. 1111-8-6 du CSP.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.premierPrenomNaissance",
        "path" : "PersonnePriseCharge.INS.premierPrenomNaissance",
        "short" : "La distinction du premier prénom dans la liste des prénoms de naissance est nécessaire à la communication entre logiciels n’ayant pas encore été mis en conformité avec les exigences du RNIV. Il peut être composé (avec ou sans tiret d’union entre les prénoms).",
        "definition" : "La distinction du premier prénom dans la liste des prénoms de naissance est nécessaire à la communication entre logiciels n’ayant pas encore été mis en conformité avec les exigences du RNIV. Il peut être composé (avec ou sans tiret d’union entre les prénoms).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.nomUtilise",
        "path" : "PersonnePriseCharge.INS.nomUtilise",
        "short" : "Nom réellement porté par la personne physique dans la vie courante.Il peut s'agir du nom de naissance, du surnom, du pseudonyme ou du nom d'usage de la personne physique. C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).Le nom utilisé est obligatoirement renseigné lorsqu’il est différent du nom de naissance.",
        "definition" : "Nom réellement porté par la personne physique dans la vie courante.Il peut s'agir du nom de naissance, du surnom, du pseudonyme ou du nom d'usage de la personne physique. C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).Le nom utilisé est obligatoirement renseigné lorsqu’il est différent du nom de naissance.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.INS.prenomUtilise",
        "path" : "PersonnePriseCharge.INS.prenomUtilise",
        "short" : "Prénom réellement porté par la personne physique dans la vie courante.Il peut s'agir du prénom usuel, du surnom ou du pseudonyme de la personne physique.C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).Le prénom utilisé est obligatoirement renseigné lorsqu’il est différent du premier prénom de naissance.",
        "definition" : "Prénom réellement porté par la personne physique dans la vie courante.Il peut s'agir du prénom usuel, du surnom ou du pseudonyme de la personne physique.C'est un trait complémentaire provenant du Référentiel National d'Identitovigilance (RNIV).Le prénom utilisé est obligatoirement renseigné lorsqu’il est différent du premier prénom de naissance.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePriseCharge.Professionnel",
        "path" : "PersonnePriseCharge.Professionnel",
        "short" : "Lien vers la classe Professionnel",
        "definition" : "Lien vers la classe Professionnel",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel"
          }
        ]
      }
    ]
  }
}

```
