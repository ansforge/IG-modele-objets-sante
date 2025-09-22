Logical: EquipementSpecifique
Id: EquipementSpecifique
Title: "Classe EquipementSpecifique du MOS"
Description: "Modèle logique pour représenter un équipement médico-technique spécialisé disponible dans une structure."
Characteristics: #can-be-target
* typeEquipement 0..1 Code "Un type d'équipement correspond à une ressource matérielle médicotechnique spécialisée, qui permet la réalisation d’une prestation. Les équipements ordinaires utilisés pour réaliser les activités proposées par une organisation ne sont pas des équipements spécifiques. Les équipements spécifiques décrits sont des ressources propres de la structure ou mises à disposition dans le cadre d’une convention à la condition qu'elles soient utilisées sur site. (Nomenclature: TRE_R212-Equipement)"
* typeEquipement from https://mos.esante.gouv.fr/NOS/JDV_J18-EquipementSpecifique-ROR/FHIR/JDV-J18-EquipementSpecifique-ROR
* nbEquipementEnService 0..1 Numerique "Nombre d'équipement du même type en état de fonctionnement."
* metadonnee 0..1 Metadonnee "Informations relatives à la gestion des classes et des données."