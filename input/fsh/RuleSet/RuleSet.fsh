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

// ----------------------------------
// for Requirement
// ----------------------------------
RuleSet: addAttributsIdentityRequirement
* status = #draft
* purpose = "Patient identity requirements refer to a set of rules, procedures and standards established in the field of healthcare and medical records management to ensure the correct and secure identification of patients. These requirements aim to prevent medical errors, protect the confidentiality of medical information and ensure the quality of healthcare."
  * insert extensionTranslateToFR([[Les exigences en matière d'identité des patients désignent un ensemble de règles, de procédures et de normes établies dans le domaine des soins de santé et de la gestion des dossiers médicaux afin de garantir l'identification correcte et sûre des patients. Ces exigences visent à prévenir les erreurs médicales, à protéger la confidentialité des informations médicales et à garantir la qualité des soins de santé.]])
* copyright = "ISIS" 
  * insert extensionTranslateToFR([[ISIS]])
* copyrightLabel = "FHIR - Ignite the flame of interoperability in healthcare. FYR"
  * insert extensionTranslateToFR([[FHIR - Allumer la flamme de l'interopérabilité dans les soins de santé.]])
* date = "2023-06-09T10:31:30.239Z"