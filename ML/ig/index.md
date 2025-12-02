# Accueil - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/mos/ImplementationGuide/ans.fr.mos | *Version*:0.1.0 |
| Draft as of 2025-12-02 | *Computable Name*:MOS |

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

🔍+
🔍−
↻
⛶

  

| | |
| :--- | :--- |
| Titre du profil | Description |
| [ActiviteEnseignement](StructureDefinition-ActiviteEnseignement.md) | Les activités d’enseignement aux professions sanitaires et sociales sont enregistrées dans FINESS et rattachées aux établissements de formation (EG). Le périmètre comprend les formations sanitaires et sociales préparant à un diplôme d’état délivré par l’administration sanitaire et sociale. Sont exclues les formations aux professions médicales préparées en université, hormis les formations et écoles de sages-femmes.Ces formations sont soumises à un arrêté d’agrément de la Région. |
| [ActiviteSociale](StructureDefinition-ActiviteSociale.md) | Les équipements sociaux représentent les activités des établissements du domaine social et médico-social enregistrés dans FINESS.Le champ de FINESS comprend l’ensemble des établissements et services sociaux et médico-sociaux (ESSMS), soumis à autorisation préalable, ainsi que quelques catégories d’établissements n’entrant pas dans le régime de l’autorisation.Pour indiquer les services offerts, FINESS identifie ceux-ci à l'aide d'un triplet composé des éléments suivants : discipline d’équipement, mode de fonctionnement (appelé aussi type d’activité) et clientèle. |
| [ActiviteSoinAutorisee](StructureDefinition-ActiviteSoinAutorisee.md) | On distingue plusieurs types d’activités sanitaires rattachées aux établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités de soins» (acronyme communément utilisé : AS).Les activités de soins sont les activités des établissements sanitaires autorisées par arrêté du Directeur Général de l’ARS dans le cadre de l’article L. 6122-1 du CSP, pour une durée de 7 ans, durée fixe par voie réglementaire.D’après l’article L. 6122-1 du CSP, sont soumis à l’autorisation de l’agence régionale de santé les projets relatifs à la création de tout établissement de santé, la création, la conversion et le regroupement des activités de soins, y compris sous la forme d’alternatives à l’hospitalisation ou d’hospitalisation à domicile. La liste des activités de soins est fixée par décret en Conseil d’État. L’article R. 6122-25 du CSP référence ces activités de soins.Toute activité de soins fait l’objet d’un arrêté qui mentionne sa nature (triplet activité, modalité, forme, cf. plus bas), le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattachée juridiquement à l’EJ dans FINESS.La nomenclature est articulée en trois niveaux systématiquement renseignés : ** Activité de soins.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe : ** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités de soins.** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS : ** Une autorisation est « active » à la date du jour si : ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour; ** sa date d'échéance est supérieure ou égale à la date du jour. ** Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. ** De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des activités de soins présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives: ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour, ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas : a- Le renouvellement est en cours d’instruction (cas le plus courant), b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier, c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS; Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS). En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives. Les autorisations caduques ou retirées ne sont pas présentes dans FINESS. |
| [ActiviteSoumiseReconnaissance](StructureDefinition-ActiviteSoumiseReconnaissance.md) | On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités soumises à reconnaissance contractuelle» (acronyme communément utilisé : ASR).Une ASR est une activité non soumise à autorisation du DG ARS mais soumise à reconnaissance contractuelle dans le cadre et la durée du CPOM (contrat pluriannuel d’objectif et de moyens).La nomenclature est articulée en trois niveaux systématiquement renseignés : ** Activité reconnue contractuellement communément appelée reconnaissance.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe, les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités soumises à reconnaissance contractuelle.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS. Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.Une reconnaissance contractuelle est nécessairement rattachée à un contrat CPOM. Au sens ARHGOS, un contrat CPOM correspond à un couple unique entité juridique (EJ)/établissement (EG).A noter qu’initialement il existait une distinction entre les reconnaissances dites nationales (issues du guide méthodologique CPOM de la DGOS) et les reconnaissances dites régionales. Depuis 2019, toutes les reconnaissances contractuelles sont de type national. |
| [Adresse](StructureDefinition-Adresse.md) | Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte, d'après la norme NF Z 10-011. |
| [Agenda](StructureDefinition-Agenda.md) | Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie. |
| [AidantDemarche](StructureDefinition-AidantDemarche.md) | Personne physique ou morale aidant l'individu dans ses démarches. |
| [ArretTravail](StructureDefinition-ArretTravail.md) | Selon le code du travail, l'arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale. |
| [Attestation](StructureDefinition-Attestation.md) | L’attestation est attribuée au terme d'une formation universitaire. Pour les professions médicales et de la pharmacie, les attestations ont été remplacées par les diplômes universitaires (DU).Dans le cadre du modèle, une attestation est un type de diplôme. La classe Attestation est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe |
| [AutorisationExercice](StructureDefinition-AutorisationExercice.md) | L'accès aux professions de santé est soumis à des conditions concernant les diplômes obtenus : généralement est requis un diplôme français (DE de médecine, etc. ou européen (dans les professions pour lesquelles il existe des accords de reconnaissance mutuelle des diplômes).Pour les personnes ne remplissant pas ces conditions (diplômes hors UE, par exemple), les diplômes obtenus doivent être complétés d'une autorisation afin de permettre l'entrée dans la profession.Il peut s'agir:** d'une autorisation délivrée par le Ministère de la Santé,** d'une autorisation délivrée par l'Ordre au vu de la jurisprudence (Hochsmann, etc.). |
| [AutreActiviteSoumiseAutorisation](StructureDefinition-AutreActiviteSoumiseAutorisation.md) | On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «autres activités soumises à autorisation» (acronyme communément utilisé : AASA). Les AASA sont soumises à l’autorisation du Directeur Général de l’ARS selon des modalités et des durées différentes particulières. Elles sont au nombre de 5 (instruction n° DGOS/SR6/R3/R4/DREES/DMSI/2014/364 du 24décembre 2014) :1. Chirurgie esthétique2. Prélèvements d’organes, de tissus, de cellules3. Dépôts de sang4. Lieux de recherches de la personne humaine5. LactariumsLa nomenclature est articulée en trois niveaux systématiquement renseignés : ** Autre Activité.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe :** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des autres activités soumises à autorisation ; ** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS : ** Seules les autorisations non caduques sont transmises à FINESS par ARHGOS et sont donc publiées par l’ANS. Hormis les autorisations en attente de première mise en œuvre, toutes les autorisations publiées peuvent donc être considérées comme actives. ** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS. |
| [AutreDiplomeObtenu](StructureDefinition-AutreDiplomeObtenu.md) | Diplôme autre qu'un diplôme d'Etat, une qualification, un diplôme d'études spécialisées, un DESC1, un DESC2, un diplôme de l'espace économique européen, un diplôme européen d'études spécialisées, une attestation, une capacité ou un diplôme de deuxième cycle non qualifiant. |
| [BoiteLettreMSS](StructureDefinition-BoiteLettreMSS.md) | Informations descriptives des boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures.Synonyme: BAL MSS |
| [CapaciteAccueil](StructureDefinition-CapaciteAccueil.md) | La capacité d'accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps. |
| [CapaciteActiviteExercee](StructureDefinition-CapaciteActiviteExercee.md) | Capacité définie au regard de l'activité. |
| [CapaciteDiplome](StructureDefinition-CapaciteDiplome.md) | En France, la capacité de médecine est un diplôme (2 ans d'études) réservé aux docteurs en médecine (généralistes ou spécialistes), leur conférant certaines compétences supplémentaires dans leur exercice ou un champ d'exercice plus large (réf. décret du 29 avril 1988). Les capacités ne confèrent pas la qualification aux spécialistes auprès de l'Ordre des médecins, mais celui-ci les reconnait comme des titres auxquels peuvent prétendre les médecins (par exemple sur leur plaque) pour justifier de compétences supplémentaires auprès de leurs patients.Une capacité est un type de diplôme. La classe CapaciteDiplome est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [CapaciteHabitation](StructureDefinition-CapaciteHabitation.md) | La capacité d'habitation décrit des types d'habitation et le nombre d'habitations associées à ces types. |
| [CapacitePriseCharge](StructureDefinition-CapacitePriseCharge.md) | La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise. |
| [CapaciteSavoirfaire](StructureDefinition-CapaciteSavoirfaire.md) | La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [CarteProfessionnel](StructureDefinition-CarteProfessionnel.md) | Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel. La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même. Un professionnel exerçant simultanément deux professions a deux cartes. |
| [Certificat](StructureDefinition-Certificat.md) | Données descriptives du moyen d’identification par certificat. Il s'agit des certificats utilisés par les professionnels et les structures. |
| [CertificatEtudeSpeciale](StructureDefinition-CertificatEtudeSpeciale.md) | Les Certificat d'études spéciales (CES) ont précédé les DES et ils ne sont plus délivrés depuis 1991.Dans le cadre du modèle, un certificat d'études spéciales est un type de diplôme. La classe CertificatEtudesSpeciales est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [Competence](StructureDefinition-Competence.md) | Extrait du rapport de l'ONDPS sur la médecine générale (Tome 1 2006-2007): "La compétence était un titre délivré par l’ordre national des médecins en application du précédent règlement de qualification (Article 3 de l'arrêté du 4 septembre 1970), aux praticiens dits «ancien régime» ayant débuté leurs études médicales avant la réforme de 1982. Ce titre était accordé après avis d’une commission ordinale spécifique. Les compétences, dont la liste était fixée par arrêté, portaient soit sur des disciplines ne correspondant pas à des spécialités qualifiantes (médecine légale ou allergologie par exemple), soit sur des spécialités médicales, le praticien compétent ne pouvant l’exercer que dans le cadre de sa spécialité d’inscription à l’ordre. Les compétences ne peuvent plus être délivrées aux médecins issus du nouveau régime, c’est-à-dire ayant débuté leurs études à compter de l’année universitaire 1984-1985. Toutefois, pour ceux de l’ancien régime et à titre transitoire, le dépôt d’une demande de qualification était possible jusqu’au 31 décembre 2004 et ces praticiens peuvent s’en prévaloir jusqu’à la fin leur période d’activité professionnelle.Une compétence est un type de savoir-faire. La classe Competence est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [CompetenceExclusive](StructureDefinition-CompetenceExclusive.md) | La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [CompetenceMetier](StructureDefinition-CompetenceMetier.md) | La compétence métier désigne un type de savoir-faire opérationnel, transversal ou spécifique, acquis et exercé à titre non exclusif dans le cadre d’une activité professionnelle reconnue. Elle reflète une expertise fonctionnelle ou technique mobilisée dans l’exercice quotidien du professionnel de santé.Contrairement aux spécialités ordinales ou compétences de médecines, la compétence métier n’est pas nécessairement encadrée par un diplôme ou une qualification ordinale, mais elle peut être attestée par l’expérience, des formations spécifiques, ou une reconnaissance institutionnelle (ex. : missions ANS, ARS, établissements de santé, etc.).Dans le cadre du modèle, la classe CompétenceMetier est représentée comme une spécialisation de la classe SavoirFaire, i-e un TypeDeSavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. Elle se distingue des autres types de savoir-faire par son ancrage dans les pratiques professionnelles et organisationnelles, plutôt que dans une logique de qualification médicale ou réglementaire. |
| [Contact](StructureDefinition-Contact.md) | Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.). |
| [Convention](StructureDefinition-Convention.md) | Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes. |
| [CoordonneeGeographique](StructureDefinition-CoordonneeGeographique.md) | Ensemble des coordonnées géographiques d'un point spécifique telles que la longitude, la latitude et l'altitude, exprimées suivant un système géodésique choisi. Il convient de distinguer les coordonnées géographiques des coordonnées projetées suivant différents systèmes de projection.Note complémentaire sur l'usage de la classe :1) Usage d'un autre méridien que Greenwich : Le méridien origine peut être celui de Greenwich (méridien international), ou encore celui propre à la géodésie d'un pays (historiquement méridien de Paris pour la France). Mais chaque méridien origine est défini numériquement par sa longitude par rapport au méridien international.2) Les normes OGC n'imposent pas de choix sur les systèmes : Situation sur le terrain: Systèmes les plus couramment utilisés en France métropolitaine et dans les départements d'Outre-mer:• France métropolitaine : 21 systèmes• Guadeloupe : 6 systèmes• Martinique : 4 systèmes• Guyane : 5 systèmes• Réunion : 4 systèmes3) Systèmes géographiques, planimétriques et altimétriques : Voir décret simple 2006-272 du 03 mars 2006 modifiant le décret n° 2000-1276 du 26 décembre 2000. |
| [Creneau](StructureDefinition-Creneau.md) | Un créneau d’un agenda est un intervalle de temps, disponible ou occupé. |
| [DESC1](StructureDefinition-DESC1.md) | Les DESC de groupe I ou non qualifiants (2 ans d'études) offrent une compétence supplémentaire ou un champ d'exercice plus large que celui ouvert par le DES, mais ne changent pas la qualification officielle de leurs titulaires auprès de l'Ordre des Médecins. Ils peuvent aussi apporter à des spécialistes des connaissances générales intéressant plusieurs spécialités (allergologie, cancérologie, etc.). Certains de ces DESC sont redondants avec des capacités de médecine, obtenues par la formation continue des médecins déjà diplômés, par exemple la capacité de médecine d'urgence. Il est cependant probable que les capacités disparaissent au profit des DESC équivalents dans un avenir proche.Dans le cadre du modèle, un DESC de groupe I est un type de diplôme. La classe DESC1 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [DESC2](StructureDefinition-DESC2.md) | Les DESC de groupe II ou qualifiants (3 ans d'études) représentent des spécialités par eux-mêmes. Dans le cadre du modèle, un DESC de groupe II est un type de diplôme. La classe DESC2 est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [DESCNonQualifiant](StructureDefinition-DESCNonQualifiant.md) | Un professionnel peut faire valoir, en complément de sa spécialité, un ou plusieurs savoir-faire de type DESC non qualifiant, en fonction du ou des DESC de groupe I, qu'il a obtenu(s).Un DESC non qualifiant est un type de savoir-faire. La classe DiplomeEtudesSpécialiseesNonQualifiant est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [Decision](StructureDefinition-Decision.md) | Acte par lequel une autorité prend parti après examen d'une demande. |
| [Demande](StructureDefinition-Demande.md) | Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes. |
| [Diplome](StructureDefinition-Diplome.md) | Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d'Etat.La classe "Diplome" est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu |
| [DiplomeDeuxiemeCycleNonQualifiant](StructureDefinition-DiplomeDeuxiemeCycleNonQualifiant.md) | Le diplôme de deuxième cycle non qualifiant enregistre un niveau de formation de fin de deuxième cycle, qui sanctionne une partie des études requises à l’exercice de la profession.Il ne donne pas droit à l’exercice de la profession et son obtention ne change pas la qualification à venir des titulaires lorsqu’ils exerceront. |
| [DiplomeDivers](StructureDefinition-DiplomeDivers.md) | Cette classe regroupe les diplômes qui ne peuvent être classés dans un type de diplôme explicite (CES, DESC1, DESC2, etc.).La classe DiplomeDivers est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [DiplomeEEE](StructureDefinition-DiplomeEEE.md) | Diplôme d'un pays de l'espace économique européen (EEE), requis pour l'accès à la profession en France, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes au sein de l'EEE.Dans le cadre du modèle, un diplôme EEE est un type de diplôme. La classe DiplomeEEE est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [DiplomeEES](StructureDefinition-DiplomeEES.md) | Diplôme européen d'études spécialisées, d'un pays de l'espace économique européen (EEE), ouvrant l'accès à une spécialité, pour un professionnel s'inscrivant à l'ordre à compter de la date d'entrée du pays dans l'EEE (Directive européenne 2005-36 modifiée). L'annexe 5 de cette directive donne la liste des reconnaissances mutuelles de diplômes de spécialité au sein de l'EEE.Dans le cadre du modèle, un diplôme EES est un type de diplôme. La classe DiplomeEES est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [DiplomeEtat](StructureDefinition-DiplomeEtat.md) | Un diplôme d'État, abrégé DE, est un diplôme français qui est souvent requis pour l'exercice de professions règlementées, notamment dans le champ de la santé.L'Etat intervient dans la définition du programme et la pédagogie du cursus diplômant.Cette classe comprend également des diplômes anciens existant avant la création du diplôme d'Etat de la profession et qui étaient requis, à cette époque, pour l'exercice de la profession.Par exemple, le diplôme d'Etat de docteur en chirurgie dentaire est requis depuis 1972 pour exercer la profession de chirurgien-dentiste. Avant 1972, le diplôme d'Etat de chirurgien-dentiste était requis. Ces deux diplômes sont donc présents dans la nomenclature des diplômes d'Etat français.Dans le cadre du modèle, un Diplôme d'Etat est considéré comme un type de diplôme. La classe DiplomeEtat est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [DiplomeEtudeSpecialisee](StructureDefinition-DiplomeEtudeSpecialisee.md) | Le diplôme d'études spécialisées (DES) est délivré aux médecins, pharmaciens ou dentistes ayant effectué une formation de 3e cycle de 3 à 5 ans en fonction des spécialités et soutenu un mémoire. Cette formation correspond à l'internat. Avec les réformes successives adoptées depuis la fin des années 1990 (dont la création de l'internat et du DES de médecine générale), tous les nouveaux docteurs en médecine sont titulaires d'un DES, accompagnant leur diplôme d'État de docteur en médecine (commun à tous les médecins) et précisant leur spécialité.Le DES peut être complété par un diplôme d'études spécialisées complémentaires (DESC). Les DESC se décomposent en deux groupes: ** DESC non qualifiants (groupe 1) d’une durée de 2 ans : 1 an pendant l’internat et 1 an après la fin de l’internat (clinicat);** DESC qualifiants (groupe 2) ou DESCQ d’une durée de 3 ans : 2 ans pendant l’internat et 1 an après la fin de l’internat (clinicat).Dans le cadre du modèle, un DES est un type de diplôme. La classe DiplomeEtudesSpecialisees est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [DiplomeUniversitaire](StructureDefinition-DiplomeUniversitaire.md) | En France, un diplôme universitaire (DU) ou interuniversitaire (DIU) est un diplôme délivré par une université française, un grand établissement ou autre établissement public à caractère scientifique, culturel et professionnel, ou plusieurs établissements conjointement, contrairement aux diplômes nationaux qui sont délivrés au nom du ministère. Chaque ordre maintient une liste des DU reconnus.Dans le cadre du modèle, un diplôme universitaire est un type de diplôme. La classe DiplomeUniversitaire est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [DispositifMedical](StructureDefinition-DispositifMedical.md) | L’article 2 partie 1 du Règlement (UE) 2017/745 du 5 avril 2017 définit un dispositif médical (DM) comme tout instrument, appareil, équipement, logiciel, implant, réactif, matière ou autre article, destiné par le fabricant à être utilisé, seul ou en association, chez l'homme pour l'une ou plusieurs des fins médicales précises suivantes:** diagnostic, prévention, contrôle, prédiction, pronostic, traitement ou atténuation d'une maladie,** diagnostic, contrôle, traitement, atténuation d'une blessure ou d'un handicap ou compensation de ceux-ci,** investigation, remplacement ou modification d'une structure ou fonction anatomique ou d'un processus ou état physiologique ou pathologique,** communication d'informations au moyen d'un examen in vitro d'échantillons provenant du corps humain, y compris les dons d'organes, de sang et de tissus,et dont l'action principale voulue dans ou sur le corps humain n'est pas obtenue par des moyens pharmacologiques ou immunologiques ni par métabolisme, mais dont la fonction peut être assistée par de tels moyens. Les produits ci-après sont également réputés être des dispositifs médicaux :** les dispositifs destinés à la maîtrise de la conception ou à l'assistance à celle-ci,** les produits spécifiquement destinés au nettoyage, à la désinfection ou à la stérilisation des dispositifs visés à l'article 1er, paragraphe 4, et de ceux visés au premier alinéa du présent point. |
| [DivisionTerritoriale](StructureDefinition-DivisionTerritoriale.md) | Une division territoriale est un territoire.Le territoire peut correspondre à une commune, un département, une région, un territoire, un pays, un canton ou un arrondissement au sens du référentiel administratif que représente le Code Officiel Géographique pour la France (INSEE). Pour les autres pays, cela peut être un état, un land, un comté, une province, etc. suivant leur découpage territorial.Autres zonages:Le territoire peut correspondre à un territoire de santé, un bassin de santé, une unité urbaine, un regroupement de communes, etc.Afin de distinguer les divisions territoriales, il est recommandé de toujours indiquer le type d'une division territoriale. |
| [Document](StructureDefinition-Document.md) | Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative. |
| [DossierPersonnePriseCharge](StructureDefinition-DossierPersonnePriseCharge.md) | Un dossier regroupe l'ensemble des informations et des documents liés à une personne. |
| [DroitExerciceComplementaire](StructureDefinition-DroitExerciceComplementaire.md) | Les docteurs en médecine initialement qualifiés comme médecins spécialistes peuvent obtenir un droit d'exercice dans l'une des spécialités définies par un des DESC de médecine du groupe I. |
| [Emploi](StructureDefinition-Emploi.md) | L'emploi définit l'exercice d'une profession dans le cadre d'une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé. |
| [EntiteGeographique](StructureDefinition-EntiteGeographique.md) | L'Entité Géographique (EG) correspond à la notion d'établissement : ** Pour les établissements inscrits au FINESS, cette notion d'établissement résulte du croisement de trois critères : - Un critère géographique : Est un établissement tout lieu dont l'implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d'une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d'établissements que d'implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L'implantation géographique peut-être décrite soit avec l'attribut addresseEG soit au travers de la classe Lieu. - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d'établissements du secteur public qu'il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d'hébergement constituent deux établissements même s'ils sont implantés à la même adresse. - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d'établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s'ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l'EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure |
| [EntiteJuridique](StructureDefinition-EntiteJuridique.md) | L'Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d'exercer ses activités dans des établissements; chaque EJ dispose d'un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren. |
| [EquipementMaterielLourd](StructureDefinition-EquipementMaterielLourd.md) | Les équipements matériels lourds (EML) sont mis en œuvre au sein d’établissements. Ce sont des équipements mobiliers destinés à pourvoir soit au diagnostic, soit à la thérapeutique, et dont les conditions d’installation et de fonctionnement sont particulièrement onéreuses. Exemples : scanographes, caméras à scintillation, etc.Ils sont soumis à l'autorisation du Directeur Général de l’ARS et leur liste est fixée par décret en Conseil d'Etat. L’article R. 6122-2 du CSP référence ces équipements matériels lourds.L’arrêté du DG ARS mentionne le type d’EML, le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattaché juridiquement à l’EJ dans FINESS.Les attributs de classe sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des EML.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :** Une autorisation est « active » à la date du jour si : ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour ** sa date d'échéance est supérieure ou égale à la date du jour.** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des équipements matériels lourds présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives: ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour, ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas : a- Le renouvellement est en cours d’instruction (cas le plus courant); b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier; c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS; Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS). En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives. Les autorisations caduques ou retirées ne sont pas présentes dans FINESS. |
| [EquipementSpecifique](StructureDefinition-EquipementSpecifique.md) | Un équipement spécifique est une ressource matérielle discriminante pour la réalisation d'une prestation et sert à faciliter l’orientation du patient. Un équipement spécifique est une ressource propre de la structure ou mise à disposition dans le cadre d'une convention à la condition qu’elle soit utilisée sur site.Les équipements décrits dans cette classe concernent des actes spécifiques ou non. Seules les ressources discriminantes sont retenues, c’est-à-dire que les seuls équipements décrits concernent les équipements qui ne sont pas implicites pour un acte donné. |
| [ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md) | Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné. |
| [FonctionQualifiee](StructureDefinition-FonctionQualifiee.md) | Expérience pratique exigée par le code de la santé publique (art R5124-16) pour exercer certaines fonctions dans l’industrie pharmaceutique et la distribution en gros. Ces dispositions s’appliquent uniquement à la profession de pharmacien.L’expérience pratique est en liaison avec les activités de l’établissement pharmaceutique telles que définies par l’ANSM ou l’ANSES.A ce jour, cinq expériences pratiques sont identifiées dont trois sont imbriquées. L’expérience pratique de "Fabricant" inclut celle d’"Exploitant" qui inclut celle de "Distribution". Une fonction qualifiée est un type de savoir-faire. La classe FonctionQualifiee est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [FormationSpecialiseeTransversale](StructureDefinition-FormationSpecialiseeTransversale.md) | La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.Dans le cadre du modèle, une formation spécialisée transversale est considérée comme un type de diplôme. La classe FormationSpecialiseeTransversale est représentée dans le modèle comme une spécialisation de la classe Diplome et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [Groupement](StructureDefinition-Groupement.md) | Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés. |
| [Horaire](StructureDefinition-Horaire.md) | La classe Horaire permet de définir les différentes plages d'un agenda d'une entité (jours et heures d'ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d'indisponibilités |
| [LangueParlee](StructureDefinition-LangueParlee.md) | Langue parlée par une personne ou dans un service. |
| [LicenceExploitation](StructureDefinition-LicenceExploitation.md) | Informations descriptives de la licence d’exploitation d’une officine. |
| [Lieu](StructureDefinition-Lieu.md) | Informations relatives à une portion déterminée de l'espace, fixe ou mobile du point de vue de son affectation ou de ce qui s'y passe.Cas particulier de l'entité géographique : plusieurs lieux peuvent être associés à une même EG, ils peuvent décrire, à la fois, son addresse et des lieux spécifiques à l'EG. |
| [LieuRealisationOffre](StructureDefinition-LieuRealisationOffre.md) | Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge. |
| [Membre](StructureDefinition-Membre.md) | Personne ou entité faisant partie d'un groupement. |
| [MesureCapacite](StructureDefinition-MesureCapacite.md) | Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil. |
| [MesureProtection](StructureDefinition-MesureProtection.md) | La maladie, le handicap, l'accident peuvent altérer les facultés d'une personne et la rendre incapable de défendre ses intérêts. Le juge peut alors décider d'une mesure de protection juridique par laquelle une autre personne l'aide à protéger ses intérêts. La protection doit être la moins contraignante possible, et en priorité être exercée par la famille. Elle distingue aussi les cas où la personne conserve encore ses facultés, mais est en grande difficulté sociale. (service-public.fr) |
| [NoteLiaison](StructureDefinition-NoteLiaison.md) | Les notes de liaison permet d’assurer un suivi « terrain » de la personne prise en charge et de garder en temps réel, une vue précise de la situation de cette personne prise en charge.Les notes peuvent concerner, par exemple, des symptômes observés, des résultats d’analyses, des avis et observations, etc.Les notes sont créées automatiquement ou manuellement, par des professionnels, des dispositifs médicaux, des logiciels métier, une personne tierce en contact direct ou indirect avec la personne prise en charge, ou bien par la personne prise en charge elle-même. Note : les logiciels métier et systèmes ne sont pas représentés dans le MOS. |
| [Observation](StructureDefinition-Observation.md) | Une mesure ou une déclaration constitue une observation effectuée sur une personne. |
| [OffreOperationnelle](StructureDefinition-OffreOperationnelle.md) | L'Offre opérationnelle correspond aux prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne. |
| [OrganisationInterne](StructureDefinition-OrganisationInterne.md) | La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l'organisation opérationnelle interne d'une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l'EG n'est pas obligatoire. Lorsqu'elle est décrite cette organisation porte les ressources opérationnelles. |
| [OrientationParticuliere](StructureDefinition-OrientationParticuliere.md) | Caractérise une orientation d'exercice: acupuncture ou homéopathie.Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [Parent](StructureDefinition-Parent.md) | Personne liée par un lien de filiation à un enfant |
| [Patientele](StructureDefinition-Patientele.md) | Une patientèle est un ensemble de patients présentant des caractéristiques permettant d'orienter leur prise en charge par une structure de santé. |
| [PersonnePhysique](StructureDefinition-PersonnePhysique.md) | Préambule:Les informations de la personne physique telles que le nom de naissance, le prénom, etc. sont utilisées dans d'autres contextes que celui de l'INS. Elles sont donc délibérément disjointes des informations constituant l'identité INS.Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile. |
| [PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md) | Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager. |
| [PlageDisponibilite](StructureDefinition-PlageDisponibilite.md) | Horaires de disponibilité pour la prise de rendez - vous de l'agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l'agenda est indisponible à la prise de rendez - vous. |
| [PlageReference](StructureDefinition-PlageReference.md) | La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes. |
| [PoleActivite](StructureDefinition-PoleActivite.md) | Loi HPST, art.13: "Pour les établissements publics de santé, le directeur définit l'organisation de l'établissement en pôles d'activité conformément au projet médical d'établissement, après avis [...]. Le directeur général de l'agence régionale de santé peut autoriser un établissement à ne pas créer de pôles d'activité quand l'effectif médical de l'établissement le justifie.Les pôles d'activité peuvent comporter des structures internes de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques ainsi que les structures médico-techniques qui leur sont associées".Extrait de "La loi HPST à l'hôpital, les clés pour comprendre - Ministère de la Santé- ANAP": "Les pôles d’activité clinique et médico-technique peuvent comporter des "structures internes" de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques".Les pôles peuvent être multi-sites, c'est à dire qu'un même pôle peut comporter des structures internes situées dans différentes entités géographiques d'une même entité juridique. |
| [Professionnel](StructureDefinition-Professionnel.md) | Données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social. |
| [QualificationPAC](StructureDefinition-QualificationPAC.md) | La qualification de praticien adjoint contractuel autorise à exercer en établissement sans être qualifié ni en médecine générale, ni en spécialité. Cela concerne des médecins à diplôme étranger dont la qualification a été reconnue avant l'instauration de l'autorisation d'exercice, et qui n'ont pas fait de démarche pour obtenir cette autorisation (environ 500 médecins concernés).Une qualification de praticien adjoint contractuel est un type de savoir-faire. La classe QualificationPAC est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [RendezVous](StructureDefinition-RendezVous.md) | Rencontre prévue entre au moins deux personnes à une heure et dans un lieu déterminé. Par exemple, une entrevue entre un patient et un professionnel qui peut nécessiter la réservation d’une salle de consultation à une heure définie. Un rendez-vous peut occuper un ou plusieurs créneaux. |
| [ResultatObservation](StructureDefinition-ResultatObservation.md) | Résultat de la mesure ou de l’observation effectuée sur un personne. |
| [SavoirFaire](StructureDefinition-SavoirFaire.md) | Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc. |
| [SituationExercice](StructureDefinition-SituationExercice.md) | Caractéristiques de l'exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l'exception des remplaçants).Synonymes : Activité (RPPS). |
| [SituationOperationnelle](StructureDefinition-SituationOperationnelle.md) | Caractérise les conditions d'exercice du professionnel dans la mise en œuvre cadre de l’offre opérationnelle. |
| [Specialite](StructureDefinition-Specialite.md) | Spécialité médicale ou odontologique, reconnue par une autorité d'enregistrement (Ordre ou SSA), soit sur la base d'un diplôme de spécialité (DES ou DESC de groupe II, CES jusqu'en 1991), soit via une commission de qualification.En France, l'exercice d'une spécialité est exclusif, c'est-à-dire qu'on ne peut exercer qu'une seule spécialité, celle qui fait l'objet d'une qualification par le Conseil de l'ordre. Un médecin titulaire d'un DESC de type II qui s'ajoute à son DES, a donc 2 qualifications possibles. Lorsqu'il s'inscrit au tableau de l'ordre des médecins, il doit déclarer sa spécialité d'exercice. S'il choisit celle de son DESC, il ne peut pas exercer la spécialité de son DES. Toutefois, il peut, dans le futur, choisir le retour à la spécialité originelle portée par le DES. Ainsi, la création en 2004 du DESC de Gériatrie a marqué la naissance de la qualification de spécialiste en gériatrie (la gériatrie étant auparavant un mode d'exercice particulier de la médecine, concernant des généralistes et des spécialistes).Dans le cadre du modèle, une spécialité est un type de savoir-faire. La classe Specialite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe. |
| [StructureInterne](StructureDefinition-StructureInterne.md) | Une structure interne peut être composée d'une ou plusieurs unités médicales fonctionnelles.L’appellation des structures internes des pôles est aussi laissée à la libre appréciation des établissements : il peut s’agir de services, d’unités, de centres, d’instituts, de départements, ou de toute autre appellation. Lorsque les services demeurent, les chefs de service sont placés sous l’autorité fonctionnelle du chef de pôle (cf. "La loi HPST à l'hôpital, les clés pour comprendre" - Ministère de la Santé - ANAP).Synonyme : Service, unité, centre, institut, département, etc. |
| [SurspecialiteTransversale](StructureDefinition-SurspecialiteTransversale.md) | La surspécialité transversale est le droit d’exercice complémentaire au sein de la spécialité du médecin, donné par une formation spécialisée transversale (FST). La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité. |
| [TarifPrestation](StructureDefinition-TarifPrestation.md) | Prix des prestations et services d'une entité géographique. |
| [Telecommunication](StructureDefinition-Telecommunication.md) | Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée (téléphone, fax, e-mail, URL, etc.). |
| [UniteFonctionnelle](StructureDefinition-UniteFonctionnelle.md) | L'unité fonctionnelle (UF) désigne la plus petite unité compatible avec les contraintes de gestion qui présente une activité médicale homogène. |
| [VieProfessionnelle](StructureDefinition-VieProfessionnelle.md) | /!\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge. |
| [VieQuotidienne](StructureDefinition-VieQuotidienne.md) | /!\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge. |
| [VieScolaire](StructureDefinition-VieScolaire.md) | /!\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge. |

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

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.4.0/CodeSystem-ISO3166Part1.html): [ActiviteEnseignement](StructureDefinition-ActiviteEnseignement.md), [ActiviteSociale](StructureDefinition-ActiviteSociale.md)...Show 119 more,[ActiviteSoinAutorisee](StructureDefinition-ActiviteSoinAutorisee.md),[ActiviteSoumiseReconnaissance](StructureDefinition-ActiviteSoumiseReconnaissance.md),[Adresse](StructureDefinition-Adresse.md),[Agenda](StructureDefinition-Agenda.md),[AidantDemarche](StructureDefinition-AidantDemarche.md),[ArretTravail](StructureDefinition-ArretTravail.md),[Attestation](StructureDefinition-Attestation.md),[AutorisationExercice](StructureDefinition-AutorisationExercice.md),[AutreActiviteSoumiseAutorisation](StructureDefinition-AutreActiviteSoumiseAutorisation.md),[AutreDiplomeObtenu](StructureDefinition-AutreDiplomeObtenu.md),[BesoinscolariteVs](ValueSet-besoinScolarite-vs.md),[BesoinviequotidienneVs](ValueSet-besoinVieQuotidienne-vs.md),[BoiteLettreMSS](StructureDefinition-BoiteLettreMSS.md),[CapaciteAccueil](StructureDefinition-CapaciteAccueil.md),[CapaciteActiviteExercee](StructureDefinition-CapaciteActiviteExercee.md),[CapaciteDiplome](StructureDefinition-CapaciteDiplome.md),[CapaciteHabitation](StructureDefinition-CapaciteHabitation.md),[CapacitePriseCharge](StructureDefinition-CapacitePriseCharge.md),[CapaciteSavoirfaire](StructureDefinition-CapaciteSavoirfaire.md),[CapacitesavoirfaireVs](ValueSet-capaciteSavoirFaire-vs.md),[CarteProfessionnel](StructureDefinition-CarteProfessionnel.md),[CategorieetablissementVs](ValueSet-categorieEtablissement-vs.md),[Certificat](StructureDefinition-Certificat.md),[CertificatEtudeSpeciale](StructureDefinition-CertificatEtudeSpeciale.md),[CodeVs](ValueSet-code-vs.md),[Competence](StructureDefinition-Competence.md),[CompetenceExclusive](StructureDefinition-CompetenceExclusive.md),[CompetenceMetier](StructureDefinition-CompetenceMetier.md),[CompetenceVs](ValueSet-competence-vs.md),[CompetenceexclusiveVs](ValueSet-competenceExclusive-vs.md),[CompetencemetierVs](ValueSet-competenceMetier-vs.md),[Contact](StructureDefinition-Contact.md),[Convention](StructureDefinition-Convention.md),[CoordonneeGeographique](StructureDefinition-CoordonneeGeographique.md),[Creneau](StructureDefinition-Creneau.md),[DESC1](StructureDefinition-DESC1.md),[DESC2](StructureDefinition-DESC2.md),[DESCNonQualifiant](StructureDefinition-DESCNonQualifiant.md),[Decision](StructureDefinition-Decision.md),[Demande](StructureDefinition-Demande.md),[DescnonqualifiantVs](ValueSet-DESCNonQualifiant-vs.md),[Diplome](StructureDefinition-Diplome.md),[DiplomeDeuxiemeCycleNonQualifiant](StructureDefinition-DiplomeDeuxiemeCycleNonQualifiant.md),[DiplomeDivers](StructureDefinition-DiplomeDivers.md),[DiplomeEEE](StructureDefinition-DiplomeEEE.md),[DiplomeEES](StructureDefinition-DiplomeEES.md),[DiplomeEtat](StructureDefinition-DiplomeEtat.md),[DiplomeEtudeSpecialisee](StructureDefinition-DiplomeEtudeSpecialisee.md),[DiplomeUniversitaire](StructureDefinition-DiplomeUniversitaire.md),[DispositifMedical](StructureDefinition-DispositifMedical.md),[DivisionTerritoriale](StructureDefinition-DivisionTerritoriale.md),[Document](StructureDefinition-Document.md),[DossierPersonnePriseCharge](StructureDefinition-DossierPersonnePriseCharge.md),[DroitExerciceComplementaire](StructureDefinition-DroitExerciceComplementaire.md),[DroitexercicecomplementaireVs](ValueSet-droitExerciceComplementaire-vs.md),[Emploi](StructureDefinition-Emploi.md),[EntiteGeographique](StructureDefinition-EntiteGeographique.md),[EntiteJuridique](StructureDefinition-EntiteJuridique.md),[EquipementMaterielLourd](StructureDefinition-EquipementMaterielLourd.md),[EquipementSpecifique](StructureDefinition-EquipementSpecifique.md),[ExerciceProfessionnel](StructureDefinition-ExerciceProfessionnel.md),[FamilleactiviteoperationnelleVs](ValueSet-familleActiviteOperationnelle-vs.md),[FonctionQualifiee](StructureDefinition-FonctionQualifiee.md),[FonctionqualifieeVs](ValueSet-fonctionQualifiee-vs.md),[FormationSpecialiseeTransversale](StructureDefinition-FormationSpecialiseeTransversale.md),[Groupement](StructureDefinition-Groupement.md),[Horaire](StructureDefinition-Horaire.md),[LangueParlee](StructureDefinition-LangueParlee.md),[LicenceExploitation](StructureDefinition-LicenceExploitation.md),[Lieu](StructureDefinition-Lieu.md),[LieuRealisationOffre](StructureDefinition-LieuRealisationOffre.md),[LieunaissanceVs](ValueSet-lieuNaissance-vs.md),[MOS](index.md),[Membre](StructureDefinition-Membre.md),[MesureCapacite](StructureDefinition-MesureCapacite.md),[MesureProtection](StructureDefinition-MesureProtection.md),[NoteLiaison](StructureDefinition-NoteLiaison.md),[Observation](StructureDefinition-Observation.md),[OffreOperationnelle](StructureDefinition-OffreOperationnelle.md),[OrganisationInterne](StructureDefinition-OrganisationInterne.md),[OrientationParticuliere](StructureDefinition-OrientationParticuliere.md),[OrientationparticuliereVs](ValueSet-orientationParticuliere-vs.md),[Parent](StructureDefinition-Parent.md),[Patientele](StructureDefinition-Patientele.md),[PaysnaissanceVs](ValueSet-paysNaissance-vs.md),[PaysnationaliteVs](ValueSet-paysNationalite-vs.md),[PersonnePhysique](StructureDefinition-PersonnePhysique.md),[PersonnePriseCharge](StructureDefinition-PersonnePriseCharge.md),[PlageDisponibilite](StructureDefinition-PlageDisponibilite.md),[PlageReference](StructureDefinition-PlageReference.md),[PoleActivite](StructureDefinition-PoleActivite.md),[ProfessionVs](ValueSet-profession-vs.md),[ProfessioncategoriesocioprofessionnelleVs](ValueSet-professionCategorieSocioProfessionnelle-vs.md),[Professionnel](StructureDefinition-Professionnel.md),[ProfessionressourceVs](ValueSet-professionRessource-vs.md),[QualificationPAC](StructureDefinition-QualificationPAC.md),[QualificationpacVs](ValueSet-qualificationPAC-vs.md),[RelationVs](ValueSet-relation-vs.md),[RendezVous](StructureDefinition-RendezVous.md),[ResultatObservation](StructureDefinition-ResultatObservation.md),[RoleVs](ValueSet-role-vs.md),[SavoirFaire](StructureDefinition-SavoirFaire.md),[SecteuractiviteVs](ValueSet-secteurActivite-vs.md),[SexeVs](ValueSet-sexe-vs.md),[SituationExercice](StructureDefinition-SituationExercice.md),[SituationOperationnelle](StructureDefinition-SituationOperationnelle.md),[Specialite](StructureDefinition-Specialite.md),[SpecialiteVs](ValueSet-specialite-vs.md),[StructureInterne](StructureDefinition-StructureInterne.md),[SurspecialiteTransversale](StructureDefinition-SurspecialiteTransversale.md),[SurspecialitetransversaleVs](ValueSet-surspecialiteTransversale-vs.md),[TarifPrestation](StructureDefinition-TarifPrestation.md),[Telecommunication](StructureDefinition-Telecommunication.md),[TypeprofessionVs](ValueSet-typeProfession-vs.md),[TyperoleVs](ValueSet-typeRole-vs.md),[UniteFonctionnelle](StructureDefinition-UniteFonctionnelle.md),[VieProfessionnelle](StructureDefinition-VieProfessionnelle.md),[VieQuotidienne](StructureDefinition-VieQuotidienne.md)and[VieScolaire](StructureDefinition-VieScolaire.md)




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
  "date" : "2025-12-02T14:23:57+00:00",
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
      "version" : "7.0.0"
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
    "grouping" : [
      {
        "id" : "Accompagnant",
        "name" : "Accompagnant"
      },
      {
        "id" : "Accord",
        "name" : "Accord"
      },
      {
        "id" : "Agenda",
        "name" : "Agenda"
      },
      {
        "id" : "Autorisation",
        "name" : "Autorisation"
      },
      {
        "id" : "Dispositif",
        "name" : "Dispositif d'authentification"
      },
      {
        "id" : "DM",
        "name" : "Dispositif médical"
      },
      {
        "id" : "Dossier",
        "name" : "Dossier"
      },
      {
        "id" : "Offre",
        "name" : "Offre opérationnelle"
      },
      {
        "id" : "Organisation",
        "name" : "Organisation opérationnelle"
      },
      {
        "id" : "Personne",
        "name" : "Personne prise en charge"
      },
      {
        "id" : "Professionnel",
        "name" : "Professionnel"
      },
      {
        "id" : "Ressources",
        "name" : "Ressources opérationnelles"
      },
      {
        "id" : "Structure",
        "name" : "Structure"
      },
      {
        "id" : "Classes communes",
        "name" : "Classes communes"
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
          "reference" : "StructureDefinition/ActiviteEnseignement"
        },
        "name" : "ActiviteEnseignement",
        "description" : "Les activités d’enseignement aux professions sanitaires et sociales sont enregistrées dans FINESS et rattachées aux établissements de formation (EG). Le périmètre comprend les formations sanitaires et sociales préparant à un diplôme d’état délivré par l’administration sanitaire et sociale. Sont exclues les formations aux professions médicales préparées en université, hormis les formations et écoles de sages-femmes.Ces formations sont soumises à un arrêté d’agrément de la Région.",
        "exampleBoolean" : false,
        "groupingId" : "Autorisation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ActiviteSociale"
        },
        "name" : "ActiviteSociale",
        "description" : "Les équipements sociaux représentent les activités des établissements du domaine social et médico-social enregistrés dans FINESS.Le champ de FINESS comprend l’ensemble des établissements et services sociaux et médico-sociaux (ESSMS), soumis à autorisation préalable, ainsi que quelques catégories d’établissements n’entrant pas dans le régime de l’autorisation.Pour indiquer les services offerts, FINESS identifie ceux-ci à l'aide d'un triplet composé des éléments suivants : discipline d’équipement, mode de fonctionnement (appelé aussi type d’activité) et clientèle.",
        "exampleBoolean" : false,
        "groupingId" : "Autorisation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ActiviteSoinAutorisee"
        },
        "name" : "ActiviteSoinAutorisee",
        "description" : "On distingue plusieurs types d’activités sanitaires rattachées aux établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités de soins» (acronyme communément utilisé : AS).Les activités de soins sont les activités des établissements sanitaires autorisées par arrêté du Directeur Général de l’ARS dans le cadre de l’article L. 6122-1 du CSP, pour une durée de 7 ans, durée fixe par voie réglementaire.D’après l’article L. 6122-1 du CSP, sont soumis à l’autorisation de l’agence régionale de santé les projets relatifs à la création de tout établissement de santé, la création, la conversion et le regroupement des activités de soins, y compris sous la forme d’alternatives à l’hospitalisation ou d’hospitalisation à domicile. La liste des activités de soins est fixée par décret en Conseil d’État. L’article R. 6122-25 du CSP référence ces activités de soins.Toute activité de soins fait l’objet d’un arrêté qui mentionne sa nature (triplet activité, modalité, forme, cf. plus bas), le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattachée juridiquement à l’EJ dans FINESS.La nomenclature est articulée en trois niveaux systématiquement renseignés : ** Activité de soins.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe : ** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités de soins.** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :     ** Une autorisation est « active » à la date du jour si :          ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour;          ** sa date d'échéance est supérieure ou égale à la date du jour.     ** Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.     ** De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des activités de soins présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives:      ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour,     ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas :     a- Le renouvellement est en cours d’instruction (cas le plus courant),     b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier,     c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS;     Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS).     En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives.     Les autorisations caduques ou retirées ne sont pas présentes dans FINESS.",
        "exampleBoolean" : false,
        "groupingId" : "Autorisation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ActiviteSoumiseReconnaissance"
        },
        "name" : "ActiviteSoumiseReconnaissance",
        "description" : "On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «activités soumises à reconnaissance contractuelle» (acronyme communément utilisé : ASR).Une ASR est une activité non soumise à autorisation du DG ARS mais soumise à reconnaissance contractuelle dans le cadre et la durée du CPOM (contrat pluriannuel d’objectif et de moyens).La nomenclature est articulée en trois niveaux systématiquement renseignés : **  Activité reconnue contractuellement communément appelée reconnaissance.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe, les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des activités soumises à reconnaissance contractuelle.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS. Dans FINESS, les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description.Une reconnaissance contractuelle est nécessairement rattachée à un contrat CPOM. Au sens ARHGOS, un contrat CPOM correspond à un couple unique entité juridique (EJ)/établissement (EG).A noter qu’initialement il existait une distinction entre les reconnaissances dites nationales (issues du guide méthodologique CPOM de la DGOS) et les reconnaissances dites régionales. Depuis 2019, toutes les reconnaissances contractuelles sont de type national.",
        "exampleBoolean" : false,
        "groupingId" : "Autorisation"
      },
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Agenda"
        },
        "name" : "Agenda",
        "description" : "Un agenda appartient à une ou plusieurs ressources, regroupe un ensemble de créneaux, des plages de disponibilité et des rendez-vous sur une période définie.",
        "exampleBoolean" : false,
        "groupingId" : "Agenda"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/AidantDemarche"
        },
        "name" : "AidantDemarche",
        "description" : "Personne physique ou morale aidant l'individu dans ses démarches.",
        "exampleBoolean" : false,
        "groupingId" : "Accompagnant"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ArretTravail"
        },
        "name" : "ArretTravail",
        "description" : "Selon le code du travail, l'arrêt de travail est une période de suspension du contrat de travail en raison d’une maladie ou d’un accident du travail d’origine professionnelle ou non professionnelle. L’arrêt de travail est justifié par une prescription médicale.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/AutorisationExercice"
        },
        "name" : "AutorisationExercice",
        "description" : "L'accès aux professions de santé est soumis à des conditions concernant les diplômes obtenus : généralement est requis un diplôme français (DE de médecine, etc. ou européen (dans les professions pour lesquelles il existe des accords de reconnaissance mutuelle des diplômes).Pour les personnes ne remplissant pas ces conditions (diplômes hors UE, par exemple), les diplômes obtenus doivent être complétés d'une autorisation afin de permettre l'entrée dans la profession.Il peut s'agir:** d'une autorisation délivrée par le Ministère de la Santé,** d'une autorisation délivrée par l'Ordre au vu de la jurisprudence (Hochsmann, etc.).",
        "exampleBoolean" : false,
        "groupingId" : "Accord"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/AutreActiviteSoumiseAutorisation"
        },
        "name" : "AutreActiviteSoumiseAutorisation",
        "description" : "On distingue plusieurs types d’activités sanitaires des établissements FINESS en fonction de la pièce justificative et du cadre réglementaire. Cette classe décrit uniquement les activités de type «autres activités soumises à autorisation» (acronyme communément utilisé : AASA). Les AASA sont soumises à l’autorisation du Directeur Général de l’ARS selon des modalités et des durées différentes particulières.  Elles sont au nombre de 5 (instruction n° DGOS/SR6/R3/R4/DREES/DMSI/2014/364 du 24décembre 2014) :1. Chirurgie esthétique2. Prélèvements d’organes, de tissus, de cellules3. Dépôts de sang4. Lieux de recherches de la personne humaine5. LactariumsLa nomenclature est articulée en trois niveaux systématiquement renseignés : ** Autre Activité.** Modalité : la modalité est le mode d’application ou de type de soins prévu par les textes réglementaires encadrant chaque activité de soins. C’est une pratique thérapeutique. ** Forme : la forme est le type d’organisation de prise en charge.Dans cette classe :** Les attributs sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des autres activités soumises à autorisation ; ** Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :     ** Seules les autorisations non caduques sont transmises à FINESS par ARHGOS et sont donc publiées par l’ANS. Hormis les autorisations en attente de première mise en œuvre, toutes les autorisations publiées peuvent donc être considérées comme actives.     ** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.",
        "exampleBoolean" : false,
        "groupingId" : "Autorisation"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/besoinScolarite-vs"
        },
        "name" : "BesoinscolariteVs",
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
          "reference" : "ValueSet/besoinVieQuotidienne-vs"
        },
        "name" : "BesoinviequotidienneVs",
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CapaciteAccueil"
        },
        "name" : "CapaciteAccueil",
        "description" : "La capacité d'accueil indique les capacités d’hébergement (en lits ou en places) et donc le nombre de personnes pouvant être accueillies en même temps.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CapaciteActiviteExercee"
        },
        "name" : "CapaciteActiviteExercee",
        "description" : "Capacité définie au regard de l'activité.",
        "exampleBoolean" : false,
        "groupingId" : "Autorisation"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CapaciteHabitation"
        },
        "name" : "CapaciteHabitation",
        "description" : "La capacité d'habitation décrit des types d'habitation et le nombre d'habitations associées à ces types.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CapacitePriseCharge"
        },
        "name" : "CapacitePriseCharge",
        "description" : "La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
          "reference" : "StructureDefinition/CarteProfessionnel"
        },
        "name" : "CarteProfessionnel",
        "description" : "Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel. La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même. Un professionnel exerçant simultanément deux professions a deux cartes.",
        "exampleBoolean" : false,
        "groupingId" : "Dispositif"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/categorieEtablissement-vs"
        },
        "name" : "CategorieetablissementVs",
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
          "reference" : "StructureDefinition/Certificat"
        },
        "name" : "Certificat",
        "description" : "Données descriptives du moyen d’identification par certificat. Il s'agit des certificats utilisés par les professionnels et les structures.",
        "exampleBoolean" : false,
        "groupingId" : "Dispositif"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/code-vs"
        },
        "name" : "CodeVs",
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
        "name" : "CompetencemetierVs",
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
          "reference" : "StructureDefinition/Contact"
        },
        "name" : "Contact",
        "description" : "Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.).",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Convention"
        },
        "name" : "Convention",
        "description" : "Accord conclu entre deux ou plusieurs parties en vue de produire certains effets juridiques : créer des obligations, modifier ou mettre un terme à des obligations préexistantes.",
        "exampleBoolean" : false,
        "groupingId" : "Accord"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CoordonneeGeographique"
        },
        "name" : "CoordonneeGeographique",
        "description" : "Ensemble des coordonnées géographiques d'un point spécifique telles que la longitude, la latitude et l'altitude, exprimées suivant un système géodésique choisi. Il convient de distinguer les coordonnées géographiques des coordonnées projetées suivant différents systèmes de projection.Note complémentaire sur l'usage de la classe :1) Usage d'un autre méridien que Greenwich : Le méridien origine peut être celui de Greenwich (méridien international), ou encore celui propre à la géodésie d'un pays (historiquement méridien de Paris pour la France). Mais chaque méridien origine est défini numériquement par sa longitude par rapport au méridien international.2) Les normes OGC n'imposent pas de choix sur les systèmes : Situation sur le terrain: Systèmes les plus couramment utilisés en France métropolitaine et dans les départements d'Outre-mer:• France métropolitaine : 21 systèmes• Guadeloupe : 6 systèmes• Martinique : 4 systèmes• Guyane : 5 systèmes• Réunion : 4 systèmes3) Systèmes géographiques, planimétriques et altimétriques : Voir décret simple 2006-272 du 03 mars 2006 modifiant le décret n° 2000-1276 du 26 décembre 2000.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Creneau"
        },
        "name" : "Creneau",
        "description" : "Un créneau d’un agenda est un intervalle de temps, disponible ou occupé.",
        "exampleBoolean" : false,
        "groupingId" : "Agenda"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Decision"
        },
        "name" : "Decision",
        "description" : "Acte par lequel une autorité prend parti après examen d'une demande.",
        "exampleBoolean" : false,
        "groupingId" : "Dossier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Demande"
        },
        "name" : "Demande",
        "description" : "Besoin(s) et/ou souhait(s) exprimés de manière officielle.Le contenu de la demande peut être un document : une lettre, un formulaire, etc. La demande peut également être accompagnée si besoin de pièces jointes.",
        "exampleBoolean" : false,
        "groupingId" : "Dossier"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DispositifMedical"
        },
        "name" : "DispositifMedical",
        "description" : "L’article 2 partie 1 du Règlement (UE) 2017/745 du 5 avril 2017 définit un dispositif médical (DM) comme tout instrument, appareil, équipement, logiciel, implant, réactif, matière ou autre article, destiné par le fabricant à être utilisé, seul ou en association, chez l'homme pour l'une ou plusieurs des fins médicales précises suivantes:** diagnostic, prévention, contrôle, prédiction, pronostic, traitement ou atténuation d'une maladie,** diagnostic, contrôle, traitement, atténuation d'une blessure ou d'un handicap ou compensation de ceux-ci,** investigation, remplacement ou modification d'une structure ou fonction anatomique ou d'un processus ou état physiologique ou pathologique,** communication d'informations au moyen d'un examen in vitro d'échantillons provenant du corps humain, y compris les dons d'organes, de sang et de tissus,et dont l'action principale voulue dans ou sur le corps humain n'est pas obtenue par des moyens pharmacologiques ou immunologiques ni par métabolisme, mais dont la fonction peut être assistée par de tels moyens. Les produits ci-après sont également réputés être des dispositifs médicaux :** les dispositifs destinés à la maîtrise de la conception ou à l'assistance à celle-ci,** les produits spécifiquement destinés au nettoyage, à la désinfection ou à la stérilisation des dispositifs visés à l'article 1er, paragraphe 4, et de ceux visés au premier alinéa du présent point.",
        "exampleBoolean" : false,
        "groupingId" : "DM"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DivisionTerritoriale"
        },
        "name" : "DivisionTerritoriale",
        "description" : "Une division territoriale est un territoire.Le territoire peut correspondre à une commune, un département, une région, un territoire, un pays, un canton ou un arrondissement au sens du référentiel administratif que représente le Code Officiel Géographique pour la France (INSEE). Pour les autres pays, cela peut être un état, un land, un comté, une province, etc. suivant leur découpage territorial.Autres zonages:Le territoire peut correspondre à un territoire de santé, un bassin de santé, une unité urbaine, un regroupement de communes, etc.Afin de distinguer les divisions territoriales, il est recommandé de toujours indiquer le type d'une division territoriale.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Document"
        },
        "name" : "Document",
        "description" : "Écrit servant de preuve ou de renseignement.Le document peut désigner une pièce jointe ou administrative.",
        "exampleBoolean" : false,
        "groupingId" : "Dossier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/DossierPersonnePriseCharge"
        },
        "name" : "DossierPersonnePriseCharge",
        "description" : "Un dossier regroupe l'ensemble des informations et des documents liés à une personne.",
        "exampleBoolean" : false,
        "groupingId" : "Dossier"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
          "reference" : "StructureDefinition/Emploi"
        },
        "name" : "Emploi",
        "description" : "L'emploi définit l'exercice d'une profession dans le cadre d'une activité rémunérée. Il est alors régi par un contrat signé entre un employeur et un employé.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EntiteGeographique"
        },
        "name" : "EntiteGeographique",
        "description" : "L'Entité Géographique (EG) correspond à la notion d'établissement : ** Pour les établissements inscrits au FINESS, cette notion d'établissement résulte du croisement de trois critères :     - Un critère géographique : Est un établissement tout lieu dont l'implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d'une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d'établissements que d'implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L'implantation géographique peut-être décrite soit avec l'attribut addresseEG soit au travers de la classe Lieu.    - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d'établissements du secteur public qu'il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d'hébergement constituent deux établissements même s'ils sont implantés à la même adresse.     - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d'établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s'ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l'EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure",
        "exampleBoolean" : false,
        "groupingId" : "Structure"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EntiteJuridique"
        },
        "name" : "EntiteJuridique",
        "description" : "L'Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d'exercer ses activités dans des établissements; chaque EJ dispose d'un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren.",
        "exampleBoolean" : false,
        "groupingId" : "Structure"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EquipementMaterielLourd"
        },
        "name" : "EquipementMaterielLourd",
        "description" : "Les équipements matériels lourds (EML) sont mis en œuvre au sein d’établissements. Ce sont des équipements mobiliers destinés à pourvoir soit au diagnostic, soit à la thérapeutique, et dont les conditions d’installation et de fonctionnement sont particulièrement onéreuses. Exemples : scanographes, caméras à scintillation, etc.Ils sont soumis à l'autorisation du Directeur Général de l’ARS et leur liste est fixée par décret en Conseil d'Etat. L’article R. 6122-2 du CSP référence ces équipements matériels lourds.L’arrêté du DG ARS mentionne le type d’EML, le numéro FINESS de l’entité juridique responsable (EJ) et le numéro FINESS de l’établissement (i.e. l’entité géographique, EG) dans lequel elle est implantée (synonyme : mise en œuvre). La modélisation actuelle prévoit que l’EG d’implantation est toujours rattaché juridiquement à l’EJ dans FINESS.Les attributs de classe sont nommés conformément aux notions du SI mutualisé des ARS «ARHGOS» qui est propriétaire des données des EML.Les données publiées par l’ANS proviennent du SI FINESS qui les reçoit du SI ARHGOS :** Une autorisation est « active » à la date du jour si :    ** sa date de première mise en œuvre est renseignée et inférieure ou égale à la date du jour    ** sa date d'échéance est supérieure ou égale à la date du jour.** Dans FINESS les attributs peuvent être nommés de manière différente du SI source ARHGOS : dans ce cas, le synonyme FINESS de l’attribut est indiqué dans la colonne description. De rares attributs sont spécifiques à FINESS.Le périmètre des autorisations des équipements matériels lourds présentes dans FINESS recouvre :1- Les autorisations en attente de première mise en œuvre : la date de début (i.e. date de première mise en œuvre) n'est pas renseignée ou supérieure à la date du jour;2- Les autorisations actives:      ** la date début (i.e. date de première mise en œuvre) est renseignée et inférieure ou égale à la date du jour,     ** la date de fin est supérieure ou égale à la date du jour;3- Les autorisations échues, dont la date de fin est inférieure à la date du jour, et qui couvrent plusieurs cas :        a- Le renouvellement est en cours d’instruction (cas le plus courant);        b- Un autre événement (injonction, changement d’implantation,…) est en cours d’instruction au vu du dossier;        c- L’autorisation va devenir caduque, après quoi elle ne sera plus présente dans FINESS;        Dans chacun des 3 cas (a, b, c), la mise à jour dans les bases de données va avoir lieu (SI ARHGOS > SI FINESS > service de publication annuaire santé de l'ANS). En attendant la mise à jour des bases de données, il est possible de considérer les autorisations échues présentes dans FINESS comme toujours actives.        Les autorisations caduques ou retirées ne sont pas présentes dans FINESS.",
        "exampleBoolean" : false,
        "groupingId" : "Autorisation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EquipementSpecifique"
        },
        "name" : "EquipementSpecifique",
        "description" : "Un équipement spécifique est une ressource matérielle discriminante pour la réalisation d'une prestation et sert à faciliter l’orientation du patient. Un équipement spécifique est une ressource propre de la structure ou mise à disposition dans le cadre d'une convention à la condition qu’elle soit utilisée sur site.Les équipements décrits dans cette classe concernent des actes spécifiques ou non. Seules les ressources discriminantes sont retenues, c’est-à-dire que les seuls équipements décrits concernent les équipements qui ne sont pas implicites pour un acte donné.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/familleActiviteOperationnelle-vs"
        },
        "name" : "FamilleactiviteoperationnelleVs",
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Groupement"
        },
        "name" : "Groupement",
        "description" : "Ensemble de personnes et d’entités ayant un ou des objectifs communs. Les propriétés du groupement sont distinctes de celles des membres qui le composent. Le groupement peut exister sur une période limitée et ses membres peuvent varier pour atteindre les objectifs fixés.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/LicenceExploitation"
        },
        "name" : "LicenceExploitation",
        "description" : "Informations descriptives de la licence d’exploitation d’une officine.",
        "exampleBoolean" : false,
        "groupingId" : "Accord"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Lieu"
        },
        "name" : "Lieu",
        "description" : "Informations relatives à une portion déterminée de l'espace, fixe ou mobile du point de vue de son affectation ou de ce qui s'y passe.Cas particulier de l'entité géographique : plusieurs lieux peuvent être associés à une même EG, ils peuvent décrire, à la fois, son addresse et des lieux spécifiques à l'EG.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
          "reference" : "StructureDefinition/LieuRealisationOffre"
        },
        "name" : "LieuRealisationOffre",
        "description" : "Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge.",
        "exampleBoolean" : false,
        "groupingId" : "Ressources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Membre"
        },
        "name" : "Membre",
        "description" : "Personne ou entité faisant partie d'un groupement.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MesureCapacite"
        },
        "name" : "MesureCapacite",
        "description" : "Les mesures d’une capacité d’accueil précisent une série d’enregistrements indiquant la quantité de lits (ou de places) dans un statut particulier (disponible,…) et dans une temporalité donnée. Le cumul des mesures de capacité donne une vision complète de la capacité d’accueil.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/MesureProtection"
        },
        "name" : "MesureProtection",
        "description" : "La maladie, le handicap, l'accident peuvent altérer les facultés d'une personne et la rendre incapable de défendre ses intérêts. Le juge peut alors décider d'une mesure de protection juridique par laquelle une autre personne l'aide à protéger ses intérêts. La protection doit être la moins contraignante possible, et en priorité être exercée par la famille. Elle distingue aussi les cas où la personne conserve encore ses facultés, mais est en grande difficulté sociale. (service-public.fr)",
        "exampleBoolean" : false,
        "groupingId" : "Accompagnant"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/NoteLiaison"
        },
        "name" : "NoteLiaison",
        "description" : "Les notes de liaison permet d’assurer un suivi « terrain » de la personne prise en charge et de garder en temps réel, une vue précise de la situation de cette personne prise en charge.Les notes peuvent concerner, par exemple, des symptômes observés, des résultats d’analyses, des avis et observations, etc.Les notes sont créées automatiquement ou manuellement, par des professionnels, des dispositifs médicaux, des logiciels métier, une personne tierce en contact direct ou indirect avec la personne prise en charge, ou bien par la personne prise en charge elle-même. Note : les logiciels métier et systèmes ne sont pas représentés dans le MOS.",
        "exampleBoolean" : false,
        "groupingId" : "Dossier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Observation"
        },
        "name" : "Observation",
        "description" : "Une mesure ou une déclaration constitue une observation effectuée sur une personne.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/OffreOperationnelle"
        },
        "name" : "OffreOperationnelle",
        "description" : "L'Offre opérationnelle correspond aux prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne.",
        "exampleBoolean" : false,
        "groupingId" : "Offre"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/OrganisationInterne"
        },
        "name" : "OrganisationInterne",
        "description" : "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l'organisation opérationnelle interne d'une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l'EG n'est pas obligatoire. Lorsqu'elle est décrite cette organisation porte les ressources opérationnelles.",
        "exampleBoolean" : false,
        "groupingId" : "Organisation"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Parent"
        },
        "name" : "Parent",
        "description" : "Personne liée par un lien de filiation à un enfant",
        "exampleBoolean" : false,
        "groupingId" : "Accompagnant"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/Patientele"
        },
        "name" : "Patientele",
        "description" : "Une patientèle est un ensemble de patients présentant des caractéristiques permettant d'orienter leur prise en charge par une structure de santé.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PersonnePriseCharge"
        },
        "name" : "PersonnePriseCharge",
        "description" : "Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PlageDisponibilite"
        },
        "name" : "PlageDisponibilite",
        "description" : "Horaires de disponibilité pour la prise de rendez - vous de l'agenda. Par exception, cet objet permet de renseigner les périodes sur lesquelles l'agenda est indisponible à la prise de rendez - vous.",
        "exampleBoolean" : false,
        "groupingId" : "Agenda"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PlageReference"
        },
        "name" : "PlageReference",
        "description" : "La plage de référence, constituée d’une borne inférieure et d’une borne supérieure, fournit un guide pour interpréter une valeur en la comparant à ces bornes.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PoleActivite"
        },
        "name" : "PoleActivite",
        "description" : "Loi HPST, art.13: \"Pour les établissements publics de santé, le directeur définit l'organisation de l'établissement en pôles d'activité conformément au projet médical d'établissement, après avis [...]. Le directeur général de l'agence régionale de santé peut autoriser un établissement à ne pas créer de pôles d'activité quand l'effectif médical de l'établissement le justifie.Les pôles d'activité peuvent comporter des structures internes de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques ainsi que les structures médico-techniques qui leur sont associées\".Extrait de \"La loi HPST à l'hôpital, les clés pour comprendre - Ministère de la Santé- ANAP\": \"Les pôles d’activité clinique et médico-technique peuvent comporter des \"structures internes\" de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques\".Les pôles peuvent être multi-sites, c'est à dire qu'un même pôle peut comporter des structures internes situées dans différentes entités géographiques d'une même entité juridique.",
        "exampleBoolean" : false,
        "groupingId" : "Organisation"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/professionRessource-vs"
        },
        "name" : "ProfessionressourceVs",
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
          "reference" : "ValueSet/relation-vs"
        },
        "name" : "RelationVs",
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
          "reference" : "StructureDefinition/RendezVous"
        },
        "name" : "RendezVous",
        "description" : "Rencontre prévue entre au moins deux personnes à une heure et dans un lieu déterminé. Par exemple, une entrevue entre un patient et un professionnel qui peut nécessiter la réservation d’une salle de consultation à une heure définie. Un rendez-vous peut occuper un ou plusieurs créneaux.",
        "exampleBoolean" : false,
        "groupingId" : "Agenda"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ResultatObservation"
        },
        "name" : "ResultatObservation",
        "description" : "Résultat de la mesure ou de l’observation effectuée sur un personne.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/secteurActivite-vs"
        },
        "name" : "SecteuractiviteVs",
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
          "reference" : "StructureDefinition/StructureInterne"
        },
        "name" : "StructureInterne",
        "description" : "Une structure interne peut être composée d'une ou plusieurs unités médicales fonctionnelles.L’appellation des structures internes des pôles est aussi laissée à la libre appréciation des établissements : il peut s’agir de services, d’unités, de centres, d’instituts, de départements, ou de toute autre appellation. Lorsque les services demeurent, les chefs de service sont placés sous l’autorité fonctionnelle du chef de pôle (cf. \"La loi HPST à l'hôpital, les clés pour comprendre\" - Ministère de la Santé - ANAP).Synonyme : Service, unité, centre, institut, département, etc.",
        "exampleBoolean" : false,
        "groupingId" : "Organisation"
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
        "exampleBoolean" : false,
        "groupingId" : "Professionnel"
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
          "reference" : "StructureDefinition/TarifPrestation"
        },
        "name" : "TarifPrestation",
        "description" : "Prix des prestations et services d'une entité géographique.",
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
        "exampleBoolean" : false,
        "groupingId" : "Classes communes"
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
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/UniteFonctionnelle"
        },
        "name" : "UniteFonctionnelle",
        "description" : "L'unité fonctionnelle (UF) désigne la plus petite unité compatible avec les contraintes de gestion qui présente une activité médicale homogène.",
        "exampleBoolean" : false,
        "groupingId" : "Organisation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VieProfessionnelle"
        },
        "name" : "VieProfessionnelle",
        "description" : "/!\\ Classe en cours de constructionInformations relatives à la vie professionnelle de la personne prise en charge.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VieQuotidienne"
        },
        "name" : "VieQuotidienne",
        "description" : "/!\\ Classe en cours de constructionInformations relatives à la vie quotidienne de la personne prise en charge.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VieScolaire"
        },
        "name" : "VieScolaire",
        "description" : "/!\\ Classe en cours de constructionInformations relatives à la vie scolaire de la personne prise en charge.",
        "exampleBoolean" : false,
        "groupingId" : "Personne"
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
                  "valueUrl" : "accompagnant.html"
                }
              ],
              "nameUrl" : "accompagnant.html",
              "title" : "Accompagnant",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "accord.html"
                }
              ],
              "nameUrl" : "accord.html",
              "title" : "Accord",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "agenda.html"
                }
              ],
              "nameUrl" : "agenda.html",
              "title" : "Agenda",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "autorisation.html"
                }
              ],
              "nameUrl" : "autorisation.html",
              "title" : "Autorisation",
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
                  "valueUrl" : "dispositif-medical.html"
                }
              ],
              "nameUrl" : "dispositif-medical.html",
              "title" : "Dispositif médical",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "dossier.html"
                }
              ],
              "nameUrl" : "dossier.html",
              "title" : "Dossier",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "offre-operationnelle.html"
                }
              ],
              "nameUrl" : "offre-operationnelle.html",
              "title" : "Offre opérationnelle",
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
                  "valueUrl" : "professionnel_2.html"
                }
              ],
              "nameUrl" : "professionnel_2.html",
              "title" : "Professionnel_2",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "professionnel_3.html"
                }
              ],
              "nameUrl" : "professionnel_3.html",
              "title" : "Professionnel_3",
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
