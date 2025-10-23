alias_line = "Alias: $tre-r394-competence-metier = https://smt.esante.gouv.fr/fhir/CodeSystem/tre-r394-competence-metier"
file_path = "../input/fsh/aliases.fsh"

# Lecture du fichier
with open(file_path, "r+", encoding="utf-8") as f:
    content = f.read()
    # On vérifie si la ligne est déjà là
    if alias_line.strip() not in content:
        # On se place à la fin et on ajoute la ligne
        if not content.endswith("\n"):
            f.write("\n")
        f.write(alias_line)


exercicePro_path = "../input/fsh/logicals/Professionnel/ExerciceProfessionnel.fsh"
ref1 = '* professionnel 1..1 Reference(Professionnel) "Lien vers la classe Professionnel" '

# Lecture du fichier
with open(exercicePro_path, "r+", encoding="utf-8") as f:
    content = f.read()
    # On vérifie si la ligne est déjà là
    if ref1.strip() not in content:
        # On se place à la fin et on ajoute la ligne
        if not content.endswith("\n"):
            f.write("\n")
        f.write(ref1)
