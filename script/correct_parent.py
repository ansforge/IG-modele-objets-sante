import os

# Dossier racine à parcourir
root_dir = "../input/fsh/logicals"

for dirpath, dirnames, filenames in os.walk(root_dir):
    for filename in filenames:
        # On peut filtrer selon l'extension si nécessaire, par ex. ".txt"
        if filename.endswith(".fsh"):
            file_path = os.path.join(dirpath, filename)
            
            with open(file_path, "r", encoding="utf-8") as f:
                lines = f.readlines()

            # Vérifie que la ligne "Parent:" n'existe pas déjà
            if not any(line.startswith("Parent:") for line in lines):
                # Récupère la valeur de Id
                base = None
                for line in lines:
                    if line.startswith("Id:"):
                        base = line.split(":", 1)[1].strip()
                        break
                
                if base:
                    # Insère la ligne après la première ligne
                    lines.insert(1, f"Parent: $Base\n")
                    
                    # Réécrit le fichier
                    with open(file_path, "w", encoding="utf-8") as f:
                        f.writelines(lines)
                    print(f"Ligne Parent ajoutée dans {file_path}")
                else:
                    print(f"Aucun Id trouvé dans {file_path}, impossible d'ajouter Parent")
