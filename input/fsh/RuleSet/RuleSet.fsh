// -------------------------
// generic
// ------------------------
RuleSet: extensionTranslateToFR(frenchDescription)
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/translation"
  * extension[+]
    * url = "lang"
    * valueCode = #fr-FR
  * extension[+]
    * url = "content"
    * valueString = "{frenchDescription}"

// ----------------------------------
// for LogicalModel
// ----------------------------------
RuleSet: oneElementLogicalFR(titleName, card, type, englishDescription, frenchDescription)
* {titleName} {card} {type} "{englishDescription}"
* {titleName} ^definition.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* {titleName} ^definition.extension.extension[+].url = "lang"
* {titleName} ^definition.extension.extension[=].valueCode = #fr-FR
* {titleName} ^definition.extension.extension[+].url = "content"
* {titleName} ^definition.extension.extension[=].valueString = "{frenchDescription}"
