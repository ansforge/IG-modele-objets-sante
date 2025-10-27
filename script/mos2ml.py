import pandas as pd
import json
import unicodedata
import re
import shutil


def split_nomenclatures(text):
    """
    Découpe une chaîne en segments commençant par 'TRE_' ou 'ASS_'.
    
    Args:
        text (str): Chaîne de caractères à découper (issu de la colonne 'Nomenclature' du fichier excel MOS).
    Returns:
        list[str]: Liste de sous-chaînes correspondant à chaque segment trouvé.
    """
    splits = re.findall(r'(?:TRE_|ASS_).*?(?=TRE_|ASS_|$)', text)
    return splits

def get_valueset(termino, attribute, url, url_termino, output_path):
    """
    Retourne l'url du jeu de valeur associé à un attribut et le crée si nécessaire (cas plusieurs nomenclatures).

    Args:
        termino (list[str]): Liste de nomenclatures.
        attribute (str): Nom de l'attribut.
        url (str): URL canonique de l'IG.
        url_termino (str): URL canonique des nomenclatures.
        output_path (str): Chemin de destination pour la création des fichiers.
        str: URL du jeu de valeur associé à l'attribut.
    """
    tre = [t for t in termino if t.startswith("TRE_")]
    if len(tre) == 1:
        url_vs = url_termino + tre[0] + "/FHIR/" + tre[0].replace('_', '-') + "?vs"
    else:
        name = attribute
        include = []
        for t in tre:
            include.append({"system": url_termino + t + "/FHIR/" + t.replace("_", "-")})
        vs = {
            "resourceType": "ValueSet",
            "id": name + "-vs",
            "url": url + "ValueSet/" + name + "-vs",
            "status": "draft",
            "compose": {
                "include": include
            }
        }
        with open(output_path + name + "-vs.json", "w", encoding="utf-8") as outfile:
            json.dump(vs, outfile, ensure_ascii=False)
        url_vs = name + "-vs"
    return url_vs

def create_element(row, base, url, url_termino, conf, custom, common, output_path):
    """
    Retourne l'élément d'une StructureDefinition FHIR au format json.

    Args:
        row : Ligne du dataframe (pandas) correspondant à l'excel MOS.
        base (str): Nom de la StructureDefinition.
        url (str): URL canonique de l'IG.
        url_termino (str): URL canonique des nomenclatures.
        conf (dict): Paramètres de configuration pour la conversion.
        custom (list[str]): Liste des types de données à profiler.
        common (list[str]): Liste des classes communes utilisées.
        output_path (str): Chemin de destination pour la création des fichiers.
    Returns:
        element (dict): Elément au format json.
        custom (list[str]): Liste des types de données à profiler mise à jour.
        common (list[str]): Liste des classes communes utilisées mise à jour.
    """
    element = None
    if not pd.isnull(row["Attribut"]):
        attribute = unicodedata.normalize('NFKD', row["Attribut"]).encode('ASCII', 'ignore').decode('utf-8')
        attribute = re.sub(r'[^A-Za-z0-9]', '', attribute) 
        if attribute != "metadonnee":
            binding = None
            min, max = row["Cardinalité"].strip("[]").split("..")
            type = row["Type"].strip()
            type_new = type
            if type in conf["types"]['mapping'].keys():
                type_new =  conf["types"]['mapping'][type]
                if (type_new == "Coding" or type_new == "CodeableConcept"):
                    if not pd.isnull(row["Nomenclature"]) and len(row["Nomenclature"].strip()) > 0:
                        nomenclatures = split_nomenclatures(row["Nomenclature"])
                        if len(nomenclatures) > 0:
                            binding = get_valueset(nomenclatures, attribute, url, url_termino, output_path)
                        else:
                            print("Incorrect nomenclature format for attribute " + attribute + " of type " + type + ": " + row["Nomenclature"])
                    else:
                        print("Attribut of type " + type + " without nomenclature: " + attribute)
            elif type in conf["types"]["custom"]:
                if type not in custom:
                    custom.append(type)
            elif type in conf["types"]["class"]:
                if type not in common:
                    common.append(type)
            else:
                print("Type not mapped in configuration file: " + type)
            element = {
                "id": base + '.' + attribute,
                "path": base + '.' + attribute,
                "definition": row["Description"].strip(),
                "short": row["Description"].strip(),
                "min": int(min),
                "max": str(max),
                "type": [{"code": type_new}]
            }
            if binding:
                element["binding"] = {
                    "strength": "preferred",
                    "valueSet": binding
                }
    return (element, custom, common)

