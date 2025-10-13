import os
import shutil
import json


def organize_files(sections, path):
    """
    Organise les fichiers par dossier selon les parties du MOS.

    Args:
        sections (dict): Dictionnaire d'organisation des fichiers par partie.
        path (str): Chemin des fichiers.
    """
    for section, files in sections.items():
        if len(files) > 0:
            section_path = os.path.join(path, section)
            os.mkdir(section_path)
            for file in files:
                shutil.move(os.path.join(path, file + '.fsh'), os.path.join(section_path, file + '.fsh'))


with open('sections.json', 'r') as file:
    sections = json.load(file)
organize_files(sections, "..\\input\\fsh\\logicals")
# Le fichier sushi-config.yaml est modifié par goFSH donc il est sauvegardé pour remettre la bonne version ensuite.
shutil.move("./sushi-config.yaml", "../sushi-config.yaml")