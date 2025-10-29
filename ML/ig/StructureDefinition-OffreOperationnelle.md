# OffreOperationnelle - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OffreOperationnelle**

## Logical Model: OffreOperationnelle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle | *Version*:0.1.0 |
| Draft as of 2025-10-29 | *Computable Name*:OffreOperationnelle |

 
L’Offre opérationnelle correspond aux prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d’une personne. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/OffreOperationnelle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OffreOperationnelle.csv), [Excel](StructureDefinition-OffreOperationnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OffreOperationnelle",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle",
  "version" : "0.1.0",
  "name" : "OffreOperationnelle",
  "title" : "OffreOperationnelle",
  "status" : "draft",
  "date" : "2025-10-29T10:18:40+00:00",
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
  "description" : "L'Offre opérationnelle correspond aux prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "OffreOperationnelle",
        "path" : "OffreOperationnelle",
        "short" : "L'Offre opérationnelle correspond aux prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne.",
        "definition" : "L'Offre opérationnelle correspond aux prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne."
      },
      {
        "id" : "OffreOperationnelle.familleActiviteOperationnelle",
        "path" : "OffreOperationnelle.familleActiviteOperationnelle",
        "short" : "Une famille d’activités opérationnelles est un regroupement cohérent d’activités délivrées dans le cadre d'une prestation, répondant à un besoin de la personne. Dans le secteur médico-social, la Famille d’activité correspond au niveau 4 des prestations de la nomenclature SERAFIN.",
        "definition" : "Une famille d’activités opérationnelles est un regroupement cohérent d’activités délivrées dans le cadre d'une prestation, répondant à un besoin de la personne. Dans le secteur médico-social, la Famille d’activité correspond au niveau 4 des prestations de la nomenclature SERAFIN.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/familleActiviteOperationnelle-vs"
        }
      },
      {
        "id" : "OffreOperationnelle.identifiantOffre",
        "path" : "OffreOperationnelle.identifiantOffre",
        "short" : "Identifiant de l'offre, unique et persistant au niveau national, généré par une instance régionale du ROR ou par le ROR national.Format : Concaténation du code INSEE région et d’un identifiant généré, par le ROR régional ou le ROR national, séparé par le caractère \"slash\" (ex: 94/666).",
        "definition" : "Identifiant de l'offre, unique et persistant au niveau national, généré par une instance régionale du ROR ou par le ROR national.Format : Concaténation du code INSEE région et d’un identifiant généré, par le ROR régional ou le ROR national, séparé par le caractère \"slash\" (ex: 94/666).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.nomOffre",
        "path" : "OffreOperationnelle.nomOffre",
        "short" : "Dénomination sous laquelle l'offre est identifiée par le porteur d'offre et résultant de l'application de règles de bonnes pratiques pour être affichable auprès des professionnels comme du grand public.",
        "definition" : "Dénomination sous laquelle l'offre est identifiée par le porteur d'offre et résultant de l'application de règles de bonnes pratiques pour être affichable auprès des professionnels comme du grand public.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.typeOffre",
        "path" : "OffreOperationnelle.typeOffre",
        "short" : "Le type d'offre permet de distinguer les offres et de les classer en fonction de leur nature particulière, liée à un agrément, un personnel spécialement formé ou un environnement particulièrement adapté à l'état de santé des patients.",
        "definition" : "Le type d'offre permet de distinguer les offres et de les classer en fonction de leur nature particulière, liée à un agrément, un personnel spécialement formé ou un environnement particulièrement adapté à l'état de santé des patients.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.champActivite",
        "path" : "OffreOperationnelle.champActivite",
        "short" : "Un champ d’activité indique le domaine dans lequel s'inscrit l'offre.",
        "definition" : "Un champ d’activité indique le domaine dans lequel s'inscrit l'offre.",
        "min" : 0,
        "max" : "1",
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
        "id" : "OffreOperationnelle.temporaliteAccueil",
        "path" : "OffreOperationnelle.temporaliteAccueil",
        "short" : "La temporalité d’accueil apporte une précision sur le mode de prise en charge. Elle indique si l'établissement médico-social accepte un accueil pour une durée limitée dans le temps, de 90 jours maximum par an.",
        "definition" : "La temporalité d’accueil apporte une précision sur le mode de prise en charge. Elle indique si l'établissement médico-social accepte un accueil pour une durée limitée dans le temps, de 90 jours maximum par an.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.modePriseEnCharge",
        "path" : "OffreOperationnelle.modePriseEnCharge",
        "short" : "Le mode de prise en charge caractérise l'hébergement ainsi que le niveau de technicité et d'intensité des soins.",
        "definition" : "Le mode de prise en charge caractérise l'hébergement ainsi que le niveau de technicité et d'intensité des soins.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.modaliteAccueil",
        "path" : "OffreOperationnelle.modaliteAccueil",
        "short" : "Une modalité d’accueil permet de préciser le mode de prise en charge géographiquement (ex. : sur le lieu de vie), technologiquement (ex. : téléconsultation) ou organisationnellement (ex. : accueil séquentiel).",
        "definition" : "Une modalité d’accueil permet de préciser le mode de prise en charge géographiquement (ex. : sur le lieu de vie), technologiquement (ex. : téléconsultation) ou organisationnellement (ex. : accueil séquentiel).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.modeGestion",
        "path" : "OffreOperationnelle.modeGestion",
        "short" : "Le mode de gestion indique le mode d’intervention des aides à domicile en fonction de la nature de la relation contractuelle (prestataire, mandataire).",
        "definition" : "Le mode de gestion indique le mode d’intervention des aides à domicile en fonction de la nature de la relation contractuelle (prestataire, mandataire).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R236-ModeGestion/FHIR/TRE-R236-ModeGestion?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.uniteSensible",
        "path" : "OffreOperationnelle.uniteSensible",
        "short" : "L’indicateur permet de signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes. Valeurs possibles :0 = L'offre ne revêt pas de caractère sensible et confidentiel1 = L'offre revêt un caractère sensible et confidentiel",
        "definition" : "L’indicateur permet de signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes. Valeurs possibles :0 = L'offre ne revêt pas de caractère sensible et confidentiel1 = L'offre revêt un caractère sensible et confidentiel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.acteSpecifique",
        "path" : "OffreOperationnelle.acteSpecifique",
        "short" : "Un acte spécifique est une action menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité. Cet acte peut correspondre à une technique spécialisée ou traduire une expertise discriminante dans le parcours de santé. Les actes réalisés habituellement par l'organisation ne sont pas des actes spécifiques.Les actes spécifiques décrits sont réalisés avec les ressources propres de l’organisation ou via des ressources mises à disposition dans le cadre d’une convention à la condition que ces ressources interviennent sur site dans la réalisation de la prestation.",
        "definition" : "Un acte spécifique est une action menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité. Cet acte peut correspondre à une technique spécialisée ou traduire une expertise discriminante dans le parcours de santé. Les actes réalisés habituellement par l'organisation ne sont pas des actes spécifiques.Les actes spécifiques décrits sont réalisés avec les ressources propres de l’organisation ou via des ressources mises à disposition dans le cadre d’une convention à la condition que ces ressources interviennent sur site dans la réalisation de la prestation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.acteRealiseHorsCabinet",
        "path" : "OffreOperationnelle.acteRealiseHorsCabinet",
        "short" : "Ce champ est renseigné (à la place de l’attribut acteSpecifique) pour les actes spécifiques réalisés hors cabinet pour décrire l’offre de santé des médecins libéraux, au sein d’un établissement.La description des actes réalisés hors cabinet permet une orientation d'un patient vers un cabinet pour consultation préalable à la réalisation de cet acte spécifique.",
        "definition" : "Ce champ est renseigné (à la place de l’attribut acteSpecifique) pour les actes spécifiques réalisés hors cabinet pour décrire l’offre de santé des médecins libéraux, au sein d’un établissement.La description des actes réalisés hors cabinet permet une orientation d'un patient vers un cabinet pour consultation préalable à la réalisation de cet acte spécifique.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.specialisationPriseEnCharge",
        "path" : "OffreOperationnelle.specialisationPriseEnCharge",
        "short" : "Une spécialisation de prise en charge correspond à un regroupement de troubles, de pathologies ou de déficiences qui nécessitent la mobilisation d'expertises, de compétences et/ou d'équipements spécifiques pouvant être discriminants dans le choix d’orientation du patient.",
        "definition" : "Une spécialisation de prise en charge correspond à un regroupement de troubles, de pathologies ou de déficiences qui nécessitent la mobilisation d'expertises, de compétences et/ou d'équipements spécifiques pouvant être discriminants dans le choix d’orientation du patient.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R245-SpecialisationDePriseEnCharge/FHIR/TRE-R245-SpecialisationDePriseEnCharge?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.habilitationAuxSoinsSansConsentement",
        "path" : "OffreOperationnelle.habilitationAuxSoinsSansConsentement",
        "short" : "Cet indicateur permet d'identifier les offres pour lesquelles un établissement est autorisé par le directeur général de l’ARS après avis du préfet, à prendre en charge des patients sans leur consentement.   Valeurs possibles :  0 = pas d'habilitation 1 = habilitation",
        "definition" : "Cet indicateur permet d'identifier les offres pour lesquelles un établissement est autorisé par le directeur général de l’ARS après avis du préfet, à prendre en charge des patients sans leur consentement.   Valeurs possibles :  0 = pas d'habilitation 1 = habilitation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.ouvertureAnnuelle",
        "path" : "OffreOperationnelle.ouvertureAnnuelle",
        "short" : "L’ouverture annuelle indique le nombre de jours maximum dans l’année au cours desquels l'offre peut être proposée par l'établissement.",
        "definition" : "L’ouverture annuelle indique le nombre de jours maximum dans l’année au cours desquels l'offre peut être proposée par l'établissement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R238-OuvertureAnnuelle/FHIR/TRE-R238-OuvertureAnnuelle?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.zoneIntervention",
        "path" : "OffreOperationnelle.zoneIntervention",
        "short" : "Correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour l'offre décrite. Cela inclus notamment les divisions territoriales dans lesquelles les professionnels se déplacent.",
        "definition" : "Correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour l'offre décrite. Cela inclus notamment les divisions territoriales dans lesquelles les professionnels se déplacent.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DivisionTerritoriale"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.secteurPsychiatrique",
        "path" : "OffreOperationnelle.secteurPsychiatrique",
        "short" : "Le secteur de psychiatrie (ou sectorisation) correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur. Cet attribut est le libellé du secteur de psychiatrie.Des travaux sont actuellement en cours pour structurer cette donnée comme un Lieu.",
        "definition" : "Le secteur de psychiatrie (ou sectorisation) correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur. Cet attribut est le libellé du secteur de psychiatrie.Des travaux sont actuellement en cours pour structurer cette donnée comme un Lieu.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.professionRessource",
        "path" : "OffreOperationnelle.professionRessource",
        "short" : "La profession ressource traduit la mobilisation de métiers qui constituent un facteur différenciant dans la réalisation de l'offre.",
        "definition" : "La profession ressource traduit la mobilisation de métiers qui constituent un facteur différenciant dans la réalisation de l'offre.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/professionRessource-vs"
        }
      },
      {
        "id" : "OffreOperationnelle.competenceSpecifique",
        "path" : "OffreOperationnelle.competenceSpecifique",
        "short" : "La compétence spécifique correspond à une capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne. La compétence spécifique n’est ni une spécialité ordinale, ni une profession.",
        "definition" : "La compétence spécifique correspond à une capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne. La compétence spécifique n’est ni une spécialité ordinale, ni une profession.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R243-CompetenceSpecifique/FHIR/TRE-R243-CompetenceSpecifique?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.niveauExpertise",
        "path" : "OffreOperationnelle.niveauExpertise",
        "short" : "Le niveau d'expertise atteste du niveau de ressources humaines et matérielles engagées dans la réalisation de l'offre et défini dans un cahier des charges officiel.",
        "definition" : "Le niveau d'expertise atteste du niveau de ressources humaines et matérielles engagées dans la réalisation de l'offre et défini dans un cahier des charges officiel.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R344-NiveauExpertise/FHIR/TRE-R344-NiveauExpertise?vs"
        }
      },
      {
        "id" : "OffreOperationnelle.typeFermeture",
        "path" : "OffreOperationnelle.typeFermeture",
        "short" : "Le type de fermeture indique la temporalité d'arrêt de réalisation de l'offre.",
        "definition" : "Le type de fermeture indique la temporalité d'arrêt de réalisation de l'offre.",
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
        "id" : "OffreOperationnelle.dateFermeture",
        "path" : "OffreOperationnelle.dateFermeture",
        "short" : "La date de fermeture d'une offre correspond à la date effective à partir de laquelle l'offre n'est plus assurée. Cette date de fermeture est caractérisée par un type de fermeture. Lorsqu'il s'agit d'une fermeture temporaire, la date est remise à nulle lorsque l'offre est ouverte de nouveau.",
        "definition" : "La date de fermeture d'une offre correspond à la date effective à partir de laquelle l'offre n'est plus assurée. Cette date de fermeture est caractérisée par un type de fermeture. Lorsqu'il s'agit d'une fermeture temporaire, la date est remise à nulle lorsque l'offre est ouverte de nouveau.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.datePrevisionnelleReouverture",
        "path" : "OffreOperationnelle.datePrevisionnelleReouverture",
        "short" : "La date de réouverture correspond à la date prévisionnelle à partir de laquelle l'offre sera de nouveau assurée. Elle s'applique lors d'une période de fermeture temporaire.",
        "definition" : "La date de réouverture correspond à la date prévisionnelle à partir de laquelle l'offre sera de nouveau assurée. Elle s'applique lors d'une période de fermeture temporaire.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.horaire",
        "path" : "OffreOperationnelle.horaire",
        "short" : "Décrit le planning d'activité.",
        "definition" : "Décrit le planning d'activité.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Horaire"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.contact",
        "path" : "OffreOperationnelle.contact",
        "short" : "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service. Les moyens de contact sont précisés (numéro de téléphone, fax, email, site internet).",
        "definition" : "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service. Les moyens de contact sont précisés (numéro de téléphone, fax, email, site internet).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.boiteLettreMSS",
        "path" : "OffreOperationnelle.boiteLettreMSS",
        "short" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’Offre opérationnelle.",
        "definition" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’Offre opérationnelle.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.ActiviteOperationnelle",
        "path" : "OffreOperationnelle.ActiviteOperationnelle",
        "short" : "Une activité opérationnelle est un ensemble cohérent d’actions et de pratiques mises en oeuvre pour participer au rétablissement ou à l’entretien de la Santé d’une personne. L’activité peut être d’ordre médical ou sanitaire, à visée sociale, ou encore de l’ordre de l’accompagnement dans le quotidien. Les activités opérationnelles peuvent être regroupées au sein de familles d’activités.Cet ensemble opérationnel est plus détaillé qu'une activité soumise à autorisation préalable de l'ARS.Dans le secteur médico-social, chaque activité est rattachée à une famille d'activités (prestation niveau 4 de Serafin).Les activités décrites sont réalisées avec les ressources propres de la structure ou mises à disposition dans le cadre d’une convention à la condition qu'elles interviennent sur site.",
        "definition" : "Une activité opérationnelle est un ensemble cohérent d’actions et de pratiques mises en oeuvre pour participer au rétablissement ou à l’entretien de la Santé d’une personne. L’activité peut être d’ordre médical ou sanitaire, à visée sociale, ou encore de l’ordre de l’accompagnement dans le quotidien. Les activités opérationnelles peuvent être regroupées au sein de familles d’activités.Cet ensemble opérationnel est plus détaillé qu'une activité soumise à autorisation préalable de l'ARS.Dans le secteur médico-social, chaque activité est rattachée à une famille d'activités (prestation niveau 4 de Serafin).Les activités décrites sont réalisées avec les ressources propres de la structure ou mises à disposition dans le cadre d’une convention à la condition qu'elles interviennent sur site.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "OffreOperationnelle.ActiviteOperationnelle.activiteOperationnelle",
        "path" : "OffreOperationnelle.ActiviteOperationnelle.activiteOperationnelle",
        "short" : "Code définissant l’activité opérationnelle d’une Offre opérationnelle (offre de soin).",
        "definition" : "Code définissant l’activité opérationnelle d’une Offre opérationnelle (offre de soin).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle?vs"
        }
      }
    ]
  }
}

```
