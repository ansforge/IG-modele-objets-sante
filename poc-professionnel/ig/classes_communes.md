# Classes communes - Modèle des Objets de Santé (MOS) v0.1.0

* [**Table of Contents**](toc.md)
* **Classes communes**

## Classes communes

Une classe commune est souvent utilisée comme type de données d’un attribut d’une classe du modèle. Cette formalisation, consistant à remplacer la relation d’agrégation entre la classe du modèle et cette classe commune, a pour premier objectif de simplifier la lecture des diagrammes.

Ces classes communes réutilisables décrivent notamment la personne physique, l’adresse géopostale, les moyens de contact, les moyens de télécommunication, les concepts codés, les lieux, les divisions territoriales, les coordonnées géographiques, etc.

| | |
| :--- | :--- |
| Classe commune | Description |
| [Adresse](StructureDefinition-Adresse.md) | Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte, d'après la norme NF Z 10-011. |
| [BoiteLettreMSS](StructureDefinition-BoiteLettreMSS.md) | Informations descriptives des boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures.Synonyme: BAL MSS |
| [Diplome](StructureDefinition-Diplome.md) | Un diplôme sanctionne un niveau de connaissances. L’Etat intervient, dans certains cas, sur le programme et la pédagogie de certains cursus diplômants, par exemple les diplômes d'Etat.La classe "Diplome" est une classe générale contenant les propriétés communes aux différents types de diplômes.Chaque diplôme est décrit dans le modèle comme une spécialisation de la classe Diplome et à ce titre, hérite des attributs de cette classe. Synonymes RPPS : Diplôme obtenu |
| [Horaire](StructureDefinition-Horaire.md) | La classe Horaire permet de définir les différentes plages d'un agenda d'une entité (jours et heures d'ouverture, période de fermeture, etc.).Synonymes (agendas partagés) : plages de disponibilités et d'indisponibilités |
| [LangueParlee](StructureDefinition-LangueParlee.md) | Langue parlée par une personne ou dans un service. |
| [PersonnePhysique](StructureDefinition-PersonnePhysique.md) | Préambule:Les informations de la personne physique telles que le nom de naissance, le prénom, etc. sont utilisées dans d'autres contextes que celui de l'INS. Elles sont donc délibérément disjointes des informations constituant l'identité INS.Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile. |
| [Telecommunication](StructureDefinition-Telecommunication.md) | Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée (téléphone, fax, e-mail, URL, etc.). |

