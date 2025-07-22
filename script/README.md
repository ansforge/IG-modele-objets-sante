# Contexte

Un script a été développé pour convertir le MOS (à partir du fichier excel issu de Modelio) en modèle logique FHIR. 

Ce script a été réalisé dans le cadre d’un POC. Des améliorations sont possibles en termes de robustesse, de performance et de qualité de code.

La conversion a été réalisée uniquement sur la partie Professionnel, à partir du excel disponible [ici](https://esante.gouv.fr/sites/default/files/media_entity/documents/MOS.xlsx) en juillet 2025.

# Instructions

## Prérequis

* Télécharger le MOS au format excel et le placer dans le dossier [script](./script).
* Renseigner le fichier de configuration [conf.json](./script/conf.json) (actuellement rempli uniquement pour la partie Professionnel).
    * types.mapping : Mapping des types de données du MOS vers les types de données FHIR.
    * types.custom : Types de données du MOS à mapper sur un type de données FHIR existant qui doit être profilé à la main.
    * types.class : Types de données du MOS qui deviennent des classes dans le modèle logique FHIR. 
    * backbones : Classes pour lesquelles certains éléments deviennent des backbones.
    * inheritance : Classes ayant des classes filles.
* Installer [goFSH](https://github.com/FHIR/GoFSH), Python (version 3.10.11) et les librairies Python nécessaires indiquées dans le fichier [requirements.txt](./script/requirements.txt).

## Conversion

* Exécuter le script python [mos2ml.py](./script/mos2ml.py) qui génère les ressources FHIR au format json.
* Convertir les fichiers json en fsh : `gofsh ./json -o ..`.
* Exécuter le script python [fsh_files_organization.py](./script/fsh_files_organizationl.py) qui organise les fichiers fsh par partie du MOS.

# Notes

* L'attribut `metadonnee` est ignoré.
* Les liens entre les classes ne sont pas traités.
* Les tables d'association sont ignorées.
* Les élements FHIR `short` et `definition`sont tous deux remplis avec la définition issue du MOS qui peuvent être assez longue.