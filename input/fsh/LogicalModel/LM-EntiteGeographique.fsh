Logical: EntiteGeographique
Id: EntiteGeographique
Title: "Classe EntiteGeographique du MOS"
Description: "Modèle logique complet représentant la classe EntiteGeographique du MOS."
Characteristics: #can-be-target
* numFINESS 0..1 Identifiant "Numéro FINESS de l'entité géographique. Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification des entités géographiques en tant qu’acteurs sanitaires et médico-sociaux par rapport au numéro SIRET (Référentiel d’identification des acteurs sanitaires et médico-sociaux - PGSSI-S). A chaque EG (établissement) est attribué un numéro FINESS composé de 9 chiffres : Position 1-2 : numéro du département d'implantation («2A», «2B» pour la Corse; «97» DOM; «98» Mayotte); Position 3 : «0»; Position 4-8 : numéro d'ordre de 5 chiffres (ou 4 chiffres + code DOM); Position 9 : clé de Luhn. (FHIR: Organization.identifier)"
* numSiret 0..1 Identifiant "Numéro SIRET unique d'identification attribué par l'INSEE à chaque entité géographique. Composé de 14 chiffres : 9 chiffres du SIREN de l'entreprise suivis de 5 chiffres du numéro interne de classement (NIC) dont une clé de Luhn. Il est fermé lorsque l'activité cesse ou lors d'un changement d'adresse. (FHIR: Organization.identifier)"
* identifiantEG 0..1 Identifiant "Identifiant spécifique généré par le RPPS ou ADELI lors de la création d'une structure d'exercice pour un cabinet. RPPS-rang (14 caractères : 11 du RPPS + 2 d'ordre + 1 clé Luhn) ou ADELI-rang (11 caractères : 9 du numéro ADELI + 2 d'ordre). Utilisé dans les échanges techniques RPPS/ADELI avec le FNPS de la CNAM, se substitue au SIRET si celui-ci n'est pas connu. Synonyme : numEG_RPPS_ADELI. (FHIR: Organization.identifier, OMOP: Care_Site.care_site_id)"
* idNat_Struct 0..1 Identifiant "Identification nationale de l'Entité géographique pour le SI-CPS, obtenue par concaténation du type d'identifiant national (CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure: 0+ADELI, 1+FINESS, 3+SIRET, 4+RPPS. Synonyme : Struct_IdNat (CI-SIS). (FHIR: Organization.identifier)"
* typeIdNat_Struct 0..1 Code "Type d’identifiant national de la structure. (TRE_G07-TypeIdentifiantStructure)"
* typeIdNat_Struct from https://mos.esante.gouv.fr/NOS/JDV_J236-TypeIdentifiant-ROR/FHIR/JDV-J236-TypeIdentifiant-ROR
* numeroEducationNationale 0..1 Texte "Numéro attribué par l’Éducation nationale aux établissements et services pour enfants et adolescents handicapés employant du personnel de l’Education nationale."
* nomOperationnel 0..1 Texte "Appellation communément utilisée par les acteurs de santé pour désigner l'entité géographique, indépendamment des référentiels nationaux."
* denominationEG 0..1 Texte "Nom sous lequel l'entité géographique exerce son activité, par exemple l’enseigne commerciale pour les pharmacies. Dans FINESS, correspond à la 'raison sociale d'un établissement'. (FHIR: Organization.name, OMOP: Care_Site.care_site_name)"
* denominationEGLongue 0..1 Texte "Nom complet sous sa forme la plus longue et complète (acronymes, sigles ou abréviations développés). (FHIR: Organization.alias)"
* complementDenominationEG 0..1 Texte "Suite de la dénomination de l'entité géographique, contenant des informations facilitant l'adressage d'un courrier."
* champActivite 0..* Code "Champ(s) d’activité des établissements de santé publics et privés français : MCO (médecine, chirurgie, obstétrique), SSR (soins de suite et réadaptation), PSY (psychiatrie). Inclut aussi le secteur médico-social. (TRE_R227-ChampActivite)"
* champActivite from https://mos.esante.gouv.fr/NOS/JDV_J20-ChampActivite-ROR/FHIR/JDV-J20-ChampActivite-ROR
* typeEtablissement 0..1 Texte "Détermine si l'établissement est principal ou secondaire."
* etablissementPrincipal 0..1 Identifiant "Pour un établissement secondaire : numéro FINESS de l’établissement principal dont il dépend. (FHIR: Organization.identifier)"
* secteurActivite 0..1 Code "Secteur d'activité regroupant les établissements partageant la même activité de santé (ex. établissement public de santé, maison de santé). (FHIR: Organization.type, TRE_R02-SecteurActivite)"
* secteurActivite from https://mos.esante.gouv.fr/NOS/JDV_J126-SecteurActivite-ENREG/FHIR/JDV-J126-SecteurActivite-ENREG
* categorieEtablissement 0..1 Code "Cadre réglementaire d'exercice de l'activité : loi hospitalière, établissements de soins/prévention, dispositifs d’appui à la coordination, etc. (TRE_R66-CategorieEtablissement)"
* categorieEtablissement from https://mos.esante.gouv.fr/NOS/JDV_J129-CategorieEtablissement-RASS/FHIR/JDV-J129-CategorieEtablissement-RASS
* agregatCategorieEtablissementNiv1 0..1 Code "Agrégat de catégories d'établissements de niveau 1 (ex. code 1000 «Établissement relevant de la loi hospitalière» regroupant les codes d'agrégat de niveau 2). (TRE_R63-AgregatCategorieEtablissementNiv1)"
* agregatCategorieEtablissementNiv1 from VS_TRE_R63_AgregatCategorieEtablissementNiv1
* agregatCategorieEtablissementNiv2 0..1 Code "Agrégat de catégories d'établissements de niveau 2 regroupant des agrégats de niveau 3. (TRE_R64-AgregatCategorieEtablissementNiv2)"
* agregatCategorieEtablissementNiv2 from VS_TRE_R64_AgregatCategorieEtablissementNiv2
* agregatCategorieEtablissementNiv3 0..1 Code "Agrégat de catégories d'établissements de niveau 3 regroupant des catégories d'établissement détaillées. (TRE_R65-AgregatCategorieEtablissement)"
* agregatCategorieEtablissementNiv3 from VS_TRE_R65_AgregatCategorieEtablissement
* codeAPET 0..1 Code "Code Insee caractérisant l'activité principale de l'établissement (NAF rév.2). (TRE_R75-InseeNAFrev2Niveau5)"
* codeAPET from https://mos.esante.gouv.fr/NOS/JDV_J99-InseeNAFrav2Niveau5-RASS/FHIR/JDV-J99-InseeNAFrav2Niveau5-RASS
* modeFixationTarif 0..1 Code "Mode de tarification déterminant l'autorité responsable de la fixation du tarif principal. (TRE_R74-ModeFixationTarifaire)"
* modeFixationTarif from https://mos.esante.gouv.fr/NOS/JDV_J259-ModeFixationTarifaire-RASS/FHIR/JDV-J259-ModeFixationTarifaire-RASS
* modaliteParticipationSPH 0..1 Code "Modalités de participation au service public hospitalier. (TRE_R73-ESPIC)"
* modaliteParticipationSPH from https://mos.esante.gouv.fr/NOS/JDV_J202-ESPIC-ROR/FHIR/JDV-J202-ESPIC-ROR
* natureEtablissement 0..1 Texte "Nature du budget alloué à l'établissement : «G» pour général ou «A» pour annexe."
* aideFinanciere 0..* Code "Habilitation ou conventionnement permettant aux personnes accueillies de bénéficier des aides financières. (TRE_R241-AideFinanciere)"
* aideFinanciere from https://mos.esante.gouv.fr/NOS/JDV_J31-AideFinanciere-ROR/FHIR/JDV-J31-AideFinanciere-ROR
* habilitationSoinSansConsentement 0..1 Indicateur "Indique si l'établissement est autorisé à prendre en charge des patients sans leur consentement, autorisation donnée par l’ARS après avis du préfet. Valeurs: 0 = non, 1 = oui."
* hebergementFamille 0..1 Indicateur "Indique si l'établissement peut héberger les familles des personnes prises en charge. Valeurs: 0 = non, 1 = oui."
* dateModificationSIRET 0..1 Date "Date de modification du numéro SIRET."
* origineModificationSIRET 0..1 Texte "Origine ou motif de modification du numéro SIRET."
* actif 0..1 Indicateur "Indique si l'entité géographique est active (ouverte) ou inactive (fermée). (FHIR: Organization.active)"
* dateOuverture 0..1 Date "Date d’ouverture réelle de fonctionnement de l’établissement, postérieure ou égale à la date d’autorisation. Pour les établissements soumis à autorisation, constatée par la première visite de conformité."
* dateCaducite 0..1 Date "Date limite autorisant la réalisation de l’opération pour laquelle il y a autorisation. Calculée automatiquement (3 ans par défaut, 4 ans si début de travaux) et supprimée à l'ouverture."
* constatCaducite 0..1 Indicateur "Indique si un constat de caducité a été relevé : «N» par défaut (autorisé non ouvert), «O» si constat de caducité."
* dateFermeture 0..1 Date "Date de fermeture de l'entité géographique, postérieure à la date d’ouverture."
* typeFermeture 0..1 Code "Type de fermeture (définitive, provisoire, etc.), obligatoire lors de la fermeture. (TRE_R286-TypeFermeture)"
* typeFermeture from https://mos.esante.gouv.fr/NOS/JDV_J201-TypeFermeture-ROR/FHIR/JDV-J201-TypeFermeture-ROR
* dateAutorisation 0..1 Date "Date d’arrêté autorisant la création de l’établissement ou la première autorisation d'équipements."
* accessibiliteLieu 0..1 Code "Niveau d'accessibilité de l'établissement aux personnes handicapées (ex : accessible, non accessible, sur demande, non communiqué). Inclut les normes d'accessibilité aux cheminements, stationnement, accès, circulations, sanitaires, portes, revêtements, éclairage, information des usagers. (TRE_R202-AccessibiliteLieu)"
* accessibiliteLieu from https://mos.esante.gouv.fr/NOS/JDV_J50-AccessibiliteLieu-ROR/FHIR/JDV-J50-AccessibiliteLieu-ROR
* zonePoser 0..1 Indicateur "Présence d'une zone de poser pour hélicoptère sur le site : 0 = non, 1 = oui."
* niveauRecoursORSAN 0..1 Code "Niveau de recours ORSAN définissant la hiérarchisation de la mobilisation des établissements pour l’accueil des patients après régulation par le SAMU. (TRE_R284-NiveauRecoursORSAN)"
* niveauRecoursORSAN from https://mos.esante.gouv.fr/NOS/JDV_J204-NiveauRecoursORSAN-ROR/FHIR/JDV-J204-NiveauRecoursORSAN-ROR
* venteLigneURL 0..1 Texte "URL du site de vente en ligne."
* nbPlaceAideSocialeTemporaire 0..1 Numerique "Nombre de places temporaires dédiées à l'aide sociale dans l'établissement."
* nbPlaceAideSocialePermanent 0..1 Numerique "Nombre de places permanentes dédiées à l'aide sociale dans l'établissement."
* adresseEG 0..* Adresse "Adresse(s) géopostale(s) de l'entité géographique en fonction de l'usage (administrative, entrée véhicules, piétonne). (FHIR: Organization.address)"
* implantationGeographique 0..1 Lieu "Implantation géographique de l’entité géographique sur un lieu connu."
* lieuEG 0..1 Lieu "Lieu interne à l'entité géographique, par exemple entrée A ou pavillon spécifique. Peut inclure adresse et coordonnées géographiques."
* divisionTerritoriale 0..* DivisionTerritoriale "Division(s) territoriale(s) (commune, département, etc.) où est située l'entité géographique."
* contact 0..* Contact "Point(s) de contact de l'entité géographique, par exemple pour joindre l’accueil ou le secrétariat. Inclut éventuellement le directeur ou la cellule d'alerte. (FHIR: Organization.contact)"
* telecommunication 0..* Telecommunication "Adresse(s) de télécommunication (téléphone, email, URL, etc.) de l'entité géographique. (FHIR: Organization.telecom)"
* boiteLettresMSS 0..* BoiteLettreMSS "Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'entité géographique."
* commentaire 0..1 Texte "Commentaire libre permettant de fournir des informations complémentaires."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."