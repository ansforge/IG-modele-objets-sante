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
ref1 = '* professionnel 1..1 Reference(Professionnel) "Lien vers la classe Professionnel" '
add_line_fsh(exercicePro_path, ref1)

################# STRUCTURE

EG_path = "../input/fsh/logicals/Structure/EntiteGeographique.fsh"
ref_EG_1 = '* entiteJuridique 1..1 Reference(EntiteJuridique) "Lien vers la classe EntiteJuridique."'
add_line_fsh(EG_path, ref_EG_1)