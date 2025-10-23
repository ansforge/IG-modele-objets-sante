# Accueil - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/ImplementationGuide/ans.fr.mos | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:MOS |

 **Brief description of this Implementation Guide**
 [Add a brief description of this IG in English] 

> Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/mos

### Introduction

Le MOS est un ensemble de concepts, décrits de manière homogène et neutre vis-à-vis des technologies. Il favorise l’interopérabilité native des applications en offrant une description commune et mutualisée des informations traitées dans les systèmes d’information et les échanges. Le périmètre du MOS, circonscrit au départ au secteur sanitaire, évoluera au fil de ces projets pour prendre en compte les spécificités du secteur médico-social et social.

Lors de la définition d’un composant élémentaire du MOS, une étude préalable d’alignement est effectuée, afin d’identifier les équivalences éventuelles avec d’autres initiatives ou standards internationaux tels que Fast Healthcare Interoperability Resources (FHIR) de HL7 v2, HL7 v3 ou encore Semantic Interoperability Community (SEMIC) de la Commission européenne.

Les concepts du MOS sont représentés dans un diagramme de classes UML. Il est décomposé en plusieurs parties fonctionnelles qui regroupent un ensemble de classes. Dans ces classes, certains attributs sont codifiables, ils sont donc associés à une terminologie de référence (TRE) faisant partie des NOS.

La partie composants élémentaires du MOS est partitionnée de la manière suivante (voir la vue globale présentée en figure 1) :

* professionnels, au sens des personnes physiques (modèle de données des objets issus du RPPS et d’ADELI);
* dispositifs d’authentification attribués aux personnes physiques et morales, à ce stade les cartes et les certificats (produits CPx);
* structures, au sens établissements ou personnes morales du secteur de la santé (modèle de données des objets issus du fichier national des établissements sanitaires et sociaux (FINESS));
* autorisations, description des activités sanitaires, sociales, médico-sociales et d’enseignement et des équipements matériels lourds autorisés;
* ressources opérationnelles des organisations internes qui portent des activités opérationnelles de toute nature et des équipements opérationnels au sein d’entités géographiques;
* accords au sens des modalités réglementaires, contractuelles ou de financement (contrat, autorisation d’exercice, agrément, etc.);
* personnes prises en charge, personnes physiques recevant des soins ou bénéficiaire de services;
* accompagnant, toutes les entités qui protègent, aident, accompagnent la personne;
* dossier, ensemble de documents se rapportant à un même sujet;
* dispositifs médicaux tels que définis par le Règlement (UE) 2017/745 du 5 avril 2017;
* agenda des personnes physiques ou des structures;
* objets communs aux domaines, c’est à dire les personnes, les adresses, les coordonnées géographiques, les lieux, les contacts, les télécommunications, etc.;
* types de données, c’est à dire le domaine de valeurs de l’attribut; par exemple, l’attribut nomUsage (nom d’usage de la personne) est un texte (type de données “Texte”), l’attribut paysNaissance (pays de naissance) est un code (type de données “Code”).

Remarque générale sur les diagrammes:

La cardinalité “**” d’une association ou d’un attribut signifie “0..**”. La cardinalité “1” d’une association ou d’un attribut signifie “1..1”.

  

### Périmètre du projet

Définir en quelques lignes en anglais quel est le périmètre du projet

Toujours laisser l’onglet “Ressources de conformité” pour s’assurer d’une cohérence globales entre tous les IGs

### Auteurs et contributeurs

| | | | |
| :--- | :--- | :--- | :--- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances





### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [Adresse](StructureDefinition-Adresse.md), [Attestation](StructureDefinition-Attestation.md)...Show 56 more,[AutreDiplomeObtenu](StructureDefinition-AutreDiplomeObtenu.md),[BoiteLettreMSS](StructureDefinition-BoiteLettreMSS.md),[CapaciteDiplome](StructureDefinition-CapaciteDiplome.md),[CapaciteSavoirfaire](StructureDefinition-CapaciteSavoirfaire.md),[CapacitesavoirfaireVs](ValueSet-capaciteSavoirFaire-vs.md),[CertificatEtudeSpeciale](StructureDefinition-CertificatEtudeSpeciale.md),[Competence](StructureDefinition-Competence.md),[CompetenceExclusive](StructureDefinition-CompetenceExclusive.md),[CompetenceMetier](StructureDefinition-CompetenceMetier.md),[CompetenceVs](ValueSet-competence-vs.md),[CompetenceexclusiveVs](ValueSet-competenceExclusive-vs.md),[CompetencemetiereVs](ValueSet-competenceMetier-vs.md),[DESC1](StructureDefinition-DESC1.md),[DESC2](StructureDefinition-DESC2.md),[DESCNonQualifiant](StructureDefinition-DESCNonQualifiant.md),[DescnonqualifiantVs](ValueSet-DESCNonQualifiant-vs.md),[Diplome](StructureDefinition-Diplome.md),[DiplomeDeuxiemeCycleNonQualifiant](StructureDefinition-DiplomeDeuxiemeCycleNonQualifiant.md),[DiplomeDivers](StructureDefinition-DiplomeDivers.md),[DiplomeEEE](StructureDefinition-DiplomeEEE.md),[DiplomeEES](StructureDefinition-DiplomeEES.md),[DiplomeEtat](StructureDefinition-DiplomeEtat.md),[DiplomeEtudeSpecialisee](StructureDefinition-DiplomeEtudeSpecialisee.md),[DiplomeUniversitaire](StructureDefinition-DiplomeUniversitaire.md),[DroitExerciceComplementaire](StructureDefinition-DroitExerciceComplementaire.md),[DroitexercicecomplementaireVs](ValueSet-droitExerciceComplementaire-vs.md),[ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md),[FonctionQualifiee](StructureDefinition-FonctionQualifiee.md),[FonctionqualifieeVs](ValueSet-fonctionQualifiee-vs.md),[FormationSpecialiseeTransversale](StructureDefinition-FormationSpecialiseeTransversale.md),[Horaire](StructureDefinition-Horaire.md),[LangueParlee](StructureDefinition-LangueParlee.md),[LieunaissanceVs](ValueSet-lieuNaissance-vs.md),[MOS](index.md),[OrientationParticuliere](StructureDefinition-OrientationParticuliere.md),[OrientationparticuliereVs](ValueSet-orientationParticuliere-vs.md),[PaysnaissanceVs](ValueSet-paysNaissance-vs.md),[PaysnationaliteVs](ValueSet-paysNationalite-vs.md),[PersonnePhysique](StructureDefinition-PersonnePhysique.md),[ProfessionVs](ValueSet-profession-vs.md),[ProfessioncategoriesocioprofessionnelleVs](ValueSet-professionCategorieSocioProfessionnelle-vs.md),[Professionnel](StructureDefinition-Professionnel.md),[QualificationPAC](StructureDefinition-QualificationPAC.md),[QualificationpacVs](ValueSet-qualificationPAC-vs.md),[RoleVs](ValueSet-role-vs.md),[SavoirFaire](StructureDefinition-SavoirFaire.md),[SexeVs](ValueSet-sexe-vs.md),[SituationExercice](StructureDefinition-SituationExercice.md),[SituationOperationnelle](StructureDefinition-SituationOperationnelle.md),[Specialite](StructureDefinition-Specialite.md),[SpecialiteVs](ValueSet-specialite-vs.md),[SurspecialiteTransversale](StructureDefinition-SurspecialiteTransversale.md),[SurspecialitetransversaleVs](ValueSet-surspecialiteTransversale-vs.md),[Telecommunication](StructureDefinition-Telecommunication.md),[TypeprofessionVs](ValueSet-typeProfession-vs.md)and[TyperoleVs](ValueSet-typeRole-vs.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ans.fr.mos",
  "url" : "https://interop.esante.gouv.fr/ig/mos/ImplementationGuide/ans.fr.mos",
  "version" : "0.1.0",
  "name" : "MOS",
  "title" : "Modèle des Objets de Santé (MOS)",
  "status" : "draft",
  "date" : "2025-10-23T12:14:06+00:00",
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
  "packageId" : "ans.fr.mos",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "ans_fr_terminologies",
      "uri" : "https://interop.esante.gouv.fr/terminologies/ImplementationGuide/ans.fr.terminologies",
      "packageId" : "ans.fr.terminologies",
      "version" : "1.1.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interop.esante.gouv.fr/ig/mos/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interop.esante.gouv.fr/ig/mos/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Adresse"
        },
        "name" : "Adresse",
        "description" : "Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte, d'après la norme NF Z 10-011.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Attestation"
        },
        "name" : "Attestation",
        "description" : "L’attestation est attribuée au terme d'une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/AutreDiplomeObtenu"
        },
        "name" : "AutreDiplomeObtenu",
        "description" : "Diplôme autre qu'un diplôme d'Etat, une qualification, un diplôme d'études spécialisées, un DESC1, un DESC2, un diplôme de l'espace économique européen, un diplôme européen d'études spécialisées, une attestation, une capacité ou un diplôme de deuxième cycle non qualifiant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/BoiteLettreMSS"
        },
        "name" : "BoiteLettreMSS",
        "description" : "Informations descriptives des boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures.Synonyme: BAL MSS",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CapaciteDiplome"
        },
        "name" : "CapaciteDiplome",
        "description" : "En France, la capacité de médecine est un diplôme (2 ans d'études) réservé aux docteurs en médecine (généralistes ou spécialistes), leur conférant certaines compétences supplémentaires dans leur exercice ou un champ d'exercice plus large (réf. décret du 29 avril 1988). Les capacités ne confèrent pas la qualification aux spécialistes auprès de l'Ordre des médecins, mais celui-ci les reconnait comme des titres auxquels peuvent prétendre les médecins (par exemple sur leur plaque) pour justifier de compétences supplémentaires auprès de leurs patients.Une capacité est un type de diplôme. La classe CapaciteDiplome est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CapaciteSavoirfaire"
        },
        "name" : "CapaciteSavoirfaire",
        "description" : "La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/capaciteSavoirFaire-vs"
        },
        "name" : "CapacitesavoirfaireVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CertificatEtudeSpeciale"
        },
        "name" : "CertificatEtudeSpeciale",
        "description" : "Les Certificat d'études spéciales (CES) ont précédé les DES et ils ne sont plus délivrés depuis 1991.Dans le cadre du modèle, un certificat d'études spéciales est un type de diplôme. La classe CertificatEtudesSpeciales est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Competence"
        },
        "name" : "Competence",
        "description" : "Extrait du rapport de l'ONDPS sur la médecine générale (Tome 1 2006-2007): \"La compétence était un titre délivré par l’ordre national des médecins en application du précédent règlement de qualification (Article 3 de l'arrêté du 4 septembre 1970), aux praticiens dits «ancien régime» ayant débuté leurs études médicales avant la réforme de 1982. Ce titre était accordé après avis d’une commission ordinale spécifique. Les compétences, dont la liste était fixée par arrêté, portaient soit sur des disciplines ne correspondant pas à des spécialités qualifiantes (médecine légale ou allergologie par exemple), soit sur des spécialités médicales, le praticien compétent ne pouvant l’exercer que dans le cadre de sa spécialité d’inscription à l’ordre. Les compétences ne peuvent plus être délivrées aux médecins issus du nouveau régime, c’est-à-dire ayant débuté leurs études à compter de l’année universitaire 1984-1985. Toutefois, pour ceux de l’ancien régime et à titre transitoire, le dépôt d’une demande de qualification était possible jusqu’au 31 décembre 2004 et ces praticiens peuvent s’en prévaloir jusqu’à la fin leur période d’activité professionnelle.Une compétence est un type de savoir-faire. La classe Competence est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CompetenceExclusive"
        },
        "name" : "CompetenceExclusive",
        "description" : "La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/competenceExclusive-vs"
        },
        "name" : "CompetenceexclusiveVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CompetenceMetier"
        },
        "name" : "CompetenceMetier",
        "description" : "La compétence métier désigne un type de savoir-faire opérationnel, transversal ou spécifique, acquis et exercé à titre non exclusif dans le cadre d’une activité professionnelle reconnue. Elle reflète une expertise fonctionnelle ou technique mobilisée dans l’exercice quotidien du professionnel de santé.Contrairement aux spécialités ordinales ou compétences de médecines, la compétence métier n’est pas nécessairement encadrée par un diplôme ou une qualification ordinale, mais elle peut être attestée par l’expérience, des formations spécifiques, ou une reconnaissance institutionnelle (ex. : missions ANS, ARS, établissements de santé, etc.).Dans le cadre du modèle, la classe CompétenceMetier est représentée comme une spécialisation de la classe SavoirFaire, i-e un TypeDeSavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. Elle se distingue des autres types de savoir-faire par son ancrage dans les pratiques professionnelles et organisationnelles, plutôt que dans une logique de qualification médicale ou réglementaire.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/competenceMetier-vs"
        },
        "name" : "CompetencemetiereVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/competence-vs"
        },
        "name" : "CompetenceVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DESC1"
        },
        "name" : "DESC1",
        "description" : "Les DESC de groupe I ou non qualifiants (2 ans d'études) offrent une compétence supplémentaire ou un champ d'exercice plus large que celui ouvert par le DES, mais ne changent pas la qualification officielle de leurs titulaires auprès de l'Ordre des Médecins. Ils peuvent aussi apporter à des spécialistes des connaissances générales intéressant plusieurs spécialités (allergologie, cancérologie, etc.). Certains de ces DESC sont redondants avec des capacités de médecine, obtenues par la formation continue des médecins déjà diplômés, par exemple la capacité de médecine d'urgence. Il est cependant probable que les capacités disparaissent au profit des DESC équivalents dans un avenir proche.Dans le cadre du modèle, un DESC de groupe I est un type de diplôme. La classe DESC1 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DESC2"
        },
        "name" : "DESC2",
        "description" : "Les DESC de groupe II ou qualifiants (3 ans d'études) représentent des spécialités par eux-mêmes. Dans le cadre du modèle, un DESC de groupe II est un type de diplôme. La classe DESC2 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DESCNonQualifiant"
        },
        "name" : "DESCNonQualifiant",
        "description" : "Un professionnel peut faire valoir, en complément de sa spécialité, un ou plusieurs savoir-faire de type DESC non qualifiant, en fonction du ou des DESC de groupe I, qu'il a obtenu(s).Un DESC non qualifiant est un type de savoir-faire. La classe DiplomeEtudesSpécialiseesNonQualifiant est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/DESCNonQualifiant-vs"
        },
        "name" : "DescnonqualifiantVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Diplome"
        },
        "name" : "Diplome",
        "description" : "Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d'Etat.La classe \"Diplome\" est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DiplomeDeuxiemeCycleNonQualifiant"
        },
        "name" : "DiplomeDeuxiemeCycleNonQualifiant",
        "description" : "Le diplôme de deuxième cycle non qualifiant enregistre un niveau de formation de fin de deuxième cycle, qui sanctionne une partie des études requises à l’exercice de la profession.Il ne donne pas droit à l’exercice de la profession  et son obtention ne change pas la qualification à venir des titulaires lorsqu’ils exerceront.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DiplomeDivers"
        },
        "name" : "DiplomeDivers",
        "description" : "Cette classe regroupe les diplômes qui ne peuvent être classés dans un type de diplôme explicite (CES, DESC1, DESC2, etc.).La classe DiplomeDivers est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DiplomeEEE"
        },
        "name" : "DiplomeEEE",
        "description" : "Diplôme d'un pays de l'espace économique européen (EEE), requis pour l'accès à la profession en France, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes au sein de l'EEE.Dans le cadre du modèle, un diplôme EEE est un type de diplôme. La classe DiplomeEEE est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DiplomeEES"
        },
        "name" : "DiplomeEES",
        "description" : "Diplôme européen d'études spécialisées, d'un pays de l'espace économique européen (EEE), ouvrant l'accès à une spécialité, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes de spécialité au sein de l'EEE.Dans le cadre du modèle, un diplôme EES est un type de diplôme. La classe DiplomeEES est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DiplomeEtat"
        },
        "name" : "DiplomeEtat",
        "description" : "Un diplôme d'État, abrégé DE, est un diplôme français qui est souvent requis pour l'exercice de professions règlementées, notamment dans le champ de la santé.L'Etat intervient dans la définition du programme et la pédagogie du cursus diplômant.Cette classe comprend également des diplômes anciens existant avant la création du diplôme d'Etat de la profession et qui étaient requis, à cette époque, pour l'exercice de la profession.Par exemple, le diplôme d'Etat de docteur en chirurgie dentaire est requis depuis 1972 pour exercer la profession de chirurgien-dentiste. Avant 1972, le diplôme d'Etat de chirurgien-dentiste était requis. Ces deux diplômes sont donc présents dans la nomenclature des diplômes d'Etat français.Dans le cadre du modèle, un Diplôme d'Etat est considéré comme un type de diplôme. La classe DiplomeEtat est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DiplomeEtudeSpecialisee"
        },
        "name" : "DiplomeEtudeSpecialisee",
        "description" : "Le diplôme d'études spécialisées (DES) est délivré aux médecins, pharmaciens ou dentistes ayant effectué une formation de 3e cycle de 3 à 5 ans en fonction des spécialités et soutenu un mémoire. Cette formation correspond à l'internat. Avec les réformes successives adoptées depuis la fin des années 1990 (dont la création de l'internat et du DES de médecine générale), tous les nouveaux docteurs en médecine sont titulaires d'un DES, accompagnant leur diplôme d'État de docteur en médecine (commun à tous les médecins) et précisant leur spécialité.Le DES peut être complété par un diplôme d'études spécialisées complémentaires (DESC). Les DESC se décomposent en deux groupes: ** DESC non qualifiants (groupe 1) d’une durée de 2 ans : 1 an pendant l’internat et 1 an après la fin de l’internat (clinicat);** DESC qualifiants (groupe 2) ou DESCQ d’une durée de 3 ans : 2 ans pendant l’internat et 1 an après la fin de l’internat (clinicat).Dans le cadre du modèle, un DES est un type de diplôme. La classe DiplomeEtudesSpecialisees est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DiplomeUniversitaire"
        },
        "name" : "DiplomeUniversitaire",
        "description" : "En France, un diplôme universitaire (DU) ou interuniversitaire (DIU) est un diplôme délivré par une université française, un grand établissement ou autre établissement public à caractère scientifique, culturel et professionnel, ou plusieurs établissements conjointement, contrairement aux diplômes nationaux qui sont délivrés au nom du ministère. Chaque ordre maintient une liste des DU reconnus.Dans le cadre du modèle, un diplôme universitaire est un type de diplôme. La classe DiplomeUniversitaire est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DroitExerciceComplementaire"
        },
        "name" : "DroitExerciceComplementaire",
        "description" : "Les docteurs en médecine initialement qualifiés comme médecins spécialistes peuvent obtenir un droit d'exercice dans l'une des spécialités définies par un des DESC de médecine du groupe I.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/droitExerciceComplementaire-vs"
        },
        "name" : "DroitexercicecomplementaireVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ExerciceProfessionnel"
        },
        "name" : "ExerciceProfessionnel",
        "description" : "Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/FonctionQualifiee"
        },
        "name" : "FonctionQualifiee",
        "description" : "Expérience pratique exigée par le code de la santé publique (art R5124-16) pour exercer certaines fonctions dans l’industrie pharmaceutique et la distribution en gros. Ces dispositions s’appliquent uniquement à la profession de pharmacien.L’expérience pratique est en liaison avec les activités de l’établissement pharmaceutique telles que définies par l’ANSM ou l’ANSES.A ce jour, cinq expériences pratiques sont identifiées dont trois sont imbriquées. L’expérience pratique de \"Fabricant\" inclut celle d’\"Exploitant\" qui inclut celle de \"Distribution\".  Une fonction qualifiée est un type de savoir-faire. La classe FonctionQualifiee est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fonctionQualifiee-vs"
        },
        "name" : "FonctionqualifieeVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/FormationSpecialiseeTransversale"
        },
        "name" : "FormationSpecialiseeTransversale",
        "description" : "La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.Dans le cadre du modèle, une formation spécialisée transversale est considérée comme un type de diplôme. La classe FormationSpecialiseeTransversale est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Horaire"
        },
        "name" : "Horaire",
        "description" : "La classe Horaire permet de définir les différentes plages d'un agenda d'une entité (jours et heures d'ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d'indisponibilités",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/LangueParlee"
        },
        "name" : "LangueParlee",
        "description" : "Langue parlée par une personne ou dans un service.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/lieuNaissance-vs"
        },
        "name" : "LieunaissanceVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/OrientationParticuliere"
        },
        "name" : "OrientationParticuliere",
        "description" : "Caractérise une orientation d'exercice: acupuncture ou homéopathie.Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/orientationParticuliere-vs"
        },
        "name" : "OrientationparticuliereVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/paysNaissance-vs"
        },
        "name" : "PaysnaissanceVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/paysNationalite-vs"
        },
        "name" : "PaysnationaliteVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PersonnePhysique"
        },
        "name" : "PersonnePhysique",
        "description" : "Préambule:Les informations de la personne physique telles que le nom de naissance, le prénom, etc. sont utilisées dans d'autres contextes que celui de l'INS. Elles sont donc délibérément disjointes des informations constituant l'identité INS.Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/professionCategorieSocioProfessionnelle-vs"
        },
        "name" : "ProfessioncategoriesocioprofessionnelleVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Professionnel"
        },
        "name" : "Professionnel",
        "description" : "Données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/profession-vs"
        },
        "name" : "ProfessionVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/QualificationPAC"
        },
        "name" : "QualificationPAC",
        "description" : "La qualification de praticien adjoint contractuel autorise à exercer en établissement sans être qualifié ni en médecine générale, ni en spécialité. Cela concerne des médecins à diplôme étranger dont la qualification a été reconnue avant l'instauration de l'autorisation d'exercice, et qui n'ont pas fait de démarche pour obtenir cette autorisation (environ 500 médecins concernés).Une qualification de praticien adjoint contractuel est un type de savoir-faire. La classe QualificationPAC est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/qualificationPAC-vs"
        },
        "name" : "QualificationpacVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/role-vs"
        },
        "name" : "RoleVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/SavoirFaire"
        },
        "name" : "SavoirFaire",
        "description" : "Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/sexe-vs"
        },
        "name" : "SexeVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/SituationExercice"
        },
        "name" : "SituationExercice",
        "description" : "Caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l'exception des remplaçants).Synonymes : Activité (RPPS).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/SituationOperationnelle"
        },
        "name" : "SituationOperationnelle",
        "description" : "Caractérise les conditions d'exercice du professionnel dans la mise en œuvre cadre de l’offre opérationnelle.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Specialite"
        },
        "name" : "Specialite",
        "description" : "Spécialité médicale ou odontologique, reconnue par une autorité d'enregistrement (Ordre ou SSA), soit sur la base d'un diplôme de spécialité (DES ou DESC de groupe II, CES jusqu'en 1991), soit via une commission de qualification.En France, l'exercice d'une spécialité est exclusif, c'est-à-dire qu'on ne peut exercer qu'une seule spécialité, celle qui fait l'objet d'une qualification par le Conseil de l'ordre. Un médecin titulaire d'un DESC de type II qui s'ajoute à son DES, a donc 2 qualifications possibles. Lorsqu'il s'inscrit au tableau de l'ordre des médecins, il doit déclarer sa spécialité d'exercice. S'il choisit celle de son DESC, il ne peut pas exercer la spécialité de son DES. Toutefois, il peut, dans le futur, choisir le retour à la spécialité originelle portée par le DES. Ainsi, la création en 2004 du DESC de Gériatrie a marqué la naissance de la qualification de spécialiste en gériatrie (la gériatrie étant auparavant un mode d'exercice particulier de la médecine, concernant des généralistes et des spécialistes).Dans le cadre du modèle, une spécialité est un type de savoir-faire. La classe Specialite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/specialite-vs"
        },
        "name" : "SpecialiteVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/SurspecialiteTransversale"
        },
        "name" : "SurspecialiteTransversale",
        "description" : "La surspécialité transversale est le droit d’exercice complémentaire au sein de la spécialité du médecin, donné par une formation spécialisée transversale (FST). La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/surspecialiteTransversale-vs"
        },
        "name" : "SurspecialitetransversaleVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Telecommunication"
        },
        "name" : "Telecommunication",
        "description" : "Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée  (téléphone, fax, e-mail, URL, etc.).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/typeProfession-vs"
        },
        "name" : "TypeprofessionVs",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/typeRole-vs"
        },
        "name" : "TyperoleVs",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Accueil",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "classes_communes.html"
            }
          ],
          "nameUrl" : "classes_communes.html",
          "title" : "Classes communes",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "composants_elementaires.html"
            }
          ],
          "nameUrl" : "composants_elementaires.html",
          "title" : "Composants élémentaires",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "professionnel.html"
                }
              ],
              "nameUrl" : "professionnel.html",
              "title" : "Professionnel",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "dispo-authent.html"
                }
              ],
              "nameUrl" : "dispo-authent.html",
              "title" : "Dispositif d'authentification",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "structure.html"
                }
              ],
              "nameUrl" : "structure.html",
              "title" : "Structure",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "ppec.html"
                }
              ],
              "nameUrl" : "ppec.html",
              "title" : "Personne prise en charge",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "ressops.html"
                }
              ],
              "nameUrl" : "ressops.html",
              "title" : "Ressources opérationnelles",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "autres_ressources.html"
            }
          ],
          "nameUrl" : "autres_ressources.html",
          "title" : "Autres Ressources",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "securite.html"
                }
              ],
              "nameUrl" : "securite.html",
              "title" : "Sécurité",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "downloads.html"
                }
              ],
              "nameUrl" : "downloads.html",
              "title" : "Téléchargements et usages",
              "generation" : "markdown"
            }
          ]
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
