Logical:         Identifiant
Id:              mosIdentifiant
Title:           "Identifiant"
Description:     "Ceci est un test pour justifier la possibilité de redéfinir des datatypes complexes déjà définis dans FHIR (Identifier)."
Characteristics: #can-be-target
* date 0..* string "Date de mise en place de l'identifiant (Format YY-MM-DD)"
* date obeys inv-date-format
* value 0..* string "Valeur de l'identifiant"

Invariant: inv-date-format
Description: "Doit respecter le format YY-MM-DD"
Severity: #error
Expression: "$this.matches('^[0-9]{2}-(0[1-9]|1[0-2])-([0-2][0-9]|3[01])$')"
