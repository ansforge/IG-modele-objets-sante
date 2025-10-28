################# AJOUT DE LIGNE DANS UN FICHIER FSH
def add_line_fsh(file_path, line):
    """
    Ajoute line dans le fichier file_path s'il n'est pas déjà présent.
    """
    try:
        with open(file_path, "r+", encoding="utf-8") as f:
            content = f.read()
            if line.strip() not in content:
                if not content.endswith("\n"):
                    f.write("\n")
                f.write(line)
    except FileNotFoundError:
        print(f"❌ Le fichier {file_path} n'existe pas.")



################# ALIAS

TRE_R394 = "Alias: $tre-r394-competence-metier = https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r394-competence-metier"
aliases_path = "../input/fsh/aliases.fsh"
add_line_fsh(aliases_path, TRE_R394)

################# PROFESSIONNEL

exercicePro_path = "../input/fsh/logicals/Professionnel/ExerciceProfessionnel.fsh"
ref_pro_1 = '* professionnel 1..1 Professionnel "Lien vers la classe Professionnel" '
add_line_fsh(exercicePro_path, ref_pro_1)

competenceMetier_path = "../input/fsh/logicals/Professionnel/CompetenceMetier.fsh"
ref_pro_2 = '* competenceMetier from competenceMetier-vs (preferred)'
add_line_fsh(competenceMetier_path, ref_pro_2)

situationExercice_path = "../input/fsh/logicals/Professionnel/SituationExercice.fsh"
ref_pro_3 = '* exerciceProfessionnel 1..1 ExerciceProfessionnel "Lien vers la classe ExerciceProfessionnel." '
add_line_fsh(situationExercice_path , ref_pro_3)

situationOperationnelle_path = "../input/fsh/logicals/Professionnel/SituationOperationnelle.fsh"
ref_pro_4 = '* exerciceProfessionnel 1..1 ExerciceProfessionnel "Lien vers la classe ExerciceProfessionnel."'
add_line_fsh(situationOperationnelle_path, ref_pro_4)

savoirFaire_path = "../input/fsh/logicals/Professionnel/SavoirFaire.fsh"
ref_pro_5 = '* exerciceProfessionnel 1..1 ExerciceProfessionnel "Lien vers la classe ExerciceProfessionnel."'
add_line_fsh(savoirFaire_path, ref_pro_5)

################# STRUCTURE

EG_path = "../input/fsh/logicals/Structure/EntiteGeographique.fsh"
ref_EG_1 = '* entiteJuridique 1..1 EntiteJuridique "Lien vers la classe EntiteJuridique."'
add_line_fsh(EG_path, ref_EG_1)

################# DISPOSITIF AUTHENTIFICATION

cartepro_path = "../input/fsh/logicals/Dispositif d'authentification/CarteProfessionnel.fsh"
ref_DA_1 = '* certificat 1..* Certificat "Lien vers la classe Certificat."'
add_line_fsh(cartepro_path, ref_DA_1)
