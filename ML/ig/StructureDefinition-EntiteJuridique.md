# EntiteJuridique - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EntiteJuridique**

## Logical Model: EntiteJuridique 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique | *Version*:0.1.0 |
| Draft as of 2025-10-30 | *Computable Name*:EntiteJuridique |

 
L’Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d’exercer ses activités dans des établissements; chaque EJ dispose d’un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren. 

**Usages:**

* Use this Logical Model: [EntiteGeographique](StructureDefinition-EntiteGeographique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/EntiteJuridique)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EntiteJuridique.csv), [Excel](StructureDefinition-EntiteJuridique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EntiteJuridique",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique",
  "version" : "0.1.0",
  "name" : "EntiteJuridique",
  "title" : "EntiteJuridique",
  "status" : "draft",
  "date" : "2025-10-30T14:07:11+00:00",
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
  "description" : "L'Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d'exercer ses activités dans des établissements; chaque EJ dispose d'un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EntiteJuridique",
        "path" : "EntiteJuridique",
        "short" : "L'Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d'exercer ses activités dans des établissements; chaque EJ dispose d'un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren.",
        "definition" : "L'Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d'exercer ses activités dans des établissements; chaque EJ dispose d'un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren."
      },
      {
        "id" : "EntiteJuridique.numFINESS",
        "path" : "EntiteJuridique.numFINESS",
        "short" : "Identifiant FINESS de l'entité juridique attribué lors de sa création.Les personnes morales identifiées par des numéros FINESS sont également dotées de numéros Siren.  Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)).Le numéro FINESS est composé de 9 caractères numériques, tels que:** Position 1-2 : numéro du département d'implantation (\"2A\", \"2B\" pour la Corse; \"97\" pour les départements d’Outre-mer; \"98\" pour Mayotte);** Position 3 : \"0\";** Position 4-8: \"1\" pour Guadeloupe, \"2\" pour Martinique, \"3\" pour Guyane, \"4\" pour Réunion, \"5\" pour Saint-Pierre-et-Miquelon + numéro d'ordre de 4 chiffres;** Position 4-8 : numéro d’ordre de 5 chiffres pour tous les autres départements;** Position 9 : clé de Luhn calculée automatiquement.",
        "definition" : "Identifiant FINESS de l'entité juridique attribué lors de sa création.Les personnes morales identifiées par des numéros FINESS sont également dotées de numéros Siren.  Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)).Le numéro FINESS est composé de 9 caractères numériques, tels que:** Position 1-2 : numéro du département d'implantation (\"2A\", \"2B\" pour la Corse; \"97\" pour les départements d’Outre-mer; \"98\" pour Mayotte);** Position 3 : \"0\";** Position 4-8: \"1\" pour Guadeloupe, \"2\" pour Martinique, \"3\" pour Guyane, \"4\" pour Réunion, \"5\" pour Saint-Pierre-et-Miquelon + numéro d'ordre de 4 chiffres;** Position 4-8 : numéro d’ordre de 5 chiffres pour tous les autres départements;** Position 9 : clé de Luhn calculée automatiquement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.numSiren",
        "path" : "EntiteJuridique.numSiren",
        "short" : "Le numéro Siren est le numéro unique d'identification attribué à chaque entreprise ou organisme par l'INSEE.C'est un simple numéro d'ordre, composé de neuf chiffres:     ** huit chiffres non significatifs (excepté pour les organismes publics où celui-ci commence obligatoirement par 1 ou 2) complétés par une clé de Luhn.Il n'a aucun lien avec les caractéristiques de l'entreprise ou de l'organisme. Il est attribué une seule fois et n'est supprimé du répertoire qu'au moment de la disparition de la personne juridique (décès ou cessation de toute activité pour un entrepreneur individuel, dissolution pour une personne juridique).",
        "definition" : "Le numéro Siren est le numéro unique d'identification attribué à chaque entreprise ou organisme par l'INSEE.C'est un simple numéro d'ordre, composé de neuf chiffres:     ** huit chiffres non significatifs (excepté pour les organismes publics où celui-ci commence obligatoirement par 1 ou 2) complétés par une clé de Luhn.Il n'a aucun lien avec les caractéristiques de l'entreprise ou de l'organisme. Il est attribué une seule fois et n'est supprimé du répertoire qu'au moment de la disparition de la personne juridique (décès ou cessation de toute activité pour un entrepreneur individuel, dissolution pour une personne juridique).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.idNatStruct",
        "path" : "EntiteJuridique.idNatStruct",
        "short" : "Identification nationale de l'Entité juridique initiée pour les besoins du SI-CPS.Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure:** 1 + N° FINESS (entité juridique et entité géographique indéterminées);** 2 + N° Siren.Cas particulier:La notion d’identifiant d'entité juridique n'a pas de sens métier pour un cabinet individuel ou un cabinet de groupe identifié par un RPPS-Rang ou un ADELI-rang (cf. Attribut IdentifiantEG de la classe EntiteGeographique). Si un cas d'usage nécessite d'appliquer la notion générique d'entité juridique et d'entité géographique pour un cabinet individuel ou un cabinet de groupe, alors l'identifiant de l'entité juridique est constitué de la façon suivante: ** pour le cabinet d’un PS ADELI : 0 + IdentifiantEJ;** pour le cabinet d’un PS RPPS : 4 + IdentifiantEJ. Synonyme : Struct_IdNat (CI-SIS)",
        "definition" : "Identification nationale de l'Entité juridique initiée pour les besoins du SI-CPS.Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure:** 1 + N° FINESS (entité juridique et entité géographique indéterminées);** 2 + N° Siren.Cas particulier:La notion d’identifiant d'entité juridique n'a pas de sens métier pour un cabinet individuel ou un cabinet de groupe identifié par un RPPS-Rang ou un ADELI-rang (cf. Attribut IdentifiantEG de la classe EntiteGeographique). Si un cas d'usage nécessite d'appliquer la notion générique d'entité juridique et d'entité géographique pour un cabinet individuel ou un cabinet de groupe, alors l'identifiant de l'entité juridique est constitué de la façon suivante: ** pour le cabinet d’un PS ADELI : 0 + IdentifiantEJ;** pour le cabinet d’un PS RPPS : 4 + IdentifiantEJ. Synonyme : Struct_IdNat (CI-SIS)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.identifiantEJ",
        "path" : "EntiteJuridique.identifiantEJ",
        "short" : "Identifiant spécifique de l’entité juridique d’un cabinet individuel ou d’un cabinet de groupe dont l’entité géographique est identifiée par l’attribut identifiantEG. Cet identifiant concerne les entités juridiques qui ne sont pas identifiées par un numéro SIREN mais qui sont présentes dans le RPPS ou ADELI. Pour information, cet identifiant est construit en reprenant l’identifiantEG précédé des caractère « EJ » (cf. Attribut IdentifiantEG  de la classe EntiteGeographique).Synonyme : numEJ_RPPS_ADELI",
        "definition" : "Identifiant spécifique de l’entité juridique d’un cabinet individuel ou d’un cabinet de groupe dont l’entité géographique est identifiée par l’attribut identifiantEG. Cet identifiant concerne les entités juridiques qui ne sont pas identifiées par un numéro SIREN mais qui sont présentes dans le RPPS ou ADELI. Pour information, cet identifiant est construit en reprenant l’identifiantEG précédé des caractère « EJ » (cf. Attribut IdentifiantEG  de la classe EntiteGeographique).Synonyme : numEJ_RPPS_ADELI",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.typeIdNatStruct",
        "path" : "EntiteJuridique.typeIdNatStruct",
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
        "id" : "EntiteJuridique.numeroTVAIntracommunautaire",
        "path" : "EntiteJuridique.numeroTVAIntracommunautaire",
        "short" : "Le numéro de TVA intracommunautaire est un numéro d'identification individuel.Il est délivré par l'administration fiscale du pays de domiciliation de l'entreprise concernée au moment de son immatriculation ou de sa déclaration d'activité.La structure du numéro est propre à chaque pays.En France, le numéro est constitué du code FR, d'une clé informatique à 2 chiffres ou lettres et du numéro Siren de l'entreprise (9 chiffres).",
        "definition" : "Le numéro de TVA intracommunautaire est un numéro d'identification individuel.Il est délivré par l'administration fiscale du pays de domiciliation de l'entreprise concernée au moment de son immatriculation ou de sa déclaration d'activité.La structure du numéro est propre à chaque pays.En France, le numéro est constitué du code FR, d'une clé informatique à 2 chiffres ou lettres et du numéro Siren de l'entreprise (9 chiffres).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.numeroSRN",
        "path" : "EntiteJuridique.numeroSRN",
        "short" : "Numéro d'enregistrement unique (Single Registration Number - SRN) de l’acteur EUDAMED. Un acteur est un opérateur économique dont le rôle vis-à-vis du dispositif médical est enregistré dans la base de données EUDAMED : **MF : Fabricant**AR : Mandataire**IM : Importateur **PR :  AssembleurCe numéro est construit sur la base du numéro de tva intracommunautaire.",
        "definition" : "Numéro d'enregistrement unique (Single Registration Number - SRN) de l’acteur EUDAMED. Un acteur est un opérateur économique dont le rôle vis-à-vis du dispositif médical est enregistré dans la base de données EUDAMED : **MF : Fabricant**AR : Mandataire**IM : Importateur **PR :  AssembleurCe numéro est construit sur la base du numéro de tva intracommunautaire.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.raisonSociale",
        "path" : "EntiteJuridique.raisonSociale",
        "short" : "La raison sociale est le nom de l'entité juridique.Elle figure obligatoirement dans les statuts de l'EJ.Synonyme: Dénomination",
        "definition" : "La raison sociale est le nom de l'entité juridique.Elle figure obligatoirement dans les statuts de l'EJ.Synonyme: Dénomination",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.raisonSocialeLongue",
        "path" : "EntiteJuridique.raisonSocialeLongue",
        "short" : "Raison sociale complète de l'entité juridique (acronymes, sigles ou abréviations développées).",
        "definition" : "Raison sociale complète de l'entité juridique (acronymes, sigles ou abréviations développées).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.complementRaisonSociale",
        "path" : "EntiteJuridique.complementRaisonSociale",
        "short" : "Suite de la raison sociale, si elle existe. Ce complément peut contenir notamment des informations facilitant l'adressage d'un courrier aux structures.",
        "definition" : "Suite de la raison sociale, si elle existe. Ce complément peut contenir notamment des informations facilitant l'adressage d'un courrier aux structures.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.statutJuridique",
        "path" : "EntiteJuridique.statutJuridique",
        "short" : "Chaque entité juridique dispose d'un statut juridique qui caractérise la situation juridique de la personne morale.Le statut juridique détermine la situation juridique de l’établissement c’est-à-dire les règles particulières de fonctionnement qui le régissent, notamment sa gestion administrative et financière et la gestion de ses biens. Le statut juridique est attribué à la personne morale ou physique de l’établissement : l’entité juridique. Tous les établissements de la même EJ relèvent du même statut juridique.La nomenclature des statuts juridiques est une notion propre à FINESS.Les statuts juridiques sont eux-mêmes classifiés en grands agrégats qui sont :** Organismes et établissements publics:      - Etat et collectivités territoriales;     - Etablissements publics;** Organismes privés:     - Organismes privés à but non lucratif;     - Organismes privés à caractère commercial;** Personne morale de droit étranger.",
        "definition" : "Chaque entité juridique dispose d'un statut juridique qui caractérise la situation juridique de la personne morale.Le statut juridique détermine la situation juridique de l’établissement c’est-à-dire les règles particulières de fonctionnement qui le régissent, notamment sa gestion administrative et financière et la gestion de ses biens. Le statut juridique est attribué à la personne morale ou physique de l’établissement : l’entité juridique. Tous les établissements de la même EJ relèvent du même statut juridique.La nomenclature des statuts juridiques est une notion propre à FINESS.Les statuts juridiques sont eux-mêmes classifiés en grands agrégats qui sont :** Organismes et établissements publics:      - Etat et collectivités territoriales;     - Etablissements publics;** Organismes privés:     - Organismes privés à but non lucratif;     - Organismes privés à caractère commercial;** Personne morale de droit étranger.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R72-FinessStatutJuridique/FHIR/TRE-R72-FinessStatutJuridique?vs"
        }
      },
      {
        "id" : "EntiteJuridique.agregatStatutJuridiqueNiv1",
        "path" : "EntiteJuridique.agregatStatutJuridiqueNiv1",
        "short" : "Agrégat de statut juridique de niveau 1. L'agrégat de niveau 1 représente des regroupements d'agrégats de niveau 2. Par exemple, le code 1000 \"Organismes et Etablissements publics\" regroupe les codes d'agrégat de niveau 2 1100 et 1200.",
        "definition" : "Agrégat de statut juridique de niveau 1. L'agrégat de niveau 1 représente des regroupements d'agrégats de niveau 2. Par exemple, le code 1000 \"Organismes et Etablissements publics\" regroupe les codes d'agrégat de niveau 2 1100 et 1200.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R68-FinessAgregatStatutJuridiqueNiv1/FHIR/TRE-R68-FinessAgregatStatutJuridiqueNiv1?vs"
        }
      },
      {
        "id" : "EntiteJuridique.agregatStatutJuridiqueNiv2",
        "path" : "EntiteJuridique.agregatStatutJuridiqueNiv2",
        "short" : "Agrégat de statut juridique de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégats de niveau 3. Par exemple, le code 1100 \"Etat et Collectivités territoriales\" regroupe les codes d'agrégats de niveau 3 1110 et 1120. Il caractérise le statut juridique d’une structure au sens du droit applicable (public / privé) et de la finalité (non lucratif / commercial).",
        "definition" : "Agrégat de statut juridique de niveau 2. L'agrégat de niveau 2 représente des regroupements d'agrégats de niveau 3. Par exemple, le code 1100 \"Etat et Collectivités territoriales\" regroupe les codes d'agrégats de niveau 3 1110 et 1120. Il caractérise le statut juridique d’une structure au sens du droit applicable (public / privé) et de la finalité (non lucratif / commercial).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R69-FinessAgregatStatutJuridiqueNiv2/FHIR/TRE-R69-FinessAgregatStatutJuridiqueNiv2?vs"
        }
      },
      {
        "id" : "EntiteJuridique.agregatStatutJuridiqueNiv3",
        "path" : "EntiteJuridique.agregatStatutJuridiqueNiv3",
        "short" : "Agrégat de statut juridique de niveau 3. L'agrégat de niveau 3 représente des regroupements de statuts juridiques. Par exemple, le code 1120 \"Collectivité territoriale\" regroupe les statuts juridiques 02, 03 etc.",
        "definition" : "Agrégat de statut juridique de niveau 3. L'agrégat de niveau 3 représente des regroupements de statuts juridiques. Par exemple, le code 1120 \"Collectivité territoriale\" regroupe les statuts juridiques 02, 03 etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R70-FinessAgregatStatutJuridique/FHIR/TRE-R70-FinessAgregatStatutJuridique?vs"
        }
      },
      {
        "id" : "EntiteJuridique.codeAPEN",
        "path" : "EntiteJuridique.codeAPEN",
        "short" : "Toute entité juridique et chacun de ses établissements (EG) se voit attribuer par l'Insee, lors de son inscription au répertoire SIRENE, un code caractérisant son activité principale par référence à la nomenclature d'activités française (NAF rév. 2). Plus précisément, on distingue le code APEN pour l'EJ.",
        "definition" : "Toute entité juridique et chacun de ses établissements (EG) se voit attribuer par l'Insee, lors de son inscription au répertoire SIRENE, un code caractérisant son activité principale par référence à la nomenclature d'activités française (NAF rév. 2). Plus précisément, on distingue le code APEN pour l'EJ.",
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
        "id" : "EntiteJuridique.dateCreation",
        "path" : "EntiteJuridique.dateCreation",
        "short" : "Date de création de l'entité juridique.",
        "definition" : "Date de création de l'entité juridique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.dateModificationSiren",
        "path" : "EntiteJuridique.dateModificationSiren",
        "short" : "Date de modification du numéro Siren.",
        "definition" : "Date de modification du numéro Siren.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.origineModificationSIREN",
        "path" : "EntiteJuridique.origineModificationSIREN",
        "short" : "Origine/nature de la modification du Siren (motif de modification de l’identifiant).",
        "definition" : "Origine/nature de la modification du Siren (motif de modification de l’identifiant).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.dateFermeture",
        "path" : "EntiteJuridique.dateFermeture",
        "short" : "Date de fermeture de l'entité juridique.",
        "definition" : "Date de fermeture de l'entité juridique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.typeFermeture",
        "path" : "EntiteJuridique.typeFermeture",
        "short" : "Type de fermeture de l'entité juridique, au sens des règles de gestion du SI FINESS (par exemple, fermeture définitive), obligatoire lors de la fermeture de l'entité.",
        "definition" : "Type de fermeture de l'entité juridique, au sens des règles de gestion du SI FINESS (par exemple, fermeture définitive), obligatoire lors de la fermeture de l'entité.",
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
        "id" : "EntiteJuridique.adresseEJ",
        "path" : "EntiteJuridique.adresseEJ",
        "short" : "Adresse géopostale de l'entité juridique.",
        "definition" : "Adresse géopostale de l'entité juridique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.contact",
        "path" : "EntiteJuridique.contact",
        "short" : "Point(s) de contact de l'entité juridique.",
        "definition" : "Point(s) de contact de l'entité juridique.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.telecommunication",
        "path" : "EntiteJuridique.telecommunication",
        "short" : "Adresse(s) de télécommunication de l'entité juridique (numéro de téléphone, adresse email, URL, etc.).",
        "definition" : "Adresse(s) de télécommunication de l'entité juridique (numéro de téléphone, adresse email, URL, etc.).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "EntiteJuridique.boiteLettresMSS",
        "path" : "EntiteJuridique.boiteLettresMSS",
        "short" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'entité juridique.",
        "definition" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'entité juridique.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS"
          }
        ]
      }
    ]
  }
}

```
