Logical: Identifiant
Id: Identifiant
Title: "Classe Identifiant du MOS"
Description: "Modèle logique pour représenter la classe Identifiant du MOS."

* valeur 1..1 string "Valeur de l'identifiant exprimée sous la forme d'une chaîne de caractères. (FHIR: Identifier.value ; HL7 V3: II.extension ou II.root si le système indique OID ou GUID)"
* qualification 0..1 string "Qualification de l'identifiant (définitif, temporaire, etc.). (FHIR: Identifier.use ; HL7 V3: Role.code)"
* identifiantSysteme 0..1 string "Identifiant du système auquel appartient l’identifiant. (FHIR: Identifier.system ; HL7 V3: II.root)"
* nomSysteme 0..1 string "Nom du système auquel appartient l’identifiant. (FHIR: Identifier.system ; HL7 V3: II.root)"
* versionSysteme 0..1 string "Version du système auquel appartient l’identifiant."
* URISysteme 0..1 string "Adresse URI indiquant où le système, auquel appartient l'identifiant, peut être trouvée."
* identifiantAgence 0..1 string "Identifiant de l'agence maintenant le système auquel appartient l'identifiant. (FHIR: Identifier.assigner.identifier.value)"
* nomAgence 0..1 string "Nom de l'agence maintenant le système auquel appartient l'identifiant. (FHIR: Identifier.assigner.name ; HL7 V3: II.assigningAuthorityName)"
* typeIdentifiant 0..1 Code "Permet de préciser le type d’identifiant véhiculé. Remarque : Actuellement les identifiants du MOS ne sont pas modélisés via un type, une étude de l'ensemble des identifiants du MOS doit être menée. (FHIR: Identifier.type)  
Nomenclature(s) associée(s) : TRE_G07-TypeIdentifiantStructure, TRE_G08-TypeIdentifiantPersonne"
* typeIdentifiant from https://mos.esante.gouv.fr/NOS/JDV_J236-TypeIdentifiant-ROR/FHIR/JDV-J236-TypeIdentifiant-ROR

Logical: Code
Id: Code
Title: "Classe Code du MOS"
Description: "Modèle logique pour représenter la classe Code du MOS."
Characteristics: #can-bind
* valeur 1..1 string "Valeur du code exprimée sous la forme d'une chaîne de caractères. (FHIR: Coding.code ; HL7 V3: ./code)"
* libelle 0..1 string "Libellé correspondant à la valeur du code. (FHIR: Coding.display ; HL7 V3: CV.displayName)"
* langue 0..1 string "Langue utilisée dans les textes du code."
* identifiantNomenclature 0..1 string "Identifiant de la nomenclature (ou liste de codes) à laquelle appartient le code. Cet identifiant peut être exprimé sous la forme d'un OID (Object IDentifier, identifiant universel représenté sous la forme d'une suite d'entiers, format URI). (FHIR: Coding.system ; HL7 V3: ./codeSystem)"
* nomNomenclature 0..1 string "Nom de la nomenclature (ou liste de codes) à laquelle appartient le code. (HL7 V3: ./codeSystemName)"
* versionNomenclature 0..1 string "Version de la nomenclature (ou liste de codes) à laquelle appartient le code. (FHIR: Coding.version ; HL7 V3: ./codeSystemVersion)"
* URINomenclature 0..1 string "Adresse URI indiquant où la nomenclature (ou liste de codes) à laquelle appartient le code peut être trouvée."
* identifiantAgence 0..1 string "Identifiant de l'agence maintenant la nomenclature (ou liste de codes) à laquelle appartient le code."
* nomAgence 0..1 string "Nom de l'agence maintenant la nomenclature (ou liste de codes) à laquelle appartient le code."

Logical: Texte
Id: Texte
Title: "Classe Texte du MOS"
Description: "Modèle logique pour représenter la classe Texte du MOS."
* valeur 1..1 string "Valeur exprimée sous la forme d'une chaîne de caractères."
* langue 0..1 string "Langue utilisée dans le texte."

Logical: Date
Id: Date
Title: "Classe Date du MOS"
Description: "Modèle logique pour représenter la classe Date du MOS."
* valeur 1..1 string "Valeur de la date."
* format 0..1 string "Format d'expression de la date. Exemple : AAAAMMJJ."

Logical: DateHeure
Id: DateHeure
Title: "Classe DateHeure du MOS"
Description: "Modèle logique pour représenter la classe DateHeure du MOS."
* valeur 1..1 string "Valeur de la date et heure."
* format 0..1 string "Format d'expression de la date. Exemple : AAAAMMJJHHMMSS."

