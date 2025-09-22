Logical: PersonnePhysique
Id: PersonnePhysique
Title: "Classe PersonnePhysique du MOS"
Description: "Modèle logique pour représenter la classe PersonnePhysique du MOS."
* civilite 0..1 Code "Civilité de la personne physique. (FHIR: Person.name (HumanName.prefix)). Nomenclature(s) associée(s) : TRE_R81-Civilite"
* civilite from https://mos.esante.gouv.fr/NOS/JDV_J207-Civilite-ROR/FHIR/JDV-J207-Civilite-ROR
* nomFamille 0..1 Texte "Nom de naissance (ou patronymique). (FHIR: Person.name (HumanName.family))"
* nomUsage 0..1 Texte "Nom d'usage de la personne. (FHIR: Person.name (HumanName.use='Usual' + HumanName.family))"
* prenom 0..* Texte "Prénom(s) déclarés à la naissance. (FHIR: Person.name (HumanName.given))"
* prenomUsuel 0..1 Texte "Prénom usuel, parmi les prénoms de naissance. (FHIR: Person.name (HumanName.given))"
* pseudonyme 0..1 Texte "Nom de fantaisie librement choisi."
* surnom 0..1 Texte "Nom ajouté par le public pour distinguer la personne."
* sexeAdministratif 0..1 Code "Sexe administratif (état civil). (FHIR: Person.gender). Nomenclature(s) associée(s) : TRE_R10-SexeAdministratif, ASS_A15-SexeProvenanceISO-Sexe"
* sexeAdministratif from https://mos.esante.gouv.fr/NOS/JDV_J112-SexeAdministratif-ENREG/FHIR/JDV-J112-SexeAdministratif-ENREG
* sexe 0..1 Code "Sexe de la personne (masculin, féminin, inconnu). (FHIR: Person.gender, OMOP V5.4: Person.gender_concept_id). Nomenclature(s) : TRE_R249-Sexe, ASS_A15-SexeProvenanceISO-Sexe, TRE_R267-SexeProvenanceISO, TRE_R303-HL7v3AdministrativeGender"
* sexe from https://mos.esante.gouv.fr/NOS/JDV_J262-Sexe/FHIR/JDV-J262-Sexe
* langueParlee 0..* LangueParlee "Langue(s) parlée(s) par la personne, y compris le français."
* situationFamiliale 0..1 Code "Situation familiale (célibataire, marié, etc.)."
* dateNaissance 0..1 Date "Date de naissance. (FHIR: Person.birthDate, OMOP V5.4: Person.birth_datetime)"
* dateDeces 0..1 Date "Date de décès. (OMOP V5.4: Death.death_datetime)"
* communeNaissance 0..1 Code "Commune de naissance (COG). (FHIR: Person.address.city). Nomenclature(s) : TRE_R13-CommuneOM"
* communeNaissance from https://mos.esante.gouv.fr/NOS/JDV_J124-Commune/FHIR/JDV-J124-Commune
* departementNaissance 0..1 Code "Département de naissance (COG). (FHIR: Person.address.city ou Address.state). Nomenclature(s) : TRE_G09-DepartementOM"
* departementNaissance from https://mos.esante.gouv.fr/NOS/JDV_J258-Departement/FHIR/JDV-J258-Departement
* paysNaissance 0..1 Code "Pays de naissance (COG). (FHIR: Person.address.country). Nomenclature(s) : TRE_R20-Pays, ASS_A25-PaysProvenanceISO-PaysProvenanceCOG, TRE_R268-PaysProvenanceISO"
* paysNaissance from https://mos.esante.gouv.fr/NOS/JDV_J256-Pays/FHIR/JDV-J256-Pays
* lieuNaissance 0..1 Code "Lieu de naissance (commune ou pays COG). (FHIR: Person.address.city ou Address.state). Nomenclature(s) : TRE_R20-Pays, TRE_R13-CommuneOM"
* lieuNaissance from https://mos.esante.gouv.fr/NOS/JDV_J256-Pays/FHIR/JDV-J256-Pays
* statutEtatCivil 0..1 Code "Statut de la demande de certification d'état civil.. Nomenclature(s) : TRE_R31-StatutEtatCivil"
* statutEtatCivil from https://mos.esante.gouv.fr/NOS/JDV_J111-StatutEtatCivil-ENREG/FHIR/JDV-J111-StatutEtatCivil-ENREG
* dateStatutEtatCivil 0..1 Date "Date de transmission du statut d’état civil."
* dateAcquisitionNatFR 0..1 Date "Date d'acquisition de la nationalité française (si acquise après la naissance)."
* paysNationalite 0..1 Code "Pays de nationalité actuelle ou espace conventionné. (FHIR: Person.address.country). Nomenclature(s) : TRE_R20-Pays, ASS_A25-PaysProvenanceISO-PaysProvenanceCOG, TRE_R268-PaysProvenanceISO, TRE_R89-RegroupementPays"
* paysNationalite from https://mos.esante.gouv.fr/NOS/JDV_J256-Pays/FHIR/JDV-J256-Pays
* paysResidence 0..1 Code "Pays de résidence permanente. (FHIR: Person.address.country). Nomenclature(s) : TRE_R20-Pays, ASS_A25-PaysProvenanceISO-PaysProvenanceCOG"
* paysResidence from https://mos.esante.gouv.fr/NOS/JDV_J256-Pays/FHIR/JDV-J256-Pays
* professionCategorieSocioProfessionnelle 0..1 Code "Profession et catégorie socio-professionnelle (PCS).. Nomenclature(s) : TRE_R262-CategorieSocioProfessionnelle, TRE_R292-INSEECategorieSocioProfessionnelleAgrNiv1"
* professionCategorieSocioProfessionnelle from VS_TRE_R262_CategorieSocioProfessionnelle
* causeMortalite 0..1 Code "Cause(s) de décès (codes CIM-10, niveaux 3 ou 4)."
* tailleCorporelle 0..1 Mesure "Taille du corps (m, cm, etc.)."
* poidsCorporel 0..1 Mesure "Masse du corps (kg, g, etc.)."
* surfaceCorporelle 0..1 Mesure "Surface corporelle (m²) calculée selon les formules adaptées (adulte/enfant)."
* indiceMasseCorporelle 0..1 Mesure "Indice de masse corporelle (IMC = poids(kg) / taille(m)²)."