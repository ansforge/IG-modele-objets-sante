import json
import os
import codecs
import unicodedata
from fhir.resources.R4B.structuredefinition import StructureDefinition

def get_elements(sd, sections):
    """
    Récupère les éléments d'une structure definition nécessaires pour générer le diagramme.
    
    Args:
        sd (dict) : Structure definition au format json.
        sections (dict) : Dictionnaire des classes par section (utile pour les références).
    Returns:
        list[str]: Liste de sous-chaînes correspondant à chaque segment trouvé.
    """
    elements = []
    refs = []
    backbones = {}
    elements_sd = sd.get("differential", {}).get("element", [])
    for element in elements_sd:
        if "type" in element.keys():
            type = element.get("type", [])[0]["code"]
            id = element.get("id")
            if type.startswith("https://interop.esante.gouv.fr/ig/mos/StructureDefinition/"):
                target = type.split('/')[-1]
                for section, classes in sections.items():
                    if target in classes:
                        section_target = section
                reference_info = {
                    "source": sd["name"],
                    "min": element.get("min"),
                    "max": element.get("max"),
                    "target": target,
                    "section": section_target
                }
                refs.append(reference_info)
            elif type == "Base":
                backbone = id.split(".")[-1]
                if backbone not in backbones.keys():
                    backbones[backbone] = {
                        "min": element.get("min"),
                        "max": element.get("max"),
                        "elements": []
                        }
            else:
                if id.count(".") == 1:
                    elements.append({
                        "name": id.split(".")[-1], 
                        "min": element.get("min"),
                        "max": element.get("max"),
                        "type": element.get("type", [])[0]["code"]
                    })
                else:
                    backbones[backbone]["elements"].append({
                        "name": id.split(".")[-1], 
                        "min": element.get("min"),
                        "max": element.get("max"),
                        "type": element.get("type", [])[0]["code"]
                    })
    return {"elements": elements, "backbones": backbones, "references": refs}

def generate_plantuml_parts(path, sections):
    """
    Génère les diagrammes par parties au format plantuml.
    
    Args:
        path (str) : Chemin de la racine de l'IG.
        sections (dict) : Dictionnaire des classes par section.
    """
    data = {}
    for section, files in sections.items():
        if section not in ["Classes communes", "Types de données"]:
            data[section] = {"classes": {}, "references": []}
            if len(files) > 0:
                for file in files:
                    sd = json.load(codecs.open(os.path.join(path, "output", "StructureDefinition-" + file + ".json"), 'r', 'utf-8-sig'))
                    if sd["baseDefinition"] == "http://hl7.org/fhir/StructureDefinition/Base":
                        elements = get_elements(sd, sections)
                        data[section]["references"].extend(elements["references"])
                        elements.pop("references")
                        data[section]["classes"][sd["name"]] = elements
    for section in data.keys():
        sds = data[section]["classes"]
        refs = data[section]["references"]
        refs_grouped = {}
        for ref in refs:
            section_ref = ref["section"]
            if section_ref not in refs_grouped:
                refs_grouped[section_ref] = []
            refs_grouped[section_ref].append(ref)
        if len(sds.keys()) > 0:
            filename = unicodedata.normalize("NFKD", section)\
                .encode("ascii", "ignore")\
                .decode("ascii")\
                .replace("'", "")\
                .replace(" ", "-")
            with open(os.path.join(path, "input", "images-source", filename + ".plantuml"), 'w', encoding="utf-8") as f:
                f.write("@startuml\n")
                for sd in sds.keys():
                    f.write(f"\nClass {sd} {{\n")
                    for elem in sds[sd]["elements"]:
                        f.write(f"  {elem['name']} : {elem['type']} [{elem['min']}..{elem['max']}]\n")
                    f.write("}\n")
                for sd in sds.keys():
                    for backbone in sds[sd]["backbones"].keys(): 
                        f.write(f"\nClass {backbone} #LightBlue {{\n")
                        for elem in sds[sd]["backbones"][backbone]["elements"]:
                            f.write(f"  {elem['name']} : {elem['type']} [{elem['min']}..{elem['max']}]\n")
                        f.write("}\n")
                f.write("\n")
                for section_ref, refs in refs_grouped.items():
                    if section_ref not in [section, "Classes communes", "Types de données"]:
                        f.write(f"\npackage \"{section_ref}\" {{\n")
                        for ref in refs:
                            f.write(f"  Class {ref['target']}\n")
                        f.write("}\n")
                for section_ref, refs in refs_grouped.items():
                    if section_ref not in ["Classes communes", "Types de données"]:
                        for ref in refs:
                            f.write(f"{ref['source']} --> {ref['target']} : {ref['min']}..{ref['max']}\n")
                for sd in sds.keys():
                    for backbone, info in sds[sd]["backbones"].items():
                        f.write(f"{sd} --> {backbone} : {info['min']}..{info['max']}\n")
                f.write("\n@enduml")

def generate_plantuml_global(path, sections, conf):
    """
    Génère le diagramme global au format plantuml.
    
    Args:
        path (str) : Chemin de la racine de l'IG.
        sections (dict) : Dictionnaire des classes par section.
        conf (dict) : Paramètres de configuration utilisés pour la conversion (pour identifier les héritages).
    """
    inheritances = [val for sub_list in conf["inheritance"].values() for val in sub_list]
    with open(os.path.join(path, "input", "images-source", "global.plantuml"), 'w', encoding="utf-8") as f:
        f.write("@startuml\n")
        for section, classes in sections.items():
            if section not in ["Classes communes", "Types de données"]:
                f.write(f"\npackage \"{section}\" {{\n")
                for cl in classes:
                    if cl not in inheritances:
                        f.write(f"  Class {cl}\n")
                f.write("}\n")
        f.write("\n@enduml")

with open("sections.json", "r") as file:
    sections = json.load(file)
with open("conf.json", "r") as file:
    conf = json.load(file)
generate_plantuml_global("../", sections, conf)
generate_plantuml_parts("../", sections)
