# Professionnel - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Professionnel**

## Logical Model: Professionnel 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel | *Version*:0.1.0 |
| Draft as of 2025-11-14 | *Computable Name*:Professionnel |

 
Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social. 

**Usages:**

* Use this Logical Model: [Agenda](StructureDefinition-Agenda.md), [AutorisationExercice](StructureDefinition-AutorisationExercice.md), [ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md), [NoteLiaison](StructureDefinition-NoteLiaison.md)...Show 3 more,[Observation](StructureDefinition-Observation.md),[PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md)and[RendezVous](StructureDefinition-RendezVous.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Professionnel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Professionnel.csv), [Excel](StructureDefinition-Professionnel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Professionnel",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel",
  "version" : "0.1.0",
  "name" : "Professionnel",
  "title" : "Professionnel",
  "status" : "draft",
  "date" : "2025-11-14T16:26:13+00:00",
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
  "description" : "Données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Professionnel",
        "path" : "Professionnel",
        "short" : "Données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social.",
        "definition" : "Données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."
      },
      {
        "id" : "Professionnel.idPP",
        "path" : "Professionnel.idPP",
        "short" : "Identifiant national de la personne physique:** Pour les professionnels de santé: Numéro RPPS ou ADELI.** Pour les étudiants: Numéro RPPS depuis 2017.** Pour les acteurs non professionnels de santé employés d’une structure : l’identifiant est composé de l’identifiant principal de la structure et de l’identifiant interne attribué par la structure.",
        "definition" : "Identifiant national de la personne physique:** Pour les professionnels de santé: Numéro RPPS ou ADELI.** Pour les étudiants: Numéro RPPS depuis 2017.** Pour les acteurs non professionnels de santé employés d’une structure : l’identifiant est composé de l’identifiant principal de la structure et de l’identifiant interne attribué par la structure.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Professionnel.typeIdNatPP",
        "path" : "Professionnel.typeIdNatPP",
        "short" : "Type d’identifiant national de la personne physique.",
        "definition" : "Type d’identifiant national de la personne physique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne?vs"
        }
      },
      {
        "id" : "Professionnel.idNatPS",
        "path" : "Professionnel.idNatPS",
        "short" : "Identification nationale principale du professionnel initiée pour les besoins du SI-CPS.Cette identification est obtenue par la concaténation du type d'identifiant national de personne (provenant de la nomenclature CodeSystem-TRE-G08-TypeIdentifiantPersonne) et de l'identifiant de la personne physique provenant, selon le type d’identifiant, soit d’un référentiel national, soit d’un référentiel local propre à la structure d’exercice de la personne physique:** 0 + N° ADELI du professionnel    Ex : 0123456789 : identification nationale d’un professionnel identifié par un n° ADELI = 123456789;** 1 + Identifiant cabinet ADELI/identifiant interne du professionnel employé au sein d’un cabinet    Ex : 112345678901/00001 : identification nationale d’un employé dans un cabinet libéral:          - le titulaire du cabinet est un professionnel identifié par un n° ADELI = 123456789          - le cabinet est identifié par un ADELI-rang = 12345678901 (01 = n° de rang du cabinet du même professionnel sur 2 caractères)          - l’identifiant interne de l’employé dans la structure = 00001; ** 3 + N° FINESS/identifiant interne du professionnel employé au sein d’une structure FINESS;** 4 + N° Siren/identifiant interne du professionnel employé au sein d’une structure Siren (NB: pas d'utilisation identifiée de cette construction);** 5 + N° Siret/identifiant interne du professionnel employé au sein d’une structure Siret;** 6 + Identifiant cabinet RPPS/ identifiant interne du professionnel employé au sein d’un cabinet          - le cabinet est identifié par un RPPS-rang à 14 caractères (numéro RPPS du professionnel + rang sur 2 caractères + clé de Luhn);** 8 + N° RPPS du professionnel ou de l’étudiant;    Ex : 810005678901 : identification nationale d’un professionnel ou d’un étudiant identifié par un n° RPPS = 10005678901Le numéro RPPS est un identifiant pérenne, constitué de 11 caractères non significatifs (numéro d’ordre sur 10 caractères + clé de Luhn sur 1 caractère);** 10 + Adresse MSS (adresse MSS d'un professionnel sans identifiant national (assistante sociale, médecin non inscrit, etc.); cet identifiant est utilisé uniquement pour la messagerie sécurisée de santé.Synonyme: PS_IdNat (CI-SIS, appel contextuel pour les applications Web).",
        "definition" : "Identification nationale principale du professionnel initiée pour les besoins du SI-CPS.Cette identification est obtenue par la concaténation du type d'identifiant national de personne (provenant de la nomenclature CodeSystem-TRE-G08-TypeIdentifiantPersonne) et de l'identifiant de la personne physique provenant, selon le type d’identifiant, soit d’un référentiel national, soit d’un référentiel local propre à la structure d’exercice de la personne physique:** 0 + N° ADELI du professionnel    Ex : 0123456789 : identification nationale d’un professionnel identifié par un n° ADELI = 123456789;** 1 + Identifiant cabinet ADELI/identifiant interne du professionnel employé au sein d’un cabinet    Ex : 112345678901/00001 : identification nationale d’un employé dans un cabinet libéral:          - le titulaire du cabinet est un professionnel identifié par un n° ADELI = 123456789          - le cabinet est identifié par un ADELI-rang = 12345678901 (01 = n° de rang du cabinet du même professionnel sur 2 caractères)          - l’identifiant interne de l’employé dans la structure = 00001; ** 3 + N° FINESS/identifiant interne du professionnel employé au sein d’une structure FINESS;** 4 + N° Siren/identifiant interne du professionnel employé au sein d’une structure Siren (NB: pas d'utilisation identifiée de cette construction);** 5 + N° Siret/identifiant interne du professionnel employé au sein d’une structure Siret;** 6 + Identifiant cabinet RPPS/ identifiant interne du professionnel employé au sein d’un cabinet          - le cabinet est identifié par un RPPS-rang à 14 caractères (numéro RPPS du professionnel + rang sur 2 caractères + clé de Luhn);** 8 + N° RPPS du professionnel ou de l’étudiant;    Ex : 810005678901 : identification nationale d’un professionnel ou d’un étudiant identifié par un n° RPPS = 10005678901Le numéro RPPS est un identifiant pérenne, constitué de 11 caractères non significatifs (numéro d’ordre sur 10 caractères + clé de Luhn sur 1 caractère);** 10 + Adresse MSS (adresse MSS d'un professionnel sans identifiant national (assistante sociale, médecin non inscrit, etc.); cet identifiant est utilisé uniquement pour la messagerie sécurisée de santé.Synonyme: PS_IdNat (CI-SIS, appel contextuel pour les applications Web).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Professionnel.personne",
        "path" : "Professionnel.personne",
        "short" : "Identité civile du professionnel.",
        "definition" : "Identité civile du professionnel.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique"
          }
        ]
      },
      {
        "id" : "Professionnel.diplomeObtenu",
        "path" : "Professionnel.diplomeObtenu",
        "short" : "Diplôme(s) acquis par le professionnel.",
        "definition" : "Diplôme(s) acquis par le professionnel.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Diplome"
          }
        ]
      },
      {
        "id" : "Professionnel.adresseCorrespondance",
        "path" : "Professionnel.adresseCorrespondance",
        "short" : "Adresse(s) de correspondance permettant de contacter les professionnels:** lorsque les structures ne sont pas identifiées : cas des remplaçants ou des professionnels venant de s’inscrire mais non encore installés;** hors de leurs lieux d’exercice, s’ils le souhaitent.Remarque système RPPS : La première occurrence correspond aux coordonnées de correspondance du RPPS.",
        "definition" : "Adresse(s) de correspondance permettant de contacter les professionnels:** lorsque les structures ne sont pas identifiées : cas des remplaçants ou des professionnels venant de s’inscrire mais non encore installés;** hors de leurs lieux d’exercice, s’ils le souhaitent.Remarque système RPPS : La première occurrence correspond aux coordonnées de correspondance du RPPS.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
          }
        ]
      },
      {
        "id" : "Professionnel.telecommunication",
        "path" : "Professionnel.telecommunication",
        "short" : "Adresse(s) de télécommunication du professionnel (numéro de téléphone, adresse email, URL, etc.).",
        "definition" : "Adresse(s) de télécommunication du professionnel (numéro de téléphone, adresse email, URL, etc.).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Telecommunication"
          }
        ]
      },
      {
        "id" : "Professionnel.boiteLettresMSS",
        "path" : "Professionnel.boiteLettresMSS",
        "short" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) au professionnel.",
        "definition" : "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) au professionnel.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS"
          }
        ]
      },
      {
        "id" : "Professionnel.ExerciceProfessionnel",
        "path" : "Professionnel.ExerciceProfessionnel",
        "short" : "Lien vers la classe ExerciceProfessionnel",
        "definition" : "Lien vers la classe ExerciceProfessionnel",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel"
          }
        ]
      },
      {
        "id" : "Professionnel.NoteLiaison",
        "path" : "Professionnel.NoteLiaison",
        "short" : "Lien vers la classe NoteLiaison",
        "definition" : "Lien vers la classe NoteLiaison",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/NoteLiaison"
          }
        ]
      },
      {
        "id" : "Professionnel.Observation",
        "path" : "Professionnel.Observation",
        "short" : "Lien vers la classe Observation",
        "definition" : "Lien vers la classe Observation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Observation"
          }
        ]
      },
      {
        "id" : "Professionnel.AutorisationExercice",
        "path" : "Professionnel.AutorisationExercice",
        "short" : "Lien vers la classe AutorisationExercice",
        "definition" : "Lien vers la classe AutorisationExercice",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AutorisationExercice"
          }
        ]
      },
      {
        "id" : "Professionnel.PersonnePriseCharge",
        "path" : "Professionnel.PersonnePriseCharge",
        "short" : "Lien vers la classe PersonnePriseCharge",
        "definition" : "Lien vers la classe PersonnePriseCharge",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge"
          }
        ]
      },
      {
        "id" : "Professionnel.Agenda",
        "path" : "Professionnel.Agenda",
        "short" : "Lien vers la classe Agenda",
        "definition" : "Lien vers la classe Agenda",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Agenda"
          }
        ]
      },
      {
        "id" : "Professionnel.RendezVous",
        "path" : "Professionnel.RendezVous",
        "short" : "Lien vers la classe RendezVous",
        "definition" : "Lien vers la classe RendezVous",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/RendezVous"
          }
        ]
      }
    ]
  }
}

```
