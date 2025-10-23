import json
import os
import codecs
from fhir.resources.R4B.structuredefinition import StructureDefinition

def get_refs(sd):
    refs = []
    elements = sd.get("differential", {}).get("element", [])
    for element in elements:
        types = element.get("type", [])
        for t in types:
            if t.get("code") == "Reference":
                reference_info = {
                "min": element.get("min"),
                "max": element.get("max"),
                "class": t.get("targetProfile", [])[0].split("/")[-1]
                }
                refs.append(reference_info)
    return refs

def generate_plantuml(path, sections):
    data = {}
    for section, files in sections.items():
        data[section] = {}
        if len(files) > 0:
            for file in files:
                sd = json.load(codecs.open(os.path.join(path, "output", "StructureDefinition-" + file + ".json"), 'r', 'utf-8-sig'))
                data[section][sd["name"]] = get_refs(sd)
    for section, sds in data.items(): 
        if len(sds.keys()) > 0:
            with open(os.path.join(path, "input", "images-source", section + ".plantuml"), 'w', encoding="utf-8") as f:
                f.write("@startuml\n\n")
                for sd in sds.keys():
                    f.write("Class " + sd + "\n")
                f.write("\n")
                for sd, refs in sds.items():
                    for ref in refs:
                        if ref["class"] in sds.keys():
                            f.write(sd + " --> " + ref["class"] + " : " + str(ref["min"]) + ".." + ref["max"] +"\n")
                f.write("\n@enduml")

with open("sections.json", "r") as file:
    sections = json.load(file)
generate_plantuml("../", sections)
