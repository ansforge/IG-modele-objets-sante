# Adresse - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adresse**

## Logical Model: Adresse 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse | *Version*:0.1.0 |
| Draft as of 2025-12-03 | *Computable Name*:Adresse |

 
Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte, d’après la norme NF Z 10-011. 

**Utilisations:**

* Utiliser ce Modèle logique: [Professionnel](StructureDefinition-Professionnel.md) and [SituationExercice](StructureDefinition-SituationExercice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.mos|current/StructureDefinition/Adresse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Adresse.csv), [Excel](StructureDefinition-Adresse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Adresse",
  "url" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse",
  "version" : "0.1.0",
  "name" : "Adresse",
  "title" : "Adresse",
  "status" : "draft",
  "date" : "2025-12-03T08:52:03+00:00",
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
  "description" : "Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte, d'après la norme NF Z 10-011.",
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
  "type" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Adresse",
        "path" : "Adresse",
        "short" : "Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte, d'après la norme NF Z 10-011.",
        "definition" : "Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte, d'après la norme NF Z 10-011."
      },
      {
        "id" : "Adresse.identificationDestinataire",
        "path" : "Adresse.identificationDestinataire",
        "short" : "Eléments d'identification du destinataire c’est-à-dire la personne physique ou morale à qui un envoi est adressé.1) Le destinataire est une personne physique :* Qualité: civilité ou condition sociale, civile, juridique ou titre sous lequel une partie figure dans un acte juridique.* Prénom* Nom* Titre: désignation honorifique exprimant une distinction de rang, une dignité (titres nobiliaires, religieux, etc.).* Profession, fonctionUne personne physique peut être désignée soit par son nom et éventuellement son prénom, soit par son nom et sa fonction ou sa profession, enfin, dans certains cas particuliers, par ses seuls titres, fonction ou profession.2) Le destinataire est une personne morale :* Forme juridique: Indication du statut juridique de la personne morale : SA, SARL, GIE, Société civile, Mutuelle, Association, Fondation, etc.* Raison ou dénomination sociale* Domaine d'activité* Enseigne commerciale* Nom commercial* Subdivision au sein de l'entreprise (Direction, service, etc.) ou organisation interne de la personne morale (fonctionnelle ou géographique).Une personne morale peut être désignée au moins par sa raison sociale, son enseigne ou nom commercial.",
        "definition" : "Eléments d'identification du destinataire c’est-à-dire la personne physique ou morale à qui un envoi est adressé.1) Le destinataire est une personne physique :* Qualité: civilité ou condition sociale, civile, juridique ou titre sous lequel une partie figure dans un acte juridique.* Prénom* Nom* Titre: désignation honorifique exprimant une distinction de rang, une dignité (titres nobiliaires, religieux, etc.).* Profession, fonctionUne personne physique peut être désignée soit par son nom et éventuellement son prénom, soit par son nom et sa fonction ou sa profession, enfin, dans certains cas particuliers, par ses seuls titres, fonction ou profession.2) Le destinataire est une personne morale :* Forme juridique: Indication du statut juridique de la personne morale : SA, SARL, GIE, Société civile, Mutuelle, Association, Fondation, etc.* Raison ou dénomination sociale* Domaine d'activité* Enseigne commerciale* Nom commercial* Subdivision au sein de l'entreprise (Direction, service, etc.) ou organisation interne de la personne morale (fonctionnelle ou géographique).Une personne morale peut être désignée au moins par sa raison sociale, son enseigne ou nom commercial.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.identificationDomicilie",
        "path" : "Adresse.identificationDomicilie",
        "short" : "Eléments d'identification du domicilié c’est-à-dire le titulaire du domicile du destinataire (lieu ordinaire d'habitation, demeure légale et habituelle)1) Le domicilié est une personne physique:* Qualité* Prénom* Nom* Titre* Profession, fonctionLes éléments d'identification du domicilié sont précédés de la mention «chez»2) Le domicilié est une personne morale:* Forme juridique* Dénomination sociale* Activité principale* Enseigne ou nom de l'établissement* Subdivision au sein de l'entreprise (Direction, service,...).",
        "definition" : "Eléments d'identification du domicilié c’est-à-dire le titulaire du domicile du destinataire (lieu ordinaire d'habitation, demeure légale et habituelle)1) Le domicilié est une personne physique:* Qualité* Prénom* Nom* Titre* Profession, fonctionLes éléments d'identification du domicilié sont précédés de la mention «chez»2) Le domicilié est une personne morale:* Forme juridique* Dénomination sociale* Activité principale* Enseigne ou nom de l'établissement* Subdivision au sein de l'entreprise (Direction, service,...).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.pointRemise",
        "path" : "Adresse.pointRemise",
        "short" : "Lieu où le destinataire prend possession de son courrier. Il est matérialisé, dans la plupart des cas, par la présence d'une boîte aux lettres; il est constitué des éléments suivants :* Local ou logement : Numéro ou désignation d'appartement, logement, pièce, bureau, local commercial ou industriel* Accès au local ou au logement: indications de couloir, d'étage ou de niveau* Boîte aux lettres : Numéro voire dénomination (éventuellement CIDEX)* Accès à la boîte à lettres: si nécessaire,: identification du couloir d'accès, de la batterie de boîtes s'il en existe plusieurs* Code acheminement interne à l'entreprise (CAIE): Codification identifiant le découpage au sein de l'entreprise en vue du traitement de courrier par les services dédiés internes à l'entreprise. Les informations d'identification du domicilié (Chez M.X) pourraient figurer dans cet attribut.",
        "definition" : "Lieu où le destinataire prend possession de son courrier. Il est matérialisé, dans la plupart des cas, par la présence d'une boîte aux lettres; il est constitué des éléments suivants :* Local ou logement : Numéro ou désignation d'appartement, logement, pièce, bureau, local commercial ou industriel* Accès au local ou au logement: indications de couloir, d'étage ou de niveau* Boîte aux lettres : Numéro voire dénomination (éventuellement CIDEX)* Accès à la boîte à lettres: si nécessaire,: identification du couloir d'accès, de la batterie de boîtes s'il en existe plusieurs* Code acheminement interne à l'entreprise (CAIE): Codification identifiant le découpage au sein de l'entreprise en vue du traitement de courrier par les services dédiés internes à l'entreprise. Les informations d'identification du domicilié (Chez M.X) pourraient figurer dans cet attribut.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.complementPointGeographique",
        "path" : "Adresse.complementPointGeographique",
        "short" : "Un complément de l'adresse au point géographique constitué des éléments suivants:* Bâtiment: les bâtiments sont désignés par leur type (bâtiment, immeuble, tour,...), éventuellement des mentions d'orientation (est, ouest,...), une dénomination littérale ou une numérotation; exemple: Tour DELTA* Accès au bâtiment: l'accès au bâtiment est identifié par un numéro, une lettre, une combinaison alphanumérique. Ces éléments identifient une entrée, porte, etc.; exemple: Entrée A* Ensemble immobilier: ensemble d'habitations reliées à la voie publique par un ou plusieurs points d'accès (résidence, zoneindustrielle,...); exemple: Résidence des Fleurs.",
        "definition" : "Un complément de l'adresse au point géographique constitué des éléments suivants:* Bâtiment: les bâtiments sont désignés par leur type (bâtiment, immeuble, tour,...), éventuellement des mentions d'orientation (est, ouest,...), une dénomination littérale ou une numérotation; exemple: Tour DELTA* Accès au bâtiment: l'accès au bâtiment est identifié par un numéro, une lettre, une combinaison alphanumérique. Ces éléments identifient une entrée, porte, etc.; exemple: Entrée A* Ensemble immobilier: ensemble d'habitations reliées à la voie publique par un ou plusieurs points d'accès (résidence, zoneindustrielle,...); exemple: Résidence des Fleurs.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.numeroVoie",
        "path" : "Adresse.numeroVoie",
        "short" : "Un numéro dans la voie; dans les cas de numérotation sans extension, il est composé de 0 à 4 caractères numériques au maximum.",
        "definition" : "Un numéro dans la voie; dans les cas de numérotation sans extension, il est composé de 0 à 4 caractères numériques au maximum.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.extension",
        "path" : "Adresse.extension",
        "short" : "Extension ou indice de répétition: mention bis, ter, quater, ...ou une lettre A, B, C, D, etc. lorsque ce caractère complète une numérotation de voirie.",
        "definition" : "Extension ou indice de répétition: mention bis, ter, quater, ...ou une lettre A, B, C, D, etc. lorsque ce caractère complète une numérotation de voirie.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.typeVoie",
        "path" : "Adresse.typeVoie",
        "short" : "Type de voie : rue, avenue, boulevard, etc.Attribut obsolète et non conforme à la norme postale en vigueur NF Z 10-011 qui définit cette information comme faisant partie de l'attribut libelleVoie. Il apparait dans la classe Adresse uniquement parce que des systèmes existants l'utilisent encore.",
        "definition" : "Type de voie : rue, avenue, boulevard, etc.Attribut obsolète et non conforme à la norme postale en vigueur NF Z 10-011 qui définit cette information comme faisant partie de l'attribut libelleVoie. Il apparait dans la classe Adresse uniquement parce que des systèmes existants l'utilisent encore.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R35-TypeVoie/FHIR/TRE-R35-TypeVoie?vs"
        }
      },
      {
        "id" : "Adresse.libelleVoie",
        "path" : "Adresse.libelleVoie",
        "short" : "Appellation qui est donnée à la voie par les municipalités. Ce libellé figure in extenso ou en abrégé sur les plaques aux différents angles de chaque rue.Synonyme: nom de la voie",
        "definition" : "Appellation qui est donnée à la voie par les municipalités. Ce libellé figure in extenso ou en abrégé sur les plaques aux différents angles de chaque rue.Synonyme: nom de la voie",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.lieuDit",
        "path" : "Adresse.lieuDit",
        "short" : "Lieu qui porte un nom rappelant une particularité topographique ou historique et qui, souvent, constitue un écart d'une commune (un écart est une petite agglomération distincte du centre de la commune à laquelle elle appartient).",
        "definition" : "Lieu qui porte un nom rappelant une particularité topographique ou historique et qui, souvent, constitue un écart d'une commune (un écart est une petite agglomération distincte du centre de la commune à laquelle elle appartient).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.mentionDistribution",
        "path" : "Adresse.mentionDistribution",
        "short" : "Mentions particulières de distribution. Il s'agit de mentions identifiant le service proposé par La Poste au destinataire. Ces mentions sont formées d'un libellé et d'un numéro de séparation (exemple : BP 42534).",
        "definition" : "Mentions particulières de distribution. Il s'agit de mentions identifiant le service proposé par La Poste au destinataire. Ces mentions sont formées d'un libellé et d'un numéro de séparation (exemple : BP 42534).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.codePostal",
        "path" : "Adresse.codePostal",
        "short" : "Code Postal : Code Postal ou code postal spécifique CEDEX* Code postal: Un code à 5 chiffres servant à l'acheminement et/ou à la distribution des envois. Il identifie un bureau distributeur dans la chaîne de traitement du courrier.* Code CEDEX (Courrier d'Entreprise à Distribution Exceptionnelle); le CEDEX est une modalité d'acheminement du courrier associée à des services particuliers de distribution offerts aux entreprises caractérisées par un adressage spécifique; le code postal spécifique CEDEX est un code attribué aux organismes, entreprises, services publics recevant un fort trafic. Il identifie un client ou un ensemble de clients. Il est positionné aux lieu et place du code postal général dans le cas des adresses CEDEX. Ainsi, un code peut être associé à un client (code individuel) ou partagé entre plusieurs clients (code collectif).",
        "definition" : "Code Postal : Code Postal ou code postal spécifique CEDEX* Code postal: Un code à 5 chiffres servant à l'acheminement et/ou à la distribution des envois. Il identifie un bureau distributeur dans la chaîne de traitement du courrier.* Code CEDEX (Courrier d'Entreprise à Distribution Exceptionnelle); le CEDEX est une modalité d'acheminement du courrier associée à des services particuliers de distribution offerts aux entreprises caractérisées par un adressage spécifique; le code postal spécifique CEDEX est un code attribué aux organismes, entreprises, services publics recevant un fort trafic. Il identifie un client ou un ensemble de clients. Il est positionné aux lieu et place du code postal général dans le cas des adresses CEDEX. Ainsi, un code peut être associé à un client (code individuel) ou partagé entre plusieurs clients (code collectif).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "Adresse.localite",
        "path" : "Adresse.localite",
        "short" : "Localité ou Libellé du bureau distributeur CEDEX** Localité: Zone d'habitation, en général la commune d'implantation du destinataire. Elle est identifiée par son libellé INSEE sauf dans quelques cas où le libellé postal diffère du libellé INSEE, généralement pour lever des ambiguïtés.** Libellé du bureau distributeur CEDEX.Libellé du bureau distributeur c'est-à-dire (dans la très grande majorité des cas) le libellé de la commune siège du bureau CEDEX; la mention CEDEX doit obligatoirement suivre le libellé du bureau CEDEX; dans le cas où il existe plusieurs bureaux CEDEX pour une même entité ou commune, chaque bureau CEDEX sera identifié par un numéro (exemple : ROUBAIX CEDEX 2); ce numéro correspond au numéro d'arrondissement dans le cas des villes à arrondissements, à un numéro d'ordre dans les autres cas.",
        "definition" : "Localité ou Libellé du bureau distributeur CEDEX** Localité: Zone d'habitation, en général la commune d'implantation du destinataire. Elle est identifiée par son libellé INSEE sauf dans quelques cas où le libellé postal diffère du libellé INSEE, généralement pour lever des ambiguïtés.** Libellé du bureau distributeur CEDEX.Libellé du bureau distributeur c'est-à-dire (dans la très grande majorité des cas) le libellé de la commune siège du bureau CEDEX; la mention CEDEX doit obligatoirement suivre le libellé du bureau CEDEX; dans le cas où il existe plusieurs bureaux CEDEX pour une même entité ou commune, chaque bureau CEDEX sera identifié par un numéro (exemple : ROUBAIX CEDEX 2); ce numéro correspond au numéro d'arrondissement dans le cas des villes à arrondissements, à un numéro d'ordre dans les autres cas.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.COGCommune",
        "path" : "Adresse.COGCommune",
        "short" : "Code officiel géographique (COG), diffusé par l'INSEE, de la commune d'implantation du destinataire. Ce code ne fait pas partie de la norme NF Z 10-011 mais il correspond au libellé de l'attribut \"localite\" de la classe Adresse qui lui fait partie de la norme.",
        "definition" : "Code officiel géographique (COG), diffusé par l'INSEE, de la commune d'implantation du destinataire. Ce code ne fait pas partie de la norme NF Z 10-011 mais il correspond au libellé de l'attribut \"localite\" de la classe Adresse qui lui fait partie de la norme.",
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
        "id" : "Adresse.internationalDivisionTerritoriale",
        "path" : "Adresse.internationalDivisionTerritoriale",
        "short" : "Pour les adresses internationales, une subdivision administrative d'un pays. Dans le cas d'une adresse étrangère, il peut être nécessaire d'identifier dans l'adresse l'état fédéré, la région, le canton, etc.",
        "definition" : "Pour les adresses internationales, une subdivision administrative d'un pays. Dans le cas d'une adresse étrangère, il peut être nécessaire d'identifier dans l'adresse l'état fédéré, la région, le canton, etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.internationalPays",
        "path" : "Adresse.internationalPays",
        "short" : "Pour les adresses internationales, nom du pays du destinataire, de préférence en majuscules et en toutes lettres, dans la langue du pays d’expédition ou dans une langue reconnue par le Comité Européen de Normalisation (CEN) : anglais, français, allemand pour les envois européens.",
        "definition" : "Pour les adresses internationales, nom du pays du destinataire, de préférence en majuscules et en toutes lettres, dans la langue du pays d’expédition ou dans une langue reconnue par le Comité Européen de Normalisation (CEN) : anglais, français, allemand pour les envois européens.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.type",
        "path" : "Adresse.type",
        "short" : "Indique le ou les types d'adresse tel que \"Adresse du domicile\", \"Adresse professionnelle\", \"Adresse de facturation\", \"Adresse postale\", \"Adresse géographique\", etc.Cet attribut ne fait pas partie de la norme  NF Z 10-011.",
        "definition" : "Indique le ou les types d'adresse tel que \"Adresse du domicile\", \"Adresse professionnelle\", \"Adresse de facturation\", \"Adresse postale\", \"Adresse géographique\", etc.Cet attribut ne fait pas partie de la norme  NF Z 10-011.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "Adresse.ligneUne",
        "path" : "Adresse.ligneUne",
        "short" : "Identité du destinataireLa première ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'identification du destinataire (personne physique ou morale).Cas particulier: pour un  domicilié personne morale, la ligne 1 peut contenir l'identification du domicilié personne morale et la ligne 2 contient l'identification du destinataire personne physique.38 caractères ou espaces par ligne au maximum.",
        "definition" : "Identité du destinataireLa première ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'identification du destinataire (personne physique ou morale).Cas particulier: pour un  domicilié personne morale, la ligne 1 peut contenir l'identification du domicilié personne morale et la ligne 2 contient l'identification du destinataire personne physique.38 caractères ou espaces par ligne au maximum.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.ligneDeux",
        "path" : "Adresse.ligneDeux",
        "short" : "La deuxième ligne de l'adresse de publipostage est obtenue par assemblage des éléments de:* point de remise* domicilié personne physique (exemple: chez M X)* domicilié personne moraleCas particulier: pour un  domicilié personne morale, la ligne 1 peut contenir l'identification du domicilié personne morale et la ligne 2 contient l'identification du destinataire personne physique.38 caractères ou espaces par ligne au maximum",
        "definition" : "La deuxième ligne de l'adresse de publipostage est obtenue par assemblage des éléments de:* point de remise* domicilié personne physique (exemple: chez M X)* domicilié personne moraleCas particulier: pour un  domicilié personne morale, la ligne 1 peut contenir l'identification du domicilié personne morale et la ligne 2 contient l'identification du destinataire personne physique.38 caractères ou espaces par ligne au maximum",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.ligneTrois",
        "path" : "Adresse.ligneTrois",
        "short" : "La troisième ligne de l'adresse de publipostage est obtenue par assemblage des éléments de complément de l'adresse au point géographique.38 caractères ou espaces par ligne au maximum.",
        "definition" : "La troisième ligne de l'adresse de publipostage est obtenue par assemblage des éléments de complément de l'adresse au point géographique.38 caractères ou espaces par ligne au maximum.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.ligneQuatre",
        "path" : "Adresse.ligneQuatre",
        "short" : "La quatrième ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'adresse: Numéro dans la voie + Extension + Libellé de la voie.38 caractères ou espaces par ligne au maximum.",
        "definition" : "La quatrième ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'adresse: Numéro dans la voie + Extension + Libellé de la voie.38 caractères ou espaces par ligne au maximum.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.ligneCinq",
        "path" : "Adresse.ligneCinq",
        "short" : "La cinquième ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'adresse:* Mentions particulières de distribution suivies du libellé de la localité de destination dans le cas où celle-ci serait différente du libellé cedex* Lieu-dit.38 caractères ou espaces par ligne au maximum.",
        "definition" : "La cinquième ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'adresse:* Mentions particulières de distribution suivies du libellé de la localité de destination dans le cas où celle-ci serait différente du libellé cedex* Lieu-dit.38 caractères ou espaces par ligne au maximum.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.ligneSix",
        "path" : "Adresse.ligneSix",
        "short" : "La sixième ligne de l'adresse de publipostage obtenue par assemblage des éléments d'adresse: Code postal + localité de destination ou code cedex + libellé bureau cedex.38 caractères ou espaces par ligne au maximum.",
        "definition" : "La sixième ligne de l'adresse de publipostage obtenue par assemblage des éléments d'adresse: Code postal + localité de destination ou code cedex + libellé bureau cedex.38 caractères ou espaces par ligne au maximum.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Adresse.ligneSept",
        "path" : "Adresse.ligneSept",
        "short" : "La septième ligne de l'adresse de publipostage contient, pour les envois à l'international, dans tous les cas, le nom du pays du destinataire, de préférence en majuscules et en toutes lettres, dans la langue du pays d’expédition ou dans une langue reconnue par le Comité Européen de Normalisation (CEN) : anglais, français, allemand pour les envois européens.",
        "definition" : "La septième ligne de l'adresse de publipostage contient, pour les envois à l'international, dans tous les cas, le nom du pays du destinataire, de préférence en majuscules et en toutes lettres, dans la langue du pays d’expédition ou dans une langue reconnue par le Comité Européen de Normalisation (CEN) : anglais, français, allemand pour les envois européens.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
