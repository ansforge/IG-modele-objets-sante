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
    splits = re.findall(r'(?:TRE_|ASS_|tre-).*?(?=TRE_|ASS_|tre-|$)', text)
    return splits

def get_valueset(termino, attribute, url, url_termino, url_termino_new, output_path):
    """
    Retourne l'url du jeu de valeur associé à un attribut et le crée si nécessaire (cas plusieurs nomenclatures).

    Args:
        termino (list[str]): Liste de nomenclatures.
        attribute (str): Nom de l'attribut.
        url (str): URL canonique de l'IG.
        url_termino (str): URL canonique des nomenclatures.
        url_termino_new (str): URL canonique des nouvelles nomenclatures.
        output_path (str): Chemin de destination pour la création des fichiers.
        str: URL du jeu de valeur associé à l'attribut.
    """
    tre = [t.split(' ')[0] for t in termino if t.startswith(("TRE_", "tre-"))]
    if len(tre) == 1:
        if tre[0].startswith("tre-"):
            url_vs = url_termino_new + tre[0] + "?vs"
        else: 
            url_vs = url_termino + tre[0] + "/FHIR/" + tre[0].replace('_', '-') + "?vs"
    else:
        name = attribute
        include = []
        for t in tre:
            if t.startswith("tre-"):
                include.append({"system": url_termino_new + t})
            else:
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

def create_element(row, base, url, url_termino, url_termino_new, conf, custom, common, output_path):
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
                            binding = get_valueset(nomenclatures, attribute, url, url_termino, url_termino_new, output_path)
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

def create_sd(name, url, url_termino, url_termino_new, conf, data, refs, inheritance, custom, common, sections, output_path):
    """
    Crée la StructureDefinition FHIR au format json.

    Args:
        name (str): Nom de la StructureDefinition.
        url (str): URL canonique de l'IG.
        url_termino (str): URL canonique des nomenclatures.
        conf (dict): Paramètres de configuration pour la conversion.
        data (DataFrame pandas): Données du MOS au format excel.
        refs (DataFrame pandas) : Données des références au format excel.
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
    backbones = []
    if name in conf["backbones"].keys():
        backbones = conf["backbones"][name].keys()
    for _, row in group.iterrows():
        if row["Type"].strip() not in backbones:
            (element, custom, common) = create_element(row, name, url, url_termino, url_termino_new, conf, custom, common, output_path)
            if element is not None:
                elements.append(element)
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
            (element, custom, common) = create_element(row, name + '.' + backbone, url, url_termino, url_termino_new, conf, custom, common, output_path)
            if element is not None:
                elements.append(element)
    refs_sd = refs[(refs["Source"] == name) | (refs["Target"] == name)]
    refs_added = []
    for _, row in refs_sd.iterrows():
        if row["Source"] == name:
            ref = row["Target"]
            ref_min = row["SrcMin"]
            ref_max = row["SrcMax"]
        else: 
            ref = row["Source"]
            ref_min = row["TgtMin"]
            ref_max = row["TgtMax"]
        if ref not in backbones and ref not in refs_added:
        # Cardinalités vides dans Modelio
            if pd.isna(ref_min):
                if ref_max == "*":
                    ref_min = 0
                elif ref_max == 1:
                    ref_min = 1
            elements.append({
                "id": name + '.' + ref,
                "path": name + '.' + ref,
                "definition": f"Lien vers la classe {ref}",
                "short": f"Lien vers la classe {ref}",
                "min": int(ref_min), 
                "max": str(ref_max),
                "type": [{ "code": f"https://interop.esante.gouv.fr/ig/mos/StructureDefinition/{ref}"}]
            })
            refs_added.append(ref)
    sd["differential"]["element"] = elements
    with open(output_path + name + ".json", "w", encoding="utf-8") as outfile:
        json.dump(sd, outfile, ensure_ascii=False)
    sections[section].append(name)
    return (custom, common, sections)

def mos2ml(MOS_path, ref_path, conf_path, url, url_termino, url_termino_new, output_path, parts = None):
    """
    Convertit le MOS au format excel (extrait de Modelio) en modèle logique FHIR (fichiers JSON).

    Args:
        MOS_path (str): Chemin du fichier MOS excel (export Modelio).
        ref_path (str): Chemin du fichier excel des références (export Modelio).
        conf_path (str): Chemin du fichier de configuration pour la conversion.
        url (str): URL canonique de l'IG.
        url_termino (str): URL canonique des nomenclatures.
        output_path (str): Chemin de destination pour la création des fichiers.
        part (str): Restriction sur une partie du MOS à convertir (facultative).
    Returns:
        sections (dict): Dictionnaire d'organisation des fichiers par partie.
    """
    data = pd.read_excel(MOS_path)
    refs = pd.read_excel(ref_path)
    with open(conf_path, 'r') as file:
        conf = json.load(file)
    backbones_all = [key for section in conf["backbones"].values() for key in section]
    backones_reverse = {child: parent for parent, children in conf["inheritance"].items() for child in children}
    sections = {nom: [] for nom in data["Partie"].dropna().unique()}
    data_common = data[data["Partie"] == "Classes communes"]
    if parts:
        data = data[data["Partie"].isin(parts)]
    classes = data[data["Partie"] != "Classes communes"]["Classe"].dropna().unique()
    common_classes = data_common["Classe"].dropna().unique()
    custom = []
    common = []
    for _, row in refs.iterrows():
        if row["Source"] in common_classes and row["Source"] not in common:
            common.append(row["Source"])
        if row["Target"] in common_classes and row["Target"] not in common:
            common.append(row["Target"])
    for name in classes:
        if name not in backbones_all:
            if name in backones_reverse:
                inheritance = backones_reverse[name]
            else: 
                inheritance = None
            (custom, common, sections) = create_sd(name, url, url_termino, url_termino_new, conf, data, refs, inheritance, custom, common, sections, output_path)
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
        (custom, common, sections) = create_sd(c, url, url_termino, url_termino_new, conf, data_c, refs, inheritance, custom, common, sections, output_path)
        if c in conf["inheritance"]:
            common.extend(conf["inheritance"][c])
        processed.append(c)
    return sections


MOS_path = "MOS.xlsx"
ref_path = "Reference.xlsx"
conf_path = "conf.json"
url = "https://interop.esante.gouv.fr/ig/mos/"
url_termino = "https://mos.esante.gouv.fr/NOS/"
url_termino_new = "https://smt.esante.gouv.fr/fhir/CodeSystem/"
output_path = "./json/"
parts = ["Professionnel", "Structure", "Dispositif d'authentification", "Autorisation", "Accord", "Dossier", "Agenda", "Offre opérationnelle", "Ressources opérationnelles", "Dispositif médical", "Accompagnant", "Personne prise en charge", "Organisation opérationnelle"]

sections = mos2ml(MOS_path, ref_path, conf_path, url, url_termino, url_termino_new, output_path, parts)
with open("sections.json", 'w') as fp:
    json.dump(sections, fp)
# Le fichier sushi-config.yaml est modifié par goFSH donc il est sauvegardé pour remettre la bonne version ensuite.
shutil.move("../sushi-config.yaml", "./sushi-config.yaml")