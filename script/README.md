# Contexte

Un script a été développé pour convertir le MOS (à partir du fichier excel issu de Modelio) en modèle logique FHIR. 

Ce script a été réalisé dans le cadre d’un POC. Des améliorations sont possibles en termes de robustesse, de performance et de qualité de code.

La conversion a été réalisée uniquement sur la partie Professionnel, à partir du excel disponible [ici](https://esante.gouv.fr/sites/default/files/media_entity/documents/MOS.xlsx) en juillet 2025.

# Instructions

## Prérequis

* Télécharger le MOS au format excel et le placer dans le dossier [script](./).
* Renseigner le fichier de configuration [conf.json](./conf.json) (actuellement rempli uniquement pour la partie Professionnel).
    * types.mapping : Mapping des types de données du MOS vers les types de données FHIR.
    * types.custom : Types de données du MOS à mapper sur un type de données FHIR existant qui doit être profilé à la main.
    * types.class : Types de données du MOS qui deviennent des classes dans le modèle logique FHIR. 
    * backbones : Classes pour lesquelles certains éléments deviennent des backbones.
    * inheritance : Classes ayant des classes filles.
* Installer [goFSH](https://github.com/FHIR/GoFSH), Python (version 3.10.11) et les librairies Python nécessaires indiquées dans le fichier [requirements.txt](./requirements.txt).
* Installer Python 3.10 

Environnement Python (pour Windows) : 
* Créer l'environnement : `python -m venv env`.
* Activer l'environnement : `env\Scripts\activate`.
* Installer les requirements `pip install -r requirements.txt`.

## Conversion

* Se placer dans le dossier [script](./).
* Exécuter le script python [mos2ml.py](./mos2ml.py) qui génère les ressources FHIR au format json dans le dossier [json](./json/) : `python mos2ml.py`.
* Convertir les fichiers json en fsh dans le dossier [fsh](../input/fsh/) : `gofsh ./json -o ..`.
* Exécuter le script python [fsh_files_organization.py](./fsh_files_organization.py) qui organise les fichiers fsh par partie du MOS dans le dossier [fsh](../input/fsh/logicals/) : `python fsh_files_organization.py`.

### Notes

* L'attribut `metadonnee` est ignoré.
* Les tables d'association sont ignorées.
* Les élements FHIR `short` et `definition`sont tous deux remplis avec la définition issue du MOS qui peuvent être assez longue.

## Génération de diagrammes

* Exécuter `_genonce.bat` à la racine du projet.
* Se placer dans le dossier [script](./) et exécuter le script python [generate_plantuml.py](./generate_plantuml.py) qui génère le diagramme global et les diagrammes par partie au format plantuml dans le dossier [images-source](../input/images-source/) : `python generate_plantuml.py`.

### Notes

Actuellement :
- Le sens des flèches est fixe (toujours "-->").
- Les héritages ne sont pas affichés.
- Les backbones sont affichés en bleu.