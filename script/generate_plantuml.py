import json
import os
import codecs
from fhir.resources.R4B.structuredefinition import StructureDefinition

def get_elements(sd):
    elements = []
    refs = []
    elements_sd = sd.get("differential", {}).get("element", [])
    for element in elements_sd:
        ref = False
        types = element.get("type", [])
        for t in types:
            if t.get("code").startswith("https://interop.esante.gouv.fr/ig/mos/StructureDefinition/"):
                reference_info = {
                "min": element.get("min"),
                "max": element.get("max"),
                "class": t.get("code").split('/')[-1]
                }
                refs.append(reference_info)
                ref = True
        if not ref:
            if "id" in element.keys():
                id = element.get("id")
                if id.count(".") == 1:
                    elements.append({
                        "name": id.split(".")[-1], 
                        "min": element.get("min"),
                        "max": element.get("max"),
                        "type": element.get("type", [])[0]["code"]
                    })
    print(refs)
    return {"references": refs, "elements": elements}

def generate_plantuml(path, sections):
    data = {}
    for section, files in sections.items():
        data[section] = {}
        if len(files) > 0:
            for file in files:
                sd = json.load(codecs.open(os.path.join(path, "output", "StructureDefinition-" + file + ".json"), 'r', 'utf-8-sig'))
                if sd["baseDefinition"] == "http://hl7.org/fhir/StructureDefinition/Base":
                    data[section][sd["name"]] = get_elements(sd)
    for section, sds in data.items(): 
        if len(sds.keys()) > 0:
            with open(os.path.join(path, "input", "images-source", section + ".plantuml"), 'w', encoding="utf-8") as f:
                f.write("@startuml\n")
                for sd in sds.keys():
                    f.write(f"\nClass {sd} {{\n")
                    for elem in sds[sd]["elements"]:
                        f.write(f"  {elem['name']} : {elem['type']} [{elem['min']}..{elem['max']}]\n")
                    f.write("}\n")
                f.write("\n")
                for sd in sds.keys():
                    for ref in sds[sd]["references"]:
                        if ref["class"] in sds.keys():
                            f.write(f"{sd} --> {ref['class']} : {ref['min']}..{ref['max']}\n")
                f.write("\n@enduml")

with open("sections.json", "r") as file:
    sections = json.load(file)
generate_plantuml("../", sections)
