# PersonnePhysique - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PersonnePhysique**

## Logical Model: PersonnePhysique 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:PersonnePhysique |

 
Préambule:Les informations de la personne physique telles que le nom de naissance, le prénom, etc. sont utilisées dans d’autres contextes que celui de l’INS. Elles sont donc délibérément disjointes des informations constituant l’identité INS.Une personne physique est un individu titulaire de droits et d’obligations caractérisé par une identité civile. 

**Utilisations:**

* Utiliser ce Modèle logique: [AidantDemarche](StructureDefinition-AidantDemarche.md), [Contact](StructureDefinition-Contact.md), [MesureProtection](StructureDefinition-MesureProtection.md), [Parent](StructureDefinition-Parent.md)...Show 2 more,[PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md)and[Professionnel](StructureDefinition-Professionnel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/PersonnePhysique)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PersonnePhysique.csv), [Excel](StructureDefinition-PersonnePhysique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PersonnePhysique",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique",
  "version" : "0.1.0",
  "name" : "PersonnePhysique",
  "title" : "PersonnePhysique",
  "status" : "draft",
  "date" : "2025-12-02T15:33:27+00:00",
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
  "description" : "Préambule:Les informations de la personne physique telles que le nom de naissance, le prénom, etc. sont utilisées dans d'autres contextes que celui de l'INS. Elles sont donc délibérément disjointes des informations constituant l'identité INS.Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PersonnePhysique",
        "path" : "PersonnePhysique",
        "short" : "Préambule:Les informations de la personne physique telles que le nom de naissance, le prénom, etc. sont utilisées dans d'autres contextes que celui de l'INS. Elles sont donc délibérément disjointes des informations constituant l'identité INS.Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile.",
        "definition" : "Préambule:Les informations de la personne physique telles que le nom de naissance, le prénom, etc. sont utilisées dans d'autres contextes que celui de l'INS. Elles sont donc délibérément disjointes des informations constituant l'identité INS.Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile."
      },
      {
        "id" : "PersonnePhysique.civilite",
        "path" : "PersonnePhysique.civilite",
        "short" : "Civilité de la personne physique.",
        "definition" : "Civilité de la personne physique.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R81-Civilite/FHIR/TRE-R81-Civilite?vs"
        }
      },
      {
        "id" : "PersonnePhysique.nomFamille",
        "path" : "PersonnePhysique.nomFamille",
        "short" : "Toute personne possède un nom de naissance (appelé auparavant nom de famille ou nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Ref.: Service-public.frSynonymes : nom de naissance, nom patronymique",
        "definition" : "Toute personne possède un nom de naissance (appelé auparavant nom de famille ou nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Ref.: Service-public.frSynonymes : nom de naissance, nom patronymique",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.nomUsage",
        "path" : "PersonnePhysique.nomUsage",
        "short" : "Un nom d'usage de la personne.Rappel: Toute personne possède un nom de naissance  (appelé auparavant nom de famille ou nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Il est néanmoins possible d'utiliser, dans la vie quotidienne, un autre nom (par exemple le nom marital) appelé nom d'usage. Ce nom d'usage ne remplace en aucun cas le nom de naissance qui reste le seul nom mentionné sur les actes d'état civil (acte de naissance ou de mariage, livret de famille, etc.).Ref.: Service-public.fr",
        "definition" : "Un nom d'usage de la personne.Rappel: Toute personne possède un nom de naissance  (appelé auparavant nom de famille ou nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Il est néanmoins possible d'utiliser, dans la vie quotidienne, un autre nom (par exemple le nom marital) appelé nom d'usage. Ce nom d'usage ne remplace en aucun cas le nom de naissance qui reste le seul nom mentionné sur les actes d'état civil (acte de naissance ou de mariage, livret de famille, etc.).Ref.: Service-public.fr",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.prenom",
        "path" : "PersonnePhysique.prenom",
        "short" : "Prénom(s) de la personne déclarés à sa naissance.",
        "definition" : "Prénom(s) de la personne déclarés à sa naissance.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.prenomUsuel",
        "path" : "PersonnePhysique.prenomUsuel",
        "short" : "Le prénom usuel est un des prénoms inscrit dans l'acte de naissance.",
        "definition" : "Le prénom usuel est un des prénoms inscrit dans l'acte de naissance.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.pseudonyme",
        "path" : "PersonnePhysique.pseudonyme",
        "short" : "Un nom de fantaisie librement choisi par une personne dans l'exercice d'une activité particulière, afin de dissimuler au public son identité véritable.",
        "definition" : "Un nom de fantaisie librement choisi par une personne dans l'exercice d'une activité particulière, afin de dissimuler au public son identité véritable.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.surnom",
        "path" : "PersonnePhysique.surnom",
        "short" : "Un nom ajouté par le public au nom de naissance d'une personne, afin de la distinguer des autres personnes portant le même nom de naissance et, qui se déférencie du pseudonyme en ce qu'il n'est pas choisi par celui qui le porte et qu'il n'a pas pour but de dissimuler son identité mais au contraire de la préciser.",
        "definition" : "Un nom ajouté par le public au nom de naissance d'une personne, afin de la distinguer des autres personnes portant le même nom de naissance et, qui se déférencie du pseudonyme en ce qu'il n'est pas choisi par celui qui le porte et qu'il n'a pas pour but de dissimuler son identité mais au contraire de la préciser.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.sexeAdministratif",
        "path" : "PersonnePhysique.sexeAdministratif",
        "short" : "Sexe administratif de la personne physique, au sens de l'état civil, masculin ou féminin.",
        "definition" : "Sexe administratif de la personne physique, au sens de l'état civil, masculin ou féminin.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R10-SexeAdministratif/FHIR/TRE-R10-SexeAdministratif?vs"
        }
      },
      {
        "id" : "PersonnePhysique.sexe",
        "path" : "PersonnePhysique.sexe",
        "short" : "Sexe de la personne physique, notamment masculin, féminin, inconnu.Attribut associé aux nomenclatures suivantes : ** CodeSystem-TRE-R249-Sexe : représentation des sexes humains par un code alphabétique** CodeSystem-TRE-R267-SexeProvenanceISO : norme ISO 5218 qui définit la représentation des sexes humains par un code numérique** CodeSystem-TRE-R303-HL7v3AdministrativeGender : reprise de la terminologie HL7 v3 AdministrativeGender** ConceptMap-ASS-A15-SexeProvenanceISO-Sexe : table d'association entre les nomenclatures CodeSystem-TRE-R267-SexeProvenanceISO, CodeSystem-TRE-R249-Sexe",
        "definition" : "Sexe de la personne physique, notamment masculin, féminin, inconnu.Attribut associé aux nomenclatures suivantes : ** CodeSystem-TRE-R249-Sexe : représentation des sexes humains par un code alphabétique** CodeSystem-TRE-R267-SexeProvenanceISO : norme ISO 5218 qui définit la représentation des sexes humains par un code numérique** CodeSystem-TRE-R303-HL7v3AdministrativeGender : reprise de la terminologie HL7 v3 AdministrativeGender** ConceptMap-ASS-A15-SexeProvenanceISO-Sexe : table d'association entre les nomenclatures CodeSystem-TRE-R267-SexeProvenanceISO, CodeSystem-TRE-R249-Sexe",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/sexe-vs"
        }
      },
      {
        "id" : "PersonnePhysique.langueParlee",
        "path" : "PersonnePhysique.langueParlee",
        "short" : "Langue parlée par la personne, y compris le français.",
        "definition" : "Langue parlée par la personne, y compris le français.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LangueParlee"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.situationFamiliale",
        "path" : "PersonnePhysique.situationFamiliale",
        "short" : "Situation familiale de la personne (célibataire, divorcée, etc.).Les valeurs de ce code sont répertoriées dans plusieurs nomenclatures notamment:- la liste de la Déclaration Automatisée des Données Sociales Unifiée (DADS-U):01: célibataire02: marié(e)03: divorcé(e)04: séparé(e)05: veuf, veuve06: vie maritale07: PACS90: non connueetc.- Liste de codes HL7 \"MaritalStatus\":A: Annulled, marriage contract has been declared null and to not have existedD: Divorced, marriage contract has been declared dissolved and inactiveI: Interlocutory, subject to an Interlocutory DecreeL: Legally separatedM: Married, a current marriage contract is activeP: Polygamous, more than 1 current spouseS: Never Married, no marriage contract has ever been enteredT: Domestic partner, person declares that a domestic partner relationship exists.U: Unmarried, currently not in a marriage contract.W: Widowed, the spouse has died",
        "definition" : "Situation familiale de la personne (célibataire, divorcée, etc.).Les valeurs de ce code sont répertoriées dans plusieurs nomenclatures notamment:- la liste de la Déclaration Automatisée des Données Sociales Unifiée (DADS-U):01: célibataire02: marié(e)03: divorcé(e)04: séparé(e)05: veuf, veuve06: vie maritale07: PACS90: non connueetc.- Liste de codes HL7 \"MaritalStatus\":A: Annulled, marriage contract has been declared null and to not have existedD: Divorced, marriage contract has been declared dissolved and inactiveI: Interlocutory, subject to an Interlocutory DecreeL: Legally separatedM: Married, a current marriage contract is activeP: Polygamous, more than 1 current spouseS: Never Married, no marriage contract has ever been enteredT: Domestic partner, person declares that a domestic partner relationship exists.U: Unmarried, currently not in a marriage contract.W: Widowed, the spouse has died",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.dateNaissance",
        "path" : "PersonnePhysique.dateNaissance",
        "short" : "Date de naissance de la personne.A noter que l'âge de la personne ne figure pas dans le MOS. Cette information peut être calculée à partir de la date de naissance.",
        "definition" : "Date de naissance de la personne.A noter que l'âge de la personne ne figure pas dans le MOS. Cette information peut être calculée à partir de la date de naissance.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.dateDeces",
        "path" : "PersonnePhysique.dateDeces",
        "short" : "Date de décès de la personne.",
        "definition" : "Date de décès de la personne.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.communeNaissance",
        "path" : "PersonnePhysique.communeNaissance",
        "short" : "Commune de naissance de la personne.Code officiel géographique (COG) de la commune.",
        "definition" : "Commune de naissance de la personne.Code officiel géographique (COG) de la commune.",
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
        "id" : "PersonnePhysique.departementNaissance",
        "path" : "PersonnePhysique.departementNaissance",
        "short" : "Département de naissance de la personne.Code officiel géographique (COG) du département.",
        "definition" : "Département de naissance de la personne.Code officiel géographique (COG) du département.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_G09-DepartementOM/FHIR/TRE-G09-DepartementOM?vs"
        }
      },
      {
        "id" : "PersonnePhysique.paysNaissance",
        "path" : "PersonnePhysique.paysNaissance",
        "short" : "Pays de naissance de la personne.Code officiel géographique (COG) du pays.",
        "definition" : "Pays de naissance de la personne.Code officiel géographique (COG) du pays.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/paysNaissance-vs"
        }
      },
      {
        "id" : "PersonnePhysique.lieuNaissance",
        "path" : "PersonnePhysique.lieuNaissance",
        "short" : "Lieu de naissance de la personne.Code officiel géographique (COG) de la commune (France) ou du pays.",
        "definition" : "Lieu de naissance de la personne.Code officiel géographique (COG) de la commune (France) ou du pays.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/lieuNaissance-vs"
        }
      },
      {
        "id" : "PersonnePhysique.statutEtatCivil",
        "path" : "PersonnePhysique.statutEtatCivil",
        "short" : "Statut de la demande de certification auprès de l'organisme certificateur.",
        "definition" : "Statut de la demande de certification auprès de l'organisme certificateur.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R31-StatutEtatCivil/FHIR/TRE-R31-StatutEtatCivil?vs"
        }
      },
      {
        "id" : "PersonnePhysique.dateStatutEtatCivil",
        "path" : "PersonnePhysique.dateStatutEtatCivil",
        "short" : "Date de transmission du statut d’état civil de la personne par l’organisme certificateur d’état-civil.",
        "definition" : "Date de transmission du statut d’état civil de la personne par l’organisme certificateur d’état-civil.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.dateAcquisitionNatFR",
        "path" : "PersonnePhysique.dateAcquisitionNatFR",
        "short" : "Date d'acquisition de la nationalité française, renseignée uniquement si la nationalité actuelle est française et qu'elle n’a pas été acquise à la naissance.",
        "definition" : "Date d'acquisition de la nationalité française, renseignée uniquement si la nationalité actuelle est française et qu'elle n’a pas été acquise à la naissance.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.paysNationalite",
        "path" : "PersonnePhysique.paysNationalite",
        "short" : "Pays de nationalité actuelle ou rattachement de la nationalité à un espace de pays conventionné.Attribut associé aux nomenclatures suivantes :**CodeSystem-TRE-R268-PaysProvenanceISO : provient de la norme ISO 3166-1 (code alpha-2) qui définit la représentation des noms de pays par un code à deux lettres**CodeSystem-TRE-R20-Pays : provient du code officiel géographique (COG)**CodeSystem-TRE-R89-RegroupementPays : espace de pays conventionné",
        "definition" : "Pays de nationalité actuelle ou rattachement de la nationalité à un espace de pays conventionné.Attribut associé aux nomenclatures suivantes :**CodeSystem-TRE-R268-PaysProvenanceISO : provient de la norme ISO 3166-1 (code alpha-2) qui définit la représentation des noms de pays par un code à deux lettres**CodeSystem-TRE-R20-Pays : provient du code officiel géographique (COG)**CodeSystem-TRE-R89-RegroupementPays : espace de pays conventionné",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/paysNationalite-vs"
        }
      },
      {
        "id" : "PersonnePhysique.paysResidence",
        "path" : "PersonnePhysique.paysResidence",
        "short" : "Pays où séjourne la personne de façon permanente.",
        "definition" : "Pays où séjourne la personne de façon permanente.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R20-Pays?vs"
        }
      },
      {
        "id" : "PersonnePhysique.professionCategorieSocioProfessionnelle",
        "path" : "PersonnePhysique.professionCategorieSocioProfessionnelle",
        "short" : "Profession et catégorie socio-professionnelle de la personne (PCS). Ce code provient de la nomenclature des professions et catégories socioprofessionnelles (PCS) de l'INSEE.",
        "definition" : "Profession et catégorie socio-professionnelle de la personne (PCS). Ce code provient de la nomenclature des professions et catégories socioprofessionnelles (PCS) de l'INSEE.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://interop.esante.gouv.fr/ig/mos/ValueSet/professionCategorieSocioProfessionnelle-vs"
        }
      },
      {
        "id" : "PersonnePhysique.causeMortalite",
        "path" : "PersonnePhysique.causeMortalite",
        "short" : "Une ou plusieurs causes ayant entraîné la mort de la personne. La liste des codes est en cours de constitution. Certains codes proviennent des niveaux 3 et 4 de la CIM 10, en cas de décès dû à une pathologie.",
        "definition" : "Une ou plusieurs causes ayant entraîné la mort de la personne. La liste des codes est en cours de constitution. Certains codes proviennent des niveaux 3 et 4 de la CIM 10, en cas de décès dû à une pathologie.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.tailleCorporelle",
        "path" : "PersonnePhysique.tailleCorporelle",
        "short" : "Taille du corps de la personne exprimée dans une unité de mesure (m, cm, etc.).Synonymes: grandeur corporelle, grandeur du corps, hauteur corporelle, hauteur du corps, longueur corporelle.",
        "definition" : "Taille du corps de la personne exprimée dans une unité de mesure (m, cm, etc.).Synonymes: grandeur corporelle, grandeur du corps, hauteur corporelle, hauteur du corps, longueur corporelle.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.poidsCorporel",
        "path" : "PersonnePhysique.poidsCorporel",
        "short" : "Masse du corps de la personne exprimée dans une unité de mesure (kg, g, etc.).",
        "definition" : "Masse du corps de la personne exprimée dans une unité de mesure (kg, g, etc.).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.surfaceCorporelle",
        "path" : "PersonnePhysique.surfaceCorporelle",
        "short" : "Surface du corps de la personne, c'est à dire la mesure en deux dimensions de la surface externe de la peau recouvrant le corps, exprimée dans une unité de mesure (par exemple, en m2).Calcul de la surface corporelle:** Calcul de la surface corporelle chez un adulte (>= à 40 Kg + taille renseignée) :La surface corporelle est calculée selon la formule suivante (Formule de BOYD) :SC = 0,0001 x (3,207) x (P0,7285-0,0188logP) x (T0,3) avec T en cm, P en grammes et Log le logarithme décimal.** Calcul de la surface corporelle chez un petit enfant (poids < 40 Kg):Il convient d'utiliser une formule adaptée au calcul de la surface corporelle chez le petit enfant car elle s'affranchit de la taille. La formule est à utiliser pour tous les enfants dont le poids est inférieur à 40 Kg.La surface corporelle est alors calculée selon la formule suivante :SC = (4 x P + 7) / (P + 90) avec P en Kg, le résultat SC est donné en m2.",
        "definition" : "Surface du corps de la personne, c'est à dire la mesure en deux dimensions de la surface externe de la peau recouvrant le corps, exprimée dans une unité de mesure (par exemple, en m2).Calcul de la surface corporelle:** Calcul de la surface corporelle chez un adulte (>= à 40 Kg + taille renseignée) :La surface corporelle est calculée selon la formule suivante (Formule de BOYD) :SC = 0,0001 x (3,207) x (P0,7285-0,0188logP) x (T0,3) avec T en cm, P en grammes et Log le logarithme décimal.** Calcul de la surface corporelle chez un petit enfant (poids < 40 Kg):Il convient d'utiliser une formule adaptée au calcul de la surface corporelle chez le petit enfant car elle s'affranchit de la taille. La formule est à utiliser pour tous les enfants dont le poids est inférieur à 40 Kg.La surface corporelle est alors calculée selon la formule suivante :SC = (4 x P + 7) / (P + 90) avec P en Kg, le résultat SC est donné en m2.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.indiceMasseCorporelle",
        "path" : "PersonnePhysique.indiceMasseCorporelle",
        "short" : "Indice de masse corporelle (IMC).L'IMC résulte du calcul suivant: IMC = poids (kg) / taille (m)²L'affichage du résultat de l'IMC varie selon la valeur obtenue :** IMC < 18.5 : maigreur** 18.5 <= IMC <= 25 : corpulence normale** 25 < IMC <= 30 : surpoids** IMC > 30 : obésité",
        "definition" : "Indice de masse corporelle (IMC).L'IMC résulte du calcul suivant: IMC = poids (kg) / taille (m)²L'affichage du résultat de l'IMC varie selon la valeur obtenue :** IMC < 18.5 : maigreur** 18.5 <= IMC <= 25 : corpulence normale** 25 < IMC <= 30 : surpoids** IMC > 30 : obésité",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.Parent",
        "path" : "PersonnePhysique.Parent",
        "short" : "Lien vers la classe Parent",
        "definition" : "Lien vers la classe Parent",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Parent"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.MesureProtection",
        "path" : "PersonnePhysique.MesureProtection",
        "short" : "Lien vers la classe MesureProtection",
        "definition" : "Lien vers la classe MesureProtection",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/MesureProtection"
          }
        ]
      },
      {
        "id" : "PersonnePhysique.AidantDemarche",
        "path" : "PersonnePhysique.AidantDemarche",
        "short" : "Lien vers la classe AidantDemarche",
        "definition" : "Lien vers la classe AidantDemarche",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/AidantDemarche"
          }
        ]
      }
    ]
  }
}

```