Logical: Metadonnee
Id: Metadonnee
Title: "Classe Metadonnee du MOS"
Description: "Modèle logique pour représenter la classe Metadonnee du MOS."
* identifiant 0..* Identifiant "Identifiant(s) technique(s) des classes du modèle. Les identifiants métier ainsi que les identifiants techniques qui permettent à un consommateur de réconcilier les données dans un contexte spécifique d'échange de données, sont intégrés en tant qu'attributs des classes du modèle (par exemple, IdNat_Struct est un identifiant métier décrit comme attribut de la classe EntiteJuridique)."
* version 0..1 Texte "Numéro de version de l'objet."
* commentaire 0..1 Texte "Commentaire associé à chaque objet."
* dateCreation 0..1 DateHeure "Date de création de l'objet."
* dateMiseJour 0..1 DateHeure "Date de mise à jour de l'objet."
* dateFin 0..1 DateHeure "Date de fin de l'objet (inactivité ou obsolescence)."
* autoriteEnregistrementResponsable 0..* AutoriteEnregistrement "Autorité d'enregistrement responsable de la création et mise à jour des données de l'objet."

Logical: AutoriteEnregistrement
Id: AutoriteEnregistrement
Title: "Classe AutoriteEnregistrement du MOS"
Description: "Modèle logique pour représenter l'autorité d'enregistrement responsable de la création et mise à jour des données."
* autorite 0..1 Code "Autorité d'enregistrement représentant une institution (Conseil national de l'ordre des médecins, ARS Ile de France, etc.).  
Nomenclature associée : TRE_R60-AutoriteEnregistrement."
* autorite from https://mos.esante.gouv.fr/NOS/JDV_J83-AutoriteEnregistrement-RASS/FHIR/JDV-J83-AutoriteEnregistrement-RASS
* typeAutorite 0..1 Code "Type d'autorité d'enregistrement (exemples : Ordre, ARS, Structure).  
Nomenclature associée : TRE_R90-TypeAE."
* typeAutorite from VS-TRE-R90-TypeAE
* idNatStruct 0..1 Identifiant "Identification de l'autorité d'enregistrement lorsque celle-ci est de type structure.  
Cette identification est obtenue par la concaténation du type d'identifiant national de structure (CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure :  
- 0 + Identifiant cabinet ADELI (EntiteGeographique/identifiantEG)  
- 1 + N° FINESS (entité juridique et entité géographique indéterminées)  
- 3 + N° SIRET  
- 4 + Identifiant cabinet RPPS (EntiteGeographique/identifiantEG).  
Synonyme : Struct_IdNat (CI-SIS)."

Logical: ObjetBinaire
Id: ObjetBinaire
Title: "Classe ObjetBinaire du MOS"
Description: "Modèle logique pour représenter un objet binaire (document, pièce jointe, image, etc.) du MOS."
* valeur 1..1 string "Un ensemble de séquences de longueur finie d'octets binaires."
* format 0..1 string "Le format du contenu binaire."
* mime 0..1 string "Le type MIME de l'objet binaire."
* encodage 0..1 string "Indique l'algorithme de décodage de l'objet binaire."
* URI 0..1 string "L'adresse URL (Uniform Resource Identifier) où l'objet binaire est localisé."
* nomFichier 0..1 string "Le nom de fichier de l'objet binaire."

Logical: Horaire
Id: Horaire
Title: "Classe Horaire du MOS"
Description: "Modèle logique pour représenter une plage horaire dans le MOS."
* idPlageHoraire 0..1 Identifiant "Identifiant de la plage horaire. (FHIR: FrScheduleAvailabilityTime.identifier)"
* typePlageHoraire 0..1 Code "Type de plage horaire apportant du contexte à la plage horaire (ex: horaire d'ouverture, horaire de garde, etc.). (FHIR: FrScheduleAvailabilityTime.type) Nomenclature(s) associée(s) : TRE_R252-TypeHoraire"
* typePlageHoraire from https://mos.esante.gouv.fr/NOS/JDV_J41-TypeHoraire-ROR/FHIR/JDV-J41-TypeHoraire-ROR
* ouvertureFermeture 0..1 Indicateur "Indicateur d'ouverture ou de fermeture. Valeurs possibles : 0 = Organisation fermée, 1 = Organisation ouverte."
* jourSemaine 0..1 Numerique "Numéro du jour dans la semaine selon ISO 8601 (1 = lundi, 7 = dimanche). (FHIR: FrScheduleAvailabilityTime.rrule.byDay)"
* heureDebut 0..1 Heure "Heure de début de la plage horaire. (FHIR: FrScheduleAvailabilityTime.rrule.byHour)"
* heureFin 0..1 Heure "Heure de fin de la plage horaire. (FHIR: FrScheduleAvailabilityTime.rrule.byHour)"
* frequencePlageHoraire 0..1 Code "Fréquence de la plage horaire (ex: toutes les semaines, toutes les deux semaines, tous les mois). (FHIR: FrScheduleAvailabilityTime.rrule.freq)"
* debutDateEffective 0..1 Date "Date effective de début de l'ouverture ou fermeture exceptionnelle. (FHIR: FrScheduleAvailabilityTime.start)"
* finDateEffective 0..1 Date "Date effective de fin de l'ouverture ou fermeture exceptionnelle. (FHIR: FrScheduleAvailabilityTime.end)"
* dateDeclarationPlageHoraire 0..1 Date "Date de déclaration de la plage horaire. (FHIR: FrScheduleAvailabilityTime.created)"
* commentaire 0..* Texte "Zone de commentaires sur la plage horaire, incluant exceptions et raisons d'ouverture/fermeture."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: Indicateur
Id: Indicateur
Title: "Classe Indicateur du MOS"
Description: "Modèle logique pour représenter un indicateur dans le MOS."
* valeur 1..1 string "Valeur de l'indicateur."
* format 0..1 string "Format de l'indicateur, indiquant si la valeur est numérique, textuelle ou binaire."

