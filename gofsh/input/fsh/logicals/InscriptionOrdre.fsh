Logical: InscriptionOrdre
Id: InscriptionOrdre
* ^status = #draft
* . ^short = " Eléments permettant de retrouver les informations d'inscription à un ordre par rapport à la profession de la personne physique sur une période et un département donnéSynonymes RPPS : Inscription à ordre"
* . ^definition = " Eléments permettant de retrouver les informations d'inscription à un ordre par rapport à la profession de la personne physique sur une période et un département donnéSynonymes RPPS : Inscription à ordre"
* . ^type.code = "Element"
* ordre 0..1 Coding " Instance de régulation d'une profession de santé réglementée." " Instance de régulation d'une profession de santé réglementée."
* ordre from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/Ordre-vs (preferred)
* dateDebutInscription 0..1 date " Date d’inscription de la personne au tableau de l’ordre." " Date d’inscription de la personne au tableau de l’ordre."
* dateRadiation 0..1 date " Date à partir de laquelle la personne n’est plus autorisée à exercer la profession pour laquelle elle a été inscrite." " Date à partir de laquelle la personne n’est plus autorisée à exercer la profession pour laquelle elle a été inscrite."
* statutInscription 0..1 Coding " Information indiquant l’avancement du traitement du dossier d'inscription de la personne." " Information indiquant l’avancement du traitement du dossier d'inscription de la personne."
* statutInscription from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/StatutInscription-vs (preferred)
* conseilDepartemental 0..1 Coding " Département du Conseil départemental." " Département du Conseil départemental."
* conseilDepartemental from https://interop.esante.gouv.fr/ig/fhir/mos/ValueSet/DepartementOM-vs (preferred)