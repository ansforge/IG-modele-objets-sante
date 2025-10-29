# EntiteGeographique - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EntiteGeographique**

## Logical Model: EntiteGeographique 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:EntiteGeographique |

 
L’Entité Géographique (EG) correspond à la notion d’établissement : ** Pour les établissements inscrits au FINESS, cette notion d’établissement résulte du croisement de trois critères : - Un critère géographique : Est un établissement tout lieu dont l’implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d’une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d’établissements que d’implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L’implantation géographique peut-être décrite soit avec l’attribut addresseEG soit au travers de la classe Lieu. - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d’établissements du secteur public qu’il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d’hébergement constituent deux établissements même s’ils sont implantés à la même adresse. - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d’établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s’ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l’EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure 

**Usages:**

* Use this Logical Model: [SituationExercice](StructureDefinition-SituationExercice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/EntiteGeographique)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EntiteGeographique.csv), [Excel](StructureDefinition-EntiteGeographique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EntiteGeographique",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique",
  "version" : "0.1.0",
  "name" : "EntiteGeographique",
  "title" : "EntiteGeographique",
  "status" : "draft",
  "date" : "2025-10-29T15:03:41+00:00",
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
  "description" : "L'Entité Géographique (EG) correspond à la notion d'établissement : ** Pour les établissements inscrits au FINESS, cette notion d'établissement résulte du croisement de trois critères :     - Un critère géographique : Est un établissement tout lieu dont l'implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d'une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d'établissements que d'implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L'implantation géographique peut-être décrite soit avec l'attribut addresseEG soit au travers de la classe Lieu.    - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d'établissements du secteur public qu'il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d'hébergement constituent deux établissements même s'ils sont implantés à la même adresse.     - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d'établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s'ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l'EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EntiteGeographique",
        "path" : "EntiteGeographique",
        "short" : "L'Entité Géographique (EG) correspond à la notion d'établissement : ** Pour les établissements inscrits au FINESS, cette notion d'établissement résulte du croisement de trois critères :     - Un critère géographique : Est un établissement tout lieu dont l'implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d'une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d'établissements que d'implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L'implantation géographique peut-être décrite soit avec l'attribut addresseEG soit au travers de la classe Lieu.    - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d'établissements du secteur public qu'il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d'hébergement constituent deux établissements même s'ils sont implantés à la même adresse.     - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d'établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s'ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l'EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure",
        "definition" : "L'Entité Géographique (EG) correspond à la notion d'établissement : ** Pour les établissements inscrits au FINESS, cette notion d'établissement résulte du croisement de trois critères :     - Un critère géographique : Est un établissement tout lieu dont l'implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d'une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d'établissements que d'implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L'implantation géographique peut-être décrite soit avec l'attribut addresseEG soit au travers de la classe Lieu.    - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d'établissements du secteur public qu'il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d'hébergement constituent deux établissements même s'ils sont implantés à la même adresse.     - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d'établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s'ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l'EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure"
      },
      {
        "id" : "EntiteGeographique.numFINESS",
        "path" : "EntiteGeographique.numFINESS",
        "short" : "Numéro FINESS de l'entité géographique.Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification des entités géographiques en tant qu’acteurs sanitaires et médico-sociaux par rapport au numéro SIRET (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)).A chaque EG (établissement) est attribué un numéro FINESS qui est composé de 9 caractères numériques, tels que :** Position 1-2 : numéro du département d'implantation (\"2A\", \"2B\" pour la Corse; \"97\" pour les départements d’Outre-mer; \"98\" pour Mayotte);** Position 3 : \"0\";** Position 4-8: \"1\" pour Guadeloupe, \"2\" pour Martinique, \"3\" pour Guyane, \"4\" pour Réunion, \"5\" pour Saint-Pierre-et-Miquelon + numéro d'ordre de 4 chiffres;** Position 4-8 : numéro d’ordre de 5 chiffres pour tous les autres départements;** Position 9 : clé de Luhn calculée automatiquement.",
        "definition" : "Numéro FINESS de l'entité géographique.Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification des entités géographiques en tant qu’acteurs sanitaires et médico-sociaux par rapport au numéro SIRET (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)).A chaque EG (établissement) est attribué un numéro FINESS qui est composé de 9 caractères numériques, tels que :** Position 1-2 : numéro du département d'implantation (\"2A\", \"2B\" pour la Corse; \"97\" pour les départements d’Outre-mer; \"98\" pour Mayotte);** Position 3 : \"0\";** Position 4-8: \"1\" pour Guadeloupe, \"2\" pour Martinique, \"3\" pour Guyane, \"4\" pour Réunion, \"5\" pour Saint-Pierre-et-Miquelon + numéro d'ordre de 4 chiffres;** Position 4-8 : numéro d’ordre de 5 chiffres pour tous les autres départements;** Position 9 : clé de Luhn calculée automatiquement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.numSiret",
        "path" : "EntiteGeographique.numSiret",
        "short" : "Le numéro Siret est le numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique.Ce numéro est un simple numéro d'ordre, composé de 14 chiffres non significatifs:   ** les 9 chiffres du numéro Siren de l'entreprise dont l'établissement dépend, suivis des 5 chiffres du numéro interne de classement (NIC), lui-même constitué de 4 chiffres complétés d'une clé de Luhn.Le numéro Siret n'a aucun lien avec les caractéristiques de l'établissement. Il est fermé quand l'activité cesse dans l'établissement concerné ou lorsque l'établissement change d'adresse.",
        "definition" : "Le numéro Siret est le numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique.Ce numéro est un simple numéro d'ordre, composé de 14 chiffres non significatifs:   ** les 9 chiffres du numéro Siren de l'entreprise dont l'établissement dépend, suivis des 5 chiffres du numéro interne de classement (NIC), lui-même constitué de 4 chiffres complétés d'une clé de Luhn.Le numéro Siret n'a aucun lien avec les caractéristiques de l'établissement. Il est fermé quand l'activité cesse dans l'établissement concerné ou lorsque l'établissement change d'adresse.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.identifiantEG",
        "path" : "EntiteGeographique.identifiantEG",
        "short" : "Identifiant spécifique généré par le RPPS ou ADELI lors de la création d'une structure d'exercice pour un cabinet individuel et un cabinet de groupe. Il est communément connu sous le nom de RPPS-rang ou ADELI-rang :- le RPPS-rang, de 14 caractères, est formé des 11 caractères de l’identifiant RPPS du titulaire du cabinet, suivi d’un numéro d’ordre sur 2 caractères et d’une clé de Luhn (1 caractère) ;- l’ADELI-rang, de 11 caractères, est formé des 9 caractères du numéro ADELI du titulaire du cabinet suivi d’un numéro d’ordre sur 2 caractères.Cet identifiant est utilisé dans les échanges techniques entre le RPPS ou ADELI avec le FNPS de la CNAM, se substituant ainsi au numéro de SIRET dans le cas où ce dernier n'est pas encore connu du RPPS ou d’ADELI.Synonyme : numEG_RPPS_ADELI",
        "definition" : "Identifiant spécifique généré par le RPPS ou ADELI lors de la création d'une structure d'exercice pour un cabinet individuel et un cabinet de groupe. Il est communément connu sous le nom de RPPS-rang ou ADELI-rang :- le RPPS-rang, de 14 caractères, est formé des 11 caractères de l’identifiant RPPS du titulaire du cabinet, suivi d’un numéro d’ordre sur 2 caractères et d’une clé de Luhn (1 caractère) ;- l’ADELI-rang, de 11 caractères, est formé des 9 caractères du numéro ADELI du titulaire du cabinet suivi d’un numéro d’ordre sur 2 caractères.Cet identifiant est utilisé dans les échanges techniques entre le RPPS ou ADELI avec le FNPS de la CNAM, se substituant ainsi au numéro de SIRET dans le cas où ce dernier n'est pas encore connu du RPPS ou d’ADELI.Synonyme : numEG_RPPS_ADELI",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.idNatStruct",
        "path" : "EntiteGeographique.idNatStruct",
        "short" : "Identification nationale de l'Entité géographique initiée pour les besoins du SI-CPS.Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure:** 0 + Identifiant cabinet ADELI (identifiantEG);** 1 + N° FINESS (entité juridique et entité géographique indéterminées);** 3 + N° SIRET;** 4 + Identifiant cabinet RPPS (identifiantEG).Synonyme : Struct_IdNat (CI-SIS)",
        "definition" : "Identification nationale de l'Entité géographique initiée pour les besoins du SI-CPS.Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure:** 0 + Identifiant cabinet ADELI (identifiantEG);** 1 + N° FINESS (entité juridique et entité géographique indéterminées);** 3 + N° SIRET;** 4 + Identifiant cabinet RPPS (identifiantEG).Synonyme : Struct_IdNat (CI-SIS)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.typeIdNatStruct",
        "path" : "EntiteGeographique.typeIdNatStruct",
        "short" : "Type d’identifiant national de la structure.",
        "definition" : "Type d’identifiant national de la structure.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure?vs"
        }
      },
      {
        "id" : "EntiteGeographique.numeroEducationNationale",
        "path" : "EntiteGeographique.numeroEducationNationale",
        "short" : "Le \"numéro éducation nationale de l'établissement\" est un numéro associé délivré par l’Éducation nationale, pour tous les établissements et services pour enfants et adolescents handicapés qui emploient du personnel de l’Education nationale.",
        "definition" : "Le \"numéro éducation nationale de l'établissement\" est un numéro associé délivré par l’Éducation nationale, pour tous les établissements et services pour enfants et adolescents handicapés qui emploient du personnel de l’Education nationale.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.nomOperationnel",
        "path" : "EntiteGeographique.nomOperationnel",
        "short" : "Le nom opérationnel est l’appellation communément utilisée par les acteurs de santé pour désigner l'entité géographique, indépendamment des référentiels nationaux.",
        "definition" : "Le nom opérationnel est l’appellation communément utilisée par les acteurs de santé pour désigner l'entité géographique, indépendamment des référentiels nationaux.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.denominationEG",
        "path" : "EntiteGeographique.denominationEG",
        "short" : "Nom sous lequel l'entité géographique exerce son activité. Il s’agit, par exemple, de l’enseigne commerciale pour les pharmacies. Dans le cas d'un établissement enregistré dans le FINESS, cet attribut correspond à la notion de \"raison sociale d'un établissement\" renseignée dans le FINESS.",
        "definition" : "Nom sous lequel l'entité géographique exerce son activité. Il s’agit, par exemple, de l’enseigne commerciale pour les pharmacies. Dans le cas d'un établissement enregistré dans le FINESS, cet attribut correspond à la notion de \"raison sociale d'un établissement\" renseignée dans le FINESS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.denominationEGLongue",
        "path" : "EntiteGeographique.denominationEGLongue",
        "short" : "Nom, sous sa forme la plus longue et complète, sous lequel l'entité géographique exerce son activité (acronymes, sigles ou abréviations développés).",
        "definition" : "Nom, sous sa forme la plus longue et complète, sous lequel l'entité géographique exerce son activité (acronymes, sigles ou abréviations développés).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.complementDenominationEG",
        "path" : "EntiteGeographique.complementDenominationEG",
        "short" : "Suite de la dénomination de l'entité géographique, si elle existe. Ce complément peut contenir notamment des informations facilitant l'adressage d'un courrier aux structures.",
        "definition" : "Suite de la dénomination de l'entité géographique, si elle existe. Ce complément peut contenir notamment des informations facilitant l'adressage d'un courrier aux structures.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.champActivite",
        "path" : "EntiteGeographique.champActivite",
        "short" : "Champ(s) de l’activité des établissements de santé publics et privés français, notamment : - médecine, chirurgie, obstétrique (MCO),- soins de suite et de réadaptation (SSR), - psychiatrie (PSY).Ces champs d'activité seront enrichis avec l'intégration des établissements du secteur médico-social.",
        "definition" : "Champ(s) de l’activité des établissements de santé publics et privés français, notamment : - médecine, chirurgie, obstétrique (MCO),- soins de suite et de réadaptation (SSR), - psychiatrie (PSY).Ces champs d'activité seront enrichis avec l'intégration des établissements du secteur médico-social.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite?vs"
        }
      },
      {
        "id" : "EntiteGeographique.typeEtablissement",
        "path" : "EntiteGeographique.typeEtablissement",
        "short" : "Le type d’établissement détermine si c'est un établissement principal ou secondaire.",
        "definition" : "Le type d’établissement détermine si c'est un établissement principal ou secondaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.etablissementPrincipal",
        "path" : "EntiteGeographique.etablissementPrincipal",
        "short" : "Dans le cas d’un établissement secondaire : Numéro FINESS de l’établissement principal dont dépend l’établissement.",
        "definition" : "Dans le cas d’un établissement secondaire : Numéro FINESS de l’établissement principal dont dépend l’établissement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.secteurActivite",
        "path" : "EntiteGeographique.secteurActivite",
        "short" : "Un secteur d'activité regroupe les établissements partageant la même activité de santé. Exemples (établissement public de santé, maison de santé, etc.)",
        "definition" : "Un secteur d'activité regroupe les établissements partageant la même activité de santé. Exemples (établissement public de santé, maison de santé, etc.)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/secteurActivite-vs"
        }
      },
      {
        "id" : "EntiteGeographique.categorieEtablissement",
        "path" : "EntiteGeographique.categorieEtablissement",
        "short" : "La catégorie d'établissement est le cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique. Les catégories d'établissement sont elles-mêmes classifiées en grands agrégats qui sont :** Etablissements relevant de la loi hospitalière,** Autres établissements de soins et de prévention,** Autres établissements à caractère sanitaire,** Etablissements et services sociaux d'accueil, hébergement, assistance, réadaptation,** Etablissements et services sociaux d'aide à la famille,** Etablissements de formation des personnels sanitaires et sociauxCette catégorie recouvre également des établissements qui ne sont pas encore enregistrés dans FINESS, tels que les dispositifs d’appui à la coordination.",
        "definition" : "La catégorie d'établissement est le cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique. Les catégories d'établissement sont elles-mêmes classifiées en grands agrégats qui sont :** Etablissements relevant de la loi hospitalière,** Autres établissements de soins et de prévention,** Autres établissements à caractère sanitaire,** Etablissements et services sociaux d'accueil, hébergement, assistance, réadaptation,** Etablissements et services sociaux d'aide à la famille,** Etablissements de formation des personnels sanitaires et sociauxCette catégorie recouvre également des établissements qui ne sont pas encore enregistrés dans FINESS, tels que les dispositifs d’appui à la coordination.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/categorieEtablissement-vs"
        }
      },
      {
        "id" : "EntiteGeographique.agregatCategorieEtablissementNiv1",
        "path" : "EntiteGeographique.agregatCategorieEtablissementNiv1",
        "short" : "Agrégat de catégories d'établissements de niveau 1. L'agrégat de niveau 1 représente des regroupements d'agrégat de niveau 2. Par exemple, le code 1000 \"Etablissement relevant de la loi hospitalière\" regroupe les codes d'agrégat de niveau 2 1100 et 1200.",
        "definition" : "Agrégat de catégories d'établissements de niveau 1. L'agrégat de niveau 1 représente des regroupements d'agrégat de niveau 2. Par exemple, le code 1000 \"Etablissement relevant de la loi hospitalière\" regroupe les codes d'agrégat de niveau 2 1100 et 1200.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R63-AgregatCategorieEtablissementNiv1/FHIR/TRE-R63-AgregatCategorieEtablissementNiv1?vs"
        }
      },
      {
        "id" : "EntiteGeographique.agregatCategorieEtablissementNiv2",
        "path" : "EntiteGeographique.agregatCategorieEtablissementNiv2",
        "short" : "Agrégat de catégories d'établissements de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégats de niveau 3. Par exemple, le code 1100 \"Etablissement hospitaliers\" regroupe les codes d'agrégat de niveau 3 1101, 1102, etc.",
        "definition" : "Agrégat de catégories d'établissements de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégats de niveau 3. Par exemple, le code 1100 \"Etablissement hospitaliers\" regroupe les codes d'agrégat de niveau 3 1101, 1102, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R64-AgregatCategorieEtablissementNiv2/FHIR/TRE-R64-AgregatCategorieEtablissementNiv2?vs"
        }
      },
      {
        "id" : "EntiteGeographique.agregatCategorieEtablissementNiv3",
        "path" : "EntiteGeographique.agregatCategorieEtablissementNiv3",
        "short" : "Agrégat de catégories d'établissements de niveau 3. L'agrégat de niveau 3 représente des regroupements de catégories d'établissement. Par exemple, le code 1101 \"Centres hospitaliers régionaux\" regroupe les catégories d'établissement 101, 106 etc.",
        "definition" : "Agrégat de catégories d'établissements de niveau 3. L'agrégat de niveau 3 représente des regroupements de catégories d'établissement. Par exemple, le code 1101 \"Centres hospitaliers régionaux\" regroupe les catégories d'établissement 101, 106 etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R65-AgregatCategorieEtablissement/FHIR/TRE-R65-AgregatCategorieEtablissement?vs"
        }
      },
      {
        "id" : "EntiteGeographique.codeAPET",
        "path" : "EntiteGeographique.codeAPET",
        "short" : "Toute entité juridique et chacun de ses établissements (EG) se voit attribuer par l'Insee, lors de son inscription au répertoire SIRENE, un code caractérisant son activité principale par référence à la nomenclature d'activités française (NAF rév. 2).Plus précisément, on distingue le code APET pour les EG.",
        "definition" : "Toute entité juridique et chacun de ses établissements (EG) se voit attribuer par l'Insee, lors de son inscription au répertoire SIRENE, un code caractérisant son activité principale par référence à la nomenclature d'activités française (NAF rév. 2).Plus précisément, on distingue le code APET pour les EG.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R75-InseeNAFrev2Niveau5/FHIR/TRE-R75-InseeNAFrev2Niveau5?vs"
        }
      },
      {
        "id" : "EntiteGeographique.modeFixationTarif",
        "path" : "EntiteGeographique.modeFixationTarif",
        "short" : "Le mode de tarification détermine l'autorité responsable de la fixation du tarif principal de l'établissement et la procédure utilisée. Il est unique pour un établissement FINESS donné.",
        "definition" : "Le mode de tarification détermine l'autorité responsable de la fixation du tarif principal de l'établissement et la procédure utilisée. Il est unique pour un établissement FINESS donné.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R74-ModeFixationTarifaire/FHIR/TRE-R74-ModeFixationTarifaire?vs"
        }
      },
      {
        "id" : "EntiteGeographique.modaliteParticipationSPH",
        "path" : "EntiteGeographique.modaliteParticipationSPH",
        "short" : "Modalités de participation au service public hospitalier.",
        "definition" : "Modalités de participation au service public hospitalier.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R73-ESPIC/FHIR/TRE-R73-ESPIC?vs"
        }
      },
      {
        "id" : "EntiteGeographique.natureEtablissement",
        "path" : "EntiteGeographique.natureEtablissement",
        "short" : "Nature du budget alloué à l'établissement dont les valeurs sont \"G\" pour général et \"A\" pour annexe.",
        "definition" : "Nature du budget alloué à l'établissement dont les valeurs sont \"G\" pour général et \"A\" pour annexe.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.aideFinanciere",
        "path" : "EntiteGeographique.aideFinanciere",
        "short" : "Habilitation ou conventionnement de l'entité géographique permettant aux personnes accueillies de bénéficier des aides financières, si elles remplissent les conditions.",
        "definition" : "Habilitation ou conventionnement de l'entité géographique permettant aux personnes accueillies de bénéficier des aides financières, si elles remplissent les conditions.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R241-AideFinanciere/FHIR/TRE-R241-AideFinanciere?vs"
        }
      },
      {
        "id" : "EntiteGeographique.habilitationSoinSansConsentement",
        "path" : "EntiteGeographique.habilitationSoinSansConsentement",
        "short" : "L'habilitation aux soins sans consentement traduit que l'établissement est autorisé à prendre en charge des patients sans leur consentement. Cette autorisation est donnée par le directeur général de l’ARS après avis du préfet.Valeurs possibles : 0 = L'établissement ne possède pas d'autorisation aux soins sans consentement 1 = L'établissement possède une autorisation aux soins sans consentement",
        "definition" : "L'habilitation aux soins sans consentement traduit que l'établissement est autorisé à prendre en charge des patients sans leur consentement. Cette autorisation est donnée par le directeur général de l’ARS après avis du préfet.Valeurs possibles : 0 = L'établissement ne possède pas d'autorisation aux soins sans consentement 1 = L'établissement possède une autorisation aux soins sans consentement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.hebergementFamille",
        "path" : "EntiteGeographique.hebergementFamille",
        "short" : "L’indicateur hébergement des familles précise si l'établissement peut héberger les familles des personnes prises en charge. Valeurs possibles :0 = L'établissement ne peut pas héberger les familles des personnes prises en charge1 = L'établissement peut héberger les familles des personnes prises en charge",
        "definition" : "L’indicateur hébergement des familles précise si l'établissement peut héberger les familles des personnes prises en charge. Valeurs possibles :0 = L'établissement ne peut pas héberger les familles des personnes prises en charge1 = L'établissement peut héberger les familles des personnes prises en charge",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.dateModificationSIRET",
        "path" : "EntiteGeographique.dateModificationSIRET",
        "short" : "Date de modification du numéro SIRET.",
        "definition" : "Date de modification du numéro SIRET.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.origineModificationSIRET",
        "path" : "EntiteGeographique.origineModificationSIRET",
        "short" : "Origine/nature de modification du SIRET (motif de modification de l’identifiant).",
        "definition" : "Origine/nature de modification du SIRET (motif de modification de l’identifiant).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.actif",
        "path" : "EntiteGeographique.actif",
        "short" : "Indicateur de l’activité de l'entité géographique, si celle-ci est active (ou ouverte) ou inactive (ou fermée).",
        "definition" : "Indicateur de l’activité de l'entité géographique, si celle-ci est active (ou ouverte) ou inactive (ou fermée).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.dateOuverture",
        "path" : "EntiteGeographique.dateOuverture",
        "short" : "Date d’ouverture réelle de fonctionnement de l’établissement.Pour les établissements soumis à autorisation, elle est constatée par la première visite de conformité du premier équipement autorisé. La date d’ouverture doit être supérieure ou égale à la date d’autorisation.",
        "definition" : "Date d’ouverture réelle de fonctionnement de l’établissement.Pour les établissements soumis à autorisation, elle est constatée par la première visite de conformité du premier équipement autorisé. La date d’ouverture doit être supérieure ou égale à la date d’autorisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.dateCaducite",
        "path" : "EntiteGeographique.dateCaducite",
        "short" : "La date de caducité indique la limite autorisant la réalisation de l’opération pour laquelle il y a autorisation. Elle est calculée automatiquement lorsque la date d’autorisation est renseignée. Elle disparait lorsque la date d’ouverture est renseignée.Par défaut, la date de caducité calculée automatiquement dans FINESS est de trois ans. En cas de début de travaux, une quatrième année est autorisée par les textes.",
        "definition" : "La date de caducité indique la limite autorisant la réalisation de l’opération pour laquelle il y a autorisation. Elle est calculée automatiquement lorsque la date d’autorisation est renseignée. Elle disparait lorsque la date d’ouverture est renseignée.Par défaut, la date de caducité calculée automatiquement dans FINESS est de trois ans. En cas de début de travaux, une quatrième année est autorisée par les textes.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.constatCaducite",
        "path" : "EntiteGeographique.constatCaducite",
        "short" : "Indicateur de caducité de l'établissement:- « N » par défaut, lorsque l’établissement est autorisé non ouvert (la date d’ouverture n’est pas renseignée);- « O » à indiquer lorsqu’un constat de caducité a été relevé sur l'établissement.",
        "definition" : "Indicateur de caducité de l'établissement:- « N » par défaut, lorsque l’établissement est autorisé non ouvert (la date d’ouverture n’est pas renseignée);- « O » à indiquer lorsqu’un constat de caducité a été relevé sur l'établissement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.dateFermeture",
        "path" : "EntiteGeographique.dateFermeture",
        "short" : "Date de fermeture de l'entité géographique. La date doit être supérieure à la date d’ouverture.",
        "definition" : "Date de fermeture de l'entité géographique. La date doit être supérieure à la date d’ouverture.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.typeFermeture",
        "path" : "EntiteGeographique.typeFermeture",
        "short" : "Type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS (par exemple: fermeture définitive, fermeture provisoire), obligatoire lors de la fermeture de l'entité.",
        "definition" : "Type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS (par exemple: fermeture définitive, fermeture provisoire), obligatoire lors de la fermeture de l'entité.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture?vs"
        }
      },
      {
        "id" : "EntiteGeographique.dateAutorisation",
        "path" : "EntiteGeographique.dateAutorisation",
        "short" : "Date d’autorisation qui correspond à la date de l’arrêté autorisant la création d’un établissement ou de la première autorisation délivrée pour des équipements.",
        "definition" : "Date d’autorisation qui correspond à la date de l’arrêté autorisant la création d’un établissement ou de la première autorisation délivrée pour des équipements.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.accessibiliteLieu",
        "path" : "EntiteGeographique.accessibiliteLieu",
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
        "id" : "EntiteGeographique.zonePoser",
        "path" : "EntiteGeographique.zonePoser",
        "short" : "Indicateur portant sur l'existence d'une zone de poser pour hélicoptère sur le site même.Valeurs possibles: 0 = Pas de zone de poser 1 = Existence d'une zone de poser",
        "definition" : "Indicateur portant sur l'existence d'une zone de poser pour hélicoptère sur le site même.Valeurs possibles: 0 = Pas de zone de poser 1 = Existence d'une zone de poser",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.niveauRecoursORSAN",
        "path" : "EntiteGeographique.niveauRecoursORSAN",
        "short" : "Le niveau de recours ORSAN correspond à une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU.",
        "definition" : "Le niveau de recours ORSAN correspond à une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R284-NiveauRecoursORSAN/FHIR/TRE-R284-NiveauRecoursORSAN?vs"
        }
      },
      {
        "id" : "EntiteGeographique.venteLigneURL",
        "path" : "EntiteGeographique.venteLigneURL",
        "short" : "URL du site de vente en ligne",
        "definition" : "URL du site de vente en ligne",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.nbPlaceAideSocialeTemporaire",
        "path" : "EntiteGeographique.nbPlaceAideSocialeTemporaire",
        "short" : "Il s'agit du nombre de places temporaires dédiées à l'aide sociale dans l'établissement.",
        "definition" : "Il s'agit du nombre de places temporaires dédiées à l'aide sociale dans l'établissement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.nbPlaceAideSocialePermanent",
        "path" : "EntiteGeographique.nbPlaceAideSocialePermanent",
        "short" : "Il s'agit du nombre de places permanentes dédiées à l'aide sociale dans l'établissement.",
        "definition" : "Il s'agit du nombre de places permanentes dédiées à l'aide sociale dans l'établissement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.adresseEG",
        "path" : "EntiteGeographique.adresseEG",
        "short" : "Adresse(s) géopostale(s) de l'entité géographique en fonction de l'usage (adresse administrative, adresse entrée des véhicules, adresse entrée piétonne, etc.).L'implantation géographique peut également être décrite au travers de la classe Lieu.",
        "definition" : "Adresse(s) géopostale(s) de l'entité géographique en fonction de l'usage (adresse administrative, adresse entrée des véhicules, adresse entrée piétonne, etc.).L'implantation géographique peut également être décrite au travers de la classe Lieu.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.implantationGeographique",
        "path" : "EntiteGeographique.implantationGeographique",
        "short" : "Implantation géographique de l’EG sur un lieu connu.",
        "definition" : "Implantation géographique de l’EG sur un lieu connu.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.lieuEG",
        "path" : "EntiteGeographique.lieuEG",
        "short" : "Lieu à l'intérieur d'une EG tels que l'entrée A, pavillon des violettes, etcUn lieu peut notamment être décrit par une adresse et des coordonnées géographiques.",
        "definition" : "Lieu à l'intérieur d'une EG tels que l'entrée A, pavillon des violettes, etcUn lieu peut notamment être décrit par une adresse et des coordonnées géographiques.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Lieu"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.divisionTerritoriale",
        "path" : "EntiteGeographique.divisionTerritoriale",
        "short" : "Division(s) territoriale(s) (commune, département, etc.) où est située l'entité géographique.",
        "definition" : "Division(s) territoriale(s) (commune, département, etc.) où est située l'entité géographique.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DivisionTerritoriale"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.contact",
        "path" : "EntiteGeographique.contact",
        "short" : "Point(s) de contact de l'entité géographique.Par exemple, ce sont les informations permettant de contacter l'accueil ou le secrétariat de l'entité géographique.Les contacts du directeur et de la cellule d'alerte peuvent être inclus dans cette liste de contacts.",
        "definition" : "Point(s) de contact de l'entité géographique.Par exemple, ce sont les informations permettant de contacter l'accueil ou le secrétariat de l'entité géographique.Les contacts du directeur et de la cellule d'alerte peuvent être inclus dans cette liste de contacts.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.telecommunication",
        "path" : "EntiteGeographique.telecommunication",
        "short" : "Adresse(s) de télécommunication de l'entité géographique (numéro de téléphone, adresse email, URL, etc.).",
        "definition" : "Adresse(s) de télécommunication de l'entité géographique (numéro de téléphone, adresse email, URL, etc.).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.boiteLettresMSS",
        "path" : "EntiteGeographique.boiteLettresMSS",
        "short" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'entité géographique.",
        "definition" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'entité géographique.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.commentaire",
        "path" : "EntiteGeographique.commentaire",
        "short" : "Commentaire qui permet à la structure de donner des informations complémentaires.",
        "definition" : "Commentaire qui permet à la structure de donner des informations complémentaires.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteGeographique.EntiteJuridique",
        "path" : "EntiteGeographique.EntiteJuridique",
        "short" : "Lien vers la classe EntiteJuridique",
        "definition" : "Lien vers la classe EntiteJuridique",
        "min" : 1,
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