Logical: Numerique
Id: Numerique
Title: "Classe Numerique du MOS"
Description: "Modèle logique pour représenter une valeur numérique dans le MOS."
* valeur 1..1 string "Valeur se traduisant en nombre."
* format 0..1 string "Format de la valeur numérique : entier, décimal ou réel."

Logical: Heure
Id: Heure
Title: "Classe Heure du MOS"
Description: "Modèle logique pour représenter une valeur horaire dans le MOS."
* valeur 1..1 string "Valeur du temps."
* format 0..1 string "Format d'expression de l'heure. Exemple : HHMM."

Logical: LangueParlee
Id: LangueParlee
Title: "Classe LangueParlee du MOS"
Description: "Modèle logique pour représenter une langue parlée par une personne dans le MOS."
* langueParlee 0..1 Code "Langue parlée. Nomenclature associée : TRE_G00-Langue"
* langueParlee from https://mos.esante.gouv.fr/NOS/JDV_J115-Langue-ENREG/FHIR/JDV-J115-Langue-ENREG
* dateFin 0..1 Date "Date à laquelle la personne renonce à être référent de cette langue."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: Mesure
Id: Mesure
Title: "Classe Mesure du MOS"
Description: "Modèle logique pour représenter une valeur mesurée avec son unité, un comparateur et un système d'unité."
* valeur 1..1 string "Valeur numérique déterminée par la mesure d'un objet (float, integer, etc.)."
* uniteMesure 0..1 Code "Unité de mesure utilisée (mètre, pouce, etc.), exprimée en code selon la norme NF EN ISO 80000-1, reprise dans l'UCUM. Nomenclature associée : Terminologie UCUM"
* uniteMesure from http://terminology.hl7.org/ValueSet/ucum-common
* comparateur 0..1 Code "Comparateur indiquant comment interpréter la valeur (par ex. '<' signifie valeur réelle inférieure à la valeur indiquée)."
* nomSystemeUniteMesure 0..1 string "Nom du système auquel appartient l'unité de mesure."