def create_sd(name, url, url_termino, conf, data, inheritance, custom, common, sections, output_path):
    """
    Crée la StructureDefinition FHIR au format json.

    Args:
        name (str): Nom de la StructureDefinition.
        url (str): URL canonique de l'IG.
        url_termino (str): URL canonique des nomenclatures.
        conf (dict): Paramètres de configuration pour la conversion.
        data (DataFrame pandas): Données de l'excel MOS.
        inheritance (str): Classe mère.
        custom (list[str]): Liste des types de données à profiler.
        common (list[str]): Liste des classes communes utilisées.
        sections (dict): Dictionnaire d'organisation des fichiers par partie.
        output_path (str): Chemin de destination pour la création des fichiers.
    Returns:
        custom (list[str]): Liste des types de données à profiler mise à jour.
        common (list[str]): Liste des classes communes utilisées mise à jour.
        sections (dict): Dictionnaire d'organisation des fichiers par partie mis à jour.
    """
    group = data[data["Classe"] == name]
    elements = []
    class_without_attribute = group[group['Attribut'].isnull()]
    class_desc = class_without_attribute.iloc[0]['Description'].strip()
    sd = {
        "resourceType": "StructureDefinition",
        "id": name,
        "title": name,
        "url": url + "StructureDefinition/" + name,
        "name": name,
        "description": class_desc,
        "status": "draft",
        "kind": "logical",
        "abstract": False,
        "type": url + "StructureDefinition/" + name,
        "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
        "derivation" : "specialization",
        "differential": {}
    }
    if inheritance:
        sd["baseDefinition"] = url + "StructureDefinition/" + inheritance
    section = class_without_attribute.iloc[0]['Partie']
    if len(class_without_attribute) > 1:
        print("Several descriptions for class: " + name)
    elements.append({
        "id": name,
        "path": name,
        "definition": class_desc.strip(),
        "short": class_desc.strip(),
        "min": 0,
        "max": "*",
    })
    for _, row in group.iterrows():
        (element, custom, common) = create_element(row, name, url, url_termino, conf, custom, common, output_path)
        if element is not None:
            elements.append(element)
    if name in conf["backbones"].keys():
        backbones = conf["backbones"][name].keys()
        for backbone in backbones:
            data_backbone = data[data["Classe"] == backbone]
            backbone_without_attribute = data_backbone[data_backbone['Attribut'].isnull()]
            backbone_desc = backbone_without_attribute.iloc[0]['Description']
            if len(backbone_without_attribute) > 1:
                print("Several descriptions for class (backbone): " + name)
            elements.append({
                "id": name + '.' + backbone,
                "path": name + '.' + backbone,
                "definition": backbone_desc.strip(),
                "short": backbone_desc.strip(),
                "min": int(conf["backbones"][name][backbone]["min"]), 
                "max": str(conf["backbones"][name][backbone]["max"]),
                "type": [{ "code": "Base" }]
            })
            for _, row in data_backbone.iterrows():
                (element, custom, common) = create_element(row, name + '.' + backbone, url, url_termino, conf, custom, common, output_path)
                if element is not None:
                    elements.append(element)
    sd["differential"]["element"] = elements
    with open(output_path + name + ".json", "w", encoding="utf-8") as outfile:
        json.dump(sd, outfile, ensure_ascii=False)
    sections[section].append(name)
    return (custom, common, sections)

def mos2ml(MOS_path, conf_path,  url, url_termino, output_path, parts = None):
    """
    Convertit le MOS au format excel (extrait de Modelio) en modèle logique FHIR (fichiers JSON).

    Args:
        MOS_path (str): Chemin du fichier MOS excel.
        conf_path (str): Chemin du fichier de configuration pour la conversion.
        url (str): URL canonique de l'IG.
        url_termino (str): URL canonique des nomenclatures.
        output_path (str): Chemin de destination pour la création des fichiers.
        part (str): Restriction sur une partie du MOS à convertir (facultative).
    Returns:
        sections (dict): Dictionnaire d'organisation des fichiers par partie.
    """
    data = pd.read_excel(MOS_path)
    with open(conf_path, 'r') as file:
        conf = json.load(file)
    backbones_all = [key for section in conf["backbones"].values() for key in section]
    backones_reverse = {child: parent for parent, children in conf["inheritance"].items() for child in children}
    sections = {nom: [] for nom in data["Partie"].dropna().unique()}
    data_common = data[data["Partie"] == "Classes communes"]
    if parts:
        data = data[data["Partie"].isin(parts)]
    custom = []
    common = []
    classes = data["Classe"].dropna().unique()
    for name in classes:
        if name not in backbones_all:
            if name in backones_reverse:
                inheritance = backones_reverse[name]
            else: 
                inheritance = None
            (custom, common, sections) = create_sd(name, url, url_termino, conf, data, inheritance, custom, common, sections, output_path)
    processed = []
    while len(common) > 0:
        c = common.pop(0)
        if c in processed:
            continue
        data_c = data_common[data_common["Classe"] == c]
        if c in backones_reverse:
            inheritance = backones_reverse [c]
        else: 
            inheritance = None
        (custom, common, sections) = create_sd(c, url, url_termino, conf, data_c, inheritance, custom, common, sections, output_path)
        if c in conf["inheritance"]:
            common.extend(conf["inheritance"][c])
        processed.append(c)
    return sections


MOS_path = "MOS.xlsx"
conf_path = "conf.json"
url = "https://interop.esante.gouv.fr/ig/mos/"
url_termino = "https://mos.esante.gouv.fr/NOS/"
output_path = "./json/"
parts = ["Professionnel", "Structure", "Dispositif d'authentification", "Autorisation", "Accord", "Dossier", "Agenda"]

sections = mos2ml(MOS_path, conf_path, url, url_termino, output_path, parts)
with open("sections.json", 'w') as fp:
    json.dump(sections, fp)
# Le fichier sushi-config.yaml est modifié par goFSH donc il est sauvegardé pour remettre la bonne version ensuite.
shutil.move("../sushi-config.yaml", "./sushi-config.yaml")