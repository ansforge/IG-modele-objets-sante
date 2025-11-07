# DispositifMedical - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DispositifMedical**

## Logical Model: DispositifMedical 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DispositifMedical | *Version*:0.1.0 |
| Draft as of 2025-11-07 | *Computable Name*:DispositifMedical |

 
L’article 2 partie 1 du Règlement (UE) 2017/745 du 5 avril 2017 définit un dispositif médical (DM) comme tout instrument, appareil, équipement, logiciel, implant, réactif, matière ou autre article, destiné par le fabricant à être utilisé, seul ou en association, chez l’homme pour l’une ou plusieurs des fins médicales précises suivantes:** diagnostic, prévention, contrôle, prédiction, pronostic, traitement ou atténuation d’une maladie,** diagnostic, contrôle, traitement, atténuation d’une blessure ou d’un handicap ou compensation de ceux-ci,** investigation, remplacement ou modification d’une structure ou fonction anatomique ou d’un processus ou état physiologique ou pathologique,** communication d’informations au moyen d’un examen in vitro d’échantillons provenant du corps humain, y compris les dons d’organes, de sang et de tissus,et dont l’action principale voulue dans ou sur le corps humain n’est pas obtenue par des moyens pharmacologiques ou immunologiques ni par métabolisme, mais dont la fonction peut être assistée par de tels moyens. Les produits ci-après sont également réputés être des dispositifs médicaux :** les dispositifs destinés à la maîtrise de la conception ou à l’assistance à celle-ci,** les produits spécifiquement destinés au nettoyage, à la désinfection ou à la stérilisation des dispositifs visés à l’article 1er, paragraphe 4, et de ceux visés au premier alinéa du présent point. 

**Usages:**