Logical: Diplome
Id: Diplome
Title: "Classe Diplome du MOS"
Description: "Modèle logique pour représenter les informations relatives à un diplôme obtenu par un professionnel de santé."
* typeDiplome 0..1 Code "Type de diplôme, par exemple : DE (Diplôme d’État français), CES (Certificat d’Études Spéciales), DES (Diplôme d'Études Spécialisées), etc. Nomenclature associée : TRE_R14-TypeDiplome"
* typeDiplome from https://mos.esante.gouv.fr/NOS/JDV_J81-TypeDiplome-RASS/FHIR/JDV-J81-TypeDiplome-RASS
* lieuFormation 0..1 Code "Lieu de formation pour l'obtention du diplôme, par exemple : U37 (Université de Tours), UP5 (Université de Paris 05). Nomenclature associée : TRE_R16-LieuFormation"
* lieuFormation from https://mos.esante.gouv.fr/NOS/JDV_J235-LieuFormation-EPARS/FHIR/JDV-J235-LieuFormation-EPARS
* dateDiplome 0..1 Date "Date d’obtention du diplôme."
* numeroDiplome 0..1 Texte "Numéro du diplôme."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: Adresse
Id: Adresse
Title: "Classe Adresse du MOS"
Description: "Modèle logique pour représenter la classe Adresse du MOS."
* identificationDestinataire 0..1 Texte "Éléments d'identification du destinataire c’est-à-dire la personne physique ou morale à qui un envoi est adressé. 1) Le destinataire est une personne physique : * Qualité: civilité ou condition sociale, civile, juridique ou titre sous lequel une partie figure dans un acte juridique. * Prénom * Nom * Titre: désignation honorifique exprimant une distinction de rang, une dignité (titres nobiliaires, religieux, etc.). * Profession, fonction Une personne physique peut être désignée soit par son nom et éventuellement son prénom, soit par son nom et sa fonction ou sa profession, enfin, dans certains cas particuliers, par ses seuls titres, fonction ou profession. 2) Le destinataire est une personne morale : * Forme juridique: Indication du statut juridique de la personne morale : SA, SARL, GIE, Société civile, Mutuelle, Association, Fondation, etc. * Raison ou dénomination sociale * Domaine d'activité * Enseigne commerciale * Nom commercial * Subdivision au sein de l'entreprise (Direction, service, etc.) ou organisation interne de la personne morale (fonctionnelle ou géographique). Une personne morale peut être désignée au moins par sa raison sociale, son enseigne ou nom commercial."
* identificationDomicilie 0..1 Texte "Éléments d'identification du domicilié c’est-à-dire le titulaire du domicile du destinataire (lieu ordinaire d'habitation, demeure légale et habituelle) 1) Le domicilié est une personne physique: * Qualité * Prénom * Nom * Titre * Profession, fonction Les éléments d'identification du domicilié sont précédés de la mention «chez» 2) Le domicilié est une personne morale: * Forme juridique * Dénomination sociale * Activité principale * Enseigne ou nom de l'établissement * Subdivision au sein de l'entreprise (Direction, service,...)."
* pointRemise 0..1 Texte "Lieu où le destinataire prend possession de son courrier. Il est matérialisé, dans la plupart des cas, par la présence d'une boîte aux lettres; il est constitué des éléments suivants : * Local ou logement : Numéro ou désignation d'appartement, logement, pièce, bureau, local commercial ou industriel * Accès au local ou au logement: indications de couloir, d'étage ou de niveau * Boîte aux lettres : Numéro voire dénomination (éventuellement CIDEX) * Accès à la boîte à lettres: si nécessaire,: identification du couloir d'accès, de la batterie de boîtes s'il en existe plusieurs * Code acheminement interne à l'entreprise (CAIE): Codification identifiant le découpage au sein de l'entreprise en vue du traitement de courrier par les services dédiés internes à l'entreprise. Les informations d'identification du domicilié (Chez M.X) pourraient figurer dans cet attribut."
* complementPointGeographique 0..1 Texte "Un complément de l'adresse au point géographique constitué des éléments suivants: * Bâtiment: les bâtiments sont désignés par leur type (bâtiment, immeuble, tour,...), éventuellement des mentions d'orientation (est, ouest,...), une dénomination littérale ou une numérotation; exemple: Tour DELTA * Accès au bâtiment: l'accès au bâtiment est identifié par un numéro, une lettre, une combinaison alphanumérique. Ces éléments identifient une entrée, porte, etc.; exemple: Entrée A * Ensemble immobilier: ensemble d'habitations reliées à la voie publique par un ou plusieurs points d'accès (résidence, zone industrielle,...); exemple: Résidence des Fleurs."
* numeroVoie 0..1 Texte "Un numéro dans la voie; dans les cas de numérotation sans extension, il est composé de 0 à 4 caractères numériques au maximum."
* extension 0..1 Texte "Extension ou indice de répétition: mention bis, ter, quater, ...ou une lettre A, B, C, D, etc. lorsque ce caractère complète une numérotation de voirie."
* typeVoie 0..1 Code "Type de voie : rue, avenue, boulevard, etc. Attribut obsolète et non conforme à la norme postale en vigueur NF Z 10-011 qui définit cette information comme faisant partie de l'attribut libelleVoie. Il apparait dans la classe Adresse uniquement parce que des systèmes existants l'utilisent encore. Nomenclature(s) associée(s) : TRE_R35-TypeVoie"
* typeVoie from https://mos.esante.gouv.fr/NOS/JDV_J219-TypeVoie-ROR/FHIR/JDV-J219-TypeVoie-ROR
* libelleVoie 0..1 Texte "Appellation qui est donnée à la voie par les municipalités. Ce libellé figure in extenso ou en abrégé sur les plaques aux différents angles de chaque rue. Synonyme: nom de la voie"
* lieuDit 0..1 Texte "Lieu qui porte un nom rappelant une particularité topographique ou historique et qui, souvent, constitue un écart d'une commune (un écart est une petite agglomération distincte du centre de la commune à laquelle elle appartient)."
* mentionDistribution 0..1 Texte "Mentions particulières de distribution. Il s'agit de mentions identifiant le service proposé par La Poste au destinataire. Ces mentions sont formées d'un libellé et d'un numéro de séparation (exemple : BP 42534)."
* codePostal 0..1 Code "Code Postal : Code Postal ou code postal spécifique CEDEX. * Code postal: Un code à 5 chiffres servant à l'acheminement et/ou à la distribution des envois. Il identifie un bureau distributeur dans la chaîne de traitement du courrier. * Code CEDEX (Courrier d'Entreprise à Distribution Exceptionnelle); le CEDEX est une modalité d'acheminement du courrier associée à des services particuliers de distribution offerts aux entreprises caractérisées par un adressage spécifique; le code postal spécifique CEDEX est un code attribué aux organismes, entreprises, services publics recevant un fort trafic. Il identifie un client ou un ensemble de clients. Il est positionné aux lieu et place du code postal général dans le cas des adresses CEDEX. Ainsi, un code peut être associé à un client (code individuel) ou partagé entre plusieurs clients (code collectif). (FHIR: Address.postalCode)"
* localite 0..1 Texte "Localité ou Libellé du bureau distributeur CEDEX. Localité: Zone d'habitation, en général la commune d'implantation du destinataire. Elle est identifiée par son libellé INSEE sauf dans quelques cas où le libellé postal diffère du libellé INSEE, généralement pour lever des ambiguïtés. Libellé du bureau distributeur CEDEX c'est-à-dire (dans la très grande majorité des cas) le libellé de la commune siège du bureau CEDEX; la mention CEDEX doit obligatoirement suivre le libellé du bureau CEDEX; dans le cas où il existe plusieurs bureaux CEDEX pour une même entité ou commune, chaque bureau CEDEX sera identifié par un numéro (exemple : ROUBAIX CEDEX 2); ce numéro correspond au numéro d'arrondissement dans le cas des villes à arrondissements, à un numéro d'ordre dans les autres cas. (FHIR: Address.city)"
* COGCommune 0..1 Code "Code officiel géographique (COG), diffusé par l'INSEE, de la commune d'implantation du destinataire. Ce code ne fait pas partie de la norme NF Z 10-011 mais il correspond au libellé de l'attribut 'localite' de la classe Adresse qui lui fait partie de la norme. Nomenclature(s) associée(s) : TRE_R13-CommuneOM, ASS_X12-CommuneDeptRegionOM"
* COGCommune from https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune
* internationalDivisionTerritoriale 0..1 Texte "Pour les adresses internationales, une subdivision administrative d'un pays. Dans le cas d'une adresse étrangère, il peut être nécessaire d'identifier dans l'adresse l'état fédéré, la région, le canton, etc. (FHIR: Address.state)"
* internationalPays 0..1 Texte "Pour les adresses internationales, nom du pays du destinataire, de préférence en majuscules et en toutes lettres, dans la langue du pays d’expédition ou dans une langue reconnue par le Comité Européen de Normalisation (CEN) : anglais, français, allemand pour les envois européens. (FHIR: Address.country)"
* type 0..* Code "Indique le ou les types d'adresse tel que 'Adresse du domicile', 'Adresse professionnelle', 'Adresse de facturation', 'Adresse postale', 'Adresse géographique', etc. Cet attribut ne fait pas partie de la norme NF Z 10-011. (FHIR: Address.use)"
* ligneUne 0..1 Texte "Identité du destinataire. La première ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'identification du destinataire (personne physique ou morale). Cas particulier: pour un domicilié personne morale, la ligne 1 peut contenir l'identification du domicilié personne morale et la ligne 2 contient l'identification du destinataire personne physique. 38 caractères ou espaces par ligne au maximum. (FHIR: Address.line)"
* ligneDeux 0..1 Texte "La deuxième ligne de l'adresse de publipostage est obtenue par assemblage des éléments de: point de remise, domicilié personne physique (exemple: chez M X), domicilié personne morale. Cas particulier: pour un domicilié personne morale, la ligne 1 peut contenir l'identification du domicilié personne morale et la ligne 2 contient l'identification du destinataire personne physique. 38 caractères ou espaces par ligne au maximum. (FHIR: Address.line)"
* ligneTrois 0..1 Texte "La troisième ligne de l'adresse de publipostage est obtenue par assemblage des éléments de complément de l'adresse au point géographique. 38 caractères ou espaces par ligne au maximum. (FHIR: Address.line)"
* ligneQuatre 0..1 Texte "La quatrième ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'adresse: Numéro dans la voie + Extension + Libellé de la voie. 38 caractères ou espaces par ligne au maximum. (FHIR: Address.line)"
* ligneCinq 0..1 Texte "La cinquième ligne de l'adresse de publipostage est obtenue par assemblage des éléments d'adresse: Mentions particulières de distribution suivies du libellé de la localité de destination dans le cas où celle-ci serait différente du libellé cedex, Lieu-dit. 38 caractères ou espaces par ligne au maximum. (FHIR: Address.line)"
* ligneSix 0..1 Texte "La sixième ligne de l'adresse de publipostage obtenue par assemblage des éléments d'adresse: Code postal + localité de destination ou code cedex + libellé bureau cedex. 38 caractères ou espaces par ligne au maximum. (FHIR: Address.line)"
* ligneSept 0..1 Texte "La septième ligne de l'adresse de publipostage contient, pour les envois à l'international, dans tous les cas, le nom du pays du destinataire, de préférence en majuscules et en toutes lettres, dans la langue du pays d’expédition ou dans une langue reconnue par le Comité Européen de Normalisation (CEN) : anglais, français, allemand pour les envois européens. 38 caractères ou espaces par ligne au maximum. (FHIR: Address.line)"
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: Telecommunication
Id: Telecommunication
Title: "Classe Telecommunication du MOS"
Description: "Modèle logique pour représenter la classe Telecommunication du MOS."
* canal 0..1 Code "Code spécifiant le canal ou la manière dont s'établit la communication (téléphone, e-mail, URL, etc.). Quelques exemples de codes: MOB: Téléphone mobile; FIX: Téléphone fixe; EML: Courrier électronique; URL: Uniform Resource Location; FTP: File Transfer Protocol; FAX: Télécopie. (FHIR: ContactPoint.system) Nomenclature(s) associée(s) : TRE_R200-CanalCommunication"
* canal from https://mos.esante.gouv.fr/NOS/JDV_J225-CanalCommunication-ROR/FHIR/JDV-J225-CanalCommunication-ROR
* adresseTelecom 0..1 Texte "Valeur de l'adresse de télécommunication dans le format induit par le canal de communication, par exemple un numéro de téléphone, une adresse de courrier électronique, une adresse URL, etc. (FHIR: ContactPoint.value)"
* typeMessagerie 0..1 Code "Type de messagerie électronique rassemblant des acteurs (personne physique, personne morale ou système) identifiés et enregistrés selon des règles qui garantissent leur légitimité à l'utiliser. L'échange de messages obéit à des spécifications fonctionnelles et techniques propres à ce type de messagerie. Nomenclature(s) associée(s) : TRE_R256-TypeMessagerie"
* typeMessagerie from VS_TRE_R256_TypeMessagerie
* utilisation 0..1 Texte "Précise l'utilisation du canal de communication (par exemple à des fins professionnelles, privées, etc.). (FHIR: ContactPoint.use)"
* niveauConfidentialite 0..1 Code "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Telecommunication. Nomenclature(s) associée(s) : TRE_R283-NiveauConfidentialite"
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: BoiteLettreMSS
Id: BoiteLettreMSS
Title: "Classe BoiteLettreMSS du MOS"
Description: "Modèle logique pour représenter la classe BoiteLettreMSS du MOS."
* adresseMSS 0..1 Telecommunication "Adresse unique de messagerie sécurisée dans un domaine de messagerie MSSanté."
* typeBAL 0..1 Code "Type de boîte aux lettres. Valeurs possibles : ORG pour une BAL organisationnelle; APP pour une BAL applicative; PER pour une BAL personnelle, rattachée à une personne physique. Une BAL de type ORG ou APP est rattachée à une personne morale (entité géographique ou entité juridique) et son usage s’effectue sous la responsabilité d’un ou plusieurs professionnels habilités à échanger des données de santé personnelles. Nomenclature(s) associée(s) : TRE_R257-TypeBAL"
* typeBAL from https://mos.esante.gouv.fr/NOS/JDV_J139-TypeBAL-RASS/FHIR/JDV-J139-TypeBAL-RASS
* description 0..1 Texte "Description fonctionnelle de la boîte aux lettres."
* responsable 0..1 Texte "Texte libre donnant les coordonnées de la (ou des) personne(s) responsable(s) au niveau opérationnel de la boîte aux lettres. Non renseigné pour les types de boîte aux lettres 'PER'."
* serviceRattachement 0..1 Texte "Nom et description du service de rattachement de l’utilisateur de la boîte aux lettres dans l’organisation."
* telephone 0..1 Telecommunication "Coordonnées téléphoniques spécifiques à l’usage de la boîte aux lettres MSSanté."
* dematerialisation 0..1 Indicateur "Indicateur d’acceptation de la dématérialisation (ou 'Zéro papier'). Un utilisateur peut porter à la connaissance des autres utilisateurs du système MSSanté, via l’Annuaire national MSSanté son souhait de ne plus recevoir par voie papier des documents d’ores et déjà reçus par voie électronique dans le cadre du système MSSanté. Cette option s’applique également pour les BAL applicatives ou organisationnelles. Valeurs possibles : O : Dématérialisation acceptée; N : Dématérialisation refusée"
* listeRouge 0..1 Indicateur "Indicateur liste rouge. Valeurs possibles : O : Boîte aux lettres en liste rouge; N : La boîte aux lettres peut être publiée"
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: Contact
Id: Contact
Title: "Classe Contact du MOS"
Description: "Modèle logique pour représenter les informations d'un point de contact d'une personne ou d'un service."
* IdContact 0..1 Identifiant "Identifiant du contact."
* nom 0..1 Texte "Un nom de la personne ou du service à contacter."
* fonction 0..1 Texte "Un titre, une position ou une fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.)."
* fonctionContact 0..1 Code "Code du titre, de la position ou de la fonction de la personne assurant le contact au sein de son organisation (directeur, secrétaire, etc.). (Nomenclature: TRE_R251-FonctionContact)"
* fonctionContact from https://mos.esante.gouv.fr/NOS/JDV_J220-FonctionContact-ROR/FHIR/JDV-J220-FonctionContact-ROR
* natureContact 0..1 Code "Un service ou un guichet assurant le contact au sein de l'organisation (accueil, admission, etc.). (Nomenclature: TRE_R287-NatureContact)"
* natureContact from https://mos.esante.gouv.fr/NOS/JDV_J221-NatureContact-ROR/FHIR/JDV-J221-NatureContact-ROR
* description 0..1 Texte "Une description du contact."
* type 0..1 Code "Type du point de contact, c'est à dire un téléservice, un point de contact physique (une personne), un contact téléphonique, etc. (Nomenclature: TRE_R206-TypeContact)"
* type from VS_TRE_R206_TypeContact
* personne 0..1 PersonnePhysique "Informations détaillées de la personne point de contact."
* role 0..1 Code "Rôle de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce rôle indique si le point de contact est la personne à prévenir en cas d'urgence, la personne de confiance, etc. (Nomenclature: TRE_R260-HL7RoleClass)"
* role from https://mos.esante.gouv.fr/NOS/JDV_J141-RoleClass-CISIS/FHIR/JDV-J141-RoleClass-CISIS
* relation 0..1 Code "Lien de la personne point de contact auprès d'une autre personne. Exemple dans le cas d'un patient, ce lien indique si le point de contact est son enfant, son frère, etc. (Nomenclatures: TRE_R216-HL7RoleCode, TRE_R217-ProtectionJuridique)"
* relation from https://mos.esante.gouv.fr/NOS/JDV_J11-RelationPatient-CISIS/FHIR/JDV-J11-RelationPatient-CISIS
* dateDebut 0..1 DateHeure "Date/heure à partir de laquelle le contact est effectif."
* dateFin 0..1 DateHeure "Date/heure à partir de laquelle le contact n'est plus effectif."
* niveauConfidentialite 0..1 Code "Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact. (Nomenclature: TRE_R283-NiveauConfidentialite)"
* niveauConfidentialite from https://mos.esante.gouv.fr/NOS/JDV_J222-NiveauConfidentialite-ROR/FHIR/JDV-J222-NiveauConfidentialite-ROR
* adresse 0..1 Adresse "Adresse géopostale du point de contact."
* lieu 0..* Lieu "Lieu(x) rattaché(s) au contact."
* telecommunication 0..* Telecommunication "Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.)."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: Lieu
Id: Lieu
Title: "Classe Lieu du MOS"
Description: "Modèle logique pour représenter un lieu, ses caractéristiques et ses coordonnées."
* identifiant 0..* Identifiant "Identifiant(s) métier du lieu. (FHIR: Location.identifier, OMOP V5.4: Location.location_id)"
* nom 0..1 Texte "Nom, exprimé sous la forme de texte, du lieu. (FHIR: Location.name)"
* description 0..1 Texte "Description textuelle du lieu, indiquant comment l'atteindre. (FHIR: Location.description)"
* typeLieu 0..1 Code "Information catégorisant physiquement le lieu, par exemple un bâtiment, un véhicule, une chambre, une route, etc. (FHIR: Location.physicalType)"
* fonctionLieu 0..1 Code "Fonction à laquelle le lieu est dédié. Par exemple, le lieu d'implantation d'une entité géographique ou la salle de prélèvements dans un service. (FHIR: Location.type)"
* statut 0..1 Code "Le statut indique si le lieu est opérationnel, fermé temporairement ou fermé définitivement. Quelques exemples de codes : FD : Fermé définitivement; FT : Fermé temporairement; OP : Opérationnel. (FHIR: Location.status, Nomenclature: TRE_R203-StatutLieu)"
* statut from https://mos.esante.gouv.fr/NOS/JDV_J224-StatutLieu-ROR/FHIR/JDV-J224-StatutLieu-ROR
* accessibiliteLieu 0..1 Code "Information précisant dans quelle mesure le lieu est conforme aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public (ERP). (Nomenclature: TRE_R202-AccessibiliteLieu)"
* accessibiliteLieu from https://mos.esante.gouv.fr/NOS/JDV_J50-AccessibiliteLieu-ROR/FHIR/JDV-J50-AccessibiliteLieu-ROR
* communeCOG 0..1 Code "Code officiel géographique (COG) de la commune dans laquelle le lieu est situé. (Nomenclatures: TRE_R13-CommuneOM, ASS_X12-CommuneDeptRegionOM)"
* communeCOG from https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune
* adresse 0..1 Adresse "Adresse géopostale du lieu. (FHIR: Location.address)"
* coordonneeGeographique 0..1 CoordonneeGeographique "Coordonnées géographiques du lieu. (FHIR: Location.position)"
* telecommunication 0..* Telecommunication "Adresse(s) de télécommunication du lieu (numéro de téléphone, adresse email, URL, etc.). (FHIR: Location.telecom)"
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: CoordonneeGeographique
Id: CoordonneeGeographique
Title: "Classe CoordonneeGeographique du MOS"
Description: "Modèle logique pour représenter les coordonnées géographiques d'un point spécifique, incluant latitude, longitude et altitude."
* systemeGeodesique 0..1 Identifiant "Une identification du système de référence fixant les règles de mesure des positions géographiques. Le système géodésique intègre la description de l'ellipsoïde choisie. Exemple : RGF93 pour la France métropolitaine; WGS 84 pour le GPS."
* latitude 0..1 Mesure "Une mesure de la distance angulaire nord ou sud depuis l'équateur jusqu'au parallèle du point spécifique. L'unité de mesure est spécifiée dans le type 'Mesure'. Le choix est possible entre le Degré Décimal (DD) et le Degré Minute Seconde (DMS), l'unité de mesure est obligatoire dans l'échange."
* directionLatitude 0..1 Code "Indicateur spécifiant la direction Nord (+) ou (N) et la direction Sud (-) ou (S) depuis l'équateur jusqu'au parallèle du point spécifique. (Nomenclature: TRE_R205-DirectionLatitude)"
* directionLatitude from VS_TRE_R205_DirectionLatitude
* longitude 0..1 Mesure "Une mesure de la distance angulaire est ou ouest depuis le méridien de Greenwich jusqu'au méridien du point spécifique. L'unité de mesure est spécifiée dans le type 'Mesure'. Le choix est possible entre le Degré Décimal (DD) et le Degré Minute Seconde (DMS), l'unité de mesure est obligatoire dans l'échange."
* directionLongitude 0..1 Code "Indicateur spécifiant la direction Ouest (-) ou (W) et la direction Est (+) ou (E) depuis le méridien de Greenwich jusqu'au méridien du point spécifique. (Nomenclature: TRE_R204-DirectionLongitude)"
* directionLongitude from VS_TRE_R204_DirectionLongitude
* systemeAltimetrique 0..1 Identifiant "Une identification du système de référence fixant les règles de mesure de l'altitude."
* altitude 0..1 Mesure "Une mesure de la hauteur du point spécifique par rapport au niveau de la mer. L'unité de mesure est spécifiée dans le type 'Mesure'. En général, l'unité de mesure choisie est le mètre."
* typePrecision 0..1 Code "Type de précision peut prendre par exemple les valeurs suivantes : 'Numéro de rue' : type de précision au numéro près (donc la plus fine); 'Rue' : type de précision à la voie (moins précise); 'Ville' : type de précision à la ville (plus grossière)."
* precision 0..1 Numerique "La précision est un numérique indiquant le degré de qualité de la valeur retournée dans le type (ex. 1.0 pour une précision exacte). Les adresses déjà géolocalisées avec une précision différente de 1.0 seront prises en compte dans le processus initial pour tenter une nouvelle géolocalisation."
* coordonneeFiable 0..1 Indicateur "Cet attribut permet de signaler que les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité. Valeurs possibles : 1 = les coordonnées géographiques sont fiables; 0 = les coordonnées géographiques ne sont pas fiables."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."

