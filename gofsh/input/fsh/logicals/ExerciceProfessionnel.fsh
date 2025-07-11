Logical: ExerciceProfessionnel
Id: ExerciceProfessionnel
* ^status = #draft
* . ^short = " Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné."
* . ^definition = " Informations décrivant notamment la profession exercée, l'identité d'exercice d'un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné."
* . ^type.code = "Element"
* civiliteExercice 0..1 Coding " Civilité d’exercice du professionnel." " Civilité d’exercice du professionnel."
* civiliteExercice from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/CiviliteExercice-vs (preferred)
* nomExercice 0..1 string " Nom sous lequel exerce le professionnel." " Nom sous lequel exerce le professionnel."
* prenomExercice 0..1 string " Prénom sous lequel exerce le professionnel." " Prénom sous lequel exerce le professionnel."
* profession 0..1 Coding " Profession exercée ou future profession de l'étudiant." " Profession exercée ou future profession de l'étudiant."
* profession from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/profession-vs (preferred)
* typeProfession 0..1 Coding " Indique le type de profession de la personne.Exemples :** Professionnel de santé** Usager de titre** Professionnel secteur social** etc." " Indique le type de profession de la personne.Exemples :** Professionnel de santé** Usager de titre** Professionnel secteur social** etc."
* typeProfession from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/typeProfession-vs (preferred)
* categorieProfessionnelle 0..1 Coding " Indique si le professionnel exerce sa profession en tant que :** M: Agent public** C: Civil** F: Fonctionnaire ** E: EtudiantL'autorité d'enregistrement du professionnel dépend de la catégorie de sa profession." " Indique si le professionnel exerce sa profession en tant que :** M: Agent public** C: Civil** F: Fonctionnaire ** E: EtudiantL'autorité d'enregistrement du professionnel dépend de la catégorie de sa profession."
* categorieProfessionnelle from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/CategorieProfessionnelle-vs (preferred)
* dateEffetExercice 0..1 date " Date à partir de laquelle le professionnel exerce cette profession." " Date à partir de laquelle le professionnel exerce cette profession."
* dateFinEffetExercice 0..1 date " Date à partir de laquelle le professionnel n’exerce plus cette profession." " Date à partir de laquelle le professionnel n’exerce plus cette profession."
* departementPremierReferencementAE 0..1 Coding " Code du département du premier référencement, pour un référencement de nature « inscription à l’ordre »." " Code du département du premier référencement, pour un référencement de nature « inscription à l’ordre »."
* departementPremierReferencementAE from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/DepartementOM-vs (preferred)
* boiteLettresMSS 0..* https://interop.esante.gouv.fr/ig/fhir/mos/StructureDefinition/BoiteLettreMSS " Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'exercice professionnel du professionnel." " Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'exercice professionnel du professionnel."