* Use this Logical Model: [EntiteJuridique](StructureDefinition-EntiteJuridique.md) and [NoteLiaison](StructureDefinition-NoteLiaison.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/DispositifMedical)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DispositifMedical.csv), [Excel](StructureDefinition-DispositifMedical.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DispositifMedical",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DispositifMedical",
  "version" : "0.1.0",
  "name" : "DispositifMedical",
  "title" : "DispositifMedical",
  "status" : "draft",
  "date" : "2025-11-07T16:48:20+00:00",
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
  "description" : "L’article 2 partie 1 du Règlement (UE) 2017/745 du 5 avril 2017 définit un dispositif médical (DM) comme tout instrument, appareil, équipement, logiciel, implant, réactif, matière ou autre article, destiné par le fabricant à être utilisé, seul ou en association, chez l'homme pour l'une ou plusieurs des fins médicales précises suivantes:** diagnostic, prévention, contrôle, prédiction, pronostic, traitement ou atténuation d'une maladie,** diagnostic, contrôle, traitement, atténuation d'une blessure ou d'un handicap ou compensation de ceux-ci,** investigation, remplacement ou modification d'une structure ou fonction anatomique ou d'un processus ou état physiologique ou pathologique,** communication d'informations au moyen d'un examen in vitro d'échantillons provenant du corps humain, y compris les dons d'organes, de sang et de tissus,et dont l'action principale voulue dans ou sur le corps humain n'est pas obtenue par des moyens pharmacologiques ou immunologiques ni par métabolisme, mais dont la fonction peut être assistée par de tels moyens. Les produits ci-après sont également réputés être des dispositifs médicaux :** les dispositifs destinés à la maîtrise de la conception ou à l'assistance à celle-ci,** les produits spécifiquement destinés au nettoyage, à la désinfection ou à la stérilisation des dispositifs visés à l'article 1er, paragraphe 4, et de ceux visés au premier alinéa du présent point.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DispositifMedical",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "DispositifMedical",
        "path" : "DispositifMedical",
        "short" : "L’article 2 partie 1 du Règlement (UE) 2017/745 du 5 avril 2017 définit un dispositif médical (DM) comme tout instrument, appareil, équipement, logiciel, implant, réactif, matière ou autre article, destiné par le fabricant à être utilisé, seul ou en association, chez l'homme pour l'une ou plusieurs des fins médicales précises suivantes:** diagnostic, prévention, contrôle, prédiction, pronostic, traitement ou atténuation d'une maladie,** diagnostic, contrôle, traitement, atténuation d'une blessure ou d'un handicap ou compensation de ceux-ci,** investigation, remplacement ou modification d'une structure ou fonction anatomique ou d'un processus ou état physiologique ou pathologique,** communication d'informations au moyen d'un examen in vitro d'échantillons provenant du corps humain, y compris les dons d'organes, de sang et de tissus,et dont l'action principale voulue dans ou sur le corps humain n'est pas obtenue par des moyens pharmacologiques ou immunologiques ni par métabolisme, mais dont la fonction peut être assistée par de tels moyens. Les produits ci-après sont également réputés être des dispositifs médicaux :** les dispositifs destinés à la maîtrise de la conception ou à l'assistance à celle-ci,** les produits spécifiquement destinés au nettoyage, à la désinfection ou à la stérilisation des dispositifs visés à l'article 1er, paragraphe 4, et de ceux visés au premier alinéa du présent point.",
        "definition" : "L’article 2 partie 1 du Règlement (UE) 2017/745 du 5 avril 2017 définit un dispositif médical (DM) comme tout instrument, appareil, équipement, logiciel, implant, réactif, matière ou autre article, destiné par le fabricant à être utilisé, seul ou en association, chez l'homme pour l'une ou plusieurs des fins médicales précises suivantes:** diagnostic, prévention, contrôle, prédiction, pronostic, traitement ou atténuation d'une maladie,** diagnostic, contrôle, traitement, atténuation d'une blessure ou d'un handicap ou compensation de ceux-ci,** investigation, remplacement ou modification d'une structure ou fonction anatomique ou d'un processus ou état physiologique ou pathologique,** communication d'informations au moyen d'un examen in vitro d'échantillons provenant du corps humain, y compris les dons d'organes, de sang et de tissus,et dont l'action principale voulue dans ou sur le corps humain n'est pas obtenue par des moyens pharmacologiques ou immunologiques ni par métabolisme, mais dont la fonction peut être assistée par de tels moyens. Les produits ci-après sont également réputés être des dispositifs médicaux :** les dispositifs destinés à la maîtrise de la conception ou à l'assistance à celle-ci,** les produits spécifiquement destinés au nettoyage, à la désinfection ou à la stérilisation des dispositifs visés à l'article 1er, paragraphe 4, et de ceux visés au premier alinéa du présent point."
      },
      {
        "id" : "DispositifMedical.identifiantLocalDM",
        "path" : "DispositifMedical.identifiantLocalDM",
        "short" : "Identifiants affectés au dispositif médical dans les référentiels locaux.",
        "definition" : "Identifiants affectés au dispositif médical dans les référentiels locaux.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "DispositifMedical.classeRisque",
        "path" : "DispositifMedical.classeRisque",
        "short" : "Classe de risque du dispositif. Les dispositifs sont répartis en classe I, classe IIa, classe IIb et classe III en fonction de la destination des dispositifs et des risques qui leur sont inhérents. La classification est effectuée conformément à l'annexe VIII du Règlement (UE) 2017/745.",
        "definition" : "Classe de risque du dispositif. Les dispositifs sont répartis en classe I, classe IIa, classe IIb et classe III en fonction de la destination des dispositifs et des risques qui leur sont inhérents. La classification est effectuée conformément à l'annexe VIII du Règlement (UE) 2017/745.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "DispositifMedical.reference",
        "path" : "DispositifMedical.reference",
        "short" : "Référence du dispositif médical ou numéro dans le catalogue commercial.",
        "definition" : "Référence du dispositif médical ou numéro dans le catalogue commercial.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "DispositifMedical.modele",
        "path" : "DispositifMedical.modele",
        "short" : "Modèle du dispositif médical.",
        "definition" : "Modèle du dispositif médical.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "DispositifMedical.nomCommercial",
        "path" : "DispositifMedical.nomCommercial",
        "short" : "Dénomination commerciale du modèle du dispositif médical.",
        "definition" : "Dénomination commerciale du modèle du dispositif médical.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "DispositifMedical.codeEMDN",
        "path" : "DispositifMedical.codeEMDN",
        "short" : "Code du modèle du dispositif médical dans la nomenclature EMDN (European Medical Device Nomenclature).",
        "definition" : "Code du modèle du dispositif médical dans la nomenclature EMDN (European Medical Device Nomenclature).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "DispositifMedical.usageUnique",
        "path" : "DispositifMedical.usageUnique",
        "short" : "Indicateur pour spécifier si le dispositif est à usage unique.1 : dispositif à usage unique0 : dispositif réutilisable",
        "definition" : "Indicateur pour spécifier si le dispositif est à usage unique.1 : dispositif à usage unique0 : dispositif réutilisable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "DispositifMedical.nombreReutilisation",
        "path" : "DispositifMedical.nombreReutilisation",
        "short" : "Le nombre limité de réutilisations du dispositif médical.",
        "definition" : "Le nombre limité de réutilisations du dispositif médical.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "DispositifMedical.sterile",
        "path" : "DispositifMedical.sterile",
        "short" : "Indicateur pour spécifier si le dispositif est stérile.1 : dispositif stérile0 : dispositif non stérile",
        "definition" : "Indicateur pour spécifier si le dispositif est stérile.1 : dispositif stérile0 : dispositif non stérile",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "DispositifMedical.sterilisationAvantUtilisation",
        "path" : "DispositifMedical.sterilisationAvantUtilisation",
        "short" : "Indicateur pour spécifier si le dispositif doit être stérilisé avant utilisation.1 : stérilisation nécessaire 0 : stérilisation non nécessaire",
        "definition" : "Indicateur pour spécifier si le dispositif doit être stérilisé avant utilisation.1 : stérilisation nécessaire 0 : stérilisation non nécessaire",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "DispositifMedical.contientLatex",
        "path" : "DispositifMedical.contientLatex",
        "short" : "Indicateur pour spécifier si le dispositif contient du latex.1 : contient du latex0 : ne contient pas de latex",
        "definition" : "Indicateur pour spécifier si le dispositif contient du latex.1 : contient du latex0 : ne contient pas de latex",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "DispositifMedical.substanceCMR1A1B",
        "path" : "DispositifMedical.substanceCMR1A1B",
        "short" : "Indicateur pour spécifier si le dispositif contient des substances CMR de catégorie 1A ou 1B.1 : contient des substances CMR de catégorie 1A ou 1B0 : ne contient pas de substances CMR de catégorie 1A et 1B",
        "definition" : "Indicateur pour spécifier si le dispositif contient des substances CMR de catégorie 1A ou 1B.1 : contient des substances CMR de catégorie 1A ou 1B0 : ne contient pas de substances CMR de catégorie 1A et 1B",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "DispositifMedical.implantable",
        "path" : "DispositifMedical.implantable",
        "short" : "Indicateur pour spécifier si le dispositif est implantable.1 : dispositif implantable0 : dispositif non implantable",
        "definition" : "Indicateur pour spécifier si le dispositif est implantable.1 : dispositif implantable0 : dispositif non implantable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "DispositifMedical.actif",
        "path" : "DispositifMedical.actif",
        "short" : "Indicateur pour specifier si le dispositif est actif. L’article 2 partie 4 du Règlement (UE) 2017/745 du 5 avril 2017 définit les dispositifs actifs comme \"tout dispositif dont le fonctionnement dépend d'une source d'énergie autre que celle générée par le corps humain à cette fin ou par la pesanteur et agissant par modification de la densité de cette énergie ou par conversion de celle-ci. Les dispositifs destinés à la transmission d'énergie, de substances ou d'autres éléments, sans modification significative, entre un dispositif actif et le patient ne sont pas réputés être des dispositifs actifs. Les logiciels sont aussi réputés être des dispositifs actifs.\" 1 : dispositif actif0 : dispositif non actif",
        "definition" : "Indicateur pour specifier si le dispositif est actif. L’article 2 partie 4 du Règlement (UE) 2017/745 du 5 avril 2017 définit les dispositifs actifs comme \"tout dispositif dont le fonctionnement dépend d'une source d'énergie autre que celle générée par le corps humain à cette fin ou par la pesanteur et agissant par modification de la densité de cette énergie ou par conversion de celle-ci. Les dispositifs destinés à la transmission d'énergie, de substances ou d'autres éléments, sans modification significative, entre un dispositif actif et le patient ne sont pas réputés être des dispositifs actifs. Les logiciels sont aussi réputés être des dispositifs actifs.\" 1 : dispositif actif0 : dispositif non actif",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "DispositifMedical.codeLPP",
        "path" : "DispositifMedical.codeLPP",
        "short" : "Code de la Liste des Produits et des Prestations (LPP) du modèle du dispositif médical.Il s'agit d'un code national utilisé pour obtenir le remboursement par l'Assurance Maladie de certains DM (implantables ou invasifs non implantables) en sus des prestations d’hospitalisations à l’hôpital, ou le remboursement de certains produits et prestations en ville.",
        "definition" : "Code de la Liste des Produits et des Prestations (LPP) du modèle du dispositif médical.Il s'agit d'un code national utilisé pour obtenir le remboursement par l'Assurance Maladie de certains DM (implantables ou invasifs non implantables) en sus des prestations d’hospitalisations à l’hôpital, ou le remboursement de certains produits et prestations en ville.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "DispositifMedical.irmCompatible",
        "path" : "DispositifMedical.irmCompatible",
        "short" : "La norme ASTM (American Society for Testing and Materials ) F2503 distingue 3 niveaux de compatibilité IRM d’un dispositif médical : ‒ « MR Safe » (IRM compatible sans conditions) : dispositifs pouvant être introduits dans tout type d’IRM sans risque (matériau non conducteur, non métallique, non magnétique) ; ‒ « MR Unsafe » (non IRM compatible) : dispositifs engendrant un risque pour le patient lors de son introduction dans l’IRM ; ‒ « MR Conditional » (IRM compatible sous conditions) : dispositifs pouvant être introduits dans l’IRM sous des conditions précises pré spécifiées par le fabricant. Seul le respect de toutes ces conditions pourra permettre la réalisation d’une IRM sans risque. Cela revient à évaluer les conditions dans lesquelles un dispositif médical n’est pas dangereux dans un environnement à résonance magnétique.La FDA recommande que tous les Dispositifs Médicaux Implantables Actifs (DMIA) soient classés « MR Conditional » (IRM compatible sous conditions) ou « MR Unsafe » (non IRM compatible) selon les cas, compte tenu de la présence de composants électroniques conducteurs. Autrement dit, un DMIA ne doit jamais être considéré comme « MR Safe ».La création de la nomenclature associée est en cours.",
        "definition" : "La norme ASTM (American Society for Testing and Materials ) F2503 distingue 3 niveaux de compatibilité IRM d’un dispositif médical : ‒ « MR Safe » (IRM compatible sans conditions) : dispositifs pouvant être introduits dans tout type d’IRM sans risque (matériau non conducteur, non métallique, non magnétique) ; ‒ « MR Unsafe » (non IRM compatible) : dispositifs engendrant un risque pour le patient lors de son introduction dans l’IRM ; ‒ « MR Conditional » (IRM compatible sous conditions) : dispositifs pouvant être introduits dans l’IRM sous des conditions précises pré spécifiées par le fabricant. Seul le respect de toutes ces conditions pourra permettre la réalisation d’une IRM sans risque. Cela revient à évaluer les conditions dans lesquelles un dispositif médical n’est pas dangereux dans un environnement à résonance magnétique.La FDA recommande que tous les Dispositifs Médicaux Implantables Actifs (DMIA) soient classés « MR Conditional » (IRM compatible sous conditions) ou « MR Unsafe » (non IRM compatible) selon les cas, compte tenu de la présence de composants électroniques conducteurs. Autrement dit, un DMIA ne doit jamais être considéré comme « MR Safe ».La création de la nomenclature associée est en cours.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD",
        "path" : "DispositifMedical.SupportIUD",
        "short" : "Le support IUD (transcription AIDC et marquage en clair de l'IUD) est apposé sur l'étiquette ou sur le dispositif proprement dit et sur tous les niveaux de conditionnement supérieurs du dispositif. Les conteneurs de transport ne font pas partie des niveaux de conditionnement supérieurs.L’article 27 partie 3 du Règlement (UE) 2017/745 du 5 avril 2017 définit le système d'identification unique des dispositifs (IUD). Ce système permet l'identification et facilite la traçabilité des dispositifs autres que les dispositifs sur mesure et les dispositifs faisant l'objet d'une investigation.La production d'un IUD comprenant:** un identifiant «dispositif» IUD (IUD-ID), propre à un fabricant et à un dispositif ;** un identifiant «production» IUD (IUD-IP), qui identifie l'unité de production du dispositif et, le cas échéant, les dispositifs conditionnés.",
        "definition" : "Le support IUD (transcription AIDC et marquage en clair de l'IUD) est apposé sur l'étiquette ou sur le dispositif proprement dit et sur tous les niveaux de conditionnement supérieurs du dispositif. Les conteneurs de transport ne font pas partie des niveaux de conditionnement supérieurs.L’article 27 partie 3 du Règlement (UE) 2017/745 du 5 avril 2017 définit le système d'identification unique des dispositifs (IUD). Ce système permet l'identification et facilite la traçabilité des dispositifs autres que les dispositifs sur mesure et les dispositifs faisant l'objet d'une investigation.La production d'un IUD comprenant:** un identifiant «dispositif» IUD (IUD-ID), propre à un fabricant et à un dispositif ;** un identifiant «production» IUD (IUD-IP), qui identifie l'unité de production du dispositif et, le cas échéant, les dispositifs conditionnés.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.IUDID",
        "path" : "DispositifMedical.SupportIUD.IUDID",
        "short" : "L'IUD-ID est l’identifiant du dispositif qui a été introduit par les règlements pour identifier un modèle ou une famille de dispositifs et qui apparaît sur les certificats et les déclarations de conformité UE. Ce code est également la principale clé d’accès aux registres d’informations liées aux produits dans la base de données EUDAMED contenant l'ensemble des informations liées aux dispositifs médicaux sur le marché européen.L'IUD-ID est un code numérique ou alphanumérique unique propre à un modèle de dispositif qui sert également de clé d'accès aux informations stockées dans une base de données IUD.",
        "definition" : "L'IUD-ID est l’identifiant du dispositif qui a été introduit par les règlements pour identifier un modèle ou une famille de dispositifs et qui apparaît sur les certificats et les déclarations de conformité UE. Ce code est également la principale clé d’accès aux registres d’informations liées aux produits dans la base de données EUDAMED contenant l'ensemble des informations liées aux dispositifs médicaux sur le marché européen.L'IUD-ID est un code numérique ou alphanumérique unique propre à un modèle de dispositif qui sert également de clé d'accès aux informations stockées dans une base de données IUD.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.IUDIPNumeroSerie",
        "path" : "DispositifMedical.SupportIUD.IUDIPNumeroSerie",
        "short" : "Numéro de série du DM.Au sein d'un lot de fabrication, un DM peut être affecté d'un numéro de série unique permettant une meilleure traçabilité.Après l'entrée en application du Règlement (UE) 2017/745, le numéro de série constitue un type d’IUD-IP. L’affectation d’un numéro de série est obligatoire pour les DMI actifs marqués CE au titre du règlement.",
        "definition" : "Numéro de série du DM.Au sein d'un lot de fabrication, un DM peut être affecté d'un numéro de série unique permettant une meilleure traçabilité.Après l'entrée en application du Règlement (UE) 2017/745, le numéro de série constitue un type d’IUD-IP. L’affectation d’un numéro de série est obligatoire pour les DMI actifs marqués CE au titre du règlement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.IUDIPNumeroLot",
        "path" : "DispositifMedical.SupportIUD.IUDIPNumeroLot",
        "short" : "Numéro du lot auquel appartient le DM.Après l'entrée en application du Règlement (UE) 2017/745, le numéro de lot du DM constitue un type d’IUD-IP. L’affectation d’un numéro de lot ou d’un numéro de série est obligatoire pour les DMI marqués CE au titre du règlement.",
        "definition" : "Numéro du lot auquel appartient le DM.Après l'entrée en application du Règlement (UE) 2017/745, le numéro de lot du DM constitue un type d’IUD-IP. L’affectation d’un numéro de lot ou d’un numéro de série est obligatoire pour les DMI marqués CE au titre du règlement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.IUDIPIdLogiciel",
        "path" : "DispositifMedical.SupportIUD.IUDIPIdLogiciel",
        "short" : "Identifiant du logiciel. L'IUD est attribué au niveau du système du logiciel. Seuls les logiciels qui sont disponibles en soi dans le commerce et ceux qui constituent un dispositif à part entière sont soumis à cette exigence.L'identification du logiciel est considérée comme un mécanisme de contrôle de la fabrication et est indiquée dans l'IUD-IP.",
        "definition" : "Identifiant du logiciel. L'IUD est attribué au niveau du système du logiciel. Seuls les logiciels qui sont disponibles en soi dans le commerce et ceux qui constituent un dispositif à part entière sont soumis à cette exigence.L'identification du logiciel est considérée comme un mécanisme de contrôle de la fabrication et est indiquée dans l'IUD-IP.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.IUDIPDateFabrication",
        "path" : "DispositifMedical.SupportIUD.IUDIPDateFabrication",
        "short" : "Après l'entrée en application du Règlement (UE) 2017/745, la date de fabrication constitue un type d’IUD-IP.",
        "definition" : "Après l'entrée en application du Règlement (UE) 2017/745, la date de fabrication constitue un type d’IUD-IP.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.IUDIPDateExpiration",
        "path" : "DispositifMedical.SupportIUD.IUDIPDateExpiration",
        "short" : "Après l'entrée en application du Règlement (UE) 2017/745, la date d’expiration constitue un type d’IUD-IP.",
        "definition" : "Après l'entrée en application du Règlement (UE) 2017/745, la date d’expiration constitue un type d’IUD-IP.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.AIDC",
        "path" : "DispositifMedical.SupportIUD.AIDC",
        "short" : "Identification et saisie automatiques des données (AIDC - Automatic identification and data capture).L'AIDC est une technologie utilisée pour procéder à la capture automatique de données. Les techniques concernées sont notamment les codes à barres, les cartes à puce, la biométrie et l'identification par radiofréquence (RFID).S'il est fait usage de codes à barres linéaires, l'IUD-ID et l'IUD-IP peuvent être concaténés ou non concaténés en deux codes à barres ou plus. Toutes les parties et tous les éléments du code à barres linéaire sont reconnaissables et identifiables.Si le fabricant recourt à la technologie RFID, un code à barres linéaire ou à deux dimensions conforme à la norme prévue par les entités d'attribution apparaît également sur l'étiquette.",
        "definition" : "Identification et saisie automatiques des données (AIDC - Automatic identification and data capture).L'AIDC est une technologie utilisée pour procéder à la capture automatique de données. Les techniques concernées sont notamment les codes à barres, les cartes à puce, la biométrie et l'identification par radiofréquence (RFID).S'il est fait usage de codes à barres linéaires, l'IUD-ID et l'IUD-IP peuvent être concaténés ou non concaténés en deux codes à barres ou plus. Toutes les parties et tous les éléments du code à barres linéaire sont reconnaissables et identifiables.Si le fabricant recourt à la technologie RFID, un code à barres linéaire ou à deux dimensions conforme à la norme prévue par les entités d'attribution apparaît également sur l'étiquette.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "base64Binary"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.marquageClair",
        "path" : "DispositifMedical.SupportIUD.marquageClair",
        "short" : "Le marquage en clair est une interprétation lisible des caractères d'information encodés dans le support IUD.En anglais HRI : Human Readable Interpretation",
        "definition" : "Le marquage en clair est une interprétation lisible des caractères d'information encodés dans le support IUD.En anglais HRI : Human Readable Interpretation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "DispositifMedical.SupportIUD.typeSupportIUD",
        "path" : "DispositifMedical.SupportIUD.typeSupportIUD",
        "short" : "Type de technologie AIDC : code à barres, 1D, 2D ou RFID",
        "definition" : "Type de technologie AIDC : code à barres, 1D, 2D ou RFID",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "DispositifMedical.EntiteJuridique",
        "path" : "DispositifMedical.EntiteJuridique",
        "short" : "Lien vers la classe EntiteJuridique",
        "definition" : "Lien vers la classe EntiteJuridique",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique"
          }
        ]
      },
      {
        "id" : "DispositifMedical.NoteLiaison",
        "path" : "DispositifMedical.NoteLiaison",
        "short" : "Lien vers la classe NoteLiaison",
        "definition" : "Lien vers la classe NoteLiaison",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/NoteLiaison"
          }
        ]
      }
    ]
  }
}

```