Logical: DivisionTerritoriale
Id: DivisionTerritoriale
Title: "Classe DivisionTerritoriale"
Description: "Modèle logique décrivant une division territoriale (commune, département, région, territoire de santé, pays, etc.)."
* type 0..1 Code "Type de division territoriale. Les différents types de division territoriale sont notamment : ** Commune (France) ** Département (France) ** Région (France) ** Territoire de santé (France) ** Pays. Nomenclature(s) associée(s) : TRE_R201-TypeDivisionTerritoriale"
* type from https://mos.esante.gouv.fr/NOS/JDV_J223-TypeDivisionTerritoriale-ROR/FHIR/JDV-J223-TypeDivisionTerritoriale-ROR
* code 0..1 Code "Selon son type (commune, région, territoire de santé, etc.), code de la division territoriale. Les valeurs de ce code sont répertoriées dans les nomenclatures associées aux types de division territoriale, par exemple: ** les codes des communes (COG) répertoriés dans la nomenclature CodeSystem-TRE-R13-CommuneOM; ** les codes des départements (COG) répertoriés dans la nomenclature CodeSystem-TRE-G09-DepartementOM; ** les codes des régions (COG) répertoriés dans la nomenclature CodeSystem-TRE-R30-RegionOM; ** les codes des territoires de santé définis par les ARS (loi HPST (Art. L. 1434-16. du code de la santé publique)); ** les codes des pays répertoriés dans la nomenclature CodeSystem-TRE-R20-Pays. Nomenclature(s) associée(s) : ASS_X12-CommuneDeptRegionOM, ASS_X09-DepartementOM-RegionOM, TRE_R13-CommuneOM, TRE_R30-RegionOM, TRE_G09-DepartementOM, TRE_R20-Pays, ASS_A25-PaysProvenanceISO-PaysProvenanceCOG"
* code from VS_CodeComDepRegPays
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."
