#!/usr/bin/env python3
"""
Generate MOS.xlsx from FHIR StructureDefinition JSON files.

Reads sections.json for the Partie → Classe mapping and
fsh-generated/resources/ for StructureDefinition data.
Outputs to input/images/MOS.xlsx (copied verbatim to IG output by the publisher).
"""

import json
import re
from pathlib import Path

import openpyxl
from openpyxl.styles import Alignment, Font, PatternFill
from openpyxl.utils import get_column_letter

SCRIPT_DIR = Path(__file__).parent
IG_ROOT = SCRIPT_DIR.parent
RESOURCES_DIR = IG_ROOT / "fsh-generated" / "resources"
OUTPUT_FILE = IG_ROOT / "input" / "images" / "MOS.xlsx"
SECTIONS_FILE = SCRIPT_DIR / "sections.json"

HEADERS = [
    "Partie", "Classe", "Attribut", "Cardinalité", "Type",
    "Description", "Nomenclature", "FHIR", "SEMIC", "HL7",
    "XDS", "CDA R2", "DICOM", "IHE PAM Fr", "OMOP",
]

# ---------------------------------------------------------------------------
# Styles (shared instances — openpyxl supports reuse)
# ---------------------------------------------------------------------------
H_FONT = Font(bold=True, color="FFFFFF")
H_FILL = PatternFill("solid", fgColor="1F4E79")
P_FONT = Font(bold=True, color="FFFFFF")
P_FILL = PatternFill("solid", fgColor="2E75B6")
C_FONT = Font(bold=True)
C_FILL = PatternFill("solid", fgColor="BDD7EE")
ODD_FILL = PatternFill("solid", fgColor="EEF4FB")
WRAP_TOP = Alignment(wrap_text=True, vertical="top")


# ---------------------------------------------------------------------------
# Data extraction
# ---------------------------------------------------------------------------

def _extract_nomenclature(vs_url: str) -> str:
    """Return the NOS/TRE name from a ValueSet URL, or a short fallback."""
    m = re.search(r"/NOS/([^/]+)/FHIR/", vs_url)
    return m.group(1) if m else vs_url.rstrip("?vs").split("/")[-1]


def _extract_type_name(code: str) -> str:
    """Return the local name for a type code (strips full URLs)."""
    return code.split("/")[-1] if code.startswith("http") else code


def _load_sd(class_id: str):
    path = RESOURCES_DIR / f"StructureDefinition-{class_id}.json"
    if not path.exists():
        return None
    with open(path, encoding="utf-8") as f:
        return json.load(f)


def get_class_info(class_id: str):
    """Return {description, elements} for a given StructureDefinition ID."""
    sd = _load_sd(class_id)
    if sd is None:
        return None

    description = sd.get("description", "")
    elements = []

    for elem in sd.get("differential", {}).get("element", []):
        elem_id = elem.get("id", "")
        if "." not in elem_id:  # root element — skip
            continue
        types = elem.get("type", [])
        if not types:
            continue

        code = types[0].get("code", "")
        min_val = elem.get("min", "")
        max_val = elem.get("max", "")

        binding = elem.get("binding", {})
        vs_url = binding.get("valueSet", "")

        # Attribute name: everything after the class name prefix
        attr_name = ".".join(elem_id.split(".")[1:])

        elements.append({
            "name": attr_name,
            "cardinality": f"[{min_val}..{max_val}]",
            "type": _extract_type_name(code),
            "description": elem.get("definition", "") or elem.get("short", ""),
            "nomenclature": _extract_nomenclature(vs_url) if vs_url else "",
        })

    return {"description": description, "elements": elements}


# ---------------------------------------------------------------------------
# Excel generation
# ---------------------------------------------------------------------------

def _add_row(ws, values, font=None, fill=None):
    ws.append(values)
    for cell in ws[ws.max_row]:
        cell.alignment = WRAP_TOP
        if font:
            cell.font = font
        if fill:
            cell.fill = fill


def generate(sections: dict):
    wb = openpyxl.Workbook()
    ws = wb.active
    ws.title = "MOS"

    # 1. Column headers
    _add_row(ws, HEADERS, H_FONT, H_FILL)

    # 2. Partie overview rows (one per section)
    for partie in sections:
        _add_row(ws, [partie] + [""] * 14, P_FONT, P_FILL)

    # 3. Column headers repeated
    _add_row(ws, HEADERS, H_FONT, H_FILL)

    # 4. Class header rows (Partie + Classe + description)
    for partie, classes in sections.items():
        for cid in classes:
            info = get_class_info(cid)
            if info is None:
                continue
            _add_row(
                ws,
                [partie, cid, None, None, None, info["description"]] + [""] * 9,
                C_FONT,
                C_FILL,
            )

    # 5. Column headers repeated
    _add_row(ws, HEADERS, H_FONT, H_FILL)

    # 6. Attribute data rows
    n = 0
    for partie, classes in sections.items():
        for cid in classes:
            info = get_class_info(cid)
            if info is None:
                continue
            for e in info["elements"]:
                _add_row(
                    ws,
                    [
                        partie, cid,
                        e["name"], e["cardinality"], e["type"],
                        e["description"], e["nomenclature"],
                        "", "", "", "", "", "", "", "",
                    ],
                    fill=ODD_FILL if n % 2 == 0 else None,
                )
                n += 1

    # 7. Column widths & freeze panes
    col_widths = [22, 30, 35, 13, 22, 100, 45, 35, 12, 12, 10, 12, 10, 14, 10]
    for i, w in enumerate(col_widths, 1):
        ws.column_dimensions[get_column_letter(i)].width = w
    ws.freeze_panes = "A2"

    OUTPUT_FILE.parent.mkdir(parents=True, exist_ok=True)
    wb.save(OUTPUT_FILE)
    total_classes = sum(len(v) for v in sections.values())
    print(f"Saved {OUTPUT_FILE}  ({total_classes} classes, {n} attributes)")


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    with open(SECTIONS_FILE, encoding="utf-8") as f:
        sections = json.load(f)
    generate(sections)
