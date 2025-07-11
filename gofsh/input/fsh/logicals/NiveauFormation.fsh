Logical: NiveauFormation
Id: NiveauFormation
* ^status = #draft
* . ^short = " Le niveau de formation décrit le niveau de formation de l’étudiant, comme demandé par le décret n°2010-701 et complété par le décret n°2011-462."
* . ^definition = " Le niveau de formation décrit le niveau de formation de l’étudiant, comme demandé par le décret n°2010-701 et complété par le décret n°2011-462."
* . ^type.code = "Element"
* diplome 0..1 https://interop.esante.gouv.fr/ig/fhir/mos/StructureDefinition/Diplome " Diplôme acquis pour les cycles terminés (cas des diplômes de deuxième cycle pour étudiants qui font un troisième cycle) ou diplôme préparé pour les cycles en cours." " Diplôme acquis pour les cycles terminés (cas des diplômes de deuxième cycle pour étudiants qui font un troisième cycle) ou diplôme préparé pour les cycles en cours."
* natureCycleFormation 0..1 Coding " Nature du cycle de formation:- Deuxième cycle,- Troisième cycle court,- Troisième cycle long/Internat." " Nature du cycle de formation:- Deuxième cycle,- Troisième cycle court,- Troisième cycle long/Internat."
* natureCycleFormation from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/NatCycleForm-vs (preferred)
* niveauFormationAcquis 0..1 Coding " Niveau de validité dans le cycle de formation." " Niveau de validité dans le cycle de formation."
* niveauFormationAcquis from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/NiveauFormAcquis-vs (preferred)
* anneeUniversitaire 0..1 Coding " Année universitaire, exemple : 2015-2016." " Année universitaire, exemple : 2015-2016."
* anneeUniversitaire from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/AnneeUniversitaire-vs (preferred)
* dateFin 0..1 date " Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées). Cette date est renseignée par l’ordre à la clôture de l’exercice professionnel." " Date à laquelle le niveau de formation n’est plus actif (non visible hormis dans les données historisées). Cette date est renseignée par l’ordre à la clôture de l’exercice professionnel